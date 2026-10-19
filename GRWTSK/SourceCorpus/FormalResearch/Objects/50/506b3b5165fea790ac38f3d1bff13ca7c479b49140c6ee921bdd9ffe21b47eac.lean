import Folder.Quantization.Threshold
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Transform.ThresholdTransform

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: transform.threshold_transform
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Transform

open Carrier Quantization

structure ThresholdTransform (Source : Type _) where
  quantizer : ThresholdQuantizer
  rows : Nat
  cols : Nat
  sample : Source → Nat → Fin rows → Fin cols → Real
  layerAt : Source → Nat → BinaryMatrix :=
    fun source t =>
      BinaryMatrix.ofFunction rows cols
        (fun i j => quantizer.bitOf (sample source t i j))

end Transform
end Folder
