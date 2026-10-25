# generalizeTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d56f0e6a68e01a9a6e39df4fad5f79fcb1635476cb7005fc603a6c1254a5932",
  "kind": "def",
  "lexical_name": "generalizeTargets",
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
  "slug": "generalizetargets--f377edac3966d3655a98c41a",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 935,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f377edac3966d3655a98c41a36472af628b74e2938282204312b5f5260e0d82c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d56f0e6a68e01a9a6e39df4fad5f79fcb1635476cb7005fc603a6c1254a5932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def generalizeTargets (exprs : Array Expr) : TacticM (Array Expr) := do
  withMainContext do
    let exprToGeneralize ← exprs.filterM (shouldGeneralizeTarget ·)
    if exprToGeneralize.isEmpty then
      return exprs
    liftMetaTacticAux fun mvarId => do
      let (fvarIdsNew, mvarId) ← mvarId.generalize (exprToGeneralize.map ({ expr := · }))
      assert! fvarIdsNew.size == exprToGeneralize.size
      let mut result := #[]
      let mut j := 0
      for expr in exprs do
        if (← shouldGeneralizeTarget expr) then
          result := result.push (mkFVar fvarIdsNew[j]!)
          j := j+1
        else
          result := result.push expr
      return (result, [mvarId])

-- This is public for now as it is used in Mathlib's `induction'` tactic,
-- which is no longer used in Mathlib, but still prevalent in downstream projects.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
