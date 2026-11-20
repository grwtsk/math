/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Mathlib quadratic characters retain their upstream Apache-2.0 license.
-/
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# The native quadratic Dirichlet character modulo three

The definition and three elementary character theorems are moved unchanged
from `DirichletModThreeQuadraticConstruction` at
`grwtsk/math@7dcbe07202484a7fdff0d631f6b1649ad64680c2`.
This small source module lets the Weil kernel use the same genuine character
without importing the unrelated finite-Fourier eigenvector construction.
No primitive-character or analytic source-return theorem is asserted here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

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

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
