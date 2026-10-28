/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib declarations retain their upstream attribution/licenses. -/
import GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.Sheaf.RationalMomentFredholmBridge

/-!
# Arithmetic moments synchronized through source-preserving evaluation codes

Apply the existing rational multiplication-moment representation and its graph
naturality to the existing bounded encode/decode maps. The identity on the
symbol space is the code projector E D, not the ambient identity. Its discarded
symbol residual is retained explicitly. No orthogonality, prime-density theorem,
analytic zeta divisor, or small arithmetic error is inferred from this algebra.

SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.Sheaf.CodedMomentTransport

open GRWTSK.Algebra.LinearAlgebra.LinearMap.ReedSolomonRefinement
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RationalMomentAlgebra
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.Sheaf.RationalMomentFredholmBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

variable {X Y : Type*}
variable [NormedAddCommGroup X] [NormedSpace ℚ X]
variable [NormedAddCommGroup Y] [NormedSpace ℚ Y]

/-- The source-defined code-space projector, not an empirical barycenter. -/
def codeProjector (code : Code ℚ X Y) : Y →ₗ[ℚ] Y :=
  code.encode.toLinearMap.comp code.decode.toLinearMap

@[simp] theorem codeProjector_apply (code : Code ℚ X Y) (y : Y) :
    codeProjector code y = code.encode (code.decode y) := rfl

theorem codeProjector_idempotent (code : Code ℚ X Y) (y : Y) :
    codeProjector code (codeProjector code y) = codeProjector code y := by
  simp only [codeProjector_apply, Code.decode_encode_apply]

/-- Symbol information invisible to the decoder is not silently erased. -/
def symbolResidual (code : Code ℚ X Y) (y : Y) : Y :=
  y - codeProjector code y

theorem reconstruct_symbols (code : Code ℚ X Y) (y : Y) :
    codeProjector code y + symbolResidual code y = y := by
  unfold symbolResidual
  abel

theorem decode_symbolResidual (code : Code ℚ X Y) (y : Y) :
    code.decode (symbolResidual code y) = 0 := by
  simp [symbolResidual]

/-- Encode an actual arithmetic moment action after returning to its source. -/
def codedAction (code : Code ℚ X Y) (representation : Representation X)
    (a : Moment) : Y →ₗ[ℚ] Y :=
  code.encode.toLinearMap.comp
    ((representation.action a).comp code.decode.toLinearMap)

@[simp] theorem codedAction_apply (code : Code ℚ X Y)
    (representation : Representation X) (a : Moment) (y : Y) :
    codedAction code representation a y =
      code.encode (representation.action a (code.decode y)) := rfl

theorem codedAction_encode (code : Code ℚ X Y)
    (representation : Representation X) (a : Moment) (x : X) :
    codedAction code representation a (code.encode x) =
      code.encode (representation.action a x) := by
  simp only [codedAction_apply, Code.decode_encode_apply]

/-- Multiplication remains Dirichlet-convolution multiplication. -/
theorem codedAction_mul (code : Code ℚ X Y)
    (representation : Representation X) (a b : Moment) (y : Y) :
    codedAction code representation a (codedAction code representation b y) =
      codedAction code representation (a * b) y := by
  simp only [codedAction_apply, Code.decode_encode_apply, map_mul,
    Module.End.mul_apply]

/-- The unit acts as E D. Claiming the identity on arbitrary symbols would be false. -/
theorem codedAction_one (code : Code ℚ X Y)
    (representation : Representation X) (y : Y) :
    codedAction code representation 1 y = codeProjector code y := by
  simp [codedAction, codeProjector]

/-- Existing arithmetic Mobius inversion returns precisely the retained code component. -/
theorem coded_mobius_zeta (code : Code ℚ X Y)
    (representation : Representation X) (y : Y) :
    codedAction code representation mobiusMoment
        (codedAction code representation zetaMoment y) = codeProjector code y := by
  rw [codedAction_mul, mobiusMoment_mul_zetaMoment, codedAction_one]

theorem coded_zeta_mobius (code : Code ℚ X Y)
    (representation : Representation X) (y : Y) :
    codedAction code representation zetaMoment
        (codedAction code representation mobiusMoment y) = codeProjector code y := by
  rw [codedAction_mul, zetaMoment_mul_mobiusMoment, codedAction_one]

/-- The whole received symbol vector returns after retaining the residual channel. -/
theorem coded_inverse_with_residual (code : Code ℚ X Y)
    (representation : Representation X) (y : Y) :
    codedAction code representation mobiusMoment
        (codedAction code representation zetaMoment y) + symbolResidual code y = y := by
  rw [coded_mobius_zeta, reconstruct_symbols]

/-- A coherent codeword error is not the symbol residual: it changes the decoded source. -/
theorem coherent_error_decodes (code : Code ℚ X Y) (x e : X) :
    code.decode (code.encode x + code.encode e) = x + e := by
  simp only [map_add, Code.decode_encode_apply]

section Sheaf

variable {V : Type*} {edge : EdgeRelation V} {Stalk Symbols : V → Type*}
variable [∀ v, NormedAddCommGroup (Stalk v)] [∀ v, NormedSpace ℚ (Stalk v)]
variable [∀ v, NormedAddCommGroup (Symbols v)] [∀ v, NormedSpace ℚ (Symbols v)]

/-- Actual sheaf path restriction, decoded and re-encoded at its endpoint. -/
def codedTransport (sheaf : MomentSheaf V edge Stalk)
    (code : ∀ v, Code ℚ (Stalk v) (Symbols v))
    {s t : V} (path : Path edge s t) : Symbols s →ₗ[ℚ] Symbols t :=
  (code t).encode.toLinearMap.comp
    ((sheaf.transport path).comp (code s).decode.toLinearMap)

@[simp] theorem codedTransport_apply (sheaf : MomentSheaf V edge Stalk)
    (code : ∀ v, Code ℚ (Stalk v) (Symbols v))
    {s t : V} (path : Path edge s t) (y : Symbols s) :
    codedTransport sheaf code path y =
      (code t).encode (sheaf.transport path ((code s).decode y)) := rfl

/-- Apply the previously proved path naturality to different evaluation-node systems. -/
theorem codedTransport_naturality (sheaf : MomentSheaf V edge Stalk)
    (code : ∀ v, Code ℚ (Stalk v) (Symbols v))
    {s t : V} (path : Path edge s t) (a : Moment) (y : Symbols s) :
    codedTransport sheaf code path
        (codedAction (code s) (sheaf.representation s) a y) =
      codedAction (code t) (sheaf.representation t) a
        (codedTransport sheaf code path y) := by
  simp only [codedTransport_apply, codedAction_apply, Code.decode_encode_apply]
  have h := congrArg (fun f => f ((code s).decode y))
    (sheaf.transport_naturality path a)
  exact congrArg (code t).encode h

/-- Source restriction is what returns; arbitrary sheaf restrictions are not made invertible. -/
theorem decode_codedTransport (sheaf : MomentSheaf V edge Stalk)
    (code : ∀ v, Code ℚ (Stalk v) (Symbols v))
    {s t : V} (path : Path edge s t) (y : Symbols s) :
    (code t).decode (codedTransport sheaf code path y) =
      sheaf.transport path ((code s).decode y) := by
  simp only [codedTransport_apply, Code.decode_encode_apply]

end Sheaf
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.Sheaf.CodedMomentTransport
