/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib quadratic characters and character composition retain upstream
attribution and Apache-2.0 license obligations. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeExactEigenvector
import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic

set_option autoImplicit false
noncomputable section

/-! Construct the genuine mod-three character by composing Mathlib's
quadratic character with the integer cast. No analytic identification.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open DirichletModThreeExactEigenvector DirichletGenuineCharacterVectorNorm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
local instance : Fact (Nat.Prime 3) := ⟨by norm_num⟩

def modThreeQuadratic : DirichletCharacter ℂ 3 :=
  (quadraticChar (ZMod 3)).ringHomComp (Int.castRingHom ℂ)

theorem modThreeQuadratic_one : modThreeQuadratic 1=1 := by
  simp [modThreeQuadratic]

theorem modThreeQuadratic_two : modThreeQuadratic 2 = -1 := by
  have hn : ¬IsSquare (2 : ZMod 3) := by decide
  have hq : quadraticChar (ZMod 3) (2 : ZMod 3) = -1 :=
    quadraticChar_neg_one_iff_not_isSquare.mpr hn
  simp [modThreeQuadratic,hq]

theorem modThreeQuadratic_nonprincipal : modThreeQuadratic ≠ 1 := by
  intro he
  have h := modThreeQuadratic_two
  rw [he,MulChar.one_apply (isUnit_iff_ne_zero.mpr (by decide : (2 : ZMod 3) ≠ 0))] at h
  norm_num at h

theorem constructed_modThree_exact_eigenvector (t w : ℝ) :
    hamiltonianOperator 3 t (fun _ => w) (characterVector 3 modThreeQuadratic) =
      ((w-t : ℝ) : ℂ) • characterVector 3 modThreeQuadratic :=
  genuine_mod_three_constant_eigenvector modThreeQuadratic
    modThreeQuadratic_one modThreeQuadratic_two t w

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
