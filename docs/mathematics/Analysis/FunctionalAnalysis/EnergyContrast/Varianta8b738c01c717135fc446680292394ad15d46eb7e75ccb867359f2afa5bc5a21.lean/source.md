# Complete source: GRWTSK.Analysis.FunctionalAnalysis.EnergyContrast.Varianta8b738c01c717135fc446680292394ad15d46eb7e75ccb867359f2afa5bc5a21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a4910e7c6361046d71bd5101396f24f25a7dce9` · SHA-256 `3fb1d5a5110d9b97be68948660fa6aa3da3c2c6e52078c3db4f5e6f256ef04f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PositiveEnergyFromChannelContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositiveEnergyFromChannelContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","mathematical_subject":"Foundations.Unclassified","original_sha256":"747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Spectral/EnergyContrast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.Analysis.FunctionalAnalysis.PositiveEnergyFromChannelContrast.Variant747594e064c2229e44dbdf1b93b8e284861648698ae15f1ffe3050cb37d9743a

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
