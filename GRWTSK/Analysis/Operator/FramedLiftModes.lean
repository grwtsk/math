import GRWTSK.Algebra.KTheory.FormalKK
import GRWTSK.LinearAlgebra.FramedFiberPort

namespace GRWTSK.Analysis.Operator.FramedLiftModes

open GRWTSK.Algebra.KTheory.FormalKK
open GRWTSK.LinearAlgebra.FramedFiberPort

universe u v w x v₀ v₁ w₀ w₁

/-- Variance is part of a lift profile and cannot be silently reversed. -/
inductive Variance
  | covariant
  | contravariant
  | bivariant
  deriving DecidableEq, Repr

/-- Noncoercible operator-lift modes. -/
inductive LiftMode
  | frameConjugation
  | chainIntertwiner
  | pullPushOrGysin
  | compressionExtension
  | bivariantProduct
  deriving DecidableEq, Repr

/-- Metadata that must survive every lift constructor. -/
structure LiftProfile where
  mode : LiftMode
  variance : Variance
  degreeShift : Int
  parityShift : Bool
  coefficients : String
  support : String
  frameIdentity : String
  deriving DecidableEq, Repr

section FrameConjugation

variable {R : Type u} [Ring R]
variable {E : Type v} {F : Type w}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]

/-- A genuine frame-conjugation lift. -/
structure FrameConjugationLift where
  frame : E ≃ₗ[R] F
  sourceOperator : E →ₗ[R] E
  profile : LiftProfile
  mode_eq : profile.mode = .frameConjugation

namespace FrameConjugationLift

/-- The target operator defined by actual conjugation through the selected frame. -/
def targetOperator (L : FrameConjugationLift (R := R) (E := E) (F := F)) :
    F →ₗ[R] F :=
  L.frame.toLinearMap.comp
    (L.sourceOperator.comp L.frame.symm.toLinearMap)

/-- Frame conjugation supplies an exact operator intertwiner. -/
theorem intertwines (L : FrameConjugationLift (R := R) (E := E) (F := F)) :
    Intertwines L.frame.toLinearMap L.sourceOperator L.targetOperator := by
  unfold Intertwines targetOperator
  ext x
  simp [LinearMap.comp_apply]

end FrameConjugationLift

/-- An inclusion/projection lift with an explicit lost complement. -/
structure CompressionExtension where
  «include» : E →ₗ[R] F
  project : F →ₗ[R] E
  project_include : project.comp «include» = LinearMap.id
  profile : LiftProfile
  mode_eq : profile.mode = .compressionExtension

namespace CompressionExtension

/-- The part of the target not reconstructed by projection followed by inclusion. -/
def lostComplement (C : CompressionExtension (R := R) (E := E) (F := F)) :
    F →ₗ[R] F :=
  LinearMap.id - C.include.comp C.project

@[simp]
theorem project_include_apply
    (C : CompressionExtension (R := R) (E := E) (F := F)) (x : E) :
    C.project (C.include x) = x := by
  have h := congrArg (fun L : E →ₗ[R] E => L x) C.project_include
  simpa [LinearMap.comp_apply] using h

/-- The lost complement vanishes on the included source. -/
theorem lostComplement_include
    (C : CompressionExtension (R := R) (E := E) (F := F)) (x : E) :
    C.lostComplement (C.include x) = 0 := by
  simp [lostComplement, LinearMap.comp_apply]

/-- Projection cannot see the declared lost complement. -/
theorem project_lostComplement
    (C : CompressionExtension (R := R) (E := E) (F := F)) (y : F) :
    C.project (C.lostComplement y) = 0 := by
  simp [lostComplement, LinearMap.comp_apply]

end CompressionExtension

end FrameConjugation

section ChainLift

variable {R : Type u} [Ring R]
variable {A₀ : Type v₀} {A₁ : Type v₁}
variable {B₀ : Type w₀} {B₁ : Type w₁}
variable [AddCommGroup A₀] [Module R A₀]
variable [AddCommGroup A₁] [Module R A₁]
variable [AddCommGroup B₀] [Module R B₀]
variable [AddCommGroup B₁] [Module R B₁]

/-- Chain-level lift carrying the exact Hodge-port witness. -/
structure ChainIntertwinerLift
    (A : TwoTermHodgeData R A₀ A₁) (B : TwoTermHodgeData R B₀ B₁) where
  port : HodgePort A B
  profile : LiftProfile
  mode_eq : profile.mode = .chainIntertwiner

end ChainLift

section BivariantLift

variable {Obj : Type u}
variable (T : BivariantTheory Obj)
variable {A B : Obj}
variable {R : Type v} [Ring R]
variable {E : Type w} {F : Type x}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]

/-- A bivariant correspondence paired with an independently proved concrete operator port.

The correspondence field cannot discharge the operator equation. -/
structure BivariantOperatorLift
    (D_E : E →ₗ[R] E) (D_F : F →ₗ[R] F) where
  correspondence : T.Corr A B
  operatorPort : E →ₗ[R] F
  operatorIntertwines : Intertwines operatorPort D_E D_F
  profile : LiftProfile
  mode_eq : profile.mode = .bivariantProduct

end BivariantLift

end GRWTSK.Analysis.Operator.FramedLiftModes
