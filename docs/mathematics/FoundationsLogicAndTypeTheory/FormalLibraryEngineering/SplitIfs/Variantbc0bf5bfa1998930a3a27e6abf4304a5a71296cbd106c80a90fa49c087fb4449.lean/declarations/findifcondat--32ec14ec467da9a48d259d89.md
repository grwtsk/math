# findIfCondAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e12c27c228b96940215853f0e0cbdb67b4aed8d90e8d2af12b6ee99a9a44065",
  "kind": "def",
  "lexical_name": "findIfCondAt",
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
  "slug": "findifcondat--32ec14ec467da9a48d259d89",
  "source": {
    "blob": "64e0fa989bcac05a4768b47f3a368bdeee8d2f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32ec14ec467da9a48d259d892c58166c5dcaee33b3915b0deffda41d75bb8106",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e12c27c228b96940215853f0e0cbdb67b4aed8d90e8d2af12b6ee99a9a44065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findIfCondAt (loc : Location) : TacticM (Option (SplitPosition × Expr)) := do
  for (pos, e) in (← getSplitCandidates loc) do
    if let some (cond, _) := findIfToSplit? e
    then return some (pos, cond)
  return none

/-- `Simp.Discharge` strategy to use in `reduceIfsAt`. Delegates to
`SplitIf.discharge?`, and additionally supports discharging `True`, to
better match the behavior of mathlib3's `split_ifs`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variantbc0bf5bfa1998930a3a27e6abf4304a5a71296cbd106c80a90fa49c087fb4449.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e0fa989bcac05a4768b47f3a368bdeee8d2f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
