# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuantizationLate.Variantdee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5bf13681e3790e462ae95ab6f8d9737825855ef` · SHA-256 `dee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Quantization
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Theorem.Spectral.QuantizationLate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.quantization_late
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Spectral

open Carrier

theorem quantize_after_lifted_reconstruction {s : GridShape} {k : Nat}
    (Q : TensorQuantizer)
    (q : Fin k)
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    quantizeChannel Q q
        (reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2) =
      quantizeChannel Q q X := by
  rw [reconstruct_liftedHeat]

theorem late_quantization_can_be_many_to_one :
    ¬ Function.Injective
      (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
        quantizeChannel unitThresholdQuantizer 0 X) :=
  quantization_not_declared_injective

end Spectral
end Folder
```
