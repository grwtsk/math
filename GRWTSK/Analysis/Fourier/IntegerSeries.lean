/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FunProp
import Mathlib.Analysis.Fourier.LpSpace

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped BigOperators

/-- Exact mathematical encoding; finite i64 representations have a separate bound. -/
def eta (s : ℤ) : ℝ := (s : ℝ) / (1 + |(s : ℝ)|)

theorem eta_abs_lt_one (s : ℤ) : |eta s| < 1 := by
  have hp : 0 < 1 + |(s : ℝ)| := by positivity
  rw [eta, abs_div, abs_of_pos hp, div_lt_one hp]
  linarith [abs_nonneg (s : ℝ)]

theorem eta_injective : Function.Injective eta := by
  intro a b h
  have ha : 0 < 1 + |(a : ℝ)| := by positivity
  have hb : 0 < 1 + |(b : ℝ)| := by positivity
  have hcross := (div_eq_div_iff ha.ne' hb.ne').mp h
  have heq : (a : ℝ) = b := by
    by_cases hA : 0 ≤ (a : ℝ) <;> by_cases hB : 0 ≤ (b : ℝ)
    · simp only [abs_of_nonneg hA, abs_of_nonneg hB] at hcross
      nlinarith
    · simp only [abs_of_nonneg hA, abs_of_neg (lt_of_not_ge hB)] at hcross
      nlinarith
    · simp only [abs_of_neg (lt_of_not_ge hA), abs_of_nonneg hB] at hcross
      nlinarith
    · simp only [abs_of_neg (lt_of_not_ge hA), abs_of_neg (lt_of_not_ge hB)] at hcross
      nlinarith
  exact_mod_cast heq

/-- Index zero represents the first harmonic, avoiding a constant coefficient. -/
def carrier (s : ℕ → ℤ) (k : ℕ) : ℝ := (1 / 2 : ℝ) ^ (k + 1) * eta (s k)
def coefficientWaveform (a : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑' k : ℕ, a k * Real.cos ((k + 1 : ℕ) * x)

theorem carrier_norm_bound (s : ℕ → ℤ) (k : ℕ) :
    ‖carrier s k‖ ≤ (1 / 2 : ℝ) ^ (k + 1) := by
  rw [carrier, norm_mul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  simpa using mul_le_mul_of_nonneg_left (eta_abs_lt_one (s k)).le
    (by positivity : 0 ≤ (1 / 2 : ℝ) ^ (k + 1))

theorem carrier_summable (s : ℕ → ℤ) : Summable (fun k ↦ ‖carrier s k‖) := by
  apply Summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _) (carrier_norm_bound s)
  simpa only [pow_succ] using (summable_geometric_of_abs_lt_one
    (by norm_num : |(1 / 2 : ℝ)| < 1)).mul_right (1 / 2)

theorem coefficientWaveform_summable (a : ℕ → ℝ) (ha : Summable fun k ↦ ‖a k‖) (x : ℝ) :
    Summable (fun k ↦ a k * Real.cos ((k + 1 : ℕ) * x)) := by
  apply Summable.of_norm_bounded ha
  intro k
  rw [norm_mul]
  exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_cos_le_one ((k+1:ℕ)*x)) (norm_nonneg _)).trans_eq (mul_one _)

theorem coefficientWaveform_continuous (a : ℕ → ℝ)
    (ha : Summable fun k ↦ ‖a k‖) : Continuous (coefficientWaveform a) := by
  apply continuous_tsum
  · intro k; fun_prop
  · exact ha
  · intro k x
    rw [norm_mul]
    exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_cos_le_one ((k+1:ℕ)*x)) (norm_nonneg _)).trans_eq (mul_one _)

theorem coefficientWaveform_periodic (a : ℕ → ℝ) :
    Function.Periodic (coefficientWaveform a) (2 * Real.pi) := by
  intro x
  unfold coefficientWaveform
  apply tsum_congr
  intro k
  congr 1
  rw [mul_add]
  have h := Real.cos_add_nat_mul_two_pi ((k+1:ℕ)*x) (k+1)
  simpa [mul_comm (2 * Real.pi)] using h

/-- Uniform derivative envelope is explicit; it is not inferred from convergence of a alone. -/
theorem coefficientWaveform_hasDerivAt (a : ℕ → ℝ)
    (ha : Summable fun k ↦ ‖a k‖)
    (hderiv : Summable fun k ↦ ‖a k‖ * (k + 1 : ℕ)) (x : ℝ) :
    HasDerivAt (coefficientWaveform a)
      (∑' k : ℕ, -(a k * (k + 1 : ℕ)) * Real.sin ((k + 1 : ℕ) * x)) x := by
  unfold coefficientWaveform
  refine hasDerivAt_tsum (g := fun k y => a k * Real.cos ((k+1:ℕ)*y))
    (g' := fun k y => -(a k * (k+1:ℕ)) * Real.sin ((k+1:ℕ)*y)) hderiv ?_ ?_
    (coefficientWaveform_summable a ha 0) x
  · intro k y
    simpa [mul_comm, mul_left_comm, mul_assoc] using
      (((hasDerivAt_id y).const_mul ((k+1:ℕ):ℝ)).cos.const_mul (a k))
  · intro k y
    rw [norm_mul, norm_neg, norm_mul, Real.norm_natCast]
    exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*y)) (by positivity)).trans_eq (mul_one _)

theorem carrier_derivative_summable (s : ℕ → ℤ) :
    Summable (fun k => ‖carrier s k‖ * (k+1:ℕ)) := by
  have hr : ‖(1/2:ℝ)‖ < 1 := by norm_num
  have hg := summable_geometric_of_norm_lt_one hr
  have hn := summable_pow_mul_geometric_of_norm_lt_one (R := ℝ) 1 hr
  have hmajor : Summable (fun k : ℕ => (1/2:ℝ)^(k+1)*(k+1:ℕ)) := by
    apply ((hn.add hg).mul_right (1/2:ℝ)).congr
    intro k
    simp only [pow_succ, Nat.cast_add, Nat.cast_one]
    ring
  exact Summable.of_nonneg_of_le (fun k => by positivity)
    (fun k => mul_le_mul_of_nonneg_right (carrier_norm_bound s k) (by positivity)) hmajor

theorem coefficientWaveform_contDiff (a : ℕ → ℝ)
    (ha : Summable fun k => ‖a k‖) (hderiv : Summable fun k => ‖a k‖*(k+1:ℕ)) :
    ContDiff ℝ 1 (coefficientWaveform a) := by
  apply contDiff_one_iff_deriv.mpr
  constructor
  · intro x; exact (coefficientWaveform_hasDerivAt a ha hderiv x).differentiableAt
  · have hd : deriv (coefficientWaveform a) =
        fun x => ∑' k : ℕ, -(a k * (k+1:ℕ))*Real.sin ((k+1:ℕ)*x) := by
      funext x; exact (coefficientWaveform_hasDerivAt a ha hderiv x).deriv
    rw [hd]
    apply continuous_tsum
    · intro k; fun_prop
    · exact hderiv
    · intro k x
      rw [norm_mul,norm_neg,norm_mul,Real.norm_natCast]
      exact (mul_le_mul_of_nonneg_left
        (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*x))
        (by positivity)).trans_eq (mul_one _)

theorem coefficientWaveform_lipschitz (a : ℕ → ℝ)
    (ha : Summable fun k => ‖a k‖) (hderiv : Summable fun k => ‖a k‖*(k+1:ℕ)) :
    LipschitzWith ⟨∑' k : ℕ, ‖a k‖*(k+1:ℕ), tsum_nonneg (fun _ => by positivity)⟩
      (coefficientWaveform a) := by
  apply lipschitzWith_of_nnnorm_deriv_le
  · intro x; exact (coefficientWaveform_hasDerivAt a ha hderiv x).differentiableAt
  · intro x
    apply NNReal.coe_le_coe.mp
    change ‖deriv (coefficientWaveform a) x‖ ≤ _
    rw [(coefficientWaveform_hasDerivAt a ha hderiv x).deriv]
    have hb : ∀ k : ℕ, ‖-(a k*(k+1:ℕ))*Real.sin ((k+1:ℕ)*x)‖ ≤ ‖a k‖*(k+1:ℕ) := by
      intro k
      rw [norm_mul,norm_neg,norm_mul,Real.norm_natCast]
      exact (mul_le_mul_of_nonneg_left
        (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*x))
        (by positivity)).trans_eq (mul_one _)
    have hs := Summable.of_nonneg_of_le (fun k => norm_nonneg _) hb hderiv
    exact (norm_tsum_le_tsum_norm hs).trans (hs.tsum_le_tsum hb hderiv)

theorem encoded_sequence_contDiff (s : ℕ → ℤ) :
    ContDiff ℝ 1 (coefficientWaveform (carrier s)) :=
  coefficientWaveform_contDiff _ (carrier_summable s) (carrier_derivative_summable s)

/-- Integer frequencies can grow arbitrarily; the envelope pays their magnitude. -/
def frequencyAmplitude (s : ℕ → ℤ) (k : ℕ) : ℝ :=
  (1 / 2 : ℝ) ^ (k + 1) / (1 + |(s k : ℝ)|)

theorem frequency_derivative_bound (s : ℕ → ℤ) (k : ℕ) :
    |frequencyAmplitude s k * (s k : ℝ)| ≤ (1 / 2 : ℝ) ^ (k + 1) := by
  have hp : 0 < 1 + |(s k : ℝ)| := by positivity
  rw [frequencyAmplitude, abs_mul, abs_div, abs_of_nonneg (by positivity), abs_of_pos hp]
  have hc : |(s k : ℝ)| / (1 + |(s k : ℝ)|) ≤ 1 := (div_le_one hp).mpr (by linarith)
  calc
    _ = (1 / 2 : ℝ) ^ (k + 1) * (|(s k : ℝ)| / (1 + |(s k : ℝ)|)) := by ring
    _ ≤ _ := by simpa using mul_le_mul_of_nonneg_left hc (by positivity : 0 ≤ (1/2:ℝ)^(k+1))


end GRWTSK.Analysis.Waveform
