# TypeIILocalStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e744d1d95d07079954b3bdd1ee246efef0698be9ef8bcecab28c778a930e7e62",
  "kind": "structure",
  "lexical_name": "TypeIILocalStructure",
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
  "slug": "typeiilocalstructure--4d0cd6c940e52a2918fb6e6b",
  "source": {
    "blob": "6cc110482121213198d3e1ce672ef65887bbe277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 37,
    "path": "GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0cd6c940e52a2918fb6e6b236c87438980002dca67f02f39710078a74736f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e744d1d95d07079954b3bdd1ee246efef0698be9ef8bcecab28c778a930e7e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TypeIILocalStructure
    (Left Right : Type*) [Fintype Left] [Fintype Right]
    (rankBudget : ℕ) where
  leftProjection :
    EuclideanSpace ℂ Left →L[ℂ] EuclideanSpace ℂ Left
  rightProjection :
    EuclideanSpace ℂ Right →L[ℂ] EuclideanSpace ℂ Right

  leftProjection_idempotent :
    leftProjection.comp leftProjection = leftProjection
  rightProjection_idempotent :
    rightProjection.comp rightProjection = rightProjection
  leftProjection_selfAdjoint : leftProjection.adjoint = leftProjection
  rightProjection_selfAdjoint : rightProjection.adjoint = rightProjection

  LeftCluster : Type
  RightCluster : Type
  leftClusterFintype : Fintype LeftCluster
  rightClusterFintype : Fintype RightCluster

  leftClusterCarrier : LeftCluster → Finset Left
  rightClusterCarrier : RightCluster → Finset Right
  leftGenerator : LeftCluster → EuclideanSpace ℂ Left
  rightGenerator : RightCluster → EuclideanSpace ℂ Right
  leftGenerator_supported : ∀ cluster index,
    index ∉ leftClusterCarrier cluster → leftGenerator cluster index = 0
  rightGenerator_supported : ∀ cluster index,
    index ∉ rightClusterCarrier cluster → rightGenerator cluster index = 0

  leftRange_generated :
    LinearMap.range leftProjection.toLinearMap =
      Submodule.span ℂ (Set.range leftGenerator)
  rightRange_generated :
    LinearMap.range rightProjection.toLinearMap =
      Submodule.span ℂ (Set.range rightGenerator)
  rankBound :
    Fintype.card LeftCluster + Fintype.card RightCluster ≤ rankBudget

attribute [instance] TypeIILocalStructure.leftClusterFintype
attribute [instance] TypeIILocalStructure.rightClusterFintype

/-- Structured component of the left coefficient vector. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StructuredProjection/Variant3e9c569cd544f1cb000df70e5e418afb257d88cb3c5d569d4c34a610113215b5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc110482121213198d3e1ce672ef65887bbe277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
