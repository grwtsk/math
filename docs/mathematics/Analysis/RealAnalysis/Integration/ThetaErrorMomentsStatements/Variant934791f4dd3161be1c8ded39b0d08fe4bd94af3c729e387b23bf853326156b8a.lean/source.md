# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMomentsStatements.Variant934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f312207aa53981d81d92b4a8842fe804439c20cb` · SHA-256 `934791f4dd3161be1c8ded39b0d08fe4bd94af3c729e387b23bf853326156b8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

set_option autoImplicit false

namespace ThetaErrorMomentsScratch

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

noncomputable section

/-- The prime part of the unchanged closed-right Mangoldt prefix. -/
def sourcePrimePrefix (x : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 2 ⌊x⌋₊).filter Nat.Prime, ArithmeticFunction.vonMangoldt n

theorem sourcePrimePrefix_eq_theta (x : ℝ) :
    sourcePrimePrefix x = Chebyshev.theta x := by
  rw [sourcePrimePrefix, Chebyshev.theta_eq_sum_Icc]
  calc
    _ = ∑ n ∈ (Finset.Icc 2 ⌊x⌋₊).filter Nat.Prime, Real.log (n : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      exact ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨Nat.zero_le n, (Finset.mem_Icc.mp hn).2⟩, hp⟩
      · intro n hn hn'
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact False.elim (hn' (Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨hp.two_le, (Finset.mem_Icc.mp hn).2⟩, hp⟩))

/-- The actual prime prefix error in logarithmic coordinates, with its centering retained. -/
def thetaLogError (u : ℝ) : ℝ :=
  (sourcePrimePrefix (Real.exp u) - Real.exp u) * Real.exp (-u)

theorem thetaLogError_eq (u : ℝ) :
    thetaLogError u = (Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u) := by
  rw [thetaLogError, sourcePrimePrefix_eq_theta]

theorem thetaLogError_measurable : Measurable thetaLogError := by
  have ht : Measurable (fun u : ℝ => Chebyshev.theta (Real.exp u)) :=
    Chebyshev.theta_mono.measurable.comp Real.continuous_exp.measurable
  have h := (ht.sub Real.continuous_exp.measurable).mul
    (Real.continuous_exp.comp continuous_neg).measurable
  convert h using 1
  funext u
  exact thetaLogError_eq u

theorem thetaLogError_abs_le_global (u : ℝ) :
    |thetaLogError u| ≤ Real.log 4 + 5 := by
  have ht0 := Chebyshev.theta_nonneg (Real.exp u)
  have ht := (Chebyshev.theta_le_psi (Real.exp u)).trans
    (Chebyshev.psi_le_const_mul_self (Real.exp_pos u).le)
  have he : |Chebyshev.theta (Real.exp u) - Real.exp u| ≤
      (Real.log 4 + 5) * Real.exp u := by
    apply (abs_sub _ _).trans
    rw [abs_of_nonneg ht0, abs_of_pos (Real.exp_pos u)]
    nlinarith
  rw [thetaLogError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ ((Real.log 4 + 5) * Real.exp u) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right he (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add, add_neg_cancel, Real.exp_zero, mul_one]

theorem thetaLogError_abs_le_psi_error (u : ℝ) (hu : 0 ≤ u) :
    |thetaLogError u| ≤ |errorProfile u| * Real.exp (-u) +
      2 * u * Real.exp (-u / 2) := by
  have ht := Chebyshev.abs_psi_sub_theta_le_sqrt_mul_log
    (Real.one_le_exp_iff.mpr hu)
  rw [Real.log_exp, ← Real.exp_half] at ht
  have hb : |Chebyshev.theta (Real.exp u) - Real.exp u| ≤
      |errorProfile u| + 2 * Real.exp (u / 2) * u := by
    calc
      _ = |(Chebyshev.psi (Real.exp u) - Real.exp u) -
        (Chebyshev.psi (Real.exp u) - Chebyshev.theta (Real.exp u))| := by congr 1; ring
      _ ≤ |Chebyshev.psi (Real.exp u) - Real.exp u| +
        |Chebyshev.psi (Real.exp u) - Chebyshev.theta (Real.exp u)| := abs_sub _ _
      _ ≤ _ := by
        rw [errorProfile, chebyshevError_eq_psi_sub]
        exact add_le_add le_rfl ht
  rw [thetaLogError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (|errorProfile u| + 2 * Real.exp (u / 2) * u) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right hb (Real.exp_pos _).le
    _ = _ := by
      rw [add_mul]
      congr 1
      calc
        _ = 2 * u * (Real.exp (u / 2) * Real.exp (-u)) := by ring
        _ = _ := by rw [← Real.exp_add]; congr 2; ring

theorem thetaLogError_eventual_bound : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ u ≥ T, |thetaLogError u| ≤ C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) +
      2 * u * Real.exp (-u / 2) := by
  obtain ⟨c, hc, C, hC, T, hT, hb⟩ := errorProfile_quantitative_tail
  refine ⟨c, hc, C, hC, T, hT, ?_⟩
  intro u hu
  apply (thetaLogError_abs_le_psi_error u (by linarith)).trans
  apply add_le_add _ le_rfl
  calc
    _ ≤ (C * Real.exp u * Real.exp (-c * u ^ ((1 : ℝ) / 10))) * Real.exp (-u) :=
      mul_le_mul_of_nonneg_right (hb u hu u le_rfl) (Real.exp_pos _).le
    _ = C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) := by
      calc
        _ = C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) * (Real.exp u * Real.exp (-u)) := by ring
        _ = _ := by rw [← Real.exp_add, add_neg_cancel, Real.exp_zero, mul_one]

theorem polynomial_stretched_integrable (k : ℕ) (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun u : ℝ => u ^ k * Real.exp (-c * u ^ p)) (Ioi 0) := by
  have hk : (-1 : ℝ) < (k : ℝ) :=
    lt_of_lt_of_le (by norm_num : (-1 : ℝ) < 0) (Nat.cast_nonneg k)
  have h := integrableOn_rpow_mul_exp_neg_mul_rpow (s := (k : ℝ)) (p := p) (b := c) hk hp hc
  apply h.congr_fun _ measurableSet_Ioi
  intro u _
  exact congrArg (fun x : ℝ => x * Real.exp (-c * u ^ p)) (Real.rpow_natCast u k)

theorem thetaLogError_moment_prefix_integrable (k : ℕ) (T : ℝ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioc 0 T) := by
  have hm : AEStronglyMeasurable (fun u : ℝ => u ^ k * |thetaLogError u|)
      (volume.restrict (Ioc 0 T)) := by
    exact ((measurable_id.pow_const k).mul thetaLogError_measurable.abs).aestronglyMeasurable
  have hg : IntegrableOn (fun _u : ℝ => (max T 0) ^ k * (Real.log 4 + 5)) (Ioc 0 T) :=
    integrableOn_const (by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top)
  apply hg.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (pow_nonneg hu.1.le _) (abs_nonneg _))]
  apply mul_le_mul (pow_le_pow_left₀ hu.1.le (hu.2.trans (le_max_left _ _)) _)
    (thetaLogError_abs_le_global u) (abs_nonneg _) (by positivity)

theorem thetaLogError_moment_integrable (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioi 0) := by
  obtain ⟨c, hc, C, hC, T, hT, hb⟩ := thetaLogError_eventual_bound
  have ht0 : 0 ≤ T := by linarith
  have hsubset : Ioi T ⊆ Ioi (0 : ℝ) := fun _ hu => lt_of_le_of_lt ht0 hu
  have h1 : IntegrableOn (fun u : ℝ => C * (u ^ k * Real.exp (-c * u ^ ((1 : ℝ) / 10))))
      (Ioi 0) := (polynomial_stretched_integrable k c (1 / 10) hc (by norm_num)).const_mul C
  have h2 : IntegrableOn (fun u : ℝ => 2 * (u ^ (k + 1) * Real.exp (-u / 2))) (Ioi 0) := by
    have h : IntegrableOn (fun u : ℝ => 2 * (u ^ (k + 1) * Real.exp (-(1 / 2) * u ^ (1 : ℝ))))
        (Ioi 0) := (polynomial_stretched_integrable (k + 1) (1 / 2) 1
          (by norm_num) (by norm_num)).const_mul 2
    apply h.congr_fun _ measurableSet_Ioi
    intro u _
    simp only [Real.rpow_one]
    congr 3
    ring
  have htail : IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioi T) := by
    have hm : AEStronglyMeasurable (fun u : ℝ => u ^ k * |thetaLogError u|)
        (volume.restrict (Ioi T)) :=
      ((measurable_id.pow_const k).mul thetaLogError_measurable.abs).aestronglyMeasurable
    have hg : IntegrableOn (fun u : ℝ => C * (u ^ k * Real.exp (-c * u ^ ((1 : ℝ) / 10))) +
        2 * (u ^ (k + 1) * Real.exp (-u / 2))) (Ioi 0) := h1.add h2
    apply (hg.mono_set hsubset).mono' hm
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, abs_of_nonneg
      (mul_nonneg (pow_nonneg (hsubset hu).le _) (abs_nonneg _))]
    calc
      _ ≤ u ^ k * (C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) + 2 * u * Real.exp (-u / 2)) :=
        mul_le_mul_of_nonneg_left (hb u hu.le) (pow_nonneg (hsubset hu).le _)
      _ = _ := by simp only [pow_succ]; ring
  have hunion : Ioc (0 : ℝ) T ∪ Ioi T = Ioi 0 := by
    ext u
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨hu, _⟩ | hu)
      · exact hu
      · exact lt_of_le_of_lt ht0 hu
    · intro hu
      by_cases h : u ≤ T
      · exact Or.inl ⟨hu, h⟩
      · exact Or.inr (lt_of_not_ge h)
  rw [← hunion]
  exact (thetaLogError_moment_prefix_integrable k T).union htail

theorem thetaLogError_integrable : IntegrableOn (fun u : ℝ => |thetaLogError u|) (Ioi 0) := by
  simpa using thetaLogError_moment_integrable 0

theorem thetaLogError_first_moment_integrable :
    IntegrableOn (fun u : ℝ => u * |thetaLogError u|) (Ioi 0) := by
  simpa using thetaLogError_moment_integrable 1

theorem thetaLogError_second_moment_integrable :
    IntegrableOn (fun u : ℝ => u ^ 2 * |thetaLogError u|) (Ioi 0) :=
  thetaLogError_moment_integrable 2

/-- Literal Mathlib-theta form of the moment, with no source adapter hidden in the conclusion. -/
theorem theta_error_logarithmic_moment_integrable (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k *
      |(Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u)|) (Ioi 0) := by
  simpa only [thetaLogError_eq] using thetaLogError_moment_integrable k

end
end ThetaErrorMomentsScratch

open MeasureTheory Set Filter
open ThetaErrorMomentsScratch
open FormalResearch.RiemannHypothesis.SourcePairing

example (x : ℝ) :
    sourcePrimePrefix x = Chebyshev.theta x :=
  ThetaErrorMomentsScratch.sourcePrimePrefix_eq_theta x

example (u : ℝ) :
    thetaLogError u = (Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u) :=
  ThetaErrorMomentsScratch.thetaLogError_eq u

example : Measurable thetaLogError :=
  ThetaErrorMomentsScratch.thetaLogError_measurable

example (u : ℝ) :
    |thetaLogError u| ≤ Real.log 4 + 5 :=
  ThetaErrorMomentsScratch.thetaLogError_abs_le_global u

example (u : ℝ) (hu : 0 ≤ u) :
    |thetaLogError u| ≤ |errorProfile u| * Real.exp (-u) +
      2 * u * Real.exp (-u / 2) :=
  ThetaErrorMomentsScratch.thetaLogError_abs_le_psi_error u hu

example : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ u ≥ T, |thetaLogError u| ≤ C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) +
      2 * u * Real.exp (-u / 2) :=
  ThetaErrorMomentsScratch.thetaLogError_eventual_bound

example (k : ℕ) (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun u : ℝ => u ^ k * Real.exp (-c * u ^ p)) (Ioi 0) :=
  ThetaErrorMomentsScratch.polynomial_stretched_integrable k c p hc hp

example (k : ℕ) (T : ℝ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioc 0 T) :=
  ThetaErrorMomentsScratch.thetaLogError_moment_prefix_integrable k T

example (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioi 0) :=
  ThetaErrorMomentsScratch.thetaLogError_moment_integrable k

example : IntegrableOn (fun u : ℝ => |thetaLogError u|) (Ioi 0) :=
  ThetaErrorMomentsScratch.thetaLogError_integrable

example :
    IntegrableOn (fun u : ℝ => u * |thetaLogError u|) (Ioi 0) :=
  ThetaErrorMomentsScratch.thetaLogError_first_moment_integrable

example :
    IntegrableOn (fun u : ℝ => u ^ 2 * |thetaLogError u|) (Ioi 0) :=
  ThetaErrorMomentsScratch.thetaLogError_second_moment_integrable

example (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k *
      |(Chebyshev.theta (Real.exp u) - Real.exp u) * Real.exp (-u)|) (Ioi 0) :=
  ThetaErrorMomentsScratch.theta_error_logarithmic_moment_integrable k

example (x : ℝ) : sourcePrimePrefix x =
    ∑ n ∈ (Finset.Icc 2 ⌊x⌋₊).filter Nat.Prime, ArithmeticFunction.vonMangoldt n := rfl

example (u : ℝ) : thetaLogError u =
    (sourcePrimePrefix (Real.exp u) - Real.exp u) * Real.exp (-u) := rfl
```
