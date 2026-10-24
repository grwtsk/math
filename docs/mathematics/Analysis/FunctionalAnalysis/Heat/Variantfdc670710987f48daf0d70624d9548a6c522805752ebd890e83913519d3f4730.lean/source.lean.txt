import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Heat

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.heat
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure GraphHeat (s : GridShape) (k : Nat) where
  heat : NNReal → SpectralTensor s k → SpectralTensor s k
  heat_zero : ∀ X, heat 0 X = X
  heat_add : ∀ t u X, heat (t + u) X = heat t (heat u X)
  preserves_constant :
    ∀ t a, heat t (SpectralTensor.constant s a) =
      SpectralTensor.constant s a

end Spectral
end Folder
