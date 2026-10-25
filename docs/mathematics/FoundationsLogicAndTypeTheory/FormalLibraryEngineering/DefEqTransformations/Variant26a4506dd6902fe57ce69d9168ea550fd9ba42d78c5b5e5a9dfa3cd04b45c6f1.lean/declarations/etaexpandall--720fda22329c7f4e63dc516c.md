# etaExpandAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e27a91df4ad9f193cdfa92a80ec6d74f1d99a0db2e6352714d4b283a0940e54d",
  "kind": "def",
  "lexical_name": "etaExpandAll",
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
  "slug": "etaexpandall--720fda22329c7f4e63dc516c",
  "source": {
    "blob": "b3eee29846a19de8e7282b94550f76b79f5a98e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:720fda22329c7f4e63dc516ccc3f0272aff158568e42c75aec3ed5d3d005b087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e27a91df4ad9f193cdfa92a80ec6d74f1d99a0db2e6352714d4b283a0940e54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def etaExpandAll (e : Expr) : MetaM Expr := do
  let betaOrApp (f : Expr) (args : Array Expr) : Expr :=
    if f.etaExpanded?.isSome then f.beta args else mkAppN f args
  let expand (e : Expr) : MetaM Expr := do
    if e.isLambda then
      return e
    else
      forallTelescopeReducing (← inferType e) fun xs _ => do
        mkLambdaFVars xs (betaOrApp e xs)
  transform e
    (pre := fun node => do
      if node.isApp then
        let f ← etaExpandAll node.getAppFn
        let args ← node.getAppArgs.mapM etaExpandAll
        .done <$> expand (betaOrApp f args)
      else
        pure .continue)
    (post := (.done <$> expand ·))

/--
`eta_expand at loc` eta expands all sub-expressions at the given location.
It also beta reduces any applications of eta expanded terms, so it puts it
into an eta-expanded "normal form."
This also exists as a `conv`-mode tactic.

For example, if `f` takes two arguments, then `f` becomes `fun x y => f x y`
and `f x` becomes `fun y => f x y`.

This can be useful to turn, for example, a raw `HAdd.hAdd` into `fun x y => x + y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3eee29846a19de8e7282b94550f76b79f5a98e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
