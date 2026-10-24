# actualClosedPrimeHead_eq_central_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4439b021-24c8-10c7-ce6a-85acea44bf26",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_eq_central_add_complement",
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
  "slug": "actualclosedprimehead-eq-central-add-complement--b03495174db34d3d906fc8dd",
  "source": {
    "blob": "63cd38da8bed864685903abebc022a2a34f0ce63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 527,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative13/Variant4fa5f50463fe1f91f11675773a001eb4439e058e2cd8d5304dd3882e85c4d636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b03495174db34d3d906fc8ddbe4a9bda751d40f90df82662a3aaf0f87f659eab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative13/Variant4fa5f50463fe1f91f11675773a001eb4439e058e2cd8d5304dd3882e85c4d636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4439b021-24c8-10c7-ce6a-85acea44bf26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_eq_central_add_complement {A : ℝ} (hA : 1 ≤ A) :
    (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re =
      actualCentralFrequencyMass A + actualComplementaryFrequencyMass A := by
  have hc := complex_density_continuous hA
  have hr := density_continuous hA
  have hi := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hr.intervalIntegrable (-actualBumpMovingHeight A (3 / 2))
      (-actualCentralFrequencyRadius A))
    (hr.intervalIntegrable (-actualCentralFrequencyRadius A) (actualCentralFrequencyRadius A))
  have hj := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hr.intervalIntegrable (-actualBumpMovingHeight A (3 / 2)) (actualCentralFrequencyRadius A))
    (hr.intervalIntegrable (actualCentralFrequencyRadius A) (actualBumpMovingHeight A (3 / 2)))
  unfold actualClosedPrimeHead actualCentralFrequencyMass actualComplementaryFrequencyMass
  have hs : (1 / (2 * Real.pi) : ℂ) = ((1 / (2 * Real.pi) : ℝ) : ℂ) := by norm_cast
  rw [hs]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  rw [← intervalIntegral.intervalIntegral_re (hc.intervalIntegrable _ _)]
  change _ * (∫ t in -actualBumpMovingHeight A (3 / 2)..actualBumpMovingHeight A (3 / 2),
    actualClosedFrequencyDensity A t) = _
  rw [← hj, ← hi]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative13/Variant4fa5f50463fe1f91f11675773a001eb4439e058e2cd8d5304dd3882e85c4d636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative13/Variant4fa5f50463fe1f91f11675773a001eb4439e058e2cd8d5304dd3882e85c4d636.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63cd38da8bed864685903abebc022a2a34f0ce63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
