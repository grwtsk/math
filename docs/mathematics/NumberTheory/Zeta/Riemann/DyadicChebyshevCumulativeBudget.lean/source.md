# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d` · SHA-256 `807ae79f64cd7be252bc61d46e04eb767d6aee74b457f9867c0f7af359c69c91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicCumulativeQuarticPacking
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Unconditional Chebyshev cumulative budget

The cumulative packing endpoint has an upper-volume task and a lower-density
task. This module closes only the upper-volume task at source level.

Mathlib's unconditional Chebyshev bound controls the von Mangoldt mass in every
octave. Since n > X on the literal source window (X,2X], the weighted mass

  sum Lambda(n) / n

is bounded by one absolute constant. The exact Mellin action identity then gives
a geometric 2^(-j/2) envelope for every safe plus, minus, and center block.

The resulting dyadic axial/transverse three-point Gram source is bounded by a
constant multiple of dyadicWeight 2 j, hence is summable. Therefore every finite
occupied prefix lies below one canonical finite total budget.

No PNT, RH, or all-scale Green-energy premise is used.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
UNCONDITIONAL_CUMULATIVE_UPPER_BUDGET_SOURCE_WRITTEN.
-/

namespace GRWTSK.RiemannHypothesis

open Complex Set
open CanonicalZeroDivisor
open GRWTSK.Analysis.MellinTransform.DyadicBounds
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.MellinReadout
open GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence

def chebyshevOctaveMassConstant : ℝ :=
  2 * (Real.log 4 + 4)

theorem chebyshevOctaveMassConstant_nonnegative :
    0 ≤ chebyshevOctaveMassConstant := by
  unfold chebyshevOctaveMassConstant
  positivity

def windowMangoldtMass (X : ℕ) : ℝ :=
  ∑ n ∈ window X, mangoldt n

def windowCoefficientMass (X : ℕ) : ℝ :=
  ∑ n ∈ window X, coefficient n

theorem windowMangoldtMass_nonnegative (X : ℕ) :
    0 ≤ windowMangoldtMass X := by
  unfold windowMangoldtMass mangoldt
  exact Finset.sum_nonneg
    (fun n hn => ArithmeticFunction.vonMangoldt_nonneg)

theorem windowCoefficientMass_nonnegative (X : ℕ) :
    0 ≤ windowCoefficientMass X := by
  unfold windowCoefficientMass coefficient mangoldt
  apply Finset.sum_nonneg
  intro n hn
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg _)

/-- The unweighted von Mangoldt mass in one octave is bounded by Chebyshev psi. -/
theorem windowMangoldtMass_le
    (X : ℕ) (hX : 0 < X) :
    windowMangoldtMass X ≤
      (Real.log 4 + 4) * (((2 * X : ℕ) : ℝ)) := by
  have hsub : window X ⊆ Finset.Ioc 0 (2 * X) := by
    intro n hn
    exact Finset.mem_Ioc.mpr
      ⟨Nat.zero_lt_of_lt (window_lower hn), window_upper hn⟩
  have hsum :
      windowMangoldtMass X ≤
        ∑ n ∈ Finset.Ioc 0 (2 * X), mangoldt n := by
    unfold windowMangoldtMass
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub
      (fun n hn hnot => by
        unfold mangoldt
        exact ArithmeticFunction.vonMangoldt_nonneg)
  have hpsi :
      (∑ n ∈ Finset.Ioc 0 (2 * X), mangoldt n) =
        Chebyshev.psi (((2 * X : ℕ) : ℝ)) := by
    simp only [Chebyshev.psi, mangoldt, Nat.floor_natCast]
  calc
    windowMangoldtMass X
        ≤ ∑ n ∈ Finset.Ioc 0 (2 * X), mangoldt n := hsum
    _ = Chebyshev.psi (((2 * X : ℕ) : ℝ)) := hpsi
    _ ≤ (Real.log 4 + 4) * (((2 * X : ℕ) : ℝ)) :=
      Chebyshev.psi_le_const_mul_self (by positivity)

/-- The literal weighted octave mass sum Lambda(n)/n is uniformly bounded. -/
theorem windowCoefficientMass_le_constant
    (X : ℕ) (hX : 0 < X) :
    windowCoefficientMass X ≤ chebyshevOctaveMassConstant := by
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hterm :
      ∀ n ∈ window X,
        coefficient n ≤ mangoldt n / (X : ℝ) := by
    intro n hn
    unfold coefficient
    apply div_le_div_of_nonneg_left
      (by
        unfold mangoldt
        exact ArithmeticFunction.vonMangoldt_nonneg)
      hXr
    exact_mod_cast (Nat.le_of_lt (window_lower hn))
  have hsum :
      windowCoefficientMass X ≤
        windowMangoldtMass X / (X : ℝ) := by
    unfold windowCoefficientMass windowMangoldtMass
    calc
      (∑ n ∈ window X, coefficient n)
          ≤ ∑ n ∈ window X, mangoldt n / (X : ℝ) :=
        Finset.sum_le_sum hterm
      _ = (∑ n ∈ window X, mangoldt n) / (X : ℝ) := by
        rw [Finset.sum_div]
  have hmass := windowMangoldtMass_le X hX
  calc
    windowCoefficientMass X
        ≤ windowMangoldtMass X / (X : ℝ) := hsum
    _ ≤ ((Real.log 4 + 4) * (((2 * X : ℕ) : ℝ))) / (X : ℝ) := by
      exact div_le_div_of_nonneg_right hmass hXr.le
    _ = chebyshevOctaveMassConstant := by
      unfold chebyshevOctaveMassConstant
      push_cast
      field_simp

/-- Direct bound for the literal unit-interval Mellin action. -/
theorem action_norm_le_chebyshev
    {X : ℕ} (hX : 0 < X)
    {s : ℂ} {M : ℝ} (hM : 0 ≤ M) (hs : ‖s‖ ≤ M) :
    ‖action X (mellinTest s)‖ ≤
      (chebyshevOctaveMassConstant + 1) * radiusFactor M := by
  have hatom :
      ‖∑ n ∈ window X,
          (coefficient n : ℂ) * mellinTest s (location X n)‖ ≤
        chebyshevOctaveMassConstant * radiusFactor M := by
    calc
      ‖∑ n ∈ window X,
          (coefficient n : ℂ) * mellinTest s (location X n)‖
          ≤ ∑ n ∈ window X,
              ‖(coefficient n : ℂ) * mellinTest s (location X n)‖ :=
        norm_sum_le _ _
      _ ≤ ∑ n ∈ window X,
            coefficient n * radiusFactor M := by
        apply Finset.sum_le_sum
        intro n hn
        have hc : 0 ≤ coefficient n := by
          unfold coefficient mangoldt
          exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg
            (Nat.cast_nonneg _)
        rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hc]
        exact mul_le_mul_of_nonneg_left
          (test_norm_bound hM hs (location_mem hX hn)) hc
      _ = windowCoefficientMass X * radiusFactor M := by
        rw [← Finset.sum_mul]
        rfl
      _ ≤ chebyshevOctaveMassConstant * radiusFactor M :=
        mul_le_mul_of_nonneg_right
          (windowCoefficientMass_le_constant X hX)
          (by unfold radiusFactor; positivity)
  have hbackground :
      ‖∫ t in (0 : ℝ)..1,
          mellinTest s t / (1 + (t : ℂ))‖ ≤
        radiusFactor M := by
    calc
      ‖∫ t in (0 : ℝ)..1,
          mellinTest s t / (1 + (t : ℂ))‖
          ≤ radiusFactor M * |(1 : ℝ) - 0| := by
        apply intervalIntegral.norm_integral_le_of_norm_le_const
        intro t ht
        rw [uIoc_of_le (show (0 : ℝ) ≤ 1 by norm_num)] at ht
        have htI : t ∈ Icc (0 : ℝ) 1 := Ioc_subset_Icc_self ht
        rw [norm_div]
        have hden :
            ‖(1 : ℂ) + (t : ℂ)‖ = 1 + t := by
          rw [show (1 : ℂ) + (t : ℂ) = ((1 + t : ℝ) : ℂ) by
            push_cast
            rfl,
            Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg (by linarith [htI.1])]
        rw [hden]
        exact
          (div_le_self (norm_nonneg _)
            (by linarith [htI.1])).trans
              (test_norm_bound hM hs htI)
      _ = radiusFactor M := by norm_num
  unfold action
  calc
    ‖(∑ n ∈ window X,
        (coefficient n : ℂ) * mellinTest s (location X n)) -
        ∫ t in (0 : ℝ)..1,
          mellinTest s t / (1 + (t : ℂ))‖
        ≤
      ‖∑ n ∈ window X,
        (coefficient n : ℂ) * mellinTest s (location X n)‖ +
      ‖∫ t in (0 : ℝ)..1,
        mellinTest s t / (1 + (t : ℂ))‖ :=
      norm_sub_le _ _
    _ ≤ chebyshevOctaveMassConstant * radiusFactor M +
        radiusFactor M :=
      add_le_add hatom hbackground
    _ = (chebyshevOctaveMassConstant + 1) * radiusFactor M := by ring

def safeChebyshevActionConstant (z : ZeroPoint) : ℝ :=
  (chebyshevOctaveMassConstant + 1) *
    radiusFactor (safeDyadicQuarticRadius z)

theorem safeChebyshevActionConstant_nonnegative (z : ZeroPoint) :
    0 ≤ safeChebyshevActionConstant z := by
  unfold safeChebyshevActionConstant
  exact mul_nonneg (by linarith [chebyshevOctaveMassConstant_nonnegative]) (by unfold radiusFactor; positivity)

def safeChebyshevDyadicEnvelope (z : ZeroPoint) (j : ℕ) : ℝ :=
  safeChebyshevActionConstant z * dyadicWeight (1 / 2) j

theorem safeChebyshevDyadicEnvelope_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeChebyshevDyadicEnvelope z j := by
  unfold safeChebyshevDyadicEnvelope dyadicWeight
  positivity [safeChebyshevActionConstant_nonnegative z]

theorem safeDyadicHalfWeight_eq_dyadicWeight_half (j : ℕ) :
    safeDyadicHalfWeight j = dyadicWeight (1 / 2) j := by
  unfold safeDyadicHalfWeight dyadicWeight
  rw [log_dyadicScale]
  congr 1
  ring

/-- Safe blocks have an unconditional geometric envelope. -/
theorem safeDyadicBlock_norm_le_chebyshevEnvelope
    (z : ZeroPoint) (j : ℕ) (w : ℂ)
    (hre : (3 / 2 : ℝ) < w.re)
    (hnorm : ‖w‖ ≤ safeDyadicQuarticRadius z) :
    ‖dirichletBlock (dyadicScale j) w‖ ≤
      safeChebyshevDyadicEnvelope z j := by
  rw [dirichletBlock_eq_scaled_action (dyadicScale_pos j), norm_mul]
  have hlog :
      0 ≤ Real.log (dyadicScale j : ℝ) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr
        (Nat.ne_of_gt (dyadicScale_pos j))))
  have hre' : 1 - w.re ≤ -(1 / 2 : ℝ) := by linarith
  have hexp :
      ‖Complex.exp ((1 - w) * (Real.log (dyadicScale j) : ℂ))‖ ≤
        safeDyadicHalfWeight j := by
    simp only [Complex.norm_exp, Complex.mul_re, Complex.sub_re,
      Complex.one_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right hre' hlog
  have haction :
      ‖action (dyadicScale j) (mellinTest w)‖ ≤
        safeChebyshevActionConstant z := by
    unfold safeChebyshevActionConstant
    exact action_norm_le_chebyshev
      (dyadicScale_pos j)
      (safeDyadicQuarticRadius_nonnegative z)
      hnorm
  rw [safeChebyshevDyadicEnvelope,
    ← safeDyadicHalfWeight_eq_dyadicWeight_half]
  rw [mul_comm (safeChebyshevActionConstant z)]
  exact mul_le_mul hexp haction (norm_nonneg _) (by unfold safeDyadicHalfWeight; positivity)

theorem safePlusDyadicBlock_norm_le_chebyshev
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicBlock z j‖ ≤ safeChebyshevDyadicEnvelope z j := by
  unfold safePlusDyadicBlock
  exact safeDyadicBlock_norm_le_chebyshevEnvelope z j _
    (safeShiftPlus_three_halves_lt_re z)
    (safeShiftPlus_norm_le_quarticRadius z)

theorem safeMinusDyadicBlock_norm_le_chebyshev
    (z : ZeroPoint) (j : ℕ) :
    ‖safeMinusDyadicBlock z j‖ ≤ safeChebyshevDyadicEnvelope z j := by
  unfold safeMinusDyadicBlock
  exact safeDyadicBlock_norm_le_chebyshevEnvelope z j _
    (safeShiftMinus_three_halves_lt_re z)
    (safeShiftMinus_norm_le_quarticRadius z)

theorem safeCenterDyadicBlock_norm_le_chebyshev
    (z : ZeroPoint) (j : ℕ) :
    ‖safeCenterDyadicBlock z j‖ ≤ safeChebyshevDyadicEnvelope z j := by
  unfold safeCenterDyadicBlock
  apply safeDyadicBlock_norm_le_chebyshevEnvelope
  · norm_num [safeShiftCenter]
  · exact safeShiftCenter_norm_le_quarticRadius z

theorem safeEvenDyadicBlock_norm_le_chebyshev
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDyadicBlock z j‖ ≤ safeChebyshevDyadicEnvelope z j := by
  unfold safeEvenDyadicBlock
  rw [norm_div]
  have hsum :=
    norm_add_le (safePlusDyadicBlock z j) (safeMinusDyadicBlock z j)
  have hp := safePlusDyadicBlock_norm_le_chebyshev z j
  have hm := safeMinusDyadicBlock_norm_le_chebyshev z j
  norm_num
  nlinarith

theorem safeOddDyadicBlock_norm_le_chebyshev
    (z : ZeroPoint) (j : ℕ) :
    ‖safeOddDyadicBlock z j‖ ≤ safeChebyshevDyadicEnvelope z j := by
  unfold safeOddDyadicBlock
  rw [norm_div]
  have hsum :=
    norm_sub_le (safePlusDyadicBlock z j) (safeMinusDyadicBlock z j)
  have hp := safePlusDyadicBlock_norm_le_chebyshev z j
  have hm := safeMinusDyadicBlock_norm_le_chebyshev z j
  norm_num
  nlinarith

theorem safeEvenDefectDyadicBlock_norm_le_chebyshev
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDefectDyadicBlock z j‖ ≤
      2 * safeChebyshevDyadicEnvelope z j := by
  unfold safeEvenDefectDyadicBlock
  have hsub :=
    norm_sub_le (safeEvenDyadicBlock z j) (safeCenterDyadicBlock z j)
  have he := safeEvenDyadicBlock_norm_le_chebyshev z j
  have hc := safeCenterDyadicBlock_norm_le_chebyshev z j
  nlinarith

/-- Generic geometry: coordinate envelopes control the full quartic stage. -/
theorem safeQuarticDyadicPackingValue_le_of_envelope
    (z : ZeroPoint) (B : ℕ → ℝ)
    (hB : ∀ j, 0 ≤ B j)
    (heven : ∀ j, ‖safeEvenDyadicBlock z j‖ ≤ B j)
    (hdefect : ∀ j, ‖safeEvenDefectDyadicBlock z j‖ ≤ 2 * B j)
    (hodd : ∀ j, ‖safeOddDyadicBlock z j‖ ≤ B j)
    (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      148 *
        (((B j)^2 + (B (j+1))^2) *
          ((B (j+1))^2 + (B (j+2))^2)) := by
  have hAx (k : ℕ) :
      (safeAxialDyadicPoint z k).normSq ≤ 5 * (B k)^2 := by
    have hx := (Complex.abs_re_le_norm _).trans (heven k)
    have hy := (Complex.abs_re_le_norm _).trans (hdefect k)
    have hxSq : (safeEvenDyadicBlock z k).re^2 ≤ (B k)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg (hB k)] using hx
    have hySq : (safeEvenDefectDyadicBlock z k).re^2 ≤ (2*B k)^2 := by
      rw [sq_le_sq]
      have h2 : 0 ≤ 2 * B k := mul_nonneg (by norm_num) (hB k)
      simpa [abs_of_nonneg h2] using hy
    unfold safeAxialDyadicPoint PackingPoint.normSq PackingPoint.dot
    nlinarith
  have hTr (k : ℕ) :
      (safeTransverseDyadicPoint z k).normSq ≤ 2 * (B k)^2 := by
    have hx := (Complex.abs_re_le_norm _).trans (heven k)
    have hy := (Complex.abs_im_le_norm _).trans (hodd k)
    have hxSq : (safeEvenDyadicBlock z k).re^2 ≤ (B k)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg (hB k)] using hx
    have hySq : (safeOddDyadicBlock z k).im^2 ≤ (B k)^2 := by
      rw [sq_le_sq]
      simpa [abs_of_nonneg (hB k)] using hy
    unfold safeTransverseDyadicPoint PackingPoint.normSq PackingPoint.dot
    nlinarith
  have hA01 :=
    PackingPoint.sub_normSq_le_two
      (safeAxialDyadicPoint z (j+1)) (safeAxialDyadicPoint z j)
  have hA12 :=
    PackingPoint.sub_normSq_le_two
      (safeAxialDyadicPoint z (j+2)) (safeAxialDyadicPoint z (j+1))
  have hT01 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j+1)) (safeTransverseDyadicPoint z j)
  have hT12 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j+2)) (safeTransverseDyadicPoint z (j+1))
  have hAe01 :
      (safeAxialDyadicPacking z j).edge01.normSq ≤
        10 * ((B j)^2 + (B (j+1))^2) := by
    simpa [safeAxialDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using hA01.trans (by nlinarith [hAx j, hAx (j+1)])
  have hAe12 :
      (safeAxialDyadicPacking z j).edge12.normSq ≤
        10 * ((B (j+1))^2 + (B (j+2))^2) := by
    simpa [safeAxialDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using hA12.trans (by nlinarith [hAx (j+1), hAx (j+2)])
  have hTe01 :
      (safeTransverseDyadicPacking z j).edge01.normSq ≤
        4 * ((B j)^2 + (B (j+1))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using hT01.trans (by nlinarith [hTr j, hTr (j+1)])
  have hTe12 :
      (safeTransverseDyadicPacking z j).edge12.normSq ≤
        4 * ((B (j+1))^2 + (B (j+2))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using hT12.trans (by nlinarith [hTr (j+1), hTr (j+2)])
  have hAg :=
    (safeAxialDyadicPacking z j).gramVolume_le_edgeProductEnclosure
  have hTg :=
    (safeTransverseDyadicPacking z j).gramVolume_le_edgeProductEnclosure
  have hAedge :
      (safeAxialDyadicPacking z j).edgeProductEnclosure ≤
        100 * (((B j)^2 + (B (j+1))^2) *
          ((B (j+1))^2 + (B (j+2))^2)) := by
    unfold ThreePointPacking.edgeProductEnclosure
    calc
      _ ≤ (10 * ((B j)^2 + (B (j+1))^2)) *
          (10 * ((B (j+1))^2 + (B (j+2))^2)) := by
        exact mul_le_mul hAe01 hAe12 (PackingPoint.normSq_nonneg _) (by positivity)
      _ = _ := by ring
  have hTedge :
      (safeTransverseDyadicPacking z j).edgeProductEnclosure ≤
        16 * (((B j)^2 + (B (j+1))^2) *
          ((B (j+1))^2 + (B (j+2))^2)) := by
    unfold ThreePointPacking.edgeProductEnclosure
    calc
      _ ≤ (4 * ((B j)^2 + (B (j+1))^2)) *
          (4 * ((B (j+1))^2 + (B (j+2))^2)) := by
        exact mul_le_mul hTe01 hTe12 (PackingPoint.normSq_nonneg _) (by positivity)
      _ = _ := by ring
  unfold safeQuarticDyadicPackingValue
    safeAxialDyadicGram safeTransverseDyadicGram
  nlinarith

def safeChebyshevEnvelopePairProduct
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  ((safeChebyshevDyadicEnvelope z j)^2 +
      (safeChebyshevDyadicEnvelope z (j+1))^2) *
    ((safeChebyshevDyadicEnvelope z (j+1))^2 +
      (safeChebyshevDyadicEnvelope z (j+2))^2)

theorem safeQuarticDyadicPackingValue_le_chebyshevPair
    (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      148 * safeChebyshevEnvelopePairProduct z j := by
  exact safeQuarticDyadicPackingValue_le_of_envelope z
    (safeChebyshevDyadicEnvelope z)
    (safeChebyshevDyadicEnvelope_nonnegative z)
    (safeEvenDyadicBlock_norm_le_chebyshev z)
    (safeEvenDefectDyadicBlock_norm_le_chebyshev z)
    (safeOddDyadicBlock_norm_le_chebyshev z)
    j

theorem dyadicWeight_half_antitone :
    Antitone (dyadicWeight (1 / 2)) := by
  intro m n hmn
  unfold dyadicWeight
  apply Real.exp_le_exp.mpr
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hcast : (m : ℝ) ≤ (n : ℝ) := by exact_mod_cast hmn
  nlinarith

theorem safeChebyshevDyadicEnvelope_antitone
    (z : ZeroPoint) :
    Antitone (safeChebyshevDyadicEnvelope z) := by
  intro m n hmn
  unfold safeChebyshevDyadicEnvelope
  exact mul_le_mul_of_nonneg_left
    (dyadicWeight_half_antitone hmn)
    (safeChebyshevActionConstant_nonnegative z)

theorem dyadicWeight_half_pow_four (j : ℕ) :
    (dyadicWeight (1 / 2) j)^4 = dyadicWeight 2 j := by
  unfold dyadicWeight
  rw [← Real.exp_nat_mul]
  congr 1
  ring

def safeChebyshevPairMajorant
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  4 * (safeChebyshevActionConstant z)^4 * dyadicWeight 2 j

theorem safeChebyshevPairProduct_le_majorant
    (z : ZeroPoint) (j : ℕ) :
    safeChebyshevEnvelopePairProduct z j ≤
      safeChebyshevPairMajorant z j := by
  have h10 :
      safeChebyshevDyadicEnvelope z (j+1) ≤ safeChebyshevDyadicEnvelope z j :=
    safeChebyshevDyadicEnvelope_antitone z (by omega)
  have h21 :
      safeChebyshevDyadicEnvelope z (j+2) ≤ safeChebyshevDyadicEnvelope z (j+1) :=
    safeChebyshevDyadicEnvelope_antitone z (by omega)
  have h0 := safeChebyshevDyadicEnvelope_nonnegative z j
  have h1 := safeChebyshevDyadicEnvelope_nonnegative z (j+1)
  have h2 := safeChebyshevDyadicEnvelope_nonnegative z (j+2)
  have hs10 :
      (safeChebyshevDyadicEnvelope z (j+1))^2 ≤
        (safeChebyshevDyadicEnvelope z j)^2 :=
    pow_le_pow_left₀ h1 h10 2
  have hs21 :
      (safeChebyshevDyadicEnvelope z (j+2))^2 ≤
        (safeChebyshevDyadicEnvelope z (j+1))^2 :=
    pow_le_pow_left₀ h2 h21 2
  have hp :
      safeChebyshevEnvelopePairProduct z j ≤
        4 * (safeChebyshevDyadicEnvelope z j)^4 := by
    unfold safeChebyshevEnvelopePairProduct
    have hfirst :
        (safeChebyshevDyadicEnvelope z j)^2 +
            (safeChebyshevDyadicEnvelope z (j+1))^2 ≤
          2 * (safeChebyshevDyadicEnvelope z j)^2 := by
      nlinarith
    have hsecond :
        (safeChebyshevDyadicEnvelope z (j+1))^2 +
            (safeChebyshevDyadicEnvelope z (j+2))^2 ≤
          2 * (safeChebyshevDyadicEnvelope z j)^2 := by
      nlinarith
    calc
      _ ≤
          (2 * (safeChebyshevDyadicEnvelope z j)^2) *
          (2 * (safeChebyshevDyadicEnvelope z j)^2) := by
        exact mul_le_mul hfirst hsecond (by positivity) (by positivity)
      _ = 4 * (safeChebyshevDyadicEnvelope z j)^4 := by ring
  calc
    safeChebyshevEnvelopePairProduct z j
        ≤ 4 * (safeChebyshevDyadicEnvelope z j)^4 := hp
    _ = safeChebyshevPairMajorant z j := by
      unfold safeChebyshevPairMajorant safeChebyshevDyadicEnvelope
      rw [mul_pow, dyadicWeight_half_pow_four]
      ring

theorem safeChebyshevPairMajorant_summable
    (z : ZeroPoint) :
    Summable (safeChebyshevPairMajorant z) := by
  unfold safeChebyshevPairMajorant
  exact (summable_dyadicWeight 2 (by norm_num)).mul_left
    (4 * (safeChebyshevActionConstant z)^4)

def safeChebyshevQuarticMajorant
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  148 * safeChebyshevPairMajorant z j

theorem safeChebyshevQuarticMajorant_summable
    (z : ZeroPoint) :
    Summable (safeChebyshevQuarticMajorant z) :=
  (safeChebyshevPairMajorant_summable z).mul_left 148

theorem safeQuarticDyadicPackingValue_le_chebyshevMajorant
    (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      safeChebyshevQuarticMajorant z j := by
  exact
    (safeQuarticDyadicPackingValue_le_chebyshevPair z j).trans
      (mul_le_mul_of_nonneg_left
        (safeChebyshevPairProduct_le_majorant z j)
        (by norm_num))

/-- The complete occupied dyadic quartic-volume sequence is summable. -/
theorem safeQuarticDyadicPackingValue_summable
    (z : ZeroPoint) :
    Summable (safeQuarticDyadicPackingValue z) :=
  Summable.of_nonneg_of_le
    (safeQuarticDyadicPackingValue_nonnegative z)
    (safeQuarticDyadicPackingValue_le_chebyshevMajorant z)
    (safeChebyshevQuarticMajorant_summable z)

def safeQuarticDyadicTotalBudget (z : ZeroPoint) : ℝ :=
  ∑' j, safeQuarticDyadicPackingValue z j

theorem safeQuarticDyadicTotalBudget_nonnegative
    (z : ZeroPoint) :
    0 ≤ safeQuarticDyadicTotalBudget z :=
  tsum_nonneg (safeQuarticDyadicPackingValue_nonnegative z)

/-- Every finite occupied prefix fits inside the canonical total budget. -/
theorem safeQuarticDyadicPartial_le_totalBudget
    (z : ZeroPoint) (N : ℕ) :
    (∑ j ∈ Finset.range N, safeQuarticDyadicPackingValue z j) ≤
      safeQuarticDyadicTotalBudget z := by
  unfold safeQuarticDyadicTotalBudget
  exact (safeQuarticDyadicPackingValue_summable z).sum_le_tsum
    (Finset.range N)
    (fun j hj => safeQuarticDyadicPackingValue_nonnegative z j)

end GRWTSK.RiemannHypothesis
```
