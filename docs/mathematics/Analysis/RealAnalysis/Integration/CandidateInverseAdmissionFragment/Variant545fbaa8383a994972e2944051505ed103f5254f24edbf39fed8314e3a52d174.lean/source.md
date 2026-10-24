# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CandidateInverseAdmissionFragment.Variant545fbaa8383a994972e2944051505ed103f5254f24edbf39fed8314e3a52d174

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `585603d2bffaf2ac1eedf19d34aff5d73d2baa54` · SHA-256 `167247470d580029e410c41cf186d85e14b1517f5391ee103031c2324cd240f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CandidateBoundaryInverseBounded.Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CandidateBoundaryInverseBounded.Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b","mathematical_subject":"Analysis.Integration","original_sha256":"b5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CandidateInverseAdmissionFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Exponential admission of the actual causal inverse boundary function. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CandidateBoundaryInverseBounded.Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b

set_option autoImplicit false
namespace CandidateInverseAdmissionScratch
open MeasureTheory Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
open CandidateTiltScratch CandidateRealizationScratch
noncomputable section

/-- The genuine inverse boundary integral of each fixed candidate is uniformly bounded. -/
theorem candidate_boundaryInverse_bounded (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ, ‖boundaryInverse (candidate X ε h) x‖ ≤ C := by
  obtain ⟨φ, hφ, _, _, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  refine ⟨‖(1 / (2 * Real.pi) : ℂ)‖ * ∫ t : ℝ, φ t, ?_, ?_⟩
  · exact mul_nonneg (norm_nonneg _) (integral_nonneg (fun t =>
      (norm_nonneg _).trans (hb 0 t le_rfl)))
  · intro x
    unfold boundaryInverse
    rw [norm_mul]
    apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
    apply norm_integral_le_of_norm_le hφ
    filter_upwards [] with t
    rw [norm_mul]
    have hn : ‖Complex.exp ((x : ℂ) * ((t : ℂ) * I))‖ = 1 := by
      simp [Complex.norm_exp]
    rw [hn, one_mul]
    simpa only [Complex.ofReal_zero, zero_add] using hb 0 t le_rfl

/-- Removing half the real offset yields an exact exponentially decaying time factor. -/
theorem candidate_boundaryInverse_half_shift (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (-(ε / 2) * x) : ℂ) *
      boundaryInverse (candidate X (ε / 2) h) x := by
  have he := candidate_boundaryInverse_shift X hX (ε / 2) h (by positivity) hh hh1
    (ε / 2) (by positivity) x
  have hεid : ε / 2 + ε / 2 = ε := by ring
  rw [hεid] at he
  rw [he]
  have hmul : (Real.exp (-(ε / 2) * x) : ℂ) * (Real.exp (x * (ε / 2)) : ℂ) = 1 := by
    rw [← Complex.ofReal_mul, ← Real.exp_add]
    ring_nf
    simp
  rw [← mul_assoc, hmul, one_mul]

/-- Every actual inverse has a genuine exponential bound, uniformly over the whole time axis. -/
theorem candidate_boundaryInverse_exp_bound (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ x : ℝ,
      ‖boundaryInverse (candidate X ε h) x‖ ≤ C * Real.exp (-(ε / 2) * x) := by
  obtain ⟨C, hC, hb⟩ := candidate_boundaryInverse_bounded X hX (ε / 2) h
    (by positivity) hh hh1
  refine ⟨C, hC, fun x => ?_⟩
  rw [candidate_boundaryInverse_half_shift X hX ε h hε hh hh1 x, norm_mul,
    Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left (hb x) (Real.exp_nonneg _)

/-- The actual causal inverse is genuinely integrable on the complete real line. -/
theorem candidate_boundaryInverse_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (boundaryInverse (candidate X ε h)) := by
  obtain ⟨C, _, hb⟩ := candidate_boundaryInverse_exp_bound X hX ε h hε hh hh1
  have hp : IntegrableOn (boundaryInverse (candidate X ε h)) (Ioi (0 : ℝ)) := by
    apply ((integrableOn_exp_mul_Ioi (by linarith : -(ε / 2) < 0) 0).const_mul C).mono'
      (candidate_boundaryInverse_continuous X hX ε h hε hh hh1).aestronglyMeasurable
    filter_upwards [] with x
    exact hb x
  have hm : IntegrableOn (boundaryInverse (candidate X ε h)) (Iic (0 : ℝ)) := by
    apply integrableOn_zero.congr_fun_ae
    filter_upwards [ae_restrict_of_ae (volume.ae_ne (0 : ℝ)),
      ae_restrict_mem measurableSet_Iic] with x hx hmem
    exact (candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x
      (lt_of_le_of_ne hmem hx)).symm
  have hu := hp.union hm
  simpa only [Ioi_union_Iic, integrableOn_univ] using hu

/-- Every nonnegative Laplace tilt of the actual inverse is genuinely integrable on the half-line. -/
theorem candidate_boundaryInverse_laplace_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) (Ioi (0 : ℝ)) := by
  apply ((candidate_boundaryInverse_integrable X hX ε h hε hh hh1).norm.integrableOn).mono'
    (((by fun_prop : Continuous (fun x : ℝ => Complex.exp (-z * (x : ℂ)))).mul
      (candidate_boundaryInverse_continuous X hX ε h hε hh hh1)).aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  change ‖Complex.exp (-z * (x : ℂ)) * boundaryInverse (candidate X ε h) x‖ ≤
    ‖boundaryInverse (candidate X ε h) x‖
  rw [norm_mul]
  have hn : ‖Complex.exp (-z * (x : ℂ))‖ ≤ 1 := by
    rw [Complex.norm_exp, Real.exp_le_one_iff]
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hz) hx.le
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hn (norm_nonneg _)

end
end CandidateInverseAdmissionScratch
```
