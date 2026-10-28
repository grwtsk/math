/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization

/-!
# Exact finite spin averaging

Reuse the existing QAOA coordinate flip and finite-sum reindexing proof. This
is not a Gaussian disorder theorem, a sampling assumption on Mobius, or QAOA
convergence. It supplies the zero mean of every off-diagonal spin monomial.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSpinAveraging

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinCutEnergy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAFiniteLocality (flipAt)
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.QAOAGateFactorization (sum_flipAt)

variable {V : Type*} [Fintype V] [DecidableEq V]

theorem spin_not (b : Bool) : spin (!b) = -spin b := by
  cases b <;> norm_num [spin]

theorem spin_sq (b : Bool) : spin b ^ 2 = 1 := by
  cases b <;> norm_num [spin]

/-- The two indices must differ; diagonal spin squares have mean one. -/
theorem sum_spin_mul_eq_zero (i k : V) (hik : i ≠ k) :
    (∑ s : V → Bool, spin (s i) * spin (s k)) = 0 := by
  have he := sum_flipAt i (fun s => spin (s i) * spin (s k))
  have hf (s : V → Bool) :
      spin (flipAt i s i) * spin (flipAt i s k) = -(spin (s i) * spin (s k)) := by
    simp only [flipAt, if_pos rfl, if_neg hik.symm, spin_not, neg_mul]
  simp_rw [hf] at he
  rw [Finset.sum_neg_distrib] at he
  linarith

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSpinAveraging
