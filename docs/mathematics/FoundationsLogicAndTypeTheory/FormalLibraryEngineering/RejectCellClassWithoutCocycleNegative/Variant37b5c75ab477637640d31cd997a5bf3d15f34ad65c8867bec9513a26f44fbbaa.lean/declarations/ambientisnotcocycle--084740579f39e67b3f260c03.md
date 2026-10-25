# ambientIsNotCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b67b0fcfee88bafe3b8101e66eb6e2b30d3fc60e0f0c8411cfecb1e3b9293534",
  "kind": "def",
  "lexical_name": "ambientIsNotCocycle",
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
  "slug": "ambientisnotcocycle--084740579f39e67b3f260c03",
  "source": {
    "blob": "9189ab64ad98d7c7d8f647ced565d70f1fffaad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCellClassWithoutCocycleNegative/Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:084740579f39e67b3f260c03070fe3e079787aa3cf932095b205681586b820c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCellClassWithoutCocycleNegative/Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b67b0fcfee88bafe3b8101e66eb6e2b30d3fc60e0f0c8411cfecb1e3b9293534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ambientIsNotCocycle : CycleHZeroComparison pointCycleClass edgeHodge where
  hodgeToCocycle := constantRepresentative
  cycleToCocycle := constantRepresentative
  commute := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCellClassWithoutCocycleNegative/Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCellClassWithoutCocycleNegative/Variant37b5c75ab477637640d31cd997a5bf3d15f34ad65c8867bec9513a26f44fbbaa.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9189ab64ad98d7c7d8f647ced565d70f1fffaad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
