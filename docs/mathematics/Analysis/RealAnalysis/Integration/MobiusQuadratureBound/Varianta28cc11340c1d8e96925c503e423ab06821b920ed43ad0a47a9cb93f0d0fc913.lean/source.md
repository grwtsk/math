# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBound.Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a72de2c69fa53f906a9ff18963b7b7575eac467d` · SHA-256 `a28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.LogSquareQuadrature
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

set_option autoImplicit false
namespace MobiusQuadratureBoundScratch
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open scoped Topology
noncomputable section

/-- The positive logarithmic kernel, including its harmless totalized value at zero. -/
def logRatioSquare (x t : ℝ) : ℝ := Real.log (x / t) ^ 2

/-- A primitive with finite zero-endpoint limit. -/
def logRatioPrimitive (x t : ℝ) : ℝ :=
  t * ((Real.log x - Real.log t) ^ 2 + 2 * (Real.log x - Real.log t) + 2)

theorem logRatioSquare_nonneg (x t : ℝ) : 0 ≤ logRatioSquare x t := sq_nonneg _

/-- The singular endpoint has an explicit integrable inverse-square-root majorant. -/
theorem logRatioSquare_le_rpow (x t : ℝ) (hx : 0 < x) (ht : t ∈ Ioc 0 x) :
    logRatioSquare x t ≤ (16 * x ^ (1 / 2 : ℝ)) * t ^ (-(1 / 2 : ℝ)) := by
  have hratio : 1 ≤ x / t := (le_div_iff₀ ht.1).mpr (by simpa using ht.2)
  have hlog := Real.log_le_rpow_div (div_nonneg hx.le ht.1.le)
    (by norm_num : (0 : ℝ) < 1 / 4)
  unfold logRatioSquare
  calc
    _ ≤ ((x / t) ^ (1 / 4 : ℝ) / (1 / 4 : ℝ)) ^ 2 :=
      pow_le_pow_left₀ (Real.log_nonneg hratio) hlog 2
    _ = 16 * (x / t) ^ (1 / 2 : ℝ) := by
      rw [div_pow, ← Real.rpow_natCast, ← Real.rpow_mul (div_nonneg hx.le ht.1.le)]
      norm_num
      ring
    _ = _ := by
      rw [Real.div_rpow hx.le ht.1.le, Real.rpow_neg ht.1.le]
      ring

/-- Integrability at zero is proved before evaluating the improper-endpoint integral. -/
theorem logRatioSquare_integrableOn (x : ℝ) (hx : 0 < x) :
    IntegrableOn (logRatioSquare x) (Ioc 0 x) := by
  have hm : AEStronglyMeasurable (logRatioSquare x) (volume.restrict (Ioc 0 x)) :=
    ((Real.measurable_log.comp (measurable_const.div measurable_id)).pow_const 2).aestronglyMeasurable
  have hi : IntervalIntegrable (fun t : ℝ => t ^ (-(1 / 2 : ℝ))) volume 0 x :=
    intervalIntegral.intervalIntegrable_rpow' (by norm_num)
  have hg := ((intervalIntegrable_iff_integrableOn_Ioc_of_le hx.le).mp hi).const_mul
    (16 * x ^ (1 / 2 : ℝ))
  apply hg.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (logRatioSquare_nonneg x t)]
  exact logRatioSquare_le_rpow x t hx ht

theorem logRatioSquare_intervalIntegrable (x : ℝ) (hx : 0 < x) :
    IntervalIntegrable (logRatioSquare x) volume 0 x :=
  (intervalIntegrable_iff_integrableOn_Ioc_of_le hx.le).mpr (logRatioSquare_integrableOn x hx)

theorem logRatioPrimitive_hasDerivAt (x t : ℝ) (hx : 0 < x) (ht : 0 < t) :
    HasDerivAt (logRatioPrimitive x) (logRatioSquare x t) t := by
  have hd := (Real.hasDerivAt_log ht.ne').const_sub (Real.log x)
  have h := (hasDerivAt_id t).mul (((hd.pow 2).add (hd.const_mul 2)).add_const 2)
  apply h.congr_deriv
  simp only [logRatioSquare, Real.log_div hx.ne' ht.ne', id_eq, Pi.add_apply, Pi.pow_apply]
  field_simp
  ring

private theorem tendsto_self_log_square :
    Tendsto (fun t : ℝ => t * Real.log t ^ 2) (𝓝[>] 0) (𝓝 0) := by
  have hh := tendsto_log_mul_rpow_nhdsGT_zero (by norm_num : (0 : ℝ) < 1 / 2)
  have hh2 : Tendsto (fun t : ℝ => (Real.log t * t ^ (1 / 2 : ℝ)) ^ 2)
      (𝓝[>] 0) (𝓝 0) := by simpa using hh.pow 2
  apply hh2.congr'
  filter_upwards [self_mem_nhdsWithin] with t ht
  have ht0 : 0 < t := ht
  have hsq : (t ^ (1 / 2 : ℝ)) ^ 2 = t := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul ht0.le]
    norm_num
  rw [mul_pow, hsq]
  ring

/-- The primitive has zero limit at the singular endpoint, without assigning an infinite value. -/
theorem logRatioPrimitive_tendsto_zero (x : ℝ) :
    Tendsto (logRatioPrimitive x) (𝓝[>] 0) (𝓝 0) := by
  have h0 : Tendsto (fun t : ℝ => t) (𝓝[>] 0) (𝓝 0) :=
    tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
  have h1 : Tendsto (fun t : ℝ => t * Real.log t) (𝓝[>] 0) (𝓝 0) := by
    simpa only [Real.rpow_one, mul_comm] using
      tendsto_log_mul_rpow_nhdsGT_zero (by norm_num : (0 : ℝ) < 1)
  have h := ((h0.mul_const (Real.log x ^ 2 + 2 * Real.log x + 2)).sub
    (h1.mul_const (2 * (Real.log x + 1)))).add tendsto_self_log_square
  convert h using 1
  · funext t
    unfold logRatioPrimitive
    ring
  · simp

/-- Exact evaluation includes the genuinely integrable endpoint at zero. -/
theorem integral_logRatioSquare (x : ℝ) (hx : 0 < x) :
    (∫ t in 0..x, logRatioSquare x t) = 2 * x := by
  have hb : Tendsto (logRatioPrimitive x) (𝓝[<] x) (𝓝 (2 * x)) := by
    have hc : ContinuousAt (logRatioPrimitive x) x := by
      have hn : x ≠ 0 := hx.ne'
      unfold logRatioPrimitive
      fun_prop
    have h := tendsto_nhdsWithin_of_tendsto_nhds hc.tendsto (s := Iio x)
    simpa only [logRatioPrimitive, sub_self, zero_pow (by norm_num : (2 : ℕ) ≠ 0),
      mul_zero, zero_mul, zero_add, mul_comm] using h
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_tendsto hx
    (fun t ht => logRatioPrimitive_hasDerivAt x t hx ht.1)
    (logRatioSquare_intervalIntegrable x hx) (logRatioPrimitive_tendsto_zero x) hb
  simpa only [sub_zero] using h

/-- Monotonicity is asserted only on the positive interval, never at the totalized zero value. -/
theorem logRatioSquare_antitone (x : ℝ) (hx : 0 < x) :
    AntitoneOn (logRatioSquare x) (Ioc 0 x) := by
  intro a ha b hb hab
  have hr : x / b ≤ x / a := div_le_div_of_nonneg_left hx.le ha.1 hab
  have hlog : Real.log (x / b) ≤ Real.log (x / a) :=
    Real.log_le_log (div_pos hx hb.1) hr
  exact pow_le_pow_left₀ (Real.log_nonneg ((le_div_iff₀ hb.1).mpr (by simpa using hb.2))) hlog 2

/-- A finite sum of right-endpoint samples is bounded using only open unit intervals. -/
theorem sum_logRatioSquare_le_integral (x : ℝ) (hx : 1 ≤ x) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, logRatioSquare x (d : ℝ)) ≤
      ∫ t in 0..x, logRatioSquare x t := by
  have hx0 : 0 < x := by linarith
  let N := ⌊x⌋₊
  have hN : (N : ℝ) ≤ x := Nat.floor_le hx0.le
  have hi (k : ℕ) (hk : k < N) :
      IntervalIntegrable (logRatioSquare x) volume (k : ℝ) ((k + 1 : ℕ) : ℝ) := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (by norm_num)).mpr
    apply (logRatioSquare_integrableOn x hx0).mono_set
    intro t ht
    refine ⟨lt_of_le_of_lt (Nat.cast_nonneg k) ht.1, ?_⟩
    exact ht.2.trans ((by exact_mod_cast Nat.succ_le_of_lt hk : ((k + 1 : ℕ) : ℝ) ≤ N).trans hN)
  have hblock (k : ℕ) (hk : k < N) :
      logRatioSquare x ((k + 1 : ℕ) : ℝ) ≤
        ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), logRatioSquare x t := by
    have hb : ((k + 1 : ℕ) : ℝ) ≤ x :=
      (by exact_mod_cast Nat.succ_le_of_lt hk : ((k + 1 : ℕ) : ℝ) ≤ N).trans hN
    have h := intervalIntegral.integral_mono_on_of_le_Ioo
      (f := fun _t : ℝ => logRatioSquare x ((k + 1 : ℕ) : ℝ))
      (by norm_num : (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ)) intervalIntegrable_const (hi k hk)
      (fun t ht => logRatioSquare_antitone x hx0
        ⟨lt_of_le_of_lt (Nat.cast_nonneg k) ht.1, ht.2.le.trans hb⟩
        ⟨by positivity, hb⟩ ht.2.le)
    simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
      add_sub_cancel_left, smul_eq_mul, one_mul] using h
  calc
    _ = ∑ k ∈ Finset.range N, logRatioSquare x ((k + 1 : ℕ) : ℝ) := by
      rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range]
      simp only [Nat.add_sub_cancel, Nat.add_comm 1, N]
    _ ≤ ∑ k ∈ Finset.range N, ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), logRatioSquare x t :=
      Finset.sum_le_sum (fun k hk => hblock k (Finset.mem_range.mp hk))
    _ = ∫ t in 0..(N : ℝ), logRatioSquare x t := by
      simpa only [Nat.cast_zero] using intervalIntegral.sum_integral_adjacent_intervals hi
    _ ≤ _ := intervalIntegral.integral_mono_interval le_rfl (Nat.cast_nonneg N) hN
      (Filter.Eventually.of_forall (logRatioSquare_nonneg x)) (logRatioSquare_intervalIntegrable x hx0)

/-- The exact floor-truncated logarithmic majorant has a linear budget. -/
theorem sum_logRatioSquare_le (x : ℝ) (hx : 1 ≤ x) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (d : ℝ)) ^ 2) ≤ 2 * x := by
  have h := sum_logRatioSquare_le_integral x hx
  rw [integral_logRatioSquare x (by linarith)] at h
  exact h

/-- The exact signed Möbius quadrature error, retaining both finite floor cutoffs. -/
def mobiusQuadratureError (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
    LogSquareQuadrature.logSquareQuadrature (x / (d : ℝ))

/-- Every inner quotient lies in the range where its genuine quadrature bound applies. -/
theorem quotient_ge_one (x : ℝ) (hx : 1 ≤ x) (d : ℕ) (hd : d ∈ Finset.Icc 1 ⌊x⌋₊) :
    1 ≤ x / (d : ℝ) := by
  obtain ⟨hd1, hdx⟩ := Finset.mem_Icc.mp hd
  have hdpos : (0 : ℝ) < d := by exact_mod_cast (show 0 < d by omega)
  apply (le_div_iff₀ hdpos).mpr
  simp only [one_mul]
  exact (Nat.cast_le.mpr hdx).trans (Nat.floor_le (by linarith : (0 : ℝ) ≤ x))

/-- The original signed finite Möbius residual has a proved linear budget. -/
theorem mobiusQuadratureError_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mobiusQuadratureError x| ≤ 2 * x := by
  unfold mobiusQuadratureError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊,
        |(ArithmeticFunction.moebius d : ℝ) *
          LogSquareQuadrature.logSquareQuadrature (x / (d : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (d : ℝ)) ^ 2 := by
      apply Finset.sum_le_sum
      intro d hd
      have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      rw [abs_mul]
      exact (mul_le_of_le_one_left (abs_nonneg _) hm).trans
        (LogSquareQuadrature.logSquareQuadrature_abs_le (x / (d : ℝ))
          (quotient_ge_one x hx d hd))
    _ ≤ _ := sum_logRatioSquare_le x hx

/-- Exact finite transport separates the controlled quadrature error without changing its signed main. -/
theorem mobius_prefix_eq_integral_add_error (x : ℝ) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      ∑ m ∈ Finset.Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) =
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
      ∫ t in 1..x / (d : ℝ), Real.log t ^ 2) + mobiusQuadratureError x := by
  unfold mobiusQuadratureError LogSquareQuadrature.logSquareQuadrature
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d _
  ring

/-- Literal signed difference of the two unchanged finite arithmetic expressions. -/
theorem mobius_prefix_integral_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |(∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 ⌊x / (d : ℝ)⌋₊, Real.log (m : ℝ) ^ 2) -
      (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius d : ℝ) *
        ∫ t in 1..x / (d : ℝ), Real.log t ^ 2)| ≤ 2 * x := by
  rw [mobius_prefix_eq_integral_add_error]
  simpa only [add_sub_cancel_left] using mobiusQuadratureError_abs_le x hx

end
end MobiusQuadratureBoundScratch
```
