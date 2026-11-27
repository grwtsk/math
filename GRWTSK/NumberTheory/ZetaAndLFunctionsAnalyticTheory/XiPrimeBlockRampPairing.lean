/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDyadicPrimeBias
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Testing the centered von Mangoldt ramp against a second derivative

The prime-power ramp is the one in Alpöge's ordinary zeta window. Its second
derivative contributes a point mass of weight Λ(n)/n, and the centered main
term contributes the density 1/y. The following ordinary finite integrals
retain all boundary terms and use Mathlib's actual von Mangoldt function.
-/

noncomputable section
namespace GRWTSK.XiPrimeBlockRampPairing
open MeasureTheory Set

def ramp (d y : ℝ) : ℝ := max (y / d - 1) 0

/-- Testing one ramp on an interval containing its knot. -/
theorem integral_ramp {a d T : ℝ} (hd : 0 < d) (had : a ≤ d) (hdT : d ≤ T)
    {F V A : ℝ → ℝ} (hF : ∀ y ∈ Icc a T, HasDerivAt F (V y) y)
    (hV : ∀ y ∈ Icc a T, HasDerivAt V (A y) y) (hA : ContinuousOn A (Icc a T)) :
    (∫ y in a..T, ramp d y * A y) =
      (T/d-1)*V T - F T/d + F d/d := by
  have hc : ContinuousOn (fun y => ramp d y * A y) (Icc a T) :=
    (show Continuous (ramp d) by unfold ramp; fun_prop).continuousOn.mul hA
  have hzero : (∫ y in a..d, ramp d y * A y) = 0 := by
    calc
      _ = ∫ _y : ℝ in a..d, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro y hy
        rw [uIcc_of_le had] at hy
        simp [ramp, max_eq_right (sub_nonpos.mpr ((div_le_one hd).mpr hy.2))]
      _ = 0 := by simp
  have hright : (∫ y in d..T, ramp d y * A y) =
        ∫ y in d..T, (y/d-1)*A y := by
    apply intervalIntegral.integral_congr
    intro y hy
    rw [uIcc_of_le hdT] at hy
    simp [ramp, max_eq_left (sub_nonneg.mpr ((one_le_div hd).mpr hy.1))]
  rw [← intervalIntegral.integral_add_adjacent_intervals
    ((hc.mono (Icc_subset_Icc le_rfl hdT)).intervalIntegrable_of_Icc had)
    ((hc.mono (Icc_subset_Icc had le_rfl)).intervalIntegrable_of_Icc hdT), hzero, zero_add, hright]
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := d) (b := T) (f := fun y => (y/d-1)*V y - F y/d)
    (f' := fun y => (y/d-1)*A y) (fun y hy => by
      rw [uIcc_of_le hdT] at hy
      have hy' : y ∈ Icc a T := ⟨had.trans hy.1, hy.2⟩
      convert (((((hasDerivAt_id y).div_const d).sub_const 1).mul
        (hV y hy')).sub ((hF y hy').div_const d)) using 1
      · rfl
      · simp
        ring)
    (((show Continuous (fun y : ℝ => y/d-1) by fun_prop).continuousOn.mul
      (hA.mono (Icc_subset_Icc had le_rfl))).intervalIntegrable_of_Icc hdT)
  rw [he, div_self hd.ne']
  ring

/-- The finite prime-power ramp trace, including all positive integers through M. -/
def primeRamp (M : ℕ) (y : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 M, ArithmeticFunction.vonMangoldt n * ramp (n : ℝ) y

/-- Each included prime power is tested at its own knot. -/
theorem integral_primeRamp {M : ℕ} {T : ℝ} (hT : (M : ℝ) ≤ T)
    {F V A : ℝ → ℝ} (hF : ∀ y ∈ Icc 1 T, HasDerivAt F (V y) y)
    (hV : ∀ y ∈ Icc 1 T, HasDerivAt V (A y) y) (hA : ContinuousOn A (Icc 1 T)) :
    (∫ y in (1 : ℝ)..T, primeRamp M y * A y) =
      ∑ n ∈ Finset.Icc 1 M, ArithmeticFunction.vonMangoldt n *
        ((T/n-1)*V T - F T/n + F n/n) := by
  unfold primeRamp
  simp_rw [Finset.sum_mul, mul_assoc]
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n hn
    obtain ⟨hn1, hnM⟩ := Finset.mem_Icc.mp hn
    have hn' : 1 ≤ (n : ℝ) := by exact_mod_cast hn1
    rw [intervalIntegral.integral_const_mul,
      integral_ramp (by linarith : 0 < (n : ℝ)) hn'
        ((by exact_mod_cast hnM : (n : ℝ) ≤ M).trans hT) hF hV hA]
  · intro n hn
    have h1 : 1 ≤ (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    have hnT : (n : ℝ) ≤ M := by exact_mod_cast (Finset.mem_Icc.mp hn).2
    exact (continuousOn_const.mul ((show Continuous (ramp (n:ℝ)) by
      unfold ramp; fun_prop).continuousOn.mul hA)).intervalIntegrable_of_Icc (h1.trans (hnT.trans hT))

/-- The harmonic block test, before division by the prime-power logarithm. -/
def blockWeight (N : ℕ) (y : ℝ) : ℝ :=
  ∑ i ∈ Finset.range N, XiDyadicPrimeBias.weight (N+i+1) y / ((N:ℝ)+i+1)

def blockTest (N : ℕ) (y : ℝ) : ℝ := y * blockWeight N y / Real.log y

/-- At every prime power the test recovers the original block with the 1/k
coefficient. In particular its prime samples are precisely the ordinary-prime weights. -/
theorem prime_power_sample (N p k : ℕ) (hp : p.Prime) (hk : 0 < k) :
    ArithmeticFunction.vonMangoldt (p^k) * blockTest N ((p^k:ℕ):ℝ) / ((p^k:ℕ):ℝ) =
      blockWeight N ((p^k:ℕ):ℝ) / k := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (Nat.ne_of_gt hk),
    ArithmeticFunction.vonMangoldt_apply_prime hp]
  have hl : Real.log (p:ℝ) ≠ 0 := (Real.log_pos (by exact_mod_cast hp.one_lt)).ne'
  have hpn : (p:ℝ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have hkn : (k:ℝ) ≠ 0 := by exact_mod_cast hk.ne'
  simp only [blockTest, Nat.cast_pow, Real.log_pow]
  field_simp

/-- The ramp's smooth centering term. At c = Euler's constant this is the
quantity subtracted in the untwisted zeta window. -/
def mainTerm (c y : ℝ) : ℝ := y * (Real.log y - 1 - c)

private theorem mainTerm_deriv (c : ℝ) {y : ℝ} (hy : 0 < y) :
    HasDerivAt (mainTerm c) (Real.log y - c) y := by
  have h := (hasDerivAt_id y).mul (((Real.hasDerivAt_log hy.ne').sub_const 1).sub_const c)
  convert h using 1
  · rfl
  · simp [hy.ne']
    ring

/-- Weak pairing with the smooth centering term on a positive interval.
The boundary functional at an endpoint is mainTerm·V − (log−c)·F. -/
theorem integral_mainTerm {a T : ℝ} (ha : 0 < a) (haT : a ≤ T)
    (c : ℝ) {F V A : ℝ → ℝ} (hF : ∀ y ∈ Icc a T, HasDerivAt F (V y) y)
    (hV : ∀ y ∈ Icc a T, HasDerivAt V (A y) y) (hA : ContinuousOn A (Icc a T)) :
    (∫ y in a..T, mainTerm c y * A y) =
      (∫ y in a..T, F y / y) +
      (mainTerm c T * V T - (Real.log T-c)*F T) -
      (mainTerm c a * V a - (Real.log a-c)*F a) := by
  have htest : ContinuousOn F (Icc a T) := fun y hy => (hF y hy).continuousAt.continuousWithinAt
  have hc : ContinuousOn (fun y => mainTerm c y * A y) (Icc a T) := by
    apply ContinuousOn.mul _ hA
    intro y hy
    exact (mainTerm_deriv c (ha.trans_le hy.1)).continuousAt.continuousWithinAt
  have hrat : ContinuousOn (fun y => F y / y) (Icc a T) :=
    htest.div continuousOn_id (fun y hy => (ha.trans_le hy.1).ne')
  have hi := (hc.sub hrat).intervalIntegrable_of_Icc (μ := volume) haT
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := a) (b := T) (f := fun y => mainTerm c y * V y - (Real.log y - c)*F y)
    (f' := fun y => mainTerm c y * A y - F y / y) (fun y hy => by
      rw [uIcc_of_le haT] at hy
      have hpos := ha.trans_le hy.1
      convert (((mainTerm_deriv c hpos).mul (hV y hy)).sub
        (((Real.hasDerivAt_log hpos.ne').sub_const c).mul (hF y hy))) using 1
      ring) hi
  rw [intervalIntegral.integral_sub (hc.intervalIntegrable_of_Icc haT)
    (hrat.intervalIntegrable_of_Icc haT)] at he
  linarith

/-- The centered finite trace with every boundary term retained. -/
theorem centered_primeRamp_with_boundary {M : ℕ} {T : ℝ} (hT : (M : ℝ) ≤ T) (h1 : 1 ≤ T)
    (c : ℝ) {F V A : ℝ → ℝ} (hF : ∀ y ∈ Icc 1 T, HasDerivAt F (V y) y)
    (hV : ∀ y ∈ Icc 1 T, HasDerivAt V (A y) y) (hA : ContinuousOn A (Icc 1 T)) :
    (∫ y in (1 : ℝ)..T, (primeRamp M y - mainTerm c y)*A y) =
      (∑ n ∈ Finset.Icc 1 M, ArithmeticFunction.vonMangoldt n *
        ((T/n-1)*V T - F T/n + F n/n)) -
      ((∫ y in (1 : ℝ)..T, F y / y) +
        (mainTerm c T * V T - (Real.log T-c)*F T) -
        (mainTerm c 1 * V 1 - (Real.log 1-c)*F 1)) := by
  have hc : ContinuousOn (fun y => primeRamp M y * A y) (Icc 1 T) :=
    (show Continuous (primeRamp M) by unfold primeRamp ramp; fun_prop).continuousOn.mul hA
  have hm : ContinuousOn (fun y => mainTerm c y * A y) (Icc (1:ℝ) T) := by
    apply ContinuousOn.mul _ hA
    intro y hy
    exact (mainTerm_deriv c (zero_lt_one.trans_le hy.1)).continuousAt.continuousWithinAt
  conv_lhs => simp only [sub_mul]
  rw [intervalIntegral.integral_sub (hc.intervalIntegrable_of_Icc h1) (hm.intervalIntegrable_of_Icc h1),
    integral_primeRamp hT hF hV hA, integral_mainTerm zero_lt_one h1 c hF hV hA]

/-- The paired centered trace leaves exactly the weighted atomic samples and
the continuum density when the test vanishes to first order at both endpoints. -/
theorem centered_primeRamp_pairing {M : ℕ} {T : ℝ} (hT : (M : ℝ) ≤ T) (h1 : 1 ≤ T)
    (c : ℝ) {F V A : ℝ → ℝ} (hF : ∀ y ∈ Icc 1 T, HasDerivAt F (V y) y)
    (hV : ∀ y ∈ Icc 1 T, HasDerivAt V (A y) y) (hA : ContinuousOn A (Icc 1 T))
    (hf1 : F 1 = 0) (hfT : F T = 0) (hv1 : V 1 = 0) (hvT : V T = 0) :
    (∫ y in (1 : ℝ)..T, (primeRamp M y - mainTerm c y)*A y) =
      (∑ n ∈ Finset.Icc 1 M, ArithmeticFunction.vonMangoldt n * (F n/n)) -
      ∫ y in (1 : ℝ)..T, F y / y := by
  rw [centered_primeRamp_with_boundary hT h1 c hF hV hA]
  simp [hf1,hfT,hv1,hvT]

end GRWTSK.XiPrimeBlockRampPairing
