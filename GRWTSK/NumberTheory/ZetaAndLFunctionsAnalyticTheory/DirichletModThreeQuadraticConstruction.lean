/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib quadratic characters and character composition retain upstream
attribution and Apache-2.0 license obligations. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeExactEigenvector
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeCharacter

set_option autoImplicit false
noncomputable section

/-! Construct the genuine mod-three character by composing Mathlib's
quadratic character with the integer cast. No analytic identification.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open DirichletModThreeExactEigenvector DirichletGenuineCharacterVectorNorm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
theorem constructed_modThree_exact_eigenvector (t w : ℝ) :
    hamiltonianOperator 3 t (fun _ => w) (characterVector 3 modThreeQuadratic) =
      ((w-t : ℝ) : ℂ) • characterVector 3 modThreeQuadratic :=
  genuine_mod_three_constant_eigenvector modThreeQuadratic
    modThreeQuadratic_one modThreeQuadratic_two t w

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
