import Folder.Spectral.Tensor

/-!
# Folder.Spectral.DiracSpectrum

Radiation role: spectral-heat
BinaryMatrix spine: This module packages spectral tensors with Dirac-spectrum contracts, not BinaryMatrix data.
Ontology: spectral.tensor_with_dirac_spectrum
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/

namespace Folder
namespace Spectral

/--
A concrete spectral tensor together with a Dirac-spectrum contract.
-/
structure TensorWithDiracSpectrum
    (s : Carrier.GridShape)
    (k : Nat) where
  tensor : SpectralTensor s k
  spectrum : DiracSpectrum
  spectrumActsOnTensor : Prop
  spectrumActsOnTensor_certified : spectrumActsOnTensor

theorem tensor_dirac_spectrum_acts
    {s : Carrier.GridShape}
    {k : Nat}
    (T : TensorWithDiracSpectrum s k) :
    T.spectrumActsOnTensor :=
  T.spectrumActsOnTensor_certified

def TensorWithDiracSpectrum.toObject
    {s : Carrier.GridShape}
    {k : Nat}
    (T : TensorWithDiracSpectrum s k) :
    DiracSpectrumObject where
  shape? := some s
  channels? := some k
  tensorCarrier? := some (SpectralTensor s k)
  spectrum := T.spectrum
  categoricalObject := True
  categoricalObject_certified := trivial
  sourceLabel := "TensorWithDiracSpectrum.toObject"

end Spectral
end Folder
