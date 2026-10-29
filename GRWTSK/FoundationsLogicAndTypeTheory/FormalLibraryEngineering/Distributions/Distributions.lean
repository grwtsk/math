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
