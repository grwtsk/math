# Complete source: GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ad187fd2acc50565854502717f5e346e43d3a2b` · SHA-256 `4ee47e552c9ee7a0761d158b6914d99bc278658147b34126dc77e03d1a5eb8eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
import GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite
import GRWTSK.LinearAlgebra.Matrix.SingularCongruenceObstruction

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Contact obstructs every square congruence on the original finite inventory


At the original touching horizon the native Gram matrix has a zero row. The
actual prescribed source Gram is positive definite for distinct positive labels.
Every square real mixing matrix preserves the native determinant zero, so none
can give exact prescribed Gram equality on that same full closed inventory.

This includes arbitrary finite label mixing, with no invertibility restriction.
It does not rule out larger feature spaces, additional inputs, changed windows,
approximation, inequalities or general transformed/renormalized comparisons.
It supplies no upper cancellation or distinguished Möbius-vector energy budget.
The horizon witness uses label8; its Möbius coefficient is zero. Arithmetic
supplier estimates, pointwise amplitude return, joint strict sectors and general
operator realization remain open. RH consumers remain conditional.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction

open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticPickupEnergy
open GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
open GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite
open GRWTSK.LinearAlgebra.Matrix.SingularCongruenceObstruction

noncomputable section

theorem finite_contact_square_congruence_ne_source {ι : Type*} [Fintype ι]
    [DecidableEq ι] {A : ℝ} (hA : 0 < A) (label : ι → ℕ)
    (positive : ∀ i, 0 < label i) (distinct : Function.Injective label)
    (contact : ι) (B : Matrix ι ι ℝ) :
    B.transpose * Matrix.of (fun (i j : ι) ↦
      gram (Real.log (label contact : ℝ)) (label i) (label j)) * B ≠
      SourceGram.sourceGramMatrix A label := by
  apply zero_row_square_congruence_ne_positive_definite _ _ contact
  · intro j
    exact native_before_contact_row_zero (Nat.succ_le_iff.mpr (positive contact))
      le_rfl (label j)
  · exact distinct_source_gram_matrix_positive_definite hA label positive distinct

/-- The index type is exactly the complete original closed inventory. -/
theorem original_inventory_square_congruence_ne_source {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n)
    (B : Matrix (inventory (Real.log (n : ℝ))) (inventory (Real.log (n : ℝ))) ℝ) :
    B.transpose *
        Matrix.of (fun (i j : inventory (Real.log (n : ℝ))) ↦
          gram (Real.log (n : ℝ)) (i : ℕ) (j : ℕ)) * B ≠
      SourceGram.sourceGramMatrix A (fun i : inventory (Real.log (n : ℝ)) ↦ (i : ℕ)) := by
  let contact : inventory (Real.log (n : ℝ)) :=
    ⟨n, SourceNativeSeparation.touching_atom_in_inventory hn⟩
  exact finite_contact_square_congruence_ne_source
    (ι := inventory (Real.log (n : ℝ))) hA
    (fun i : inventory (Real.log (n : ℝ)) ↦ (i : ℕ))
    (fun i : inventory (Real.log (n : ℝ)) ↦
      lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp i.property).1)
    Subtype.val_injective contact B

/-- Exact square congruence also fails with the prescribed relation T = 2A, A ≥ 1. -/
theorem prescribed_horizon_square_congruence_obstruction :
    ∃ A : ℝ, 1 ≤ A ∧ ∀ B : Matrix (inventory (2 * A)) (inventory (2 * A)) ℝ,
      B.transpose * Matrix.of (fun (i j : inventory (2 * A)) ↦
        gram (2 * A) (i : ℕ) (j : ℕ)) * B ≠
        SourceGram.sourceGramMatrix A (fun i : inventory (2 * A) ↦ (i : ℕ)) := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have scale : 1 ≤ Real.log (8 : ℝ) / 2 := by
    rw [logEight]
    linarith [Real.log_two_gt_d9]
  have positive : 0 < Real.log (8 : ℝ) / 2 := by linarith
  have horizon : 2 * (Real.log (8 : ℝ) / 2) = Real.log (8 : ℝ) := by ring
  refine ⟨Real.log (8 : ℝ) / 2, scale, ?_⟩
  rw [horizon]
  intro B
  exact original_inventory_square_congruence_ne_source positive (n := 8) (by norm_num) B

end

end GRWTSK.Analysis.InnerProductSpace.CausalGramCongruenceObstruction
```
