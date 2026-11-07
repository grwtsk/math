/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPhysicalGrid

/-!
# Symmetry and ordered evaluation of radius-two physical rows

Exchanging the two modes reverses both divided-difference numerators
and their denominator orientation. The two sign reversals restore
each interval before either outward rounding step. The symmetric
archimedean remainder is preserved. The resulting row evaluator can
use the strict-order formula on both sides of the diagonal, keeping
the original diagonal shift and the signed scalar pole.

The theorem concerns the exact integer interval recipe. Checking
the stored rows and their literal scalar inputs is separate.
Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPhysicalGrid

open UnitWindowIntegerEntries (Endpoints iMul)
open RadiusTwoCandidateEntries

private def reverseSign (a : Endpoints) : Endpoints := (-a.2,-a.1)

private theorem sub_reverse (a b : Endpoints) : iSub b a = reverseSign (iSub a b) := by
  apply Prod.ext <;> simp [iSub, reverseSign]

private theorem scale_reverse (s : ℤ) (a : Endpoints) :
    iScale (-s) (reverseSign a) = iScale s a := by
  apply Prod.ext <;>
    simp only [iScale, iPoint, reverseSign, iMul, neg_mul_neg, min_self, max_self] <;>
    first | exact min_comm _ _ | exact max_comm _ _

private theorem mul_reverse (a b : Endpoints) :
    iMul a (reverseSign b) = reverseSign (iMul a b) := by
  apply Prod.ext
  · simp only [iMul, reverseSign, mul_neg, min_neg_neg]
    rw [max_comm (max (a.1*b.2) (a.2*b.2))]
  · simp only [iMul, reverseSign, mul_neg, max_neg_neg]
    rw [min_comm (min (a.1*b.2) (a.2*b.2))]

private theorem direction_reverse {m n : ℕ} (h : m ≠ n) :
    direction n m = - direction m n := by
  rcases lt_or_gt_of_ne h with h | h
  · simp [direction, h.le, Nat.not_le_of_gt h]
  · simp [direction, h.le, Nat.not_le_of_gt h]

private theorem gap_comm (m n : ℕ) : gap n m = gap m n := by
  simp only [gap, max_comm n m, min_comm n m]

private theorem tailDigits_comm (m n : ℕ) : tailDigits n m = tailDigits m n := by
  apply Prod.ext <;> simp only [tailDigits] <;> ring

private theorem archInt_comm (t : Scalars) {m n : ℕ} (h : m ≠ n) :
    archInt t n m = archInt t m n := by
  have hCoef :
      direction n m * (-1:ℤ)^(n+m) * (-(n:ℤ)) * (m:ℤ) =
        -(direction m n * (-1:ℤ)^(m+n) * (-(m:ℤ)) * (n:ℤ)) := by
    rw [direction_reverse h, Nat.add_comm n m]
    ring
  unfold archInt
  rw [gap_comm, hCoef, sub_reverse (t.boundary n) (t.boundary m), scale_reverse, tailDigits_comm]

private theorem primeInt_comm (t : Scalars) {m n : ℕ} (h : m ≠ n) :
    primeInt t n m = primeInt t m n := by
  have hCoef : direction n m * 2 * (-1:ℤ)^(n+m) =
      -(direction m n * 2 * (-1:ℤ)^(m+n)) := by
    rw [direction_reverse h, Nat.add_comm n m]
    ring
  unfold primeInt
  dsimp only
  rw [hCoef, sub_reverse (iScale m (t.prime n)) (iScale n (t.prime m)),
    mul_reverse, scale_reverse]

/-- Swapping the two mode numbers preserves both outward rounded physical endpoints. -/
theorem physicalInt_comm (t : Scalars) (m n : ℕ) : physicalInt t m n = physicalInt t n m := by
  by_cases h : m = n
  · subst n
    rfl
  · simp only [physicalInt, ite_eq_right h, ite_eq_right (Ne.symm h), gap_comm m n,
      archInt_comm t h, primeInt_comm t h]

/-- Use the strictly ordered evaluator in either orientation and keep the shifted diagonal. -/
def orderedPhysicalInt (t : Scalars) (m n : ℕ) : Endpoints :=
  if n < m then
    FastTail.entry m n (t.boundary m) (t.boundary n) (t.prime m) (t.prime n)
  else if m < n then
    FastTail.entry n m (t.boundary n) (t.boundary m) (t.prime n) (t.prime m)
  else iAdd (iSub (t.gamma n) (t.primeDiagonal n)) (iPoint (2^43))

/-- Ordered evaluation preserves the exact rounded endpoints in all three cases. -/
theorem orderedPhysicalInt_eq (t : Scalars) (m n : ℕ) :
    orderedPhysicalInt t m n = physicalInt t m n := by
  unfold orderedPhysicalInt
  split_ifs with h₁ h₂
  · exact FastTail.entry_eq t h₁
  · exact (FastTail.entry_eq t h₂).trans (physicalInt_comm t n m)
  · have h : m = n := by omega
    simp only [physicalInt, ite_eq_left h]

/-- Check a residual row using ordered off-diagonals, the shifted physical
diagonal and the original signed pole. -/
def checkOrderedRow (t : Scalars) (i : ResidualRows) (c r : Fin 513 → ℤ) : Bool :=
  (List.finRange 513).all (fun j =>
    let d := if j.val < 512 then orderedPhysicalInt t (65+i.val) (j.val+1)
      else t.pole (65+i.val)
    (c j == d.1+d.2) && (r j == d.2-d.1))

/-- Ordered residual checks have the same Boolean value as the original grid. -/
theorem checkOrderedRow_eq (t : Scalars) (i : ResidualRows) (c r : Fin 513 → ℤ) :
    checkOrderedRow t i c r = checkRow t i c r := by
  unfold checkOrderedRow checkRow
  refine congrArg (fun f : Fin 513 → Bool => (List.finRange 513).all f) ?_
  funext j
  unfold checkEntry trialSlot
  by_cases h : j.val < 512
  · simp only [ite_eq_left h, dite_eq_left h, residualInt, orderedPhysicalInt_eq]
  · simp only [ite_eq_right h, dite_eq_right h, residualInt]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPhysicalGrid
