import Folder.Carrier.Bit

/-!
# Folder.Quantization.Threshold

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: quantization.threshold
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: residual
-/


namespace Folder
namespace Quantization

open Carrier

structure ThresholdQuantizer where
  threshold : Real
  bitOf : Real → Bit
  bitOf_spec_zero : ∀ x, x < threshold → bitOf x = 0
  bitOf_spec_one : ∀ x, threshold ≤ x → bitOf x = 1

end Quantization
end Folder
