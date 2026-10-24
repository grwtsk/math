# first_correction_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5e03b60-42f0-4e10-cc62-04f03d9f84ba",
  "kind": "lemma",
  "lexical_name": "first_correction_lower",
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
  "slug": "first-correction-lower--85fce9159ba46213b85f849b",
  "source": {
    "blob": "bab3fa5713841130ceb2140fb670c27ebcae6ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85fce9159ba46213b85f849be682331fa1e8ff3aa8f099d33af15b3b30fb174d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5e03b60-42f0-4e10-cc62-04f03d9f84ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma first_correction_lower (A : ℝ) (hA : 1 ≤ A) :
    -4 ≤ 2 * ∫ t in 0..2 * A, Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (-t / 2)) := by fun_prop
  have h := intervalIntegral.integral_mono_on (μ := volume) (by linarith : (0 : ℝ) ≤ 2 * A)
    (he.neg.intervalIntegrable _ _) ((he.mul hc).intervalIntegrable _ _)
    (fun t _ ↦ show -Real.exp (-t / 2) ≤ Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t by
      have ht := (abs_le.mp (EstimateCorrelation.actual_correlation_abs_le_one A t hA)).1
      nlinarith [Real.exp_pos (-t / 2)])
  have hp : (∫ t in 0..2 * A, -Real.exp (-t / 2)) = 2 * Real.exp (-A) - 2 := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ ↦ 2 * Real.exp (-x / 2))
        (-Real.exp (-t / 2)) t := by
      apply ((((hasDerivAt_id t).neg.div_const 2).exp).const_mul 2).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t) (he.neg.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    congr 2
    ring
  simp only [Pi.neg_apply, Pi.mul_apply] at h
  rw [hp] at h
  linarith [Real.exp_pos (-A)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab3fa5713841130ceb2140fb670c27ebcae6ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
