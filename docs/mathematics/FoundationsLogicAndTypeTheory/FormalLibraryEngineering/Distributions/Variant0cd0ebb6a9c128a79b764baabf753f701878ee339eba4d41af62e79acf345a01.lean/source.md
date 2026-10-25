# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Distributions.Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92c94f83576005471ef1a3ef03a947faa3f2d052` · SHA-256 `0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.TestFunctions

/-!
# Folder.RH.Distributions

Radiation role: trace-distributions
BinaryMatrix spine: This module fixes distribution records for the trace-formula layer.
Ontology: rh.distributions
Pivot role: spectral
Zero typology: zeta
Contract boundary: distribution-interface
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/-- Spectral-side distribution data. -/
structure RHSpectralDistribution where
  eval : RHTestFunction → ℂ
  regularizationLabel : String
  convergenceLabel : String
  multiplicityLabel : String
  sourceLabel : String

/-- Index/zero-side distribution data. -/
structure RHIndexDistribution where
  eval : RHTestFunction → ℂ
  regularizationLabel : String
  convergenceLabel : String
  multiplicityLabel : String
  sourceLabel : String

/-- Pairing data for the two sides of the trace formula. -/
structure TracePairing where
  spectral : RHSpectralDistribution
  index : RHIndexDistribution
  sourceLabel : String

theorem trace_pairing_has_spectral_distribution
    (P : TracePairing) :
    ∃ S : RHSpectralDistribution, S = P.spectral :=
  ⟨P.spectral, rfl⟩

theorem trace_pairing_has_index_distribution
    (P : TracePairing) :
    ∃ I : RHIndexDistribution, I = P.index :=
  ⟨P.index, rfl⟩

end

end RH
end Folder
```
