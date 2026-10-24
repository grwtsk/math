# riemannHypothesis_of_shortIntervalAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:057b3c0c-f6a1-8a92-a481-f457d4b4d3b1",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_shortIntervalAdapter",
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
  "slug": "riemannhypothesis-of-shortintervaladapter--21180e4329b7a4067336d7e0",
  "source": {
    "blob": "4650da8d695ef5e8515236b255dcbf38a62143b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21180e4329b7a4067336d7e02f0cb445bc11c97e24b15bf27cbae9a7d107e6d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:057b3c0c-f6a1-8a92-a481-f457d4b4d3b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_shortIntervalAdapter
    (d : QuantitativeShortIntervalMobiusSource)
    (bridge : ShortIntervalToHarmonicPacketAdapter d)
    (hsource : d.sourceStatement)
    (hlength : d.intervalLengthCoverage)
    (hwindow : d.startWindowCoverage)
    (hdepth : d.allDepthUniformity)
    (hsmall : d.finiteSmallRangeControl) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    (bridge.toHarmonic hsource hlength hwindow hdepth hsmall)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.cumulativeHarmonicShiftCorrelation_eq_shortIntervalAverage
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_cumulativeHarmonicShiftCorrelation_le_shortIntervalL1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_shortIntervalAdapter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensCumulativeShiftShortInterval.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4650da8d695ef5e8515236b255dcbf38a62143b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
