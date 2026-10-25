# mkAppOptMAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b7a0c7b1e789c6a131ef0dcdadcdc14a67e2e9e7b921852bc633888a3de5571",
  "kind": "def",
  "lexical_name": "mkAppOptMAux",
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
  "slug": "mkappoptmaux--a8f2a2f32bd063d692d8b0dc",
  "source": {
    "blob": "c6230e3956942cea7534794f697db8f6fc4d0a91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 375,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8f2a2f32bd063d692d8b0dcfa19677e84bcfa1402856d7cb0c5bf9e4617baba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b7a0c7b1e789c6a131ef0dcdadcdc14a67e2e9e7b921852bc633888a3de5571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def mkAppOptMAux (f : Expr) (xs : Array (Option Expr)) : Nat → Array Expr → Nat → Array MVarId → Expr → MetaM Expr
  | i, args, j, instMVars, Expr.forallE n d b bi => do
    let d  := d.instantiateRevRange j args.size args
    if h : i < xs.size then
      match xs[i] with
      | none =>
        match bi with
        | BinderInfo.instImplicit => do
          let mvar ← mkFreshExprMVar d MetavarKind.synthetic n
          mkAppOptMAux f xs (i+1) (args.push mvar) j (instMVars.push mvar.mvarId!) b
        | _                       => do
          let mvar ← mkFreshExprMVar d MetavarKind.natural n
          mkAppOptMAux f xs (i+1) (args.push mvar) j instMVars b
      | some x =>
        let xType ← inferType x
        if (← isDefEq d xType) then
          mkAppOptMAux f xs (i+1) (args.push x) j instMVars b
        else
          throwAppTypeMismatch (mkAppN f args) x
    else
      mkAppMFinal `mkAppOptM f args instMVars
  | i, args, j, instMVars, type => do
    let type := type.instantiateRevRange j args.size args
    let type ← whnfD type
    if type.isForall then
      mkAppOptMAux f xs i args args.size instMVars type
    else if i == xs.size then
      mkAppMFinal `mkAppOptM f args instMVars
    else do
      let xs : Array Expr := xs.foldl (fun r x? => match x? with | none => r | some x => r.push x) #[]
      throwAppBuilderException `mkAppOptM ("too many arguments provided to" ++ indentExpr f ++ Format.line ++ "arguments" ++ xs)

/--
  Similar to `mkAppM`, but it allows us to specify which arguments are provided explicitly using `Option` type.
  Example:
  Given `Pure.pure {m : Type u → Type v} [Pure m] {α : Type u} (a : α) : m α`,
  ```
  mkAppOptM `Pure.pure #[m, none, none, a]
  ```
  returns a `Pure.pure` application if the instance `Pure m` can be synthesized, and the universe match.
  Note that,
  ```
  mkAppM `Pure.pure #[a]
  ```
  fails because the only explicit argument `(a : α)` is not sufficient for inferring the remaining arguments,
  we would need the expected type. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant2d11a3e6bf24e3572c340c58ae5250a9502720d8e2996b641b4c053b1696644c.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6230e3956942cea7534794f697db8f6fc4d0a91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
