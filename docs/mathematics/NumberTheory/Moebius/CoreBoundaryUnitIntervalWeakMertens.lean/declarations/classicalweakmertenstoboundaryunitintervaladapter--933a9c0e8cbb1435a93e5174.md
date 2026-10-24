# ClassicalWeakMertensToBoundaryUnitIntervalAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:861167c8bbdd0433db9d35f49233ad0dea1167c4b0bc671ff1bdd1b6eae3ef83",
  "kind": "structure",
  "lexical_name": "ClassicalWeakMertensToBoundaryUnitIntervalAdapter",
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
  "slug": "classicalweakmertenstoboundaryunitintervaladapter--933a9c0e8cbb1435a93e5174",
  "source": {
    "blob": "588588a31a7264d3b24944f33c82c035414ca8f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:933a9c0e8cbb1435a93e5174e3c9f82bdcc6234ef122e6d7335e9d0839e909f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:861167c8bbdd0433db9d35f49233ad0dea1167c4b0bc671ff1bdd1b6eae3ef83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClassicalWeakMertensToBoundaryUnitIntervalAdapter
    (classicalWeakMertens : Prop) : Type where
  stepFunctionIdentity : Prop
  localizedMultiplicity : Prop
  globalIntegralGrowth : Prop
  toUnit :
    classicalWeakMertens →
      stepFunctionIdentity →
      localizedMultiplicity →
      globalIntegralGrowth →
      BoundaryUnitIntervalWeakMertensSource

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weakMertensUnitIntervalIntegral_eq_kernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensPrefixSquare_le_unitKernel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryLocalizedWeightedMertensSquareEnergy_le_unit
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_unitWeakMertens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588588a31a7264d3b24944f33c82c035414ca8f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
