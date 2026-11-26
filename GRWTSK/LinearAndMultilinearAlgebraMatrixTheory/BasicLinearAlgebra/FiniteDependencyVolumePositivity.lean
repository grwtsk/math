/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteDependencyVolume
import Mathlib.Algebra.Order.Star.Real
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positivity of the finite dependency Laplacian regularization

Consumer: the `PositiveRegularizedDeterminant` premise of the existing
`spectralLogVolume`. Each directed edge contributes its own weighted real
incidence outer product. A nonnegative weighted sum is positive semidefinite.
Adding the identity after nonnegative scaling gives a positive-definite
matrix and therefore a positive determinant, including empty edge or vertex
sets. This provides the exact mathematical premise for the existing volume.
Extraction of the dependency relation, comparison to other resource metrics,
and finite numerical evaluation require their own refinement proofs.

SOURCE_PROOF_CANDIDATE. Qualify checks against the exact source revision.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.FiniteDependencyVolume

variable {V E : Type*} [DecidableEq V] [Fintype V] [Fintype E]

/-- The weighted sum of signed-incidence outer products is positive semidefinite. -/
theorem laplacian_posSemidef (edges : WeightedEdges V E) : (laplacian edges).PosSemidef := by
  let contribution (edge : E) : Matrix V V ℝ :=
    edges.weight edge • Matrix.vecMulVec (incidence edges edge) (incidence edges edge)
  have hContribution (edge : E) : (contribution edge).PosSemidef := by
    have hOuter : (Matrix.vecMulVec (incidence edges edge) (incidence edges edge)).PosSemidef := by
      simpa using Matrix.posSemidef_vecMulVec_self_star (incidence edges edge)
    exact hOuter.smul (edges.weight_nonneg edge)
  have hSum : (∑ edge, contribution edge).PosSemidef :=
    Matrix.posSemidef_sum _ (fun edge _ => hContribution edge)
  have hLaplacian : laplacian edges = ∑ edge, contribution edge := by
    ext left right
    simp [laplacian, contribution, Matrix.sum_apply, Matrix.vecMulVec_apply, mul_assoc]
  rw [hLaplacian]
  exact hSum

/-- The exact input to `spectralLogVolume` follows for every nonnegative regularization. -/
theorem positiveRegularizedDeterminant_of_nonneg (edges : WeightedEdges V E)
    (tau : ℝ) (hTau : 0 ≤ tau) : PositiveRegularizedDeterminant (laplacian edges) tau :=
  (Matrix.PosDef.one.add_posSemidef ((laplacian_posSemidef edges).smul hTau)).det_pos

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.FiniteDependencyVolume
