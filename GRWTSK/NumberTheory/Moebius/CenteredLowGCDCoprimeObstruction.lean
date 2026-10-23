/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients
import Mathlib.Tactic

/-!
# Coprime Möbius-square obstruction inside the centered low-gcd block

The coprime class is an exact signed summand. Its Möbius-square expansion has
an `r=1` term equal to the full weighted centered von Mangoldt mass square, so
a termwise absolute square majorant is circular for that target.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Coprime (`g=1`) centered modulus class. -/
def centeredCoprimeBilinear
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    ∑ e ∈ modulusIndexSet X,
      if Nat.Coprime d e then
        centeredModulusCoefficient X w d *
          centeredModulusCoefficient X w e
      else 0

/-- Remaining positive common-gcd classes `2 <= gcd(d,e) <= Y`. -/
def centeredNonCoprimeLowGCDBilinear
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    ∑ e ∈ modulusIndexSet X,
      if 2 ≤ Nat.gcd d e ∧ Nat.gcd d e ≤ Y then
        centeredModulusCoefficient X w d *
          centeredModulusCoefficient X w e
      else 0

/-- The coprime class is an exact signed summand of every nondegenerate
low-gcd block. -/
theorem centeredLowGCDBilinear_eq_coprime_add_nonCoprime
    {X Y : ℕ}
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      centeredCoprimeBilinear X w +
        centeredNonCoprimeLowGCDBilinear X Y w := by
  unfold centeredLowGCDBilinear centeredCoprimeBilinear
    centeredNonCoprimeLowGCDBilinear
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e he
  have hdI := Finset.mem_Icc.mp hd
  have hgpos : 0 < Nat.gcd d e :=
    Nat.gcd_pos_of_pos_left e (by omega)
  by_cases hcop : Nat.Coprime d e
  · simp [hcop, hY]
  · have hg1 : Nat.gcd d e ≠ 1 := by
      exact fun h =>
        hcop (Nat.coprime_iff_gcd_eq_one.mpr h)
    have hg2 : 2 ≤ Nat.gcd d e := by omega
    by_cases hgY : Nat.gcd d e ≤ Y
    · simp [hcop, hg2, hgY]
    · simp [hcop, hg2, hgY]


/-- Tail of centered modulus coefficients along multiples of `r`. -/
def centeredDivisibilityTail
    (X : ℕ) (w : ℕ → ℝ) (r : ℕ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    if r ∣ d then centeredModulusCoefficient X w d else 0

/-- Signed Möbius square expansion of the coprime class. -/
def coprimeMobiusSquareExpansion
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ modulusIndexSet X,
    mobiusReal r * (centeredDivisibilityTail X w r)^2

/-- Termwise absolute square majorant. -/
def absoluteCoprimeMobiusSquareMajorant
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ modulusIndexSet X,
    |mobiusReal r| * (centeredDivisibilityTail X w r)^2

/-- Sum of Möbius over all positive divisors is the coprimality indicator. -/
theorem sum_mobius_divisors_eq_coprime_indicator
    (a b : ℕ) :
    (∑ r ∈ (Nat.gcd a b).divisors, mobiusReal r) =
      if Nat.Coprime a b then 1 else 0 := by
  by_cases hcop : Nat.Coprime a b
  · have hg : Nat.gcd a b = 1 :=
      Nat.coprime_iff_gcd_eq_one.mp hcop
    simp [hg, mobiusReal]
  · have hg : Nat.gcd a b ≠ 1 := by
      exact fun h1 =>
        hcop (Nat.coprime_iff_gcd_eq_one.mpr h1)
    have h :=
      congrArg
        (fun f : ArithmeticFunction ℝ => f (Nat.gcd a b))
        (ArithmeticFunction.coe_moebius_mul_coe_zeta
          (R := ℝ))
    simpa only [ArithmeticFunction.coe_mul_zeta_apply,
      ArithmeticFunction.intCoe_apply, ArithmeticFunction.one_apply,
      if_neg hg, if_neg hcop, mobiusReal] using h

/-- The common-divisor Möbius sum can be taken over the global modulus set. -/
theorem sum_mobius_common_divisors_eq_coprime_indicator
    {X d e : ℕ}
    (hd : d ∈ modulusIndexSet X)
    (he : e ∈ modulusIndexSet X) :
    (∑ r ∈ modulusIndexSet X,
      if r ∣ d ∧ r ∣ e then mobiusReal r else 0) =
      if Nat.Coprime d e then 1 else 0 := by
  have hdI := Finset.mem_Icc.mp hd
  have heI := Finset.mem_Icc.mp he
  have hgpos : 0 < Nat.gcd d e :=
    Nat.gcd_pos_of_pos_left e (by omega)
  have hfilter :
      (modulusIndexSet X).filter
          (fun r => r ∣ d ∧ r ∣ e) =
        (Nat.gcd d e).divisors := by
    ext r
    simp only [modulusIndexSet, Finset.mem_filter, Finset.mem_Icc,
      Nat.mem_divisors, Nat.dvd_gcd_iff]
    constructor
    · rintro ⟨⟨hr0, hrB⟩, hrd, hre⟩
      exact ⟨⟨hrd, hre⟩, Nat.ne_of_gt hgpos⟩
    · rintro ⟨hrg, hg0⟩
      have hrgcd : r ∣ Nat.gcd d e :=
        Nat.dvd_gcd hrg.1 hrg.2
      have hr0 : 0 < r :=
        Nat.pos_of_dvd_of_pos hrgcd hgpos
      have hrle : r ≤ Nat.gcd d e :=
        Nat.le_of_dvd hgpos hrgcd
      exact
        ⟨⟨hr0,
            hrle.trans
              ((Nat.gcd_le_left e (by omega : 0 < d)).trans hdI.2)⟩,
          hrg.1, hrg.2⟩
  rw [← Finset.sum_filter, hfilter,
    sum_mobius_divisors_eq_coprime_indicator]

/-- Exact finite Möbius-square diagonalization of the coprime class. -/
theorem centeredCoprimeBilinear_eq_mobiusSquareExpansion
    (X : ℕ) (w : ℕ → ℝ) :
    centeredCoprimeBilinear X w =
      coprimeMobiusSquareExpansion X w := by
  unfold centeredCoprimeBilinear
    coprimeMobiusSquareExpansion
    centeredDivisibilityTail
  have hreorder :
      (∑ r ∈ modulusIndexSet X,
        ∑ d ∈ modulusIndexSet X,
          ∑ e ∈ modulusIndexSet X,
            mobiusReal r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0))) =
      ∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          ∑ r ∈ modulusIndexSet X,
            mobiusReal r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro d hd
    rw [Finset.sum_comm]
  calc
    (∑ d ∈ modulusIndexSet X,
      ∑ e ∈ modulusIndexSet X,
        if Nat.Coprime d e then
          centeredModulusCoefficient X w d *
            centeredModulusCoefficient X w e
        else 0) =
      ∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          ∑ r ∈ modulusIndexSet X,
            mobiusReal r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := by
      apply Finset.sum_congr rfl
      intro d hd
      apply Finset.sum_congr rfl
      intro e he
      calc
        (if Nat.Coprime d e then
            centeredModulusCoefficient X w d *
              centeredModulusCoefficient X w e
          else 0) =
          (if Nat.Coprime d e then 1 else 0) *
            centeredModulusCoefficient X w d *
              centeredModulusCoefficient X w e := by
                by_cases hcop : Nat.Coprime d e <;>
                  simp [hcop]
        _ =
          (∑ r ∈ modulusIndexSet X,
            if r ∣ d ∧ r ∣ e then mobiusReal r else 0) *
              centeredModulusCoefficient X w d *
                centeredModulusCoefficient X w e := by
                  rw [
                    sum_mobius_common_divisors_eq_coprime_indicator
                      hd he]
        _ =
          ∑ r ∈ modulusIndexSet X,
            mobiusReal r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := by
                  simp_rw [Finset.sum_mul]
                  apply Finset.sum_congr rfl
                  intro r hr
                  by_cases hrd : r ∣ d
                  · by_cases hre : r ∣ e
                    · simp only [hrd, hre, and_self, if_true]
                      ring
                    · simp [hre]
                  · simp [hrd]
    _ =
      ∑ r ∈ modulusIndexSet X,
        ∑ d ∈ modulusIndexSet X,
          ∑ e ∈ modulusIndexSet X,
            mobiusReal r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := hreorder.symm
    _ =
      ∑ r ∈ modulusIndexSet X,
        mobiusReal r *
          (∑ d ∈ modulusIndexSet X,
            if r ∣ d then
              centeredModulusCoefficient X w d
            else 0) ^ 2 := by
              apply Finset.sum_congr rfl
              intro r hr
              rw [pow_two, Finset.sum_mul_sum,
                Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro d hd
              rw [Finset.mul_sum]

/-- The divisibility tail at `r=1` is exactly the full centered coefficient
mass. -/
theorem centeredDivisibilityTail_one
    (X : ℕ) (w : ℕ → ℝ) :
    centeredDivisibilityTail X w 1 =
      centeredCoefficientMass X w := by
  unfold centeredDivisibilityTail centeredCoefficientMass
  simp

/-- The absolute square majorant contains the complete centered mass square as
its `r=1` term. -/
theorem centeredCoefficientMass_sq_le_absoluteCoprimeMajorant
    {X : ℕ}
    (hX : 0 < X)
    (w : ℕ → ℝ) :
    (centeredCoefficientMass X w)^2 ≤
      absoluteCoprimeMobiusSquareMajorant X w := by
  unfold absoluteCoprimeMobiusSquareMajorant
  calc
    (centeredCoefficientMass X w)^2 =
        |mobiusReal 1| *
          (centeredDivisibilityTail X w 1)^2 := by
      rw [centeredDivisibilityTail_one]
      simp [mobiusReal]
    _ ≤
      ∑ r ∈ modulusIndexSet X,
        |mobiusReal r| *
          (centeredDivisibilityTail X w r)^2 := by
      exact Finset.single_le_sum
        (f := fun r : ℕ => |mobiusReal r| * (centeredDivisibilityTail X w r)^2)
        (fun r hr => mul_nonneg (abs_nonneg _) (sq_nonneg _))
        (one_mem_modulusIndexSet hX)

/-- Consequently, after identifying the centered mass with von Mangoldt, any
termwise absolute treatment of the coprime Möbius-square expansion already
requires the full smoothed centered-value square. -/
theorem weighted_vonMangoldt_sub_one_sq_le_absoluteCoprimeMajorant
    {X : ℕ}
    (hX : 0 < X)
    (w : ℕ → ℝ) :
    (∑ n ∈ octaveIndexSet X,
      w n * (ArithmeticFunction.vonMangoldt n - 1))^2 ≤
      absoluteCoprimeMobiusSquareMajorant X w := by
  rw [← centeredCoefficientMass_eq_weighted_vonMangoldt_sub_one hX]
  exact centeredCoefficientMass_sq_le_absoluteCoprimeMajorant hX w

/-- The signed coprime square expansion is bounded above by its termwise
absolute majorant.  The preceding theorem records why this bound is circular
for a route whose goal is the centered smoothed-value square itself. -/
theorem centeredCoprimeBilinear_le_absoluteMajorant
    (X : ℕ) (w : ℕ → ℝ) :
    centeredCoprimeBilinear X w ≤
      absoluteCoprimeMobiusSquareMajorant X w := by
  rw [centeredCoprimeBilinear_eq_mobiusSquareExpansion]
  unfold coprimeMobiusSquareExpansion
    absoluteCoprimeMobiusSquareMajorant
  exact Finset.sum_le_sum fun r hr => by
    have hs : 0 ≤ (centeredDivisibilityTail X w r)^2 := sq_nonneg _
    exact mul_le_mul_of_nonneg_right
      (le_abs_self (mobiusReal r)) hs


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
