# RegularCenteredWindingZeroModeVarianceSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70e82d56e0555682beb4f3bdf8f26d8ac92aba0c420695ee6bc7b25c729d2a42",
  "kind": "def",
  "lexical_name": "RegularCenteredWindingZeroModeVarianceSource",
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
  "slug": "regularcenteredwindingzeromodevariancesource--9c7ce46654493ea6264dfb05",
  "source": {
    "blob": "86aee0d7b10b468badc8e0f46d5d369e33c3f66d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 211,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c7ce46654493ea6264dfb05cb8f4ca02ecf16f35cd976875b1edf53434e961d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70e82d56e0555682beb4f3bdf8f26d8ac92aba0c420695ee6bc7b25c729d2a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularCenteredWindingZeroModeVarianceSource
    (d : RegularCenteredWindingZeroModeVarianceSourceData) : Prop :=
  d.theoremStatement ∧
  d.integerCenterAmplitudeMatched ∧
  d.totalPairMassMatched ∧
  d.exactCenterCountMatched ∧
  d.centeredVarianceDefined ∧
  d.varianceNonnegative ∧
  d.secondMomentDecompositionMatched ∧
  d.zeroWindingEnergyMatched ∧
  d.zeroModeEnergyMatched ∧
  d.reciprocalDifferenceMatched ∧
  d.meanInflationMatched ∧
  d.evenOddHalfShiftFamiliesMatched ∧
  d.bothEndpointParitiesMatched ∧
  d.effectiveModulusAggregationMatched ∧
  d.analyticEnvelopeExplicit

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexCenteredZeroModeCorrection_eq_reciprocalDifference_sub_variance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86aee0d7b10b468badc8e0f46d5d369e33c3f66d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
