-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ReciprocalAbsLeHarmonic.Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ReciprocalAbsLeHarmonic.Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/MobiusEndpointBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic


namespace GRWTSK.NumberTheory.ReciprocalAbsLeHarmonic.Variant13946dd8ab56aed8bbb6949c72f09f3371497939ca7d41cd85dd408c336e4dd9

set_option autoImplicit false
namespace MobiusEndpointBudgetScratch
open MeasureTheory Set Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator MobiusPrefixTilt
noncomputable section

private theorem reciprocal_abs_le_harmonic (X : ℕ) :
    |mobiusReciprocalSum X| ≤ (harmonic X : ℝ) := by
  rw [mobiusReciprocalSum]
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 X, |(ArithmeticFunction.moebius n : ℝ) / (n : ℝ)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 X, (n : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro n hn
      have hm : |(ArithmeticFunction.moebius n : ℝ)| ≤ 1 := by
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
      have hd : |(n : ℝ)| = (n : ℝ) := abs_of_nonneg (Nat.cast_nonneg n)
      rw [abs_div, hd, ← one_div]
      exact div_le_div_of_nonneg_right hm (Nat.cast_nonneg n)
    _ = (harmonic X : ℝ) := by
      simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]

/-- The complete original reciprocal Möbius prefix has its unconditional harmonic budget. -/
theorem reciprocal_abs_le_one_add_log (X : ℕ) :
    |mobiusReciprocalSum X| ≤ 1 + Real.log (X : ℝ) :=
  (reciprocal_abs_le_harmonic X).trans (harmonic_le_one_add_log X)

private theorem prefix_abs_le (X : ℕ) (x : ℝ) (hx : x ∈ Set.Icc (1 : ℝ) X) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log (X : ℝ) := by
  calc
    _ ≤ (harmonic ⌊x⌋₊ : ℝ) := reciprocal_abs_le_harmonic _
    _ ≤ 1 + Real.log x := harmonic_floor_le_one_add_log x hx.1
    _ ≤ _ := by
      linarith [Real.log_le_log (lt_of_lt_of_le zero_lt_one hx.1) hx.2]

private theorem integrand_norm_le (X : ℕ) (ε x : ℝ) (hε : 0 ≤ ε)
    (hx : x ∈ Set.Icc (1 : ℝ) X) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
      (1 + Real.log (X : ℝ)) / x := by
  have hx0 : 0 < x := lt_of_lt_of_le zero_lt_one hx.1
  have he : ‖Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ))‖ ≤ 1 := by
    rw [show (1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ) =
      ((-ε * Real.log x : ℝ) : ℂ) by push_cast; ring]
    rw [Complex.norm_exp, Complex.ofReal_re, Real.exp_le_one_iff]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hx.1)
  rw [norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx0]
  apply div_le_div_of_nonneg_right _ hx0.le
  exact (mul_le_mul_of_nonneg_left he (abs_nonneg _)).trans (by
    simpa only [mul_one] using prefix_abs_le X x hx)

/-- The actual corrected numerator near the removed pole has a genuine elementary bound. -/
theorem correctedNumerator_half_add_norm_le (X : ℕ) (ε : ℝ)
    (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ≤
      ε * (1 + Real.log (X : ℝ)) ^ 2 := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hX0 : 0 < (X : ℝ) := lt_of_lt_of_le zero_lt_one hXr
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg hXr
  have hcont : ContinuousOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / x)
      (Set.Icc (1 : ℝ) X) :=
    continuousOn_const.div continuousOn_id (fun x hx =>
      (lt_of_lt_of_le zero_lt_one hx.1).ne')
  have hi : IntegrableOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / x)
      (Set.Ioc (1 : ℝ) X) :=
    hcont.integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self
  have hb : ‖∫ x : ℝ in Set.Ioc 1 (X : ℝ),
      (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
      (1 + Real.log (X : ℝ)) * Real.log (X : ℝ) := by
    calc
      _ ≤ ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (1 + Real.log (X : ℝ)) / x := by
        apply norm_integral_le_of_norm_le hi
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        exact integrand_norm_le X ε x hε ⟨le_of_lt hx.1, hx.2⟩
      _ = _ := by
        rw [← intervalIntegral.integral_of_le hXr]
        simp_rw [div_eq_mul_inv]
        rw [intervalIntegral.integral_const_mul, integral_inv_of_pos zero_lt_one hX0, div_one]
  rw [correctedNumerator_eq_prefix_integral,
    show (1 / 2 + (ε : ℂ)) - 1 / 2 = (ε : ℂ) by ring,
    norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hε]
  calc
    _ ≤ ε * ((1 + Real.log (X : ℝ)) * Real.log (X : ℝ)) :=
      mul_le_mul_of_nonneg_left hb hε
    _ ≤ _ := by gcongr; nlinarith

/-- The finite damped coefficient retains the complete original endpoint correction. -/
def dampedCoefficient (X : ℕ) (ε : ℝ) (d : ℕ) : ℝ :=
  (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ)) -
    if d = X then (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X
    else 0

/-- A finite absolute budget for the exact signed coefficients, including their combined endpoint. -/
theorem dampedCoefficient_abs_sum_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    (∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ≤
      2 * (X : ℝ) * (1 + Real.log (X : ℝ)) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg hXr
  have he (d : ℕ) (hd : 1 ≤ d) : Real.exp (-ε * Real.log (d : ℝ)) ≤ 1 := by
    apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε)
      (Real.log_nonneg (by exact_mod_cast hd))
  have ht (d : ℕ) (hd : d ∈ Finset.Icc 1 X) :
      |dampedCoefficient X ε d| ≤
        1 + if d = X then (X : ℝ) * |mobiusReciprocalSum X| else 0 := by
    have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    have ha : |(ArithmeticFunction.moebius d : ℝ) *
        Real.exp (-ε * Real.log (d : ℝ))| ≤ 1 := by
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      exact (mul_le_mul hm (he d (Finset.mem_Icc.mp hd).1)
        (Real.exp_pos _).le zero_le_one).trans_eq (by norm_num)
    unfold dampedCoefficient
    refine (abs_sub _ _).trans (add_le_add ha ?_)
    split_ifs with h
    · rw [abs_mul, abs_mul, abs_of_nonneg (Nat.cast_nonneg X),
        abs_of_pos (Real.exp_pos _)]
      exact mul_le_mul_of_nonneg_right
        (by simpa only [mul_one] using
          mul_le_mul_of_nonneg_left (he X hX) (Nat.cast_nonneg X)) (abs_nonneg _)
    · simp
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 X,
        (1 + if d = X then (X : ℝ) * |mobiusReciprocalSum X| else 0) :=
      Finset.sum_le_sum ht
    _ = (X : ℝ) + (X : ℝ) * |mobiusReciprocalSum X| := by
      rw [Finset.sum_add_distrib]
      simp [hX]
    _ ≤ (X : ℝ) + (X : ℝ) * (1 + Real.log (X : ℝ)) := by
      gcongr
      exact reciprocal_abs_le_one_add_log X
    _ ≤ _ := by nlinarith [Nat.cast_nonneg (α := ℝ) X]

private theorem damping_exp (d : ℕ) (ε : ℝ) (z : ℂ) :
    (Real.exp (-ε * Real.log (d : ℝ)) : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) =
      Complex.exp (-(1 / 2 + (z + (ε : ℂ))) * (Real.log (d : ℝ) : ℂ)) := by
  rw [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The new finite coefficients represent the unchanged corrected numerator, with its full phase. -/
theorem dampedCoefficient_sum_eq_correctedNumerator (X : ℕ) (ε : ℝ) (z : ℂ)
    (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      correctedNumerator X (z + (ε : ℂ)) := by
  have hX0 : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have ha : (∑ d ∈ Finset.Icc 1 X,
      ((ArithmeticFunction.moebius d : ℂ) * (Real.exp (-ε * Real.log (d : ℝ)) : ℂ)) *
        Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      dirichletNumerator X (z + (ε : ℂ)) := by
    apply Finset.sum_congr rfl
    intro d _
    rw [mul_assoc, damping_exp]
  have hb : (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
      (mobiusReciprocalSum X : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)) =
      (mobiusReciprocalSum X : ℂ) *
        Complex.exp ((1 / 2 - (z + (ε : ℂ))) * (Real.log (X : ℝ) : ℂ)) := by
    have hxexp : (X : ℂ) = Complex.exp (Real.log (X : ℝ) : ℂ) := by
      rw [← Complex.ofReal_exp, Real.exp_log hX0]
      simp
    calc
      _ = (mobiusReciprocalSum X : ℂ) * ((X : ℂ) *
          ((Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
            Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)))) := by ring
      _ = _ := by
        rw [damping_exp, hxexp, ← Complex.exp_add]
        congr 2
        ring
  have hform : (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      ∑ d ∈ Finset.Icc 1 X,
        (((ArithmeticFunction.moebius d : ℂ) * (Real.exp (-ε * Real.log (d : ℝ)) : ℂ)) *
          Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) -
        (if d = X then (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
          (mobiusReciprocalSum X : ℂ) *
            Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) else 0)) := by
    apply Finset.sum_congr rfl
    intro d _
    by_cases hd : d = X
    · simp [dampedCoefficient, hd, sub_mul]
    · simp [dampedCoefficient, hd]
  rw [hform, Finset.sum_sub_distrib, ha]
  have hsum : (∑ d ∈ Finset.Icc 1 X,
      if d = X then (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
        (mobiusReciprocalSum X : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) else 0) =
      (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
        (mobiusReciprocalSum X : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)) := by simp [hX]
  rw [hsum, hb]
  rfl

end
end MobiusEndpointBudgetScratch
