# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorSection.Variant62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4743361eecdbefb4e763c70bb5d9cb9986b59aa4` · SHA-256 `62761840450861f2ed0fe0718997f370a91054e68572a97c60600e7d8b91b45c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineTensor.TensorSection

Radiation role: research-boundary
BinaryMatrix spine: This module records tensor-valued crystal sections, not binary quantization.
Ontology: crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: definition
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure TensorRank where
  value : Nat

structure TensorSection
    {C : CrystallineSite}
    (F : Crystal C)
    (X : C.Site.Obj) where
  rank : TensorRank
  carrier : Type _
  value : carrier
  underlyingSection : F.Section X

def TensorSection.HasRank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X)
    (r : Nat) : Prop :=
  T.rank.value = r

theorem tensor_section_has_some_rank
    {C : CrystallineSite}
    {F : Crystal C}
    {X : C.Site.Obj}
    (T : TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  ⟨T.rank.value, rfl⟩

end CrystallineTensor
end Folder
```
