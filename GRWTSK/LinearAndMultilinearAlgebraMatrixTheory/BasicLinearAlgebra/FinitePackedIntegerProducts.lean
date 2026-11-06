/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDLPacked

/-!
# Packed checks for rectangular integer matrix products

In a fixed column order, the packed product row is the linear
combination of packed right rows with the left row as coefficients.
This follows by exchanging the finite sums in the positional
expansion. The entrywise triangle inequality bounds a target-minus-
product digit by the target bound plus the number of inner indices
times the two operand bounds. A base strictly larger than that bound
lets signed-digit injectivity recover every literal product entry.

The right row encodings can be checked once and shared across all
output rows. The strict bound excludes cancellation such as the
digits `(base, -1)`. This check returns exact integer equality.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FinitePackedIntegerProducts

open Matrix FiniteSignDyadicLDL

variable {ι κ ν : Type*} {n : ℕ}

/-- Packing a product row commutes with the linear combination of right rows. -/
theorem pack_mul_row [Fintype κ] (base : ℕ) (columns : Fin n → ν)
    (left : Matrix ι κ ℤ) (right : Matrix κ ν ℤ) (i : ι) :
    packDigits base (fun j => (left * right) i (columns j)) =
      ∑ k, left i k * packDigits base (fun j => right k (columns j)) := by
  simp only [packDigits_eq_sum, Matrix.mul_apply, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Check a common absolute bound on any finite row of integer entries. -/
def checkMagnitude {α : Type*} [Fintype α] (limit : ℕ) (entries : α → ℤ) : Bool :=
  decide (∀ i, (entries i).natAbs ≤ limit)

theorem checkMagnitude_sound {α : Type*} [Fintype α] {limit : ℕ} {entries : α → ℤ}
    (h : checkMagnitude limit entries = true) : ∀ i, (entries i).natAbs ≤ limit :=
  of_decide_eq_true h

/-- Bind one proposed packed value to the literal entries of a right row. -/
def checkPackedRightRow (base : ℕ) (columns : Fin n → ν)
    (right : Matrix κ ν ℤ) (packedRight : κ → ℤ) (k : κ) : Bool :=
  decide (packedRight k = packDigits base (fun j => right k (columns j)))

/-- Compare one target row with the packed linear combination of right rows. -/
def checkPackedProductRow [Fintype κ] (base : ℕ) (columns : Fin n → ν)
    (left : Matrix ι κ ℤ) (target : Matrix ι ν ℤ) (packedRight : κ → ℤ) (i : ι) : Bool :=
  decide (packDigits base (fun j => target i (columns j)) =
    ∑ k, left i k * packedRight k)

private theorem abs_mul_entry_le [Fintype κ] (leftLimit rightLimit : ℕ)
    (left : Matrix ι κ ℤ) (right : Matrix κ ν ℤ) (i : ι) (j : ν)
    (hleft : ∀ k, (left i k).natAbs ≤ leftLimit) (hright : ∀ k, (right k j).natAbs ≤ rightLimit) :
    |(left * right) i j| ≤ (Fintype.card κ : ℤ) * leftLimit * rightLimit := by
  rw [Matrix.mul_apply]
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  calc
    _ ≤ ∑ _ : κ, (leftLimit : ℤ) * rightLimit := by
      apply Finset.sum_le_sum
      intro k _
      rw [abs_mul, Int.abs_eq_natAbs, Int.abs_eq_natAbs]
      exact mul_le_mul (by exact_mod_cast hleft k) (by exact_mod_cast hright k)
        (by positivity) (by positivity)
    _ = _ := by simp; ring

/-- Checked magnitudes and one packed equality recover the exact target
row. Every column must occur in the packing order. -/
theorem checkPackedProductRow_sound [Fintype κ] (base leftLimit rightLimit targetLimit : ℕ)
    (columns : Fin n ≃ ν) (hbase : targetLimit + Fintype.card κ * leftLimit * rightLimit < base)
    {left : Matrix ι κ ℤ} {right : Matrix κ ν ℤ} {target : Matrix ι ν ℤ} {packedRight : κ → ℤ}
    (i : ι) (hleft : checkMagnitude leftLimit (left i) = true)
    (hright : ∀ k, checkMagnitude rightLimit (fun j => right k (columns j)) = true)
    (htarget : checkMagnitude targetLimit (fun j => target i (columns j)) = true)
    (hpackedRight : ∀ k, checkPackedRightRow base columns right packedRight k = true)
    (hpackedRow : checkPackedProductRow base columns left target packedRight i = true) :
    target i = (left * right) i := by
  have hl : ∀ k, (left i k).natAbs ≤ leftLimit := checkMagnitude_sound hleft
  have hr (k : κ) : ∀ j : Fin n, (right k (columns j)).natAbs ≤ rightLimit :=
    checkMagnitude_sound (hright k)
  have ht : ∀ j : Fin n, (target i (columns j)).natAbs ≤ targetLimit :=
    checkMagnitude_sound htarget
  have hRightPack (k : κ) : packedRight k = packDigits base (fun j => right k (columns j)) :=
    of_decide_eq_true (hpackedRight k)
  have hPack : packDigits base (fun j => target i (columns j)) =
      packDigits base (fun j => (left * right) i (columns j)) := by
    rw [pack_mul_row]
    have h : packDigits base (fun j => target i (columns j)) = ∑ k, left i k * packedRight k :=
      of_decide_eq_true hpackedRow
    simpa only [hRightPack] using h
  have hdiff (j : Fin n) : (target i (columns j) - (left * right) i (columns j)).natAbs < base := by
    have hTarget : |target i (columns j)| ≤ (targetLimit : ℤ) := by
      rw [Int.abs_eq_natAbs]
      exact_mod_cast ht j
    have hProduct := abs_mul_entry_le leftLimit rightLimit left right i (columns j) hl (fun k => hr k j)
    have hBound : |target i (columns j) - (left * right) i (columns j)| ≤
        ((targetLimit + Fintype.card κ * leftLimit * rightLimit : ℕ) : ℤ) := by
      refine (abs_sub _ _).trans ?_
      push_cast
      exact add_le_add hTarget hProduct
    have hBaseCast : ((targetLimit + Fintype.card κ * leftLimit * rightLimit : ℕ) : ℤ) <
        (base : ℤ) := by exact_mod_cast hbase
    have h := hBound.trans_lt hBaseCast
    rw [Int.abs_eq_natAbs] at h
    exact_mod_cast h
  have hEq := eq_of_packDigits_eq base ((Nat.zero_le _).trans_lt hbase) _ _ hdiff hPack
  funext j
  obtain ⟨k, rfl⟩ := columns.surjective j
  exact congrFun hEq k

end GRWTSK.Algebra.LinearAlgebra.FinitePackedIntegerProducts
