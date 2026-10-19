import BitMatrix.Quantization.Core
import Surface.ContinuousAssurance.Refinement

/-!
# Array-backed observational bridge

The prototype executable relation reuses `BitMatrix.Quantizer.ofArrayBacked`.  It proves
only that the array-backed encoder is observed through `BitMatrix.ArrayBacked.toMatrix`.
No transition-level runtime refinement is inferred from this equation.
-/

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The declarative quantizer induced by one array-backed matrix encoder. -/
def arrayBackedQuantizer
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n) :
    BitMatrix.Quantizer Cfg m n :=
  BitMatrix.Quantizer.ofArrayBacked encodeArrayBacked

/-- The executable observation is exactly its declarative `toMatrix` image. -/
@[simp]
theorem arrayBackedQuantizer_encode
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (configuration : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).encode configuration =
      (encodeArrayBacked configuration).toMatrix :=
  rfl

/-- Indistinguishability remains observational, not raw-structure equality. -/
theorem arrayBackedQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (left right : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).Indistinguishable left right ↔
      (encodeArrayBacked left).toMatrix = (encodeArrayBacked right).toMatrix :=
  Iff.rfl

/-- No full executable transition refinement is submitted by this adapter. -/
def executableWorldModelRefinementStatus :
    Surface.ContinuousAssurance.RuntimeRefinementSubmissionStatus :=
  .notSubmitted

@[simp]
theorem executableWorldModelRefinement_notSubmitted :
    executableWorldModelRefinementStatus = .notSubmitted :=
  rfl

end DAF.Integration.WorldModelPrototype
