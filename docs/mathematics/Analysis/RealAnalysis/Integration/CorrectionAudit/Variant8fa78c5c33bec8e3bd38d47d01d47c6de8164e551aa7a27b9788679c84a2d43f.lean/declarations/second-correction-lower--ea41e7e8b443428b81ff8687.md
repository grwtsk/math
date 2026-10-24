# second_correction_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5aa2c20-694a-6287-d8f2-fed25e860574",
  "kind": "lemma",
  "lexical_name": "second_correction_lower",
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
  "slug": "second-correction-lower--ea41e7e8b443428b81ff8687",
  "source": {
    "blob": "bab3fa5713841130ceb2140fb670c27ebcae6ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea41e7e8b443428b81ff8687a64467ed7db395111625e46d032d9883aa68ade8",
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

Occurrence: `result:c5aa2c20-694a-6287-d8f2-fed25e860574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma second_correction_lower (A : ℝ) (hA : 1 ≤ A) :
    -4 * (Real.sqrt 2 - 1) ≤ 2 * ∫ t in 0..lowerEndpoint, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by fun_prop
  have h := intervalIntegral.integral_mono_on (μ := volume)
    (by exact (Real.log_nonneg (by norm_num) : 0 ≤ Real.log 2) : 0 ≤ lowerEndpoint)
    (he.neg.intervalIntegrable _ _) ((he.mul hc).intervalIntegrable _ _)
    (fun t _ ↦ show -Real.exp (t / 2) ≤ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t by
      have ht := (abs_le.mp (EstimateCorrelation.actual_correlation_abs_le_one A t hA)).1
      nlinarith [Real.exp_pos (t / 2)])
  have hp : (∫ t in 0..lowerEndpoint, -Real.exp (t / 2)) = -2 * (Real.sqrt 2 - 1) := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ ↦ -2 * Real.exp (x / 2))
        (-Real.exp (t / 2)) t := by
      apply ((((hasDerivAt_id t).div_const 2).exp).const_mul (-2)).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t) (he.neg.intervalIntegrable _ _)]
    simp only [zero_div, Real.exp_zero, mul_one, lowerEndpoint, Real.exp_half,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    ring
  simp only [Pi.neg_apply, Pi.mul_apply] at h
  rw [hp] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab3fa5713841130ceb2140fb670c27ebcae6ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
