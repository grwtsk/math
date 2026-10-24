# Complete source: GRWTSK.Analysis.FunctionalAnalysis.EnergyContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b47a203bc8c6eea5c3bbf6e7e0889426cded78fa` · SHA-256 `747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
