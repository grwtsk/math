# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointContract.Variant2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c165f9444f1cfa080c8b8f438fc1f05471fc2488` · SHA-256 `2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
