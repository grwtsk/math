import FormalResearch.RiemannHypothesis.Conversation.ActualSourceLaplaceSign

/-!
# Quantitative growth of the actual sixth source moment

A complete nonnegative bump integral retains an interior edge interval of
length one. That unchanged source supplies an exponential sixth-moment lower
bound with the fixed source normalization. This is a coarse proved constant,
not the exact asymptotic coefficient quoted by the source report. Human actual
sixth-moment direction: grwtsk contributors. Local quantitative edge consumer:
OpenAI Codex. Qualified source mathematics retains its original identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthLaplaceGrowth
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity ActualSourceLaplaceMoment
open ActualSourceLaplaceSign ActualCorrelationEdgeProfile MeasureTheory Set
noncomputable section

theorem actual_bump_globally_nonnegative {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    0 ≤ scaledBump A x := by
  rw [scaledBump_eq_indicator A (by linarith)]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx]
    unfold bumpInterior
    positivity
  · rw [indicator_of_notMem hx]

theorem actual_bump_edge_unit_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs : 1 ≤ s) (hs2 : s ≤ 2) :
    1 / (A ^ 4 * Real.sqrt A) ≤ scaledBump A (A - s) := by
  have hpos : 0 < A := by linarith
  have hx : A - s ∈ Icc (-A) A := by constructor <;> linarith
  rw [scaledBump_eq_indicator A hpos, indicator_of_mem hx]
  have heq : bumpInterior A (A - s) =
      (s ^ 4 * (2 - s / A) ^ 4) / (A ^ 4 * Real.sqrt A) := by
    unfold bumpInterior
    field_simp [hpos.ne', (Real.sqrt_pos.mpr hpos).ne']
    ; ring
  rw [heq]
  apply div_le_div_of_nonneg_right _ (by positivity)
  have hs4 : 1 ≤ s ^ 4 := one_le_pow₀ hs
  have hfactor : 1 ≤ 2 - s / A := by
    have hu : s / A ≤ 1 := (div_le_iff₀ hpos).mpr (by linarith)
    linarith
  have hf4 : 1 ≤ (2 - s / A) ^ 4 := one_le_pow₀ hfactor
  exact one_le_mul_of_one_le_of_one_le hs4 hf4

theorem actual_sixth_bump_moment_edge_lower {A : ℝ} (hA : 8 ≤ A) :
    Real.exp ((A - 2) / 6) / (A ^ 4 * Real.sqrt A) ≤ bumpMoment A (1 / 6) := by
  have hA1 : 1 ≤ A := by linarith
  let S := Icc (A - 2) (A - 1)
  let f := fun x : ℝ ↦ Real.exp ((1 / 6) * x) * scaledBump A x
  let b := Real.exp ((A - 2) / 6) / (A ^ 4 * Real.sqrt A)
  have hf : Integrable f volume := weighted_bump_genuinely_integrable hA1 _
  have hc : IntegrableOn (fun _ : ℝ ↦ b) S := continuous_const.integrableOn_Icc
  have hl (x : ℝ) (hx : x ∈ S) : b ≤ f x := by
    have he : Real.exp ((A - 2) / 6) ≤ Real.exp ((1 / 6) * x) :=
      Real.exp_le_exp.mpr (by dsimp only [S] at hx; linarith [hx.1])
    have hb := actual_bump_edge_unit_lower hA
      (by dsimp only [S] at hx; linarith [hx.2] : 1 ≤ A - x)
      (by dsimp only [S] at hx; linarith [hx.1] : A - x ≤ 2)
    have hb' : 1 / (A ^ 4 * Real.sqrt A) ≤ scaledBump A x := by simpa using hb
    dsimp only [b, f]
    have hm := mul_le_mul he hb' (by positivity) (Real.exp_pos _).le
    simpa only [mul_one_div] using hm
  have hs := setIntegral_mono_on hc hf.integrableOn measurableSet_Icc hl
  have hfull : (∫ x in S, f x) ≤ bumpMoment A (1 / 6) :=
    setIntegral_le_integral hf (Filter.Eventually.of_forall
      (fun x ↦ mul_nonneg (Real.exp_pos _).le (actual_bump_globally_nonnegative hA1 x)))
  have hvalue : (∫ _ in S, b) = b := by
    rw [setIntegral_const]
    dsimp only [S]
    rw [Real.volume_real_Icc_of_le (by linarith : A - 2 ≤ A - 1)]
    simp only [smul_eq_mul]
    ring
  rw [hvalue] at hs
  exact hs.trans hfull

theorem actual_sixth_normalized_moment_abs_lower {A : ℝ} (hA : 8 ≤ A) :
    (2 / 9) * (Real.exp ((A - 2) / 6) / (A ^ 4 * Real.sqrt A)) ≤
      |testMoment A (1 / 6)| := by
  have hA1 : 1 ≤ A := by linarith
  have hp := actual_bump_moment_positive hA1 (1 / 6)
  have hn := source_normalization_pos A (by linarith)
  have hr0 : 0 < Real.sqrt (sourceNormalization A) := Real.sqrt_pos.mpr hn
  have hr1 : Real.sqrt (sourceNormalization A) ≤ 1 :=
    Real.sqrt_le_one.mpr (source_normalization_le_one hA)
  rw [exact_actual_normalized_laplace_multiplier hA1, abs_div, abs_mul,
    abs_of_pos hp, abs_of_pos hr0]
  norm_num
  calc
    _ ≤ (2 / 9) * bumpMoment A (1 / 6) :=
      mul_le_mul_of_nonneg_left (actual_sixth_bump_moment_edge_lower hA) (by norm_num)
    _ = ((2 / 9) * bumpMoment A (1 / 6)) / 1 := by simp
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) hr0 hr1

theorem actual_sixth_squared_moment_lower {A : ℝ} (hA : 8 ≤ A) :
    (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) ≤
      (1 / 6) * (testMoment A (1 / 6)) ^ 2 := by
  have hpos : 0 < A := by linarith
  have hb := actual_sixth_normalized_moment_abs_lower hA
  have h0 : 0 ≤ (2 / 9 : ℝ) * (Real.exp ((A - 2) / 6) /
      (A ^ 4 * Real.sqrt A)) := by positivity
  have hs := pow_le_pow_left₀ h0 hb 2
  rw [sq_abs] at hs
  have hscaled := mul_le_mul_of_nonneg_left hs (by norm_num : (0 : ℝ) ≤ 1 / 6)
  have he : Real.exp ((A - 2) / 6) ^ 2 = Real.exp ((A - 2) / 3) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have heq : (1 / 6 : ℝ) * ((2 / 9 : ℝ) * (Real.exp ((A - 2) / 6) /
      (A ^ 4 * Real.sqrt A))) ^ 2 =
      (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) := by
    simp only [mul_pow, div_pow, he, Real.sq_sqrt hpos.le]
    field_simp [hpos.ne']
    ring
  rw [heq] at hscaled
  exact hscaled

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthLaplaceGrowth
