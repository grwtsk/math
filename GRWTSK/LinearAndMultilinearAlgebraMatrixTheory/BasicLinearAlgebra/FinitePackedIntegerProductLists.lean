/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FinitePackedIntegerProducts

/-!
# List reductions for packed integer products

The checker enumerates a finite row in index order. Its list magnitude
test and packed list sum have the same acceptance predicates as the
finite-set definitions. The arithmetic and no-carry hypotheses of the
packed product proof are preserved. Independent analytical review is
pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FinitePackedIntegerProducts

open Matrix FiniteSignDyadicLDL

/-- A linear list traversal checks the common integer magnitude. -/
def checkMagnitudeList {n : ℕ} (limit : ℕ) (entries : Fin n → ℤ) : Bool :=
  (List.ofFn entries).all (fun value => decide (value.natAbs ≤ limit))

theorem checkMagnitudeList_sound {n limit : ℕ} {entries : Fin n → ℤ}
    (h : checkMagnitudeList limit entries = true) : checkMagnitude limit entries = true := by
  have hEntries : ∀ i, (entries i).natAbs ≤ limit := by
    intro i
    exact of_decide_eq_true (List.all_eq_true.mp h _ (List.mem_ofFn.mpr ⟨i, rfl⟩))
  simp [checkMagnitude, hEntries]

/-- The packed linear combination uses a list sum in inner-index order. -/
def checkPackedProductRowList {ι ν : Type*} {n k : ℕ} (base : ℕ) (columns : Fin n → ν)
    (left : Matrix ι (Fin k) ℤ) (target : Matrix ι ν ℤ) (packedRight : Fin k → ℤ) (i : ι) : Bool :=
  decide (packDigits base (fun j => target i (columns j)) =
    (List.ofFn fun l => left i l * packedRight l).sum)

theorem checkPackedProductRowList_eq {ι ν : Type*} {n k : ℕ} (base : ℕ) (columns : Fin n → ν)
    (left : Matrix ι (Fin k) ℤ) (target : Matrix ι ν ℤ) (packedRight : Fin k → ℤ) (i : ι) :
    checkPackedProductRowList base columns left target packedRight i =
      checkPackedProductRow base columns left target packedRight i := by
  simp only [checkPackedProductRowList, checkPackedProductRow, List.sum_ofFn]

end GRWTSK.Algebra.LinearAlgebra.FinitePackedIntegerProducts
