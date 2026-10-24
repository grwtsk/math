-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FractEqSubOfUnitCell.Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FractEqSubOfUnitCell.Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f","mathematical_subject":"Analysis.Calculus","original_sha256":"35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/descendant-incremental-20261006T223836Z/source-references/ea1517a295a874ce937c/SourceFractionalQuadrature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Topology.Algebra.InfiniteSum.Basic

/-!
# Positive-axis fractional-part quadrature

The unit cell starting at zero is retained. Finite quadrature runs through
`N+1`; removing its last sample requires the literal endpoint vanishing.
The positive-axis identity applies to the actual zero extension, rather than
silently replacing the integral on `(0,∞)` by the integral on `[1,∞)`.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FractEqSubOfUnitCell.Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceFractionalQuadrature

open MeasureTheory Set Filter Function

noncomputable section

/-- Fractional part is the exact affine coordinate inside an open unit cell. -/
theorem fract_eq_sub_of_unit_cell (k : ℕ) {u : ℝ}
    (hu : u ∈ Ioo (k : ℝ) (k + 1 : ℝ)) : Int.fract u = u - k := by
  rw [Int.fract, Int.floor_eq_on_Ico (k : ℤ) u]
  · simp
  · exact ⟨by simpa using hu.1.le, by simpa using hu.2⟩

/-- The discontinuous fractional factor is bounded and does not obstruct integrability. -/
theorem fract_deriv_intervalIntegrable (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (a b : ℝ) :
    IntervalIntegrable (fun u => Int.fract u * deriv f u) volume a b := by
  have hd := hf.continuous_deriv (by norm_num)
  have hdi : IntegrableOn (deriv f) (uIcc a b) := by
    exact hd.integrableOn_Icc
  have hi : IntegrableOn (fun u => Int.fract u * deriv f u) (uIcc a b) :=
    hdi.bdd_mul
      measurable_fract.aestronglyMeasurable (Eventually.of_forall fun u => by
        rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
        exact (Int.fract_lt_one u).le)
  exact (intervalIntegrable_iff' (μ := volume)
    (f := fun u => Int.fract u * deriv f u)).mpr hi

/-- Right-endpoint quadrature on a unit cell has a positive fractional-part remainder. -/
theorem unit_right_sampling_identity (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (k : ℕ) :
    f (k + 1 : ℝ) - (∫ u in (k : ℝ)..(k + 1 : ℝ), f u) =
      ∫ u in (k : ℝ)..(k + 1 : ℝ), Int.fract u * deriv f u := by
  have h := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (k : ℝ)) (b := (k + 1 : ℝ))
    (u := fun u : ℝ => u - k) (v := f)
    (u' := fun _ : ℝ => (1 : ℝ)) (v' := deriv f)
    (fun u _ => (hasDerivAt_id u).sub_const (k : ℝ))
    (fun u _ => ((hf.differentiable (by norm_num)) u).hasDerivAt)
    (continuous_const.intervalIntegrable _ _)
    ((hf.continuous_deriv (by norm_num)).intervalIntegrable _ _)
  simp only [sub_self, add_sub_cancel_left, zero_mul, one_mul, sub_zero] at h
  have he : (∫ u in (k : ℝ)..(k + 1 : ℝ), (u - k) * deriv f u) =
      ∫ u in (k : ℝ)..(k + 1 : ℝ), Int.fract u * deriv f u := by
    apply intervalIntegral.integral_congr_Ioo_of_le (by linarith)
    intro u hu
    dsimp only
    rw [fract_eq_sub_of_unit_cell k hu]
  rw [he] at h
  linarith

/-- The finite identity keeps the last sample at `N+1` and the entire cell below one. -/
theorem finite_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, f n) + f (N + 1 : ℝ) -
      (∫ u in 0..(N + 1 : ℝ), f u) =
        ∫ u in 0..(N + 1 : ℝ), Int.fract u * deriv f u := by
  induction N with
  | zero => simpa using unit_right_sampling_identity f hf 0
  | succ N ih =>
    have hfadd := intervalIntegral.integral_add_adjacent_intervals
      (hf.continuous.intervalIntegrable (μ := volume) 0 (N + 1 : ℝ))
      (hf.continuous.intervalIntegrable (μ := volume) (N + 1 : ℝ) (N + 2 : ℝ))
    have hdadd := intervalIntegral.integral_add_adjacent_intervals
      (fract_deriv_intervalIntegrable f hf 0 (N + 1 : ℝ))
      (fract_deriv_intervalIntegrable f hf (N + 1 : ℝ) (N + 2 : ℝ))
    have hu := unit_right_sampling_identity f hf (N + 1)
    simp only [Nat.cast_add, Nat.cast_one] at hu ⊢
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
    have hcast : (N : ℝ) + 1 + 1 = N + 2 := by ring
    rw [hcast] at hu ⊢
    simp only [Nat.cast_add, Nat.cast_one]
    rw [← hfadd, ← hdadd]
    linarith

/-- Endpoint vanishing is the checked condition that removes the last sample. -/
theorem finite_quadrature_of_endpoint_zero (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (N : ℕ) (hN : f (N + 1 : ℝ) = 0) :
    (∑ n ∈ Finset.Icc 1 N, f n) - (∫ u in 0..(N + 1 : ℝ), f u) =
      ∫ u in 0..(N + 1 : ℝ), Int.fract u * deriv f u := by
  simpa only [hN, add_zero] using finite_quadrature f hf N

/-- The positive-axis zero extension gives the exact signed quadrature identity. -/
theorem positive_axis_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (_hs : HasCompactSupport f) (N : ℕ)
    (hbelow : ∀ u : ℝ, u ≤ 0 → f u = 0)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑ n ∈ Finset.Icc 1 N, f n) - (∫ u in Ioi (0 : ℝ), f u) =
      ∫ u in Ioi (0 : ℝ), Int.fract u * deriv f u := by
  have hsupport : support f ⊆ Ioc 0 (N + 1 : ℝ) := by
    intro u hu
    constructor
    · by_contra h
      exact hu (hbelow u (le_of_not_gt h))
    · by_contra h
      exact hu (hupper u (le_of_lt (lt_of_not_ge h)))
  have htsupport : tsupport f ⊆ Icc 0 (N + 1 : ℝ) :=
    closure_minimal (hsupport.trans Ioc_subset_Icc_self) isClosed_Icc
  have hd : support (fun u : ℝ => Int.fract u * deriv f u) ⊆ Ioc 0 (N + 1 : ℝ) := by
    intro u hu
    have hdu : deriv f u ≠ 0 := by intro h; exact hu (by simp [h])
    have hum := htsupport (support_deriv_subset hdu)
    refine ⟨lt_of_le_of_ne hum.1 ?_, hum.2⟩
    intro he
    exact hu (by simp [← he, Int.fract_zero])
  have hi : (∫ u in Ioi (0 : ℝ), f u) = ∫ u : ℝ, f u :=
    setIntegral_eq_integral_of_forall_compl_eq_zero fun u hu => hbelow u (le_of_not_gt hu)
  have hdi : (∫ u in Ioi (0 : ℝ), Int.fract u * deriv f u) =
      ∫ u : ℝ, Int.fract u * deriv f u :=
    setIntegral_eq_integral_of_forall_compl_eq_zero (by
      intro u hu
      by_contra hn
      exact hu (hd hn).1)
  have hfinite := finite_quadrature_of_endpoint_zero f hf N (hupper _ le_rfl)
  rw [intervalIntegral.integral_eq_integral_of_support_subset hsupport,
    intervalIntegral.integral_eq_integral_of_support_subset hd, ← hi, ← hdi] at hfinite
  exact hfinite

/-- Compact positive-axis samples stabilize exactly at the finite integer inventory. -/
theorem positive_samples_tsum_eq_sum (f : ℝ → ℝ) (N : ℕ)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑' n : ℕ, f (n + 1 : ℝ)) = ∑ n ∈ Finset.Icc 1 N, f n := by
  have ht : (∑' n : ℕ, f (n + 1 : ℝ)) =
      ∑ n ∈ Finset.range N, f (n + 1 : ℝ) := by
    apply tsum_eq_sum
    intro n hn
    have hNn : N ≤ n := by simpa only [Finset.mem_range, not_lt] using hn
    exact hupper _ (by exact_mod_cast Nat.add_le_add_right hNn 1)
  rw [ht]
  clear hupper ht
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), ih]
    simp only [Nat.cast_add, Nat.cast_one]

/-- The literal sum over all positive integer samples retains the full positive-axis integral. -/
theorem positive_axis_tsum_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (N : ℕ)
    (hbelow : ∀ u : ℝ, u ≤ 0 → f u = 0)
    (hupper : ∀ u : ℝ, (N + 1 : ℝ) ≤ u → f u = 0) :
    (∑' n : ℕ, f (n + 1 : ℝ)) - (∫ u in Ioi (0 : ℝ), f u) =
      ∫ u in Ioi (0 : ℝ), Int.fract u * deriv f u := by
  rw [positive_samples_tsum_eq_sum f N hupper]
  exact positive_axis_quadrature f hf hs N hbelow hupper

end
end FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
