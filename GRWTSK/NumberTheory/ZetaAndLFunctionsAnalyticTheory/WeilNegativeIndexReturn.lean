/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndex
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction

/-!
# Negative-index return to the existing primitive Dirichlet target

MSC2020: 11M26, 11M41, 15A63. RP-OC-03 / math#1808 consumes RP-OC-10 / #1807.
The target is the existing `PrimitiveDirichletGRH`, including conductor one and
mathlib's analytically continued LFunction. No replacement GRH predicate is added.

Window forms are parameters. The supplied source return must use the actual
Weil test domain, all prime powers, conductor, parity/gamma terms and both
applicable pole orientations. Neither direction of that arithmetic criterion
is proved here. Zero-index/nonnegativity uses explicit zero and complex
norm-square homogeneity, not the false assertion that any real functional is a
Hermitian form. A finite collection of checked windows is not universal coverage.

Source baseline: grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94.
This is a conditional composition of existing declarations, not a GRH proof.
FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
and independent review: NOT_RUN. Adjacent declaration records state the consumers.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilNegativeIndexReturn

open GRWTSK.LinearAlgebra.NegativeIndex
open GRWTSK.NumberTheory.WeilDenseCertificateReduction

variable {Window : ℕ → Type*}
  [∀ A, AddCommGroup (Window A)] [∀ A, Module ℂ (Window A)]

/-- All source/window indices vanish exactly when every specified form is nonnegative. -/
theorem all_window_index_zero_iff
    (form : PrimitiveDirichletSource → ∀ A, Window A → ℝ)
    (hzero : ∀ source A, form source A 0 = 0)
    (hsmul : ∀ source A (c : ℂ) (f : Window A),
      form source A (c • f) = ‖c‖ ^ 2 * form source A f) :
    (∀ source A, negativeIndex (𝕜 := ℂ) (form source A) = 0) ↔
      ∀ source A f, 0 ≤ form source A f := by
  constructor
  · intro h source A
    exact (negativeIndex_eq_zero_iff (hzero source A) (hsmul source A)).1 (h source A)
  · intro h source A
    exact negativeIndex_eq_zero_of_nonneg (h source A)

/-- Backward-chain consumer with the arithmetic Weil return left explicit. -/
theorem primitiveGRH_of_zero_indices
    (form : PrimitiveDirichletSource → ∀ A, Window A → ℝ)
    (hzero : ∀ source A, form source A 0 = 0)
    (hsmul : ∀ source A (c : ℂ) (f : Window A),
      form source A (c • f) = ‖c‖ ^ 2 * form source A f)
    (indices : ∀ source A, negativeIndex (𝕜 := ℂ) (form source A) = 0)
    (returnsToArithmetic : (∀ source A f, 0 ≤ form source A f) → PrimitiveDirichletGRH) :
    PrimitiveDirichletGRH :=
  returnsToArithmetic ((all_window_index_zero_iff form hzero hsmul).1 indices)

/-- A nonzero source index contradicts GRH only through the opposite arithmetic return. -/
theorem not_primitiveGRH_of_nonzero_index
    (form : PrimitiveDirichletSource → ∀ A, Window A → ℝ)
    (nonnegativeUnderGRH : PrimitiveDirichletGRH → ∀ source A f, 0 ≤ form source A f)
    (source : PrimitiveDirichletSource) (A : ℕ)
    (hindex : negativeIndex (𝕜 := ℂ) (form source A) ≠ 0) :
    ¬ PrimitiveDirichletGRH := by
  intro h
  exact hindex (negativeIndex_eq_zero_of_nonneg (nonnegativeUnderGRH h source A))

end GRWTSK.NumberTheory.WeilNegativeIndexReturn
