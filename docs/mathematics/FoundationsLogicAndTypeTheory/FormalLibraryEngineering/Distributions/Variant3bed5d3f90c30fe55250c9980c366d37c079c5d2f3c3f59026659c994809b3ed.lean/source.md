# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Distributions.Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17644f61957bee1fd7b074e764546d2151cae7be` · SHA-256 `4c0095dcd16e287dda9931de8b209f9ea7ddea1d47777c35c78e417c38600457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RHSpectralDistribution.Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RHSpectralDistribution.Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01","mathematical_subject":"Foundations.Unclassified","original_sha256":"0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/Distributions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RHSpectralDistribution.Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01

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
