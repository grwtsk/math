# Complete source: GRWTSK.Analysis.FunctionalAnalysis.WitnessConsistency.Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ccfc44772559db71c9f41dca871723d46802b6a` · SHA-256 `f5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
