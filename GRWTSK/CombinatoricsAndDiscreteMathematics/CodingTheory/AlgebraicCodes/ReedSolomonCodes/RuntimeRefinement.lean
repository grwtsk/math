/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes.Runtime

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
open GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.GF128
set_option maxRecDepth 100000

/-- Python's coordinate inequality and Rust's index inequality select the same factors. -/
theorem selectedNodes_injective : ∀ (k : Fin 15) (i j : Fin 4),
    getNode (selectedNodes k) i = getNode (selectedNodes k) j → i = j := by decide

set_option maxHeartbeats 50000000 in
theorem numerator_at_node : ∀ (k : Fin 15) (j i : Fin 4),
    numerator (selectedNodes k) (getNode (selectedNodes k) j) i =
      if i = j then denominator (selectedNodes k) i else 0 := by decide

theorem runtime_coefficient_at_node (k : Fin 15) (j i : Fin 4) :
    runtimeCoefficient (selectedNodes k) (getNode (selectedNodes k) j) i =
      some (if i = j then 1 else 0) := by
  obtain ⟨value, hi, hl, _⟩ := runtime_inverse_laws
    (denominator (selectedNodes k) i).toNat (denominator_profile k i)
  have hc : BitVec.ofNat 128 (denominator (selectedNodes k) i).toNat =
      denominator (selectedNodes k) i := by simp
  rw [hc] at hi hl
  simp only [runtimeCoefficient, numerator_at_node, hi, Option.map_some]
  by_cases hij : i = j
  · simp only [if_pos hij, hl]
  · simp only [if_neg hij, mul_zero_left]

/-- Literal coefficient shortcut in Rust `Interpolation::row`. -/
def rustCoefficient (n : Nodes) (target : Fin 6) (i : Fin 4) : Option Word :=
  if target = n.a then some (if i = 0 then 1 else 0) else
  if target = n.b then some (if i = 1 then 1 else 0) else
  if target = n.c then some (if i = 2 then 1 else 0) else
  if target = n.d then some (if i = 3 then 1 else 0) else
  runtimeCoefficient n target i

theorem rustCoefficient_eq (k : Fin 15) (target : Fin 6) (i : Fin 4) :
    rustCoefficient (selectedNodes k) target i = runtimeCoefficient (selectedNodes k) target i := by
  unfold rustCoefficient
  split
  · rename_i h
    rw [h]
    simpa [getNode] using (runtime_coefficient_at_node k 0 i).symm
  · split
    · rename_i h
      rw [h]
      simpa [getNode] using (runtime_coefficient_at_node k 1 i).symm
    · split
      · rename_i h
        rw [h]
        simpa [getNode] using (runtime_coefficient_at_node k 2 i).symm
      · split
        · rename_i h
          rw [h]
          simpa [getNode] using (runtime_coefficient_at_node k 3 i).symm
        · rfl

theorem rowEval_delta (j : Fin 4) (x : Four) : rowEval (slot j 1) x = get x j := by
  have hj : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases hj with rfl | rfl | rfl | rfl
  · exact congrArg Four.a (transform_identity x)
  · exact congrArg Four.b (transform_identity x)
  · exact congrArg Four.c (transform_identity x)
  · exact congrArg Four.d (transform_identity x)

theorem get_slot_delta : ∀ (j i : Fin 4),
    get (slot j 1) i = (if i = j then (1 : Word) else 0) := by decide

/-- Python's direct return at an already supplied node equals interpolation there. -/
theorem runtimeEval_at_node (k : Fin 15) (j : Fin 4) (x : Four) :
    runtimeEval (selectedNodes k) (getNode (selectedNodes k) j) x = some (get x j) := by
  have h : ∀ i : Fin 4, runtimeCoefficient (selectedNodes k)
      (getNode (selectedNodes k) j) i = some (get (slot j 1) i) := by
    intro i
    rw [runtime_coefficient_at_node, get_slot_delta]
  rw [runtimeEval_eq _ _ (slot j 1) x h, rowEval_delta]

theorem ordered_product3 (a b c : Word) :
    mul (mul (mul 1 a) b) c = product3 a b c := by
  rw [mul_one_left]
  rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.AlgebraicCodes.ReedSolomonCodes
