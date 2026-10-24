# RegularCenteredWindingFullFrequencyBridgeSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60ca9c8c6dcb181eb15a859d4457641394c626f9b1aaabc7bd0d59a7ab87505a",
  "kind": "def",
  "lexical_name": "RegularCenteredWindingFullFrequencyBridgeSource",
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
  "slug": "regularcenteredwindingfullfrequencybridgesource--6f979f5cd5af222089e97a1f",
  "source": {
    "blob": "67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 626,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f979f5cd5af222089e97a1f00928fa630077230ae3152e46e3257dba57f5203",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60ca9c8c6dcb181eb15a859d4457641394c626f9b1aaabc7bd0d59a7ab87505a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularCenteredWindingFullFrequencyBridgeSource
    (d : RegularCenteredWindingFullFrequencyBridgeSourceData) : Prop :=
  d.theoremStatement ∧
    d.zmodCenteredResidueFiberMatched ∧
    d.naturalAndZModSquareMassesMatched ∧
    d.existingBucketFactorTwoMatched ∧
    d.existingFourierFactorTwoMatched ∧
    d.finiteParsevalReused ∧
    d.zeroWindingEnergyMatched ∧
    d.nonzeroWindingWrapMatched ∧
    d.fourParityShiftFamiliesMatched ∧
    d.effectiveModulusAggregationMatched ∧
    d.analyticEnvelopeEquivalenceMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredResidueFiberZModSquareExpansion
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredWindingFullFrequencyDispersion_eq_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
