/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualCriterion
import GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction

set_option autoImplicit false
noncomputable section

/-!
# Complete reconstruction budgets for the actual arithmetic operator

The absolute residual floor holds even at the zero vector. Dividing by the
vector norm requires the explicit nonzero hypothesis. In particular, an
absolute error tending to zero is insufficient if the vector norms also
tend to zero: the total error must be small relative to the same full vector.

The five errors are the existing source, Hermite, transport, spectral and
tail errors, now bound to the actual Hx - lambda*x residual. Their signed
identity and all five norm bounds remain supplied proof data. No term is
discarded, no cancellation is assumed, and no reconstruction is constructed.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No arithmetic residual supplier or unconditional RH theorem is supplied.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualBudget

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualCriterion
open GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction

/-- The actual full-vector residual pays the critical-line distance times its norm. -/
theorem critical_distance_mul_norm_le_residual (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (s : ℂ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    |s.re - 1 / 2| * ‖x‖ ≤
      ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ := by
  by_cases hx : x = 0
  · simp [hx]
  · have hn : 0 < ‖x‖ := norm_pos_iff.mpr hx
    have hres : ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ ≤
        (‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ / ‖x‖) * ‖x‖ := by
      rw [div_mul_cancel₀ _ (ne_of_gt hn)]
    have h := critical_distance_le_of_residual N t q s
      (‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ / ‖x‖)
      x (div_nonneg (norm_nonneg _) hn.le) hx hres
    exact (le_div_iff₀ hn).mp h

/-- All errors belong to the same full vector space and the same source residual. -/
structure FullResidualDecomposition (N : ℕ) [NeZero N]
    (t : ℝ) (q : ZMod N → ℝ) (s : ℂ) (x : EuclideanSpace ℂ (ZMod N)) where
  sourceError : EuclideanSpace ℂ (ZMod N)
  hermiteError : EuclideanSpace ℂ (ZMod N)
  transportError : EuclideanSpace ℂ (ZMod N)
  spectralError : EuclideanSpace ℂ (ZMod N)
  tailError : EuclideanSpace ℂ (ZMod N)
  budget : Budget
  decomposition : hamiltonianOperator N t q x - zetaSpectralParameter s • x =
    sourceError + hermiteError + transportError + spectralError + tailError
  sourceBound : ‖sourceError‖ ≤ budget.source
  hermiteBound : ‖hermiteError‖ ≤ budget.hermite
  transportBound : ‖transportError‖ ≤ budget.transport
  spectralBound : ‖spectralError‖ ≤ budget.spectral
  tailBound : ‖tailError‖ ≤ budget.tail

namespace FullResidualDecomposition

variable {N : ℕ} [NeZero N] {t : ℝ} {q : ZMod N → ℝ} {s : ℂ}
    {x : EuclideanSpace ℂ (ZMod N)}

/-- Reuse the existing complete reconstruction theorem with the real-linear identity. -/
theorem residual_norm_le (D : FullResidualDecomposition N t q s x) :
    ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ ≤ D.budget.total := by
  simpa using reconstruction_error_bound
    (ContinuousLinearMap.id ℝ (EuclideanSpace ℂ (ZMod N)))
    (hamiltonianOperator N t q x) (zetaSpectralParameter s • x)
    D.sourceError D.hermiteError D.transportError D.spectralError D.tailError
    D.budget D.decomposition D.sourceBound D.hermiteBound D.transportBound
    D.spectralBound D.tailBound

theorem total_nonnegative (D : FullResidualDecomposition N t q s x) :
    0 ≤ D.budget.total :=
  (norm_nonneg _).trans D.residual_norm_le

/-- The complete absolute budget must pay the same residual floor. -/
theorem critical_distance_mul_norm_le (D : FullResidualDecomposition N t q s x) :
    |s.re - 1 / 2| * ‖x‖ ≤ D.budget.total :=
  (critical_distance_mul_norm_le_residual N t q s x).trans D.residual_norm_le

/-- Normalization is explicit and uses the norm of the unchanged full vector. -/
theorem critical_distance_le_div_norm (D : FullResidualDecomposition N t q s x)
    (hx : x ≠ 0) : |s.re - 1 / 2| ≤ D.budget.total / ‖x‖ :=
  (le_div_iff₀ (norm_pos_iff.mpr hx)).mpr D.critical_distance_mul_norm_le

end FullResidualDecomposition

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualBudget
