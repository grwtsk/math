/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Central generalized zero modes versus ordinary kernels

This is an abstract finite-dimensional hostile control, NOT an
identification of this matrix with the genuine Connes/Deitmar/Jiang--Luo
adelic operator.

A spectral zero of algebraic multiplicity two can carry a Jordan chain.
Its generalized zero space can be strictly larger than its ordinary
kernel, so zero multiplicity alone does not imply dim ker D = ord L.
This matters because weighted adelic dilation representations need
not be unitary. Any BSD Hilbert bridge must preserve the distinction.
-/

namespace GRWTSK.Analysis.InnerProductSpace.ConnesCentralRootSpaceObstruction

/-- The two-step nilpotent Jordan matrix over the actual rational field. -/
def jordanTwo : Matrix (Fin 2) (Fin 2) ℚ := !![0, 1; 0, 0]

def ordinaryZeroVector : Fin 2 → ℚ := ![1, 0]
def generalizedZeroVector : Fin 2 → ℚ := ![0, 1]

theorem jordanTwo_generalizedVector :
    jordanTwo.mulVec generalizedZeroVector = ordinaryZeroVector := by
  funext i
  fin_cases i <;>
    norm_num [jordanTwo, generalizedZeroVector, ordinaryZeroVector,
      Matrix.mulVec, dotProduct, Fin.sum_univ_two]

theorem jordanTwo_ordinaryVector :
    jordanTwo.mulVec ordinaryZeroVector = 0 := by
  funext i
  fin_cases i <;>
    norm_num [jordanTwo, ordinaryZeroVector,
      Matrix.mulVec, dotProduct, Fin.sum_univ_two]

theorem ordinaryZeroVector_ne_zero : ordinaryZeroVector ≠ 0 := by
  intro h
  have h0 := congrArg (fun v : Fin 2 → ℚ => v 0) h
  norm_num [ordinaryZeroVector] at h0

/-- A genuine generalized zero mode whose first operator image is nonzero. -/
theorem generalized_zero_mode_not_ordinary :
    jordanTwo.mulVec (jordanTwo.mulVec generalizedZeroVector) = 0 ∧
      jordanTwo.mulVec generalizedZeroVector ≠ 0 := by
  constructor
  · rw [jordanTwo_generalizedVector, jordanTwo_ordinaryVector]
  · rw [jordanTwo_generalizedVector]
    exact ordinaryZeroVector_ne_zero

end GRWTSK.Analysis.InnerProductSpace.ConnesCentralRootSpaceObstruction
