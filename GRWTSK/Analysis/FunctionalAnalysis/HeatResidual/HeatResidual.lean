import Folder.Spectral.Residual

/-!
# Folder.Theorem.Spectral.HeatResidual

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.heat_residual
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Spectral

open Carrier

structure LiftedState (s : GridShape) (k : Nat) where
  visible : SpectralTensor s k
  fiber : SpectralTensor s k

def liftedHeat {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    SpectralTensor s k × SpectralTensor s k :=
  (H.heat t X, heatResidual H t X)

def reconstructHeat {s : GridShape} {k : Nat}
    (Y R : SpectralTensor s k) :
    SpectralTensor s k :=
  Y + R

theorem reconstruct_liftedHeat {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2 = X := by
  exact heat_add_residual H t X

end Spectral
end Folder
