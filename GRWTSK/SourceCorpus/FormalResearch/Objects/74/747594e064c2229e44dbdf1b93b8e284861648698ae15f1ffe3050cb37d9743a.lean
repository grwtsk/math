import Folder.Spectral.Energy

/-!
# Folder.Theorem.Spectral.EnergyContrast

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.energy_contrast
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Spectral

open Carrier

theorem positive_energy_from_channel_contrast {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (ε : ℝ)
    (X : SpectralTensor s k)
    (hε : 0 < ε)
    (h : HasChannelContrast G ε X)
    (hedge : ∃ c d, G.Adj c d) :
    0 < energy G X :=
  energy_positive_of_contrast G ε X hε h hedge

end Spectral
end Folder
