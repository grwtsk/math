/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Existing FramedFiberPort and Mathlib declarations retain their original licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

set_option autoImplicit false

/-!
# Finite boundary return and four-phase linear transport

A frequency-directed descent map does not provide its own closed return.
The boundary return is separate data, and every naturality statement retains
both endpoint operators. No geometric compactification, spectral identification,
or zeta/trace formula follows from this algebra.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

open GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

universe u v w x

variable {E : Type u} {F : Type v}
variable [AddCommGroup E] [Module ℝ E] [FiniteDimensional ℝ E]
variable [AddCommGroup F] [Module ℝ F] [FiniteDimensional ℝ F]

/-- One finite descent and an independently specified boundary return.
The two endpoint operators are retained rather than silently identified. -/
structure System (E : Type u) (F : Type v)
    [AddCommGroup E] [Module ℝ E] [FiniteDimensional ℝ E]
    [AddCommGroup F] [Module ℝ F] [FiniteDimensional ℝ F] where
  descent : E →ₗ[ℝ] F
  boundaryReturn : F →ₗ[ℝ] E
  inputOperator : E →ₗ[ℝ] E
  outputOperator : F →ₗ[ℝ] F

namespace System

/-- The typed closed return acts on the input boundary, in the fixed order
boundaryReturn after descent. -/
def returnOperator (S : System E F) : E →ₗ[ℝ] E :=
  S.boundaryReturn.comp S.descent

theorem returnOperator_apply (S : System E F) (x : E) :
    S.returnOperator x = S.boundaryReturn (S.descent x) := rfl

/-- The exact return intertwining defect splits into the two port defects.
In particular, vanishing of only the descent defect is insufficient. -/
theorem return_defect_decomposition (S : System E F) :
    operatorDefect S.returnOperator S.inputOperator S.inputOperator =
      S.boundaryReturn.comp
          (operatorDefect S.descent S.inputOperator S.outputOperator) +
        (operatorDefect S.boundaryReturn S.outputOperator S.inputOperator).comp
          S.descent := by
  exact operatorDefect_comp
    S.descent S.boundaryReturn
    S.inputOperator S.outputOperator S.inputOperator

/-- Exact intertwining of both the descent and the selected boundary return
implies that the resulting finite return commutes with the input operator. -/
theorem return_intertwines
    (S : System E F)
    (hdescent : Intertwines S.descent S.inputOperator S.outputOperator)
    (hreturn : Intertwines S.boundaryReturn S.outputOperator S.inputOperator) :
    Intertwines S.returnOperator S.inputOperator S.inputOperator := by
  exact Intertwines.comp hdescent hreturn

end System

section FourPhase

variable {G : Type w} {H : Type x}
variable [AddCommGroup G] [Module ℝ G] [FiniteDimensional ℝ G]
variable [AddCommGroup H] [Module ℝ H] [FiniteDimensional ℝ H]

/-- A four-phase composite with exactly matched endpoint types. -/
def fourPhase (a : E →ₗ[ℝ] F) (b : F →ₗ[ℝ] G)
    (c : G →ₗ[ℝ] H) (d : H →ₗ[ℝ] E) : E →ₗ[ℝ] E :=
  d.comp (c.comp (b.comp a))

theorem fourPhase_apply (a : E →ₗ[ℝ] F) (b : F →ₗ[ℝ] G)
    (c : G →ₗ[ℝ] H) (d : H →ₗ[ℝ] E) (e : E) :
    fourPhase a b c d e = d (c (b (a e))) := rfl

/-- Operator compatibility propagates around the four phases, without
claiming that their holonomy is the identity. -/
theorem fourPhase_intertwines
    (a : E →ₗ[ℝ] F) (b : F →ₗ[ℝ] G)
    (c : G →ₗ[ℝ] H) (d : H →ₗ[ℝ] E)
    (D₀ : E →ₗ[ℝ] E) (D₁ : F →ₗ[ℝ] F)
    (D₂ : G →ₗ[ℝ] G) (D₃ : H →ₗ[ℝ] H)
    (ha : Intertwines a D₀ D₁)
    (hb : Intertwines b D₁ D₂)
    (hc : Intertwines c D₂ D₃)
    (hd : Intertwines d D₃ D₀) :
    Intertwines (fourPhase a b c d) D₀ D₀ := by
  exact Intertwines.comp
    (Intertwines.comp (Intertwines.comp ha hb) hc) hd

/-- A genuine four-phase identity certificate constructed from two
specified invertible transports and their actual inverses. -/
theorem fourPhase_inverse_pairs (p q : E ≃ₗ[ℝ] E) :
    fourPhase p.toLinearMap q.toLinearMap
        q.symm.toLinearMap p.symm.toLinearMap =
      (LinearMap.id : E →ₗ[ℝ] E) := by
  ext e
  change p.symm (q.symm (q (p e))) = e
  simp

end FourPhase

/-- A fully finite counterexample: descent can exist without a nontrivial
boundary return. The zero return cannot close the identity loop. -/
def zeroReturnFixture : System ℝ ℝ where
  descent := LinearMap.id
  boundaryReturn := 0
  inputOperator := LinearMap.id
  outputOperator := LinearMap.id

theorem zeroReturnFixture_operator_zero :
    zeroReturnFixture.returnOperator = 0 := by
  ext x
  simp [System.returnOperator, zeroReturnFixture, LinearMap.comp_apply]

theorem zeroReturnFixture_not_closed :
    zeroReturnFixture.returnOperator ≠ LinearMap.id := by
  intro h
  have hvalue := congrArg (fun f : ℝ →ₗ[ℝ] ℝ => f (1 : ℝ)) h
  rw [zeroReturnFixture_operator_zero] at hvalue
  norm_num at hvalue

end GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn
