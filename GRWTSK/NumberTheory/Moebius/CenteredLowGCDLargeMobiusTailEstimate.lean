/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalEstimate
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

/-!
# Absolute large-index bound for the coprime Möbius square

The exact signed coprime square is split at `r = floor(sqrt X)`.
The large-`r` side is anchor-free and is bounded absolutely by finite
divisor incidence counting and the elementary reciprocal-square tail.
The small-`r` signed square remains untouched.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Möbius indices at or below the natural square-root cutoff. -/
def lowMobiusTailIndexSet (X : ℕ) : Finset ℕ :=
  (modulusIndexSet X).filter fun r => r ≤ X.sqrt

/-- Möbius indices strictly above the natural square-root cutoff. -/
def highMobiusTailIndexSet (X : ℕ) : Finset ℕ :=
  (modulusIndexSet X).filter fun r => X.sqrt < r

@[simp]
theorem mem_lowMobiusTailIndexSet_iff
    {X r : ℕ} :
    r ∈ lowMobiusTailIndexSet X ↔
      r ∈ modulusIndexSet X ∧ r ≤ X.sqrt := by
  simp [lowMobiusTailIndexSet]

@[simp]
theorem mem_highMobiusTailIndexSet_iff
    {X r : ℕ} :
    r ∈ highMobiusTailIndexSet X ↔
      r ∈ modulusIndexSet X ∧ X.sqrt < r := by
  simp [highMobiusTailIndexSet]

/-- The low and high Möbius index sets partition the complete modulus set. -/
theorem modulusIndexSet_eq_low_union_high
    (X : ℕ) :
    modulusIndexSet X =
      lowMobiusTailIndexSet X ∪ highMobiusTailIndexSet X := by
  ext r
  by_cases h : r ≤ X.sqrt
  · simp [lowMobiusTailIndexSet, highMobiusTailIndexSet, h,
      not_lt_of_ge h]
  · have hlt : X.sqrt < r := Nat.lt_of_not_ge h
    simp [lowMobiusTailIndexSet, highMobiusTailIndexSet, h, hlt]

/-- The two square-root index regions are disjoint. -/
theorem low_high_MobiusTailIndexSet_disjoint
    (X : ℕ) :
    Disjoint (lowMobiusTailIndexSet X)
      (highMobiusTailIndexSet X) := by
  rw [Finset.disjoint_left]
  intro r hrlo hrhi
  have hlo := (mem_lowMobiusTailIndexSet_iff.mp hrlo).2
  have hhi := (mem_highMobiusTailIndexSet_iff.mp hrhi).2
  omega

/-- Signed small-index portion of the coprime Möbius-square expansion. -/
def lowCoprimeMobiusSquareExpansion
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ lowMobiusTailIndexSet X,
    mobiusReal r * (centeredDivisibilityTail X w r)^2

/-- Signed large-index portion of the coprime Möbius-square expansion. -/
def highCoprimeMobiusSquareExpansion
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ highMobiusTailIndexSet X,
    mobiusReal r * (centeredDivisibilityTail X w r)^2

/-- Absolute large-index square majorant. -/
def absoluteHighCoprimeMobiusSquareMajorant
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ highMobiusTailIndexSet X,
    |mobiusReal r| * (centeredDivisibilityTail X w r)^2

/-- Exact square-root split of the signed coprime expansion. -/
theorem coprimeMobiusSquareExpansion_eq_low_add_high
    (X : ℕ) (w : ℕ → ℝ) :
    coprimeMobiusSquareExpansion X w =
      lowCoprimeMobiusSquareExpansion X w +
        highCoprimeMobiusSquareExpansion X w := by
  unfold coprimeMobiusSquareExpansion
    lowCoprimeMobiusSquareExpansion
    highCoprimeMobiusSquareExpansion
  rw [modulusIndexSet_eq_low_union_high,
    Finset.sum_union (low_high_MobiusTailIndexSet_disjoint X)]

/-- The signed large-index part is bounded by its absolute majorant. -/
theorem abs_highCoprimeMobiusSquareExpansion_le
    (X : ℕ) (w : ℕ → ℝ) :
    |highCoprimeMobiusSquareExpansion X w| ≤
      absoluteHighCoprimeMobiusSquareMajorant X w := by
  unfold highCoprimeMobiusSquareExpansion
    absoluteHighCoprimeMobiusSquareMajorant
  calc
    |∑ r ∈ highMobiusTailIndexSet X,
        mobiusReal r * (centeredDivisibilityTail X w r)^2| ≤
      ∑ r ∈ highMobiusTailIndexSet X,
        |mobiusReal r *
          (centeredDivisibilityTail X w r)^2| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ =
      ∑ r ∈ highMobiusTailIndexSet X,
        |mobiusReal r| *
          (centeredDivisibilityTail X w r)^2 := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [abs_mul, abs_of_nonneg (sq_nonneg _)]

/-- Quotient-square mass attached to the large Möbius indices. -/
def highMobiusQuotientSquareMass (X : ℕ) : ℝ :=
  ∑ r ∈ highMobiusTailIndexSet X,
    (((4 * X / r : ℕ) : ℝ)^2)

/-- The high index set lies in the reciprocal-square interval used below. -/
theorem highMobiusTailIndexSet_subset_Ioo
    (X : ℕ) :
    highMobiusTailIndexSet X ⊆
      Finset.Ioo X.sqrt (4 * X + 1) := by
  intro r hr
  rcases mem_highMobiusTailIndexSet_iff.mp hr with
    ⟨hrmem, hroot⟩
  have hrI := Finset.mem_Icc.mp hrmem
  exact Finset.mem_Ioo.mpr ⟨hroot, by omega⟩

/-- Finite reciprocal-square control of the quotient mass. -/
theorem highMobiusQuotientSquareMass_le
    {X : ℕ}
    (hX : 1 ≤ X) :
    highMobiusQuotientSquareMass X ≤
      32 * (X : ℝ) * Real.sqrt (X : ℝ) := by
  have hXpos : 0 < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hX)
  have hsqrtpos : 0 < Real.sqrt (X : ℝ) :=
    Real.sqrt_pos.2 hXpos
  have hrootBound :
      Real.sqrt (X : ℝ) ≤ ((X.sqrt + 1 : ℕ) : ℝ) := by
    exact Real.real_sqrt_le_nat_sqrt_succ
  have hrecip :
      (∑ r ∈ highMobiusTailIndexSet X,
        (((r : ℝ)^2)⁻¹)) ≤
      2 / (((X.sqrt + 1 : ℕ) : ℝ)) := by
    calc
      (∑ r ∈ highMobiusTailIndexSet X,
        (((r : ℝ)^2)⁻¹)) ≤
        ∑ r ∈ Finset.Ioo X.sqrt (4 * X + 1),
          (((r : ℝ)^2)⁻¹) := by
        exact Finset.sum_le_sum_of_subset_of_nonneg
          (highMobiusTailIndexSet_subset_Ioo X)
          (fun r hrBig hrSmall => by positivity)
      _ ≤ 2 / (((X.sqrt + 1 : ℕ) : ℝ)) := by
        simpa using
          (Finset.sum_Ioo_inv_sq_le
            (α := ℝ) X.sqrt (4 * X + 1))
  have hterm :
      ∀ r ∈ highMobiusTailIndexSet X,
        (((4 * X / r : ℕ) : ℝ)^2) ≤
          16 * (X : ℝ)^2 * (((r : ℝ)^2)⁻¹) := by
    intro r hr
    have hrpos : 0 < r := by
      have := (mem_highMobiusTailIndexSet_iff.mp hr).2
      omega
    have hcast :
        ((4 * X / r : ℕ) : ℝ) ≤
          ((4 * X : ℕ) : ℝ) / (r : ℝ) := by
      exact Nat.cast_div_le
    have hsq :
        (((4 * X / r : ℕ) : ℝ)^2) ≤
          ((((4 * X : ℕ) : ℝ) / (r : ℝ))^2) := by
      exact (mul_self_le_mul_self
        (by positivity : 0 ≤ ((4 * X / r : ℕ) : ℝ)) hcast)
    calc
      (((4 * X / r : ℕ) : ℝ)^2) ≤
          ((((4 * X : ℕ) : ℝ) / (r : ℝ))^2) := hsq
      _ = 16 * (X : ℝ)^2 * (((r : ℝ)^2)⁻¹) := by
        field_simp [show (r : ℝ) ≠ 0 by exact_mod_cast (Nat.ne_of_gt hrpos)]
        ring
  have hdenInv :
      1 / (((X.sqrt + 1 : ℕ) : ℝ)) ≤
        1 / Real.sqrt (X : ℝ) := by
    exact one_div_le_one_div_of_le hsqrtpos hrootBound
  calc
    highMobiusQuotientSquareMass X ≤
      ∑ r ∈ highMobiusTailIndexSet X,
        16 * (X : ℝ)^2 * (((r : ℝ)^2)⁻¹) := by
      unfold highMobiusQuotientSquareMass
      exact Finset.sum_le_sum hterm
    _ = 16 * (X : ℝ)^2 *
        ∑ r ∈ highMobiusTailIndexSet X,
          (((r : ℝ)^2)⁻¹) := by
      rw [Finset.mul_sum]
    _ ≤ 16 * (X : ℝ)^2 *
        (2 / (((X.sqrt + 1 : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hrecip (by positivity)
    _ ≤ 16 * (X : ℝ)^2 *
        (2 / Real.sqrt (X : ℝ)) := by
      gcongr
    _ = 32 * (X : ℝ) *
        ((X : ℝ) / Real.sqrt (X : ℝ)) := by
      ring
    _ = 32 * (X : ℝ) * Real.sqrt (X : ℝ) := by
      rw [Real.div_sqrt]

/-- The absolute large-index coprime energy is bounded by the quotient-square
mass and the common logarithmic envelope. -/
theorem absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    absoluteHighCoprimeMobiusSquareMajorant X w ≤
      highMobiusQuotientSquareMass X *
        (1 + Real.log ((4 * X : ℕ) : ℝ))^2 *
        Real.log ((4 * X : ℕ) : ℝ)^2 := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  have hXone : 1 ≤ X := by omega
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  unfold absoluteHighCoprimeMobiusSquareMajorant
    highMobiusQuotientSquareMass
  calc
    (∑ r ∈ highMobiusTailIndexSet X,
      |mobiusReal r| * (centeredDivisibilityTail X w r)^2) ≤
      ∑ r ∈ highMobiusTailIndexSet X,
        (((4 * X / r : ℕ) : ℝ)^2) *
          (1 + L)^2 * L^2 := by
      apply Finset.sum_le_sum
      intro r hr
      rcases mem_highMobiusTailIndexSet_iff.mp hr with
        ⟨hrmem, hroot⟩
      have hrgt : 1 < r := by
        have hrootOne : 1 ≤ X.sqrt := by
          rw [Nat.le_sqrt]
          omega
        omega
      have htail :=
        abs_centeredDivisibilityTail_le_quotient_log_product
          hXone hrmem hrgt hw
      have hmu : |mobiusReal r| ≤ 1 := by
        unfold mobiusReal
        exact_mod_cast
          (ArithmeticFunction.abs_moebius_le_one (n := r))
      have hMnonneg :
          0 ≤ ((4 * X / r : ℕ) : ℝ) * (1 + L) * L := by
        positivity
      have hsq :
          (centeredDivisibilityTail X w r)^2 ≤
            (((4 * X / r : ℕ) : ℝ) * (1 + L) * L)^2 := by
        have habsSq :
            |centeredDivisibilityTail X w r|^2 ≤
              (((4 * X / r : ℕ) : ℝ) * (1 + L) * L)^2 := by
          exact mul_self_le_mul_self (abs_nonneg _) htail
        simpa [sq_abs] using habsSq
      calc
        |mobiusReal r| *
            (centeredDivisibilityTail X w r)^2 ≤
          1 * (centeredDivisibilityTail X w r)^2 := by
          exact mul_le_mul_of_nonneg_right hmu (sq_nonneg _)
        _ ≤ (((4 * X / r : ℕ) : ℝ) * (1 + L) * L)^2 := by
          simpa using hsq
        _ = (((4 * X / r : ℕ) : ℝ)^2) *
            (1 + L)^2 * L^2 := by ring
    _ =
      (∑ r ∈ highMobiusTailIndexSet X,
        (((4 * X / r : ℕ) : ℝ)^2)) *
          (1 + L)^2 * L^2 := by
      rw [Finset.sum_mul, Finset.sum_mul]
    _ = highMobiusQuotientSquareMass X *
        (1 + Real.log ((4 * X : ℕ) : ℝ))^2 *
        Real.log ((4 * X : ℕ) : ℝ)^2 := by
      rfl

/-- Actual target-scale estimate for the complete large-index part of the
coprime Möbius square.  The constant `1152` is explicit and non-optimized. -/
theorem absoluteHighCoprimeMobiusSquareMajorant_le_target
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    absoluteHighCoprimeMobiusSquareMajorant X w ≤
      1152 * centeredLowGCDTargetScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hXone : 1 ≤ X := by omega
  have hXposR : 0 < (X : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hXone)
  have hellOne : 1 ≤ ell := by
    unfold ell
    rw [Real.le_log_iff_exp_le hXposR]
    exact (Real.exp_one_lt_three.le.trans <| by
      exact_mod_cast (show 3 ≤ X by omega))
  have hellNonneg : 0 ≤ ell := zero_le_one.trans hellOne
  have hlogFour_le : Real.log (4 : ℝ) ≤ ell := by
    unfold ell
    exact Real.log_le_log (by norm_num) (by exact_mod_cast hX)
  have hL_eq : L = Real.log (4 : ℝ) + ell := by
    unfold L ell
    rw [show (((4 * X : ℕ) : ℝ)) =
        (4 : ℝ) * (X : ℝ) by norm_num,
      Real.log_mul (by norm_num : (4 : ℝ) ≠ 0) hXposR.ne']
  have hL_le : L ≤ 2 * ell := by linarith
  have honeL_le : 1 + L ≤ 3 * ell := by linarith
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hmass := highMobiusQuotientSquareMass_le hXone
  have henergy :=
    absoluteHighCoprimeMobiusSquareMajorant_le_quotientMass
      hX hw
  have hlogs :
      (1 + L)^2 * L^2 ≤ 36 * ell^4 := by
    have h1sq :
        (1 + L)^2 ≤ (3 * ell)^2 := by
      exact mul_self_le_mul_self (by linarith) honeL_le
    have hLsq :
        L^2 ≤ (2 * ell)^2 := by
      exact mul_self_le_mul_self hLnonneg hL_le
    calc
      (1 + L)^2 * L^2 ≤
          (3 * ell)^2 * (2 * ell)^2 := by
        exact mul_le_mul h1sq hLsq (sq_nonneg _) (sq_nonneg _)
      _ = 36 * ell^4 := by ring
  calc
    absoluteHighCoprimeMobiusSquareMajorant X w ≤
      highMobiusQuotientSquareMass X * (1 + L)^2 * L^2 := by
      simpa [L] using henergy
    _ ≤ (32 * (X : ℝ) * Real.sqrt (X : ℝ)) *
        ((1 + L)^2 * L^2) := by
      exact mul_le_mul_of_nonneg_right hmass (by positivity)
    _ ≤ (32 * (X : ℝ) * Real.sqrt (X : ℝ)) *
        (36 * ell^4) := by
      exact mul_le_mul_of_nonneg_left hlogs (by positivity)
    _ = 1152 * centeredLowGCDTargetScale X := by
      unfold centeredLowGCDTargetScale ell
      ring

/-- Signed large-index coprime square bound. -/
theorem abs_highCoprimeMobiusSquareExpansion_le_target
    {X : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    |highCoprimeMobiusSquareExpansion X w| ≤
      1152 * centeredLowGCDTargetScale X := by
  exact
    (abs_highCoprimeMobiusSquareExpansion_le X w).trans
      (absoluteHighCoprimeMobiusSquareMajorant_le_target hX hw)

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
