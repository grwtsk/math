/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Dirichlet Gauss-sum results by David Loeffler retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DirichletSourceVectorConstruction
import Mathlib.NumberTheory.DirichletCharacter.GaussSum
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Global finite Fourier bridge for the genuine full character vector

For a primitive character, the complete additive-character transform is
the Gauss sum times the inverse-character vector. Its actual analytic
Hurwitz row therefore reads the inverse-character L-function, not
automatically the original L-function at the same parameter.
No Gauss-sum nonvanishing, analytic zero preservation, nearest-neighbor
eigenvector or GRH conclusion is inferred. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullCharacterFourierBridge
open DirichletSourceVectorConstruction

variable (level : ℕ) [NeZero level]

def fullTransform (e : AddChar (ZMod level) ℂ)
    (x : EuclideanSpace ℂ (ZMod level)) : EuclideanSpace ℂ (ZMod level) :=
  WithLp.toLp 2 (fun k => ∑ j : ZMod level, x j * e (k * j))

theorem transform_sourceVector (e : AddChar (ZMod level) ℂ)
    (χ : DirichletCharacter ℂ level) (hχ : χ.IsPrimitive) :
    fullTransform level e (sourceVector level χ) =
      gaussSum χ e • sourceVector level χ⁻¹ := by
  apply WithLp.ofLp_injective 2
  funext k
  change (∑ j : ZMod level, χ j * e (k * j)) = gaussSum χ e * χ⁻¹ k
  have h := gaussSum_mulShift_of_isPrimitive e hχ k
  change (∑ j : ZMod level, χ j * e (k * j)) = χ⁻¹ k * gaussSum χ e at h
  exact h.trans (mul_comm _ _)

theorem transformed_nonunit_sample_zero (e : AddChar (ZMod level) ℂ)
    (χ : DirichletCharacter ℂ level) (hχ : χ.IsPrimitive)
    (k : ZMod level) (hk : ¬ IsUnit k) :
    fullTransform level e (sourceVector level χ) k = 0 := by
  rw [transform_sourceVector level e χ hχ]
  change gaussSum χ e * χ⁻¹ k = 0
  rw [MulChar.map_nonunit χ⁻¹ hk, mul_zero]

theorem analytic_row_of_transformed_source (e : AddChar (ZMod level) ℂ)
    (χ : DirichletCharacter ℂ level) (hχ : χ.IsPrimitive) (s : ℂ) :
    (analyticRow level s).mulVec
      (WithLp.ofLp (fullTransform level e (sourceVector level χ))) 0 =
        gaussSum χ e * DirichletCharacter.LFunction χ⁻¹ s := by
  rw [transform_sourceVector level e χ hχ, WithLp.ofLp_smul,
    Matrix.mulVec_smul, source_row_eq_LFunction]
  rfl

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFullCharacterFourierBridge
