import Folder.Spectral.Witness

/-!
# Folder.Theorem.Spectral.WitnessConsistency

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.witness_consistency
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Spectral

open Carrier

theorem meanWitness_shell_consistent {s : GridShape} {k : Nat} :
    Consistent
      (meanWitness (Expansion.expandedShape s) k)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  change SpectralTensor.mean (decodeShell (encodeShell X)) =
    SpectralTensor.mean X
  rw [decode_encode_shell]

theorem energyWitness_shell_consistent {s : GridShape} {k : Nat}
    (G : CellGraph (Expansion.expandedShape s)) :
    Consistent
      (energyWitness k G)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  change energy G (decodeShell (encodeShell X)) = energy G X
  rw [decode_encode_shell]

theorem cellCountWitness_shell_consistent {s : GridShape} {k : Nat} :
    Consistent
      (cellCountWitness (Expansion.expandedShape s) k)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  rfl

end Spectral
end Folder
