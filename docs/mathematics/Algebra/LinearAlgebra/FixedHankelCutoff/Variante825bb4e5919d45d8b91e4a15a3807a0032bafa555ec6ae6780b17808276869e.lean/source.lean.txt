import FormalResearch.MathematicalTooling.FixedHankelCutoff

open FormalResearch.MathematicalTooling.FixedHankelCutoff
open Matrix

-- The order-zero boundary includes both s₀ and s₁; the next diagonal uses s₂.
example : Matrix.PosSemidef (Matrix.of (fun i j : Fin 1 ↦ cutoffSequence 0 (i.val + j.val))) ∧
    Matrix.PosSemidef (Matrix.of (fun i j : Fin 1 ↦ cutoffSequence 0 (i.val + j.val + 1))) :=
  both_towers_posSemidef (Nat.le_refl 0)

example : ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin 2 ↦ cutoffSequence 0 (i.val + j.val))) :=
  next_order_not_posSemidef 0

-- Matrix size three is order two, so both size-three towers can pass.
example : Matrix.PosSemidef (Matrix.of (fun i j : Fin 3 ↦ cutoffSequence 2 (i.val + j.val))) ∧
    Matrix.PosSemidef (Matrix.of (fun i j : Fin 3 ↦ cutoffSequence 2 (i.val + j.val + 1))) :=
  both_towers_posSemidef (Nat.le_refl 2)

example : (Pi.single (Fin.last 3) (1 : ℝ) : Fin 4 → ℝ) ⬝ᵥ
    (Matrix.of (fun i j : Fin 4 ↦ cutoffSequence 2 (i.val + j.val)) *ᵥ
      Pi.single (Fin.last 3) 1) = -1 := next_order_last_basis_quadratic 2

-- Preserve the p↔s shift literally for both towers, with p₀ unused.
example (d r a : ℕ) :
    (fun i j : Fin (r + 1) ↦
      (fun n ↦ cutoffSequence d (n - 1)) (i.val + j.val + a + 1)) =
    (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val + a)) := by
  funext i j
  simp

#print unshifted_eq_one
#print axioms unshifted_eq_one
#print shifted_eq_one
#print axioms shifted_eq_one
#print all_ones_posSemidef
#print axioms all_ones_posSemidef
#print both_towers_posSemidef
#print axioms both_towers_posSemidef
#print next_order_last_basis_quadratic
#print axioms next_order_last_basis_quadratic
#print next_order_not_posSemidef
#print axioms next_order_not_posSemidef
#print fixed_cutoff_counterexample
#print axioms fixed_cutoff_counterexample
#print fixed_cutoff_not_sufficient
#print axioms fixed_cutoff_not_sufficient

set_option pp.funBinderTypes true in
#check fixed_cutoff_counterexample
set_option pp.funBinderTypes true in
#check next_order_last_basis_quadratic
