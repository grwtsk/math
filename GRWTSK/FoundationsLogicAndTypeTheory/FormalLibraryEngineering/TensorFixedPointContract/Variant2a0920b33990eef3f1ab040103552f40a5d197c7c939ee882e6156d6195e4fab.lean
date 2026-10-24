import Folder.CrystallineTensor.FixedTensor

/-!
# Folder.CrystallineTensor.TensorFixedPointContract

Radiation role: research-boundary
BinaryMatrix spine: This module exposes supplied tensor fixed-point contracts, not BinaryMatrix fixed-point dynamics.
Ontology: crystalline.tensor_fixed_point_contract
Pivot role: spectral
Zero typology: none
Contract boundary: contract-composition
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Central fixed-tensor contract.

This record does not prove a tensor-valued fixed-point theorem. It packages a
supplied heat-compatible endomorphism and a supplied fixed tensor witness.
-/
structure TensorFixedPointContract
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (H : HeatFlowAction F)
    (e : CrystalEndomorphism F) where
  compatibleEndomorphism :
    HeatCompatibleEndomorphism H e
  object : C.Site.Obj
  existsFixedTensor :
    ∃ _ : FixedTensor nabla e object, True
  uniqueness? : Prop

namespace TensorFixedPointContract

theorem tensor_fixed_point_exists
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) :
    ∃ _ : FixedTensor nabla e K.object, True :=
  K.existsFixedTensor

theorem tensor_fixed_point_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) :
    ∃ T : FixedTensor nabla e K.object,
      nabla.horizontal K.object T.tensor.underlyingSection := by
  rcases K.existsFixedTensor with ⟨T, _⟩
  exact ⟨T, T.horizontal⟩

theorem tensor_fixed_point_fixed
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) :
    ∃ T : FixedTensor nabla e K.object,
      e.map K.object T.tensor.underlyingSection =
        T.tensor.underlyingSection := by
  rcases K.existsFixedTensor with ⟨T, _⟩
  exact ⟨T, T.fixed⟩

end TensorFixedPointContract

end CrystallineTensor
end Folder
