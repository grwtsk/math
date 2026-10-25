# splitGoalsAndGetNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ea86f45d5e34d93c9177b5d42254c428b1a2821bf176e10e57a75667a94a893",
  "kind": "def",
  "lexical_name": "splitGoalsAndGetNth",
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
  "slug": "splitgoalsandgetnth--553ff10b6d4387f0215a29e9",
  "source": {
    "blob": "5da250228e9ae39a023e44271a3eb3b6ac3ac9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PermuteGoals/Variant0dd58e1c26d5f05a94ecc3d0a0aa767fc202443cc35e50a4aa8346a39c8b7ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:553ff10b6d4387f0215a29e95abf80f082327328e9d41541b4746ebcc27297e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PermuteGoals/Variant0dd58e1c26d5f05a94ecc3d0a0aa767fc202443cc35e50a4aa8346a39c8b7ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ea86f45d5e34d93c9177b5d42254c428b1a2821bf176e10e57a75667a94a893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitGoalsAndGetNth (nth : Nat) (reverse : Bool := false) :
    TacticM (MVarId × List MVarId × List MVarId) := do
  if nth = 0 then throwError "goals are 1-indexed"
  let goals ← getGoals
  let nGoals := goals.length
  if nth > nGoals then throwError "goal index out of bounds"
  let n := if ¬reverse then nth - 1 else nGoals - nth
  let (gl, g :: gr) := goals.splitAt n | throwNoGoalsToBeSolved
  pure (g, gl, gr)

/--
`pick_goal n` will move the `n`-th goal to the front.

`pick_goal -n` will move the `n`-th goal (counting from the bottom) to the front.

See also `Tactic.rotate_goals`, which moves goals from the front to the back and vice-versa.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PermuteGoals/Variant0dd58e1c26d5f05a94ecc3d0a0aa767fc202443cc35e50a4aa8346a39c8b7ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PermuteGoals/Variant0dd58e1c26d5f05a94ecc3d0a0aa767fc202443cc35e50a4aa8346a39c8b7ce4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da250228e9ae39a023e44271a3eb3b6ac3ac9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
