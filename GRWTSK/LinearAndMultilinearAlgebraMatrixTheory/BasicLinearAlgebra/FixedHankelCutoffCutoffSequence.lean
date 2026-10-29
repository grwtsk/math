import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Algebra.Order.Star.Real

/-!
# A fixed Hankel cutoff does not control the next order

For each natural cutoff `d`, the real sequence which is one except at index
`2 * d + 2` has positive semidefinite unshifted and shifted Hankel matrices at
every order at most `d`. Its next unshifted matrix has quadratic value `-1`
on the last standard basis vector. Matrix order `r` means size `r + 1`.

The formulas use the logarithmic indexing `s n = p (n + 1)` directly: entries
are `s (i + j)` and `s (i + j + 1)`. This is a generic sequence counterexample,
not a claim about the actual Xi source. The proofs reuse Mathlib's positive
semidefinite outer-product theorem and do not define a competing moment API.

AI attribution: Codex authored these adapters and fixtures, using the pinned
Mathlib matrix positivity theory. Their statements and axioms are audited in
`tests/fixed_hankel_cutoff.lean`.
-/

namespace FormalResearch.MathematicalTooling.FixedHankelCutoff

open Matrix

/-- The first unseen diagonal moment at order `d + 1` is negative. -/
def cutoffSequence (d n : ℕ) : ℝ := if n = 2 * d + 2 then -1 else 1

/-- Every unshifted entry through the chosen cutoff is one. -/
theorem unshifted_eq_one {d r : ℕ} (hr : r ≤ d) :
    Matrix.of (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val)) =
      Matrix.of (fun _ _ : Fin (r + 1) ↦ (1 : ℝ)) := by
  funext i j
  change cutoffSequence d (i.val + j.val) = 1
  have hi := i.isLt
  have hj := j.isLt
  simp only [cutoffSequence, if_neg (by omega : i.val + j.val ≠ 2 * d + 2)]

/-- Every once-shifted entry through the same cutoff is also one. -/
theorem shifted_eq_one {d r : ℕ} (hr : r ≤ d) :
    Matrix.of (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val + 1)) =
      Matrix.of (fun _ _ : Fin (r + 1) ↦ (1 : ℝ)) := by
  funext i j
  change cutoffSequence d (i.val + j.val + 1) = 1
  have hi := i.isLt
  have hj := j.isLt
  simp only [cutoffSequence, if_neg (by omega : i.val + j.val + 1 ≠ 2 * d + 2)]

/-- The all-ones matrix is the outer product of the all-ones vector. -/
theorem all_ones_posSemidef (r : ℕ) :
    Matrix.PosSemidef (Matrix.of (fun _ _ : Fin (r + 1) ↦ (1 : ℝ))) := by
  simpa [vecMulVec, Pi.star_apply] using
    Matrix.posSemidef_vecMulVec_self_star (fun _ : Fin (r + 1) ↦ (1 : ℝ))

/-- Both Hankel towers pass every order at most `d`. -/
theorem both_towers_posSemidef {d r : ℕ} (hr : r ≤ d) :
    Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val))) ∧
    Matrix.PosSemidef
      (Matrix.of (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val + 1))) := by
  rw [unshifted_eq_one hr, shifted_eq_one hr]
  exact ⟨all_ones_posSemidef r, all_ones_posSemidef r⟩

/-- The last standard basis vector sees the negative first unseen moment. -/
theorem next_order_last_basis_quadratic (d : ℕ) :
    (Pi.single (Fin.last (d + 1)) (1 : ℝ) : Fin (d + 2) → ℝ) ⬝ᵥ
      (Matrix.of (fun i j : Fin (d + 2) ↦ cutoffSequence d (i.val + j.val)) *ᵥ
        (Pi.single (Fin.last (d + 1)) 1 : Fin (d + 2) → ℝ)) = -1 := by
  rw [single_dotProduct, mulVec_single_one]
  simp [Matrix.col, cutoffSequence, show d + 1 + (d + 1) = 2 * d + 2 by omega]

/-- The next unshifted matrix fails positive semidefiniteness. -/
theorem next_order_not_posSemidef (d : ℕ) :
    ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d + 2) ↦ cutoffSequence d (i.val + j.val))) := by
  intro h
  have hn := h.diag_nonneg (i := Fin.last (d + 1))
  have he : d + 1 + (d + 1) = 2 * d + 2 := by omega
  norm_num [cutoffSequence, he] at hn

/-- An arbitrary fixed cutoff admits a witness passing both towers and failing next order. -/
theorem fixed_cutoff_counterexample (d : ℕ) :
    ∃ s : ℕ → ℝ,
      (∀ r ≤ d,
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val))) ∧
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val + 1)))) ∧
      ¬ Matrix.PosSemidef (Matrix.of (fun i j : Fin (d + 2) ↦ s (i.val + j.val))) := by
  exact ⟨cutoffSequence d, fun _ hr ↦ both_towers_posSemidef hr,
    next_order_not_posSemidef d⟩

/-- The finite testing predicate does not imply positivity at every order. -/
theorem fixed_cutoff_not_sufficient (d : ℕ) :
    ¬ (∀ s : ℕ → ℝ,
      (∀ r ≤ d,
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val))) ∧
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val + 1)))) →
      ∀ r,
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val))) ∧
        Matrix.PosSemidef (Matrix.of (fun i j : Fin (r + 1) ↦ s (i.val + j.val + 1)))) := by
  intro h
  exact next_order_not_posSemidef d
    ((h (cutoffSequence d) (fun _ hr ↦ both_towers_posSemidef hr) (d + 1)).1)

end FormalResearch.MathematicalTooling.FixedHankelCutoff
