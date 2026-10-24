import FormalResearch.RiemannHypothesis.GaussianSourceConsumer
import FormalResearch.RiemannHypothesis.ActualSourceConsumer

/-!
# Paid cutoff-dependent Gaussian approximation of the original signed source

Research direction and high-priority emphasis: grwtsk contributors.
Precise lemma selection and formal construction: OpenAI Codex, 7 October 2026.
All natural indices, prime-power coefficients, signs and closed cutoffs are retained.
This supplies an unconditional approximation-price budget, not arithmetic cancellation.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianBudget

open MeasureTheory ProbabilityTheory SourceKapitzaSquareShell SourceCenteredSmoothing
open GaussianSourceConsumer
open scoped NNReal ENNReal BigOperators

/-- The complete absolute coefficient mass of the original finite signed source. -/
def coefficientMass (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|

/-- The complete original logarithmic tangent-drift mass. -/
def driftMass (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N,
    |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
      |Real.log n - Real.log (shellEndpoint N n)|

theorem coefficient_abs_le_nat {n : ℕ} (hn : 2 ≤ n) :
    |ArithmeticFunction.vonMangoldt n - 1| ≤ (n : ℝ) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hlog := Real.log_le_sub_one_of_pos hn0
  have hm := ArithmeticFunction.vonMangoldt_le_log (n := n)
  have hp := ArithmeticFunction.vonMangoldt_nonneg (n := n)
  have ha := abs_sub (ArithmeticFunction.vonMangoldt n) (1 : ℝ)
  rw [abs_of_nonneg hp, abs_one] at ha
  linarith

theorem coefficient_weight_le_cutoff {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| ≤ (N : ℝ) := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (by omega : 1 ≤ n)
  have hs : 1 ≤ Real.sqrt (n : ℝ) := Real.one_le_sqrt.mpr hn1
  calc
    _ = |ArithmeticFunction.vonMangoldt n - 1| / Real.sqrt n := by
      rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    _ ≤ |ArithmeticFunction.vonMangoldt n - 1| := div_le_self (abs_nonneg _) hs
    _ ≤ (n : ℝ) := coefficient_abs_le_nat hn
    _ ≤ (N : ℝ) := by exact_mod_cast hnN

/-- Square-shell geometry prices each unchanged signed atom's drift by two. -/
theorem drift_atom_le_two {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
      |Real.log n - Real.log (shellEndpoint N n)| ≤ 2 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hs0 : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hn0
  have hs2 := Real.sq_sqrt hn0.le
  have hd2 := shell_log_squared_le hn hnN
  have hp0 : 0 ≤ Real.sqrt (n : ℝ) *
      |Real.log n - Real.log (shellEndpoint N n)| := by positivity
  have hp2 : (Real.sqrt (n : ℝ) *
      |Real.log n - Real.log (shellEndpoint N n)|) ^ 2 ≤ 4 := by
    rw [mul_pow, sq_abs, hs2]
    have hh := mul_le_mul_of_nonneg_left hd2 hn0.le
    have hc : (n : ℝ) * (4 / (n : ℝ)) = 4 := by field_simp
    exact hh.trans_eq hc
  have hprod : Real.sqrt (n : ℝ) *
      |Real.log n - Real.log (shellEndpoint N n)| ≤ 2 := by nlinarith
  have hquot : (n : ℝ) / Real.sqrt n = Real.sqrt n := by
    apply (div_eq_iff hs0.ne').mpr
    nlinarith [hs2]
  calc
    _ = (|ArithmeticFunction.vonMangoldt n - 1| / Real.sqrt n) *
        |Real.log n - Real.log (shellEndpoint N n)| := by
      rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    _ ≤ ((n : ℝ) / Real.sqrt n) *
        |Real.log n - Real.log (shellEndpoint N n)| :=
      mul_le_mul_of_nonneg_right
        (div_le_div_of_nonneg_right (coefficient_abs_le_nat hn) hs0.le) (abs_nonneg _)
    _ = Real.sqrt (n : ℝ) * |Real.log n - Real.log (shellEndpoint N n)| := by rw [hquot]
    _ ≤ 2 := hprod

theorem coefficientMass_le_square (N : ℕ) : coefficientMass N ≤ (N : ℝ) ^ 2 := by
  have hc : (Finset.Icc 2 N).card ≤ N := by rw [Nat.card_Icc]; omega
  have hcr : ((Finset.Icc 2 N).card : ℝ) ≤ N := by exact_mod_cast hc
  unfold coefficientMass
  calc
    _ ≤ ∑ _n ∈ Finset.Icc 2 N, (N : ℝ) :=
      Finset.sum_le_sum (fun n hn => coefficient_weight_le_cutoff
        (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).2)
    _ = ((Finset.Icc 2 N).card : ℝ) * N := by simp
    _ ≤ (N : ℝ) ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_right hcr (Nat.cast_nonneg N)]

theorem driftMass_le_twice_cutoff (N : ℕ) : driftMass N ≤ 2 * (N : ℝ) := by
  have hc : (Finset.Icc 2 N).card ≤ N := by rw [Nat.card_Icc]; omega
  have hcr : ((Finset.Icc 2 N).card : ℝ) ≤ N := by exact_mod_cast hc
  unfold driftMass
  calc
    _ ≤ ∑ _n ∈ Finset.Icc 2 N, (2 : ℝ) :=
      Finset.sum_le_sum (fun n hn => drift_atom_le_two
        (Finset.mem_Icc.mp hn).1 (Finset.mem_Icc.mp hn).2)
    _ = ((Finset.Icc 2 N).card : ℝ) * 2 := by simp
    _ ≤ 2 * (N : ℝ) := by linarith

/-- Positive variance chosen from the complete cutoff, without an arithmetic cap. -/
def cutoffVariance (N : ℕ) : ℝ≥0 :=
  ⟨(1 / ((N : ℝ) + 1)) ^ 2, sq_nonneg _⟩

theorem cutoffVariance_pos (N : ℕ) : 0 < cutoffVariance N := by
  change 0 < (1 / ((N : ℝ) + 1)) ^ 2
  positivity

theorem sqrt_cutoffVariance (N : ℕ) :
    Real.sqrt (cutoffVariance N : ℝ) = 1 / ((N : ℝ) + 1) := by
  change Real.sqrt ((1 / ((N : ℝ) + 1)) ^ 2) = 1 / ((N : ℝ) + 1)
  exact Real.sqrt_sq (by positivity)

theorem inverse_cutoff_mul_le_one (N : ℕ) :
    (1 / ((N : ℝ) + 1)) * N ≤ 1 := by
  calc
    _ = (N : ℝ) / ((N : ℝ) + 1) := by ring
    _ ≤ 1 := (div_le_one (by positivity)).mpr (by linarith)

/-- The value approximation price is paid uniformly at every natural cutoff. -/
theorem variance_coefficientMass_le_one (N : ℕ) :
    (cutoffVariance N : ℝ) * coefficientMass N ≤ 1 := by
  have hratio := inverse_cutoff_mul_le_one N
  have hratio0 : 0 ≤ (1 / ((N : ℝ) + 1)) * N := by positivity
  have hsq : ((1 / ((N : ℝ) + 1)) * N) ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg hratio0 (sub_nonneg.mpr hratio)]
  calc
    _ ≤ (cutoffVariance N : ℝ) * (N : ℝ) ^ 2 :=
      mul_le_mul_of_nonneg_left (coefficientMass_le_square N) (NNReal.coe_nonneg _)
    _ = ((1 / ((N : ℝ) + 1)) * N) ^ 2 := by
      change (1 / ((N : ℝ) + 1)) ^ 2 * (N : ℝ) ^ 2 =
        ((1 / ((N : ℝ) + 1)) * N) ^ 2
      ring
    _ ≤ 1 := hsq

/-- The complete original drift price is paid uniformly, without dropping its sign inventory. -/
theorem sqrt_variance_driftMass_le_two (N : ℕ) :
    Real.sqrt (cutoffVariance N : ℝ) * driftMass N ≤ 2 := by
  rw [sqrt_cutoffVariance]
  calc
    _ ≤ (1 / ((N : ℝ) + 1)) * (2 * N) :=
      mul_le_mul_of_nonneg_left (driftMass_le_twice_cutoff N) (by positivity)
    _ ≤ 2 := by nlinarith [inverse_cutoff_mul_le_one N]

end FormalResearch.RiemannHypothesis.SourceAdaptiveGaussianBudget
