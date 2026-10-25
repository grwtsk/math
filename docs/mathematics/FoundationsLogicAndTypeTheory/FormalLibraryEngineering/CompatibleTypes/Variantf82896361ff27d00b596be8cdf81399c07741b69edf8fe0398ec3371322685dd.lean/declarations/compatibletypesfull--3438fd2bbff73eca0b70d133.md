# compatibleTypesFull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b6b873e945de5d6abcd2fbac4b8fdad5ba6c816093a65593848930188bc1d31",
  "kind": "def",
  "lexical_name": "compatibleTypesFull",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "compatibletypesfull--3438fd2bbff73eca0b70d133",
  "source": {
    "blob": "0ca5a6fdafd30c3905eb69c156fcba04406609fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variantf82896361ff27d00b596be8cdf81399c07741b69edf8fe0398ec3371322685dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3438fd2bbff73eca0b70d133524f55e8cc548030a3410144c20cce523fbd1daf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variantf82896361ff27d00b596be8cdf81399c07741b69edf8fe0398ec3371322685dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b6b873e945de5d6abcd2fbac4b8fdad5ba6c816093a65593848930188bc1d31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def compatibleTypesFull (a b : Expr) : InferTypeM Bool := do
  if a.isErased || b.isErased then
    return true
  else
    let a' := a.headBeta
    let b' := b.headBeta
    if a != a' || b != b' then
      compatibleTypesFull a' b'
    else if a == b then
      return true
    else
      match a, b with
      -- Note that even after reducing to head-beta, we can still have `.app` terms. For example,
      -- an inductive constructor application such as `List Int`
      | .app f a, .app g b => compatibleTypesFull f g <&&> compatibleTypesFull a b
      | .forallE n d₁ b₁ bi, .forallE _ d₂ b₂ _ =>
        unless (← compatibleTypesFull d₁ d₂) do return false
        withLocalDecl n d₁ bi fun x =>
          compatibleTypesFull (b₁.instantiate1 x) (b₂.instantiate1 x)
      | .lam n d₁ b₁ bi, .lam _ d₂ b₂ _ =>
        unless (← compatibleTypesFull d₁ d₂) do return false
        withLocalDecl n d₁ bi fun x =>
          compatibleTypesFull (b₁.instantiate1 x) (b₂.instantiate1 x)
      | .sort u, .sort v => return Level.isEquiv u v
      | .const n us, .const m vs => return n == m && List.isEqv us vs Level.isEquiv
      | .mdata _ e, _ => compatibleTypesFull e b
      | _, .mdata _ e => compatibleTypesFull a e
      | _, _ =>
        if a.isLambda then
          let some b ← etaExpand? b | return false
          compatibleTypesFull a b
        else if b.isLambda then
          let some a ← etaExpand? a | return false
          compatibleTypesFull a b
        else
          return false
where
  etaExpand? (e : Expr) : InferTypeM (Option Expr) := do
    match (← inferType e).headBeta with
    | .forallE n d _ bi =>
      /-
      In principle, `.app e (.bvar 0)` may not be a valid LCNF type sub-expression
      because `d` may not be a type former type, See remark `compatibleTypes` for
      a justification why this is ok.
      -/
      return some (.lam n d (.app e (.bvar 0)) bi)
    | _ => return none

/--
Return true if the LCNF types `a` and `b` are compatible.
Remark: `a` and `b` can be type formers (e.g., `List`, or `fun (α : Type) => Nat → Nat × α`)
Remark: We may need to eta-expand type formers to establish whether they are compatible or not.
For example, suppose we have
```
fun (x : B) => Id B ◾ ◾
Id B ◾
```
We must eta-expand `Id B ◾` to `fun (x : B) => Id B ◾ x`. Note that, we use `x` instead of `◾` to
make the implementation simpler and skip the check whether `B` is a type former type. However,
this simplification should not affect correctness since `◾` is compatible with everything.
Remark: see comment at `isErasedCompatible`.
Remark: because of "erasure confusion" see note above, we assume `◾` (aka `lcErasure`) is compatible with everything.
This is a simplification. We used to use `isErasedCompatible`, but this only address item 1.
For item 2, we would have to modify the `toLCNFType` function and make sure a type former is erased if the expected
type is not always a type former (see `S.mk` type and example in the note above).
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variantf82896361ff27d00b596be8cdf81399c07741b69edf8fe0398ec3371322685dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibleTypes/Variantf82896361ff27d00b596be8cdf81399c07741b69edf8fe0398ec3371322685dd.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca5a6fdafd30c3905eb69c156fcba04406609fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
