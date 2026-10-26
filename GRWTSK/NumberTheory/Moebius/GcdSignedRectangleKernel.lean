/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.MobiusGcdQuotientKernelSign
import GRWTSK.NumberTheory.Moebius.MobiusDoublingCredit

/-!
# Positive rectangle mixture for the complete gcd-coordinate signed balance

The coefficient contains the actual quotient sign mu(a*b), both coprimality
restrictions, and the positive quotient inventory. Count cutoffs g*a<=i,
g*b<=j are retained, including the coefficient diagonal a=b=1.

The unconditional kernel lemma pays total off-increment-diagonal mass by 1/g.
The rectangle upper supplier is an explicit, stronger sufficient arithmetic
premise. It is not proved and is not identified with a fixed-shift estimate.
Connecting the finite mixture to the existing ZMod pulled kernel requires
an exact finite interchange/index bridge; no such bridge is claimed here.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def gcdQuotientSignedCoefficient (g a b : ℕ) : ℝ :=
  if Nat.Coprime a b ∧ Nat.Coprime g (a*b) then moebiusReal (a*b) else 0

/-- Fixed positive inventory; moving original source cutoffs remain literal.
For g>0 this equals the coprime signed count with quotient bounds
min(Q,i/g), min(Q,j/g), subject to a separate finite reindexing proof. -/
def gcdSignedRectangle (g Q i j : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 Q, ∑ b ∈ Finset.Icc 1 Q,
    if g*a ≤ i ∧ g*b ≤ j then gcdQuotientSignedCoefficient g a b else 0

def endpointGapTail (g L : ℕ) : ℝ :=
  ∑ k ∈ Finset.range L, criticalEndpointGap (g+k)

def offDiagonalGapTailMass (g L : ℕ) : ℝ :=
  ∑ i ∈ Finset.range L, ∑ j ∈ Finset.range L,
    if i=j then 0 else criticalEndpointGap (g+i)*criticalEndpointGap (g+j)

/-- N=g+L-1 is the last increment horizon when L>0. The i=j exclusion is
exactly the increment square subtraction in J-I, not the coefficient diagonal. -/
def gcdSignedRectangleMixture (g Q L : ℕ) : ℝ :=
  ∑ i ∈ Finset.range L, ∑ j ∈ Finset.range L,
    (if i=j then 0 else criticalEndpointGap (g+i)*criticalEndpointGap (g+j))*
      gcdSignedRectangle g Q (g+i) (g+j)

theorem endpointGapTail_eq (g L : ℕ) :
    endpointGapTail g L = (Real.sqrt g)⁻¹-(Real.sqrt (g+L : ℕ))⁻¹ := by
  induction L with
  | zero => simp [endpointGapTail]
  | succ L ih =>
    unfold endpointGapTail at *
    rw [Finset.sum_range_succ, ih]
    simp only [criticalEndpointGap, Nat.add_assoc]
    ring

theorem endpointGapTail_nonneg {g : ℕ} (hg : 1 ≤ g) (L : ℕ) :
    0 ≤ endpointGapTail g L := by
  unfold endpointGapTail
  exact Finset.sum_nonneg (fun k _ => criticalEndpointGap_nonneg (by omega))

theorem endpointGapTail_le_inv_sqrt (g L : ℕ) :
    endpointGapTail g L ≤ (Real.sqrt g)⁻¹ := by
  rw [endpointGapTail_eq]
  exact sub_le_self _ (inv_nonneg.mpr (Real.sqrt_nonneg _))

theorem offDiagonalGapTailMass_nonneg {g : ℕ} (hg : 1 ≤ g) (L : ℕ) :
    0 ≤ offDiagonalGapTailMass g L := by
  unfold offDiagonalGapTailMass
  apply Finset.sum_nonneg
  intro i _
  apply Finset.sum_nonneg
  intro j _
  split_ifs
  · exact le_rfl
  · exact mul_nonneg (criticalEndpointGap_nonneg (by omega))
      (criticalEndpointGap_nonneg (by omega))

theorem offDiagonalGapTailMass_le_tail_sq {g : ℕ} (hg : 1 ≤ g) (L : ℕ) :
    offDiagonalGapTailMass g L ≤ endpointGapTail g L ^ 2 := by
  calc
    _ ≤ ∑ i ∈ Finset.range L, ∑ j ∈ Finset.range L,
        criticalEndpointGap (g+i)*criticalEndpointGap (g+j) := by
      unfold offDiagonalGapTailMass
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      split_ifs
      · exact mul_nonneg (criticalEndpointGap_nonneg (by omega))
          (criticalEndpointGap_nonneg (by omega))
      · exact le_rfl
    _ = endpointGapTail g L ^ 2 := by
      simp_rw [← Finset.mul_sum]
      rw [← Finset.sum_mul]
      simp only [endpointGapTail, pow_two]

theorem offDiagonalGapTailMass_le_inv {g : ℕ} (hg : 1 ≤ g) (L : ℕ) :
    offDiagonalGapTailMass g L ≤ 1/(g : ℝ) := by
  have hsq : endpointGapTail g L ^ 2 ≤ ((Real.sqrt g)⁻¹)^2 :=
    (sq_le_sq₀ (endpointGapTail_nonneg hg L) (by positivity)).2
      (endpointGapTail_le_inv_sqrt g L)
  calc
    _ ≤ ((Real.sqrt g)⁻¹)^2 := (offDiagonalGapTailMass_le_tail_sq hg L).trans hsq
    _ = _ := by rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg g), one_div]

/-- One-sided rectangular cancellation is enough: no absolute value of the
signed coefficient count is inserted. This arithmetic hypothesis is OPEN. -/
theorem gcdSignedRectangleMixture_le_mass {g Q L : ℕ} {B : ℝ}
    (hg : 1 ≤ g)
    (hrect : ∀ i ∈ Finset.range L, ∀ j ∈ Finset.range L,
      gcdSignedRectangle g Q (g+i) (g+j) ≤ B) :
    gcdSignedRectangleMixture g Q L ≤ B*offDiagonalGapTailMass g L := by
  unfold gcdSignedRectangleMixture offDiagonalGapTailMass
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro j hj
  have hw : 0 ≤ (if i=j then 0 else
      criticalEndpointGap (g+i)*criticalEndpointGap (g+j)) := by
    split_ifs
    · exact le_rfl
    · exact mul_nonneg (criticalEndpointGap_nonneg (by omega))
        (criticalEndpointGap_nonneg (by omega))
  simpa only [mul_comm B] using mul_le_mul_of_nonneg_left (hrect i hi j hj) hw

/-- Unconditional 1/g kernel payment; the signed rectangle supplier is the
sole arithmetic assumption of this lemma. It is sufficient, not necessary. -/
theorem gcdSignedRectangleMixture_le_inv {g Q L : ℕ} {B : ℝ}
    (hg : 1 ≤ g) (hB : 0 ≤ B)
    (hrect : ∀ i ∈ Finset.range L, ∀ j ∈ Finset.range L,
      gcdSignedRectangle g Q (g+i) (g+j) ≤ B) :
    gcdSignedRectangleMixture g Q L ≤ B/(g : ℝ) := by
  calc
    _ ≤ B*offDiagonalGapTailMass g L := gcdSignedRectangleMixture_le_mass hg hrect
    _ ≤ B*(1/(g : ℝ)) := mul_le_mul_of_nonneg_left (offDiagonalGapTailMass_le_inv hg L) hB
    _ = _ := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
