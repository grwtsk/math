/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftEnvelope
import GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEnclosure
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Dyadic axial/transverse quartic packing

This module forms three-point packings from consecutive DYADIC source blocks,
not from individual prime powers.  The same safe-shift parity architecture is
retained:

* even block E_j=(D_j(z+)+D_j(z-))/2;
* center block C_j=D_j(2+i t);
* axial point=(Re E_j, Re(E_j-C_j));
* transverse point=(Re E_j, Im((D_j(z+)-D_j(z-))/2)).

All three plus/minus/center blocks are controlled by one source-derived
Green-energy envelope.  Consequently the complete positive quartic stage has
an explicit finite-stage upper bound involving only three adjacent envelopes.

No all-scale energy bound, RH, or inverse normalization is used.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
DYADIC_QUARTIC_PACKING_DEFINED / FINITE_STAGE_GREEN_ENVELOPE_BOUND.
-/

namespace GRWTSK.RiemannHypothesis

open Complex
open CanonicalZeroDivisor
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.MellinReadout
open GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence

/-- Radius covering plus, minus and the a=0 center parameter. -/
def safeDyadicQuarticRadius (z : ZeroPoint) : ℝ :=
  max (safeDyadicRadius z) ‖safeShiftCenter z.1‖

theorem safeDyadicQuarticRadius_nonnegative (z : ZeroPoint) :
    0 ≤ safeDyadicQuarticRadius z := by
  unfold safeDyadicQuarticRadius
  positivity

theorem safeShiftPlus_norm_le_quarticRadius (z : ZeroPoint) :
    ‖safeShiftPlus z.1‖ ≤ safeDyadicQuarticRadius z :=
  (safeShiftPlus_norm_le_radius z).trans (le_max_left _ _)

theorem safeShiftMinus_norm_le_quarticRadius (z : ZeroPoint) :
    ‖safeShiftMinus z.1‖ ≤ safeDyadicQuarticRadius z :=
  (safeShiftMinus_norm_le_radius z).trans (le_max_left _ _)

theorem safeShiftCenter_norm_le_quarticRadius (z : ZeroPoint) :
    ‖safeShiftCenter z.1‖ ≤ safeDyadicQuarticRadius z :=
  le_max_right _ _

/-- Common finite-stage block envelope for all three source parameters. -/
def safeDyadicQuarticBlockEnvelope (z : ZeroPoint) (j : ℕ) : ℝ :=
  safeDyadicHalfWeight j *
    (Real.sqrt (augmentedEnergy (dyadicScale j)) *
      Real.sqrt (radiusBudget (safeDyadicQuarticRadius z)))

theorem safeDyadicQuarticBlockEnvelope_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeDyadicQuarticBlockEnvelope z j := by
  unfold safeDyadicQuarticBlockEnvelope safeDyadicHalfWeight
  positivity

/-- Reusable common-envelope theorem for any safe parameter right of 3/2. -/
theorem safeDyadicBlock_norm_le_quarticEnvelope
    (z : ZeroPoint) (j : ℕ) (w : ℂ)
    (hre : (3 / 2 : ℝ) < w.re)
    (hnorm : ‖w‖ ≤ safeDyadicQuarticRadius z) :
    ‖dirichletBlock (dyadicScale j) w‖ ≤
      safeDyadicQuarticBlockEnvelope z j := by
  have hbase :=
    dirichletBlock_norm_bound
      (dyadicScale_pos j)
      (safeDyadicQuarticRadius_nonnegative z)
      hnorm
  have hlog :
      0 ≤ Real.log (dyadicScale j : ℝ) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr
        (Nat.ne_of_gt (dyadicScale_pos j))))
  have hexponent :
      1 - w.re ≤ -(1 / 2 : ℝ) := by
    linarith
  have hexp :
      Real.exp ((1 - w.re) * Real.log (dyadicScale j : ℝ)) ≤
        safeDyadicHalfWeight j := by
    unfold safeDyadicHalfWeight
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right hexponent hlog
  unfold safeDyadicQuarticBlockEnvelope
  exact hbase.trans
    (mul_le_mul_of_nonneg_right hexp
      (mul_nonneg (Real.sqrt_nonneg _)
        (Real.sqrt_nonneg _)))

def safeCenterDyadicBlock (z : ZeroPoint) (j : ℕ) : ℂ :=
  dirichletBlock (dyadicScale j) (safeShiftCenter z.1)

theorem safeCenterDyadicBlock_norm_le
    (z : ZeroPoint) (j : ℕ) :
    ‖safeCenterDyadicBlock z j‖ ≤
      safeDyadicQuarticBlockEnvelope z j := by
  unfold safeCenterDyadicBlock
  apply safeDyadicBlock_norm_le_quarticEnvelope
  · simp [safeShiftCenter]
  · exact safeShiftCenter_norm_le_quarticRadius z

theorem safePlusDyadicBlock_norm_le_quartic
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicBlock z j‖ ≤
      safeDyadicQuarticBlockEnvelope z j := by
  unfold safePlusDyadicBlock
  exact safeDyadicBlock_norm_le_quarticEnvelope z j _
    (safeShiftPlus_three_halves_lt_re z)
    (safeShiftPlus_norm_le_quarticRadius z)

theorem safeMinusDyadicBlock_norm_le_quartic
    (z : ZeroPoint) (j : ℕ) :
    ‖safeMinusDyadicBlock z j‖ ≤
      safeDyadicQuarticBlockEnvelope z j := by
  unfold safeMinusDyadicBlock
  exact safeDyadicBlock_norm_le_quarticEnvelope z j _
    (safeShiftMinus_three_halves_lt_re z)
    (safeShiftMinus_norm_le_quarticRadius z)

theorem safeEvenDyadicBlock_norm_le_quartic
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDyadicBlock z j‖ ≤
      safeDyadicQuarticBlockEnvelope z j := by
  unfold safeEvenDyadicBlock
  rw [norm_div]
  have hsum :=
    norm_add_le (safePlusDyadicBlock z j) (safeMinusDyadicBlock z j)
  have hp := safePlusDyadicBlock_norm_le_quartic z j
  have hm := safeMinusDyadicBlock_norm_le_quartic z j
  norm_num
  nlinarith

theorem safeOddDyadicBlock_norm_le_quartic
    (z : ZeroPoint) (j : ℕ) :
    ‖safeOddDyadicBlock z j‖ ≤
      safeDyadicQuarticBlockEnvelope z j := by
  unfold safeOddDyadicBlock
  rw [norm_div]
  have hsum :=
    norm_sub_le (safePlusDyadicBlock z j) (safeMinusDyadicBlock z j)
  have hp := safePlusDyadicBlock_norm_le_quartic z j
  have hm := safeMinusDyadicBlock_norm_le_quartic z j
  norm_num
  nlinarith

def safeEvenDefectDyadicBlock (z : ZeroPoint) (j : ℕ) : ℂ :=
  safeEvenDyadicBlock z j - safeCenterDyadicBlock z j

theorem safeEvenDefectDyadicBlock_norm_le_two
    (z : ZeroPoint) (j : ℕ) :
    ‖safeEvenDefectDyadicBlock z j‖ ≤
      2 * safeDyadicQuarticBlockEnvelope z j := by
  unfold safeEvenDefectDyadicBlock
  have hsub :=
    norm_sub_le (safeEvenDyadicBlock z j) (safeCenterDyadicBlock z j)
  have he := safeEvenDyadicBlock_norm_le_quartic z j
  have hc := safeCenterDyadicBlock_norm_le z j
  nlinarith

/-- Dyadic axial source point. -/
def safeAxialDyadicPoint (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicBlock z j).re,
    (safeEvenDefectDyadicBlock z j).re⟩

/-- Dyadic transverse source point. -/
def safeTransverseDyadicPoint (z : ZeroPoint) (j : ℕ) : PackingPoint :=
  ⟨(safeEvenDyadicBlock z j).re,
    (safeOddDyadicBlock z j).im⟩

def dyadicPackingAt (point : ℕ → PackingPoint) (j : ℕ) :
    ThreePointPacking :=
  ⟨point j, point (j + 1), point (j + 2)⟩

def safeAxialDyadicPacking (z : ZeroPoint) (j : ℕ) :
    ThreePointPacking :=
  dyadicPackingAt (safeAxialDyadicPoint z) j

def safeTransverseDyadicPacking (z : ZeroPoint) (j : ℕ) :
    ThreePointPacking :=
  dyadicPackingAt (safeTransverseDyadicPoint z) j

def safeAxialDyadicGram (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeAxialDyadicPacking z j).gramVolume

def safeTransverseDyadicGram (z : ZeroPoint) (j : ℕ) : ℝ :=
  (safeTransverseDyadicPacking z j).gramVolume

def safeQuarticDyadicPackingValue (z : ZeroPoint) (j : ℕ) : ℝ :=
  safeAxialDyadicGram z j + 3 * safeTransverseDyadicGram z j

theorem safeAxialDyadicGram_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeAxialDyadicGram z j :=
  (safeAxialDyadicPacking z j).gramVolume_nonnegative

theorem safeTransverseDyadicGram_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeTransverseDyadicGram z j :=
  (safeTransverseDyadicPacking z j).gramVolume_nonnegative

theorem safeQuarticDyadicPackingValue_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicPackingValue z j := by
  unfold safeQuarticDyadicPackingValue
  positivity [safeAxialDyadicGram_nonnegative z j,
    safeTransverseDyadicGram_nonnegative z j]

/-- Coordinate-wise point norm bounds from the common block envelope. -/
theorem safeAxialDyadicPoint_normSq_le
    (z : ZeroPoint) (j : ℕ) :
    (safeAxialDyadicPoint z j).normSq ≤
      5 * (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
  have hx :
      |(safeEvenDyadicBlock z j).re| ≤
        safeDyadicQuarticBlockEnvelope z j :=
    (Complex.abs_re_le_norm _).trans
      (safeEvenDyadicBlock_norm_le_quartic z j)
  have hy :
      |(safeEvenDefectDyadicBlock z j).re| ≤
        2 * safeDyadicQuarticBlockEnvelope z j :=
    (Complex.abs_re_le_norm _).trans
      (safeEvenDefectDyadicBlock_norm_le_two z j)
  have hE : 0 ≤ safeDyadicQuarticBlockEnvelope z j :=
    safeDyadicQuarticBlockEnvelope_nonnegative z j
  have hxSq :
      (safeEvenDyadicBlock z j).re ^ 2 ≤
        (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hE] using hx
  have hySq :
      (safeEvenDefectDyadicBlock z j).re ^ 2 ≤
        (2 * safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
    rw [sq_le_sq]
    have h2E : 0 ≤ 2 * safeDyadicQuarticBlockEnvelope z j := by positivity
    simpa [abs_of_nonneg h2E] using hy
  unfold safeAxialDyadicPoint PackingPoint.normSq PackingPoint.dot
  nlinarith

theorem safeTransverseDyadicPoint_normSq_le
    (z : ZeroPoint) (j : ℕ) :
    (safeTransverseDyadicPoint z j).normSq ≤
      2 * (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
  have hx :
      |(safeEvenDyadicBlock z j).re| ≤
        safeDyadicQuarticBlockEnvelope z j :=
    (Complex.abs_re_le_norm _).trans
      (safeEvenDyadicBlock_norm_le_quartic z j)
  have hy :
      |(safeOddDyadicBlock z j).im| ≤
        safeDyadicQuarticBlockEnvelope z j :=
    (Complex.abs_im_le_norm _).trans
      (safeOddDyadicBlock_norm_le_quartic z j)
  have hE : 0 ≤ safeDyadicQuarticBlockEnvelope z j :=
    safeDyadicQuarticBlockEnvelope_nonnegative z j
  have hxSq :
      (safeEvenDyadicBlock z j).re ^ 2 ≤
        (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hE] using hx
  have hySq :
      (safeOddDyadicBlock z j).im ^ 2 ≤
        (safeDyadicQuarticBlockEnvelope z j) ^ 2 := by
    rw [sq_le_sq]
    simpa [abs_of_nonneg hE] using hy
  unfold safeTransverseDyadicPoint PackingPoint.normSq PackingPoint.dot
  nlinarith

/-- Generic squared-edge estimate. -/
theorem PackingPoint.sub_normSq_le_two
    (p q : PackingPoint) :
    (p.sub q).normSq ≤ 2 * (p.normSq + q.normSq) := by
  unfold PackingPoint.sub PackingPoint.normSq PackingPoint.dot
  nlinarith [sq_nonneg (p.x + q.x), sq_nonneg (p.y + q.y)]

/-- Compact notation for the three adjacent source envelopes. -/
def safeDyadicEnvelopePairProduct
    (z : ZeroPoint) (j : ℕ) : ℝ :=
  ((safeDyadicQuarticBlockEnvelope z j) ^ 2 +
      (safeDyadicQuarticBlockEnvelope z (j + 1)) ^ 2) *
    ((safeDyadicQuarticBlockEnvelope z (j + 1)) ^ 2 +
      (safeDyadicQuarticBlockEnvelope z (j + 2)) ^ 2)

theorem safeDyadicEnvelopePairProduct_nonnegative
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeDyadicEnvelopePairProduct z j := by
  unfold safeDyadicEnvelopePairProduct
  positivity

/-- Axial edge-product enclosure has a uniform finite-stage Green-energy bound. -/
theorem safeAxialDyadic_edgeProduct_le
    (z : ZeroPoint) (j : ℕ) :
    (safeAxialDyadicPacking z j).edgeProductEnclosure ≤
      100 * safeDyadicEnvelopePairProduct z j := by
  have h01 :=
    PackingPoint.sub_normSq_le_two
      (safeAxialDyadicPoint z (j + 1))
      (safeAxialDyadicPoint z j)
  have h12 :=
    PackingPoint.sub_normSq_le_two
      (safeAxialDyadicPoint z (j + 2))
      (safeAxialDyadicPoint z (j + 1))
  have h0 := safeAxialDyadicPoint_normSq_le z j
  have h1 := safeAxialDyadicPoint_normSq_le z (j + 1)
  have h2 := safeAxialDyadicPoint_normSq_le z (j + 2)
  have he01 :
      (safeAxialDyadicPacking z j).edge01.normSq ≤
        10 * ((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2) := by
    simpa [safeAxialDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using h01.trans (by nlinarith)
  have he12 :
      (safeAxialDyadicPacking z j).edge12.normSq ≤
        10 * ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2) := by
    simpa [safeAxialDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using h12.trans (by nlinarith)
  unfold ThreePointPacking.edgeProductEnclosure safeDyadicEnvelopePairProduct
  calc
    _ ≤
        (10 * ((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2)) *
        (10 * ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2)) := by
      exact mul_le_mul he01 he12 (by positivity) (by positivity)
    _ = 100 *
        (((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2) *
        ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2)) := by ring

theorem safeTransverseDyadic_edgeProduct_le
    (z : ZeroPoint) (j : ℕ) :
    (safeTransverseDyadicPacking z j).edgeProductEnclosure ≤
      16 * safeDyadicEnvelopePairProduct z j := by
  have h01 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j + 1))
      (safeTransverseDyadicPoint z j)
  have h12 :=
    PackingPoint.sub_normSq_le_two
      (safeTransverseDyadicPoint z (j + 2))
      (safeTransverseDyadicPoint z (j + 1))
  have h0 := safeTransverseDyadicPoint_normSq_le z j
  have h1 := safeTransverseDyadicPoint_normSq_le z (j + 1)
  have h2 := safeTransverseDyadicPoint_normSq_le z (j + 2)
  have he01 :
      (safeTransverseDyadicPacking z j).edge01.normSq ≤
        4 * ((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge01] using h01.trans (by nlinarith)
  have he12 :
      (safeTransverseDyadicPacking z j).edge12.normSq ≤
        4 * ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2) := by
    simpa [safeTransverseDyadicPacking, dyadicPackingAt,
      ThreePointPacking.edge12] using h12.trans (by nlinarith)
  unfold ThreePointPacking.edgeProductEnclosure safeDyadicEnvelopePairProduct
  calc
    _ ≤
        (4 * ((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2)) *
        (4 * ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2)) := by
      exact mul_le_mul he01 he12 (by positivity) (by positivity)
    _ = 16 *
        (((safeDyadicQuarticBlockEnvelope z j)^2 +
          (safeDyadicQuarticBlockEnvelope z (j+1))^2) *
        ((safeDyadicQuarticBlockEnvelope z (j+1))^2 +
          (safeDyadicQuarticBlockEnvelope z (j+2))^2)) := by ring

/-- Complete dyadic quartic occupied volume is explicitly bounded by three
adjacent Green-energy envelopes. -/
theorem safeQuarticDyadicPackingValue_le_greenEnvelope
    (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      148 * safeDyadicEnvelopePairProduct z j := by
  have hA :=
    (safeAxialDyadicPacking z j).gramVolume_le_edgeProductEnclosure
  have hT :=
    (safeTransverseDyadicPacking z j).gramVolume_le_edgeProductEnclosure
  have hAE := safeAxialDyadic_edgeProduct_le z j
  have hTE := safeTransverseDyadic_edgeProduct_le z j
  unfold safeQuarticDyadicPackingValue
    safeAxialDyadicGram safeTransverseDyadicGram
  nlinarith

end GRWTSK.RiemannHypothesis
