# TypeIIScaleSurgeryData.initialState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:263481e9996e77a91cbc47c6d45ca4f099b305a30bb6741ca61f1b129e68e0a3",
  "kind": "def",
  "lexical_name": "TypeIIScaleSurgeryData.initialState",
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
  "slug": "typeiiscalesurgerydata-initialstate--82a795e2efecab5d1e40f14f",
  "source": {
    "blob": "760c4dd3808b1969696f47c87875be6fe9e0125a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82a795e2efecab5d1e40f14f07b61ecf2861fa1e5ded45df57c61f0c77a69f01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:263481e9996e77a91cbc47c6d45ca4f099b305a30bb6741ca61f1b129e68e0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIScaleSurgeryData.initialState {N : ℕ}
    (scale : TypeIIScaleSurgeryData N) : TypeIIBilinearSurgeryState scale where
  leftCoefficient := scale.packetData.factorization.leftCoefficient
  rightCoefficient := scale.packetData.factorization.rightCoefficient
  leftSynthesis := scale.packetData.factorization.leftSynthesis
  rightSynthesis := scale.packetData.factorization.rightSynthesis
  leftVector := ∑ left : scale.packetData.Left,
    scale.packetData.factorization.leftCoefficient left •
      scale.packetData.factorization.leftSynthesis
        (EuclideanSpace.single left 1)
  rightVector := ∑ right : scale.packetData.Right,
    scale.packetData.factorization.rightCoefficient right •
      scale.packetData.factorization.rightSynthesis
        (EuclideanSpace.single right 1)
  leftVector_from_coefficients := rfl
  rightVector_from_coefficients := rfl
  incidence := scale.packetData.factorization.incidence
  residualMatrix := scale.packetData.factorization.residualMatrix
  cutoffMatrix := fun x ↦ typeIICutoffMatrix
    (fun left ↦ (scale.packetData.factorization.leftIndex left).1)
    (fun right ↦ (scale.packetData.factorization.rightIndex right).1) x
  exactFactorization := scale.packetData.factorization.exactFactorization
  leftPacket_ae_zero_outside_shading :=
    scale.leftPacket_ae_zero_outside_shading
  rightPacket_ae_zero_outside_shading :=
    scale.rightPacket_ae_zero_outside_shading
  interaction_realizes_incidence :=
    scale.interaction_realizes_packet_incidence
  complexity :=
    { unprocessedScales := Nat.log2 (2 * N) + 1
      badClusters := scale.interaction.incidenceHypergraph.hyperedges.card
      activeInteractions :=
        Fintype.card scale.packetData.Left * Fintype.card scale.packetData.Right }

/-- The initial intrinsic pairing is exactly the checked Vaughan Type II
prefix.  No operator norm or cancellation estimate is used. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760c4dd3808b1969696f47c87875be6fe9e0125a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
