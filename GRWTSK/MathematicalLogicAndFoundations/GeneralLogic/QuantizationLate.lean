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
