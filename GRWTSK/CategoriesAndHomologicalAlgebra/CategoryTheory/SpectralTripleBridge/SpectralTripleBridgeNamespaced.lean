-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralTripleMetric.Variant5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SpectralTripleMetric.Variant5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb","mathematical_subject":"Foundations.Unclassified","original_sha256":"5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/ResearchTopos/SpectralTripleBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.SpectralTripleBridge

/-!
# Folder.Theorem.ResearchTopos.SpectralTripleBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-triple bridge contract exposures.
Ontology: proof.research_topos.spectral_triple_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralTripleMetric.Variant5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace SpectralTripleBridge

theorem spectral_triple_metric
    (S : Folder.ResearchTopos.SpectralTripleContract) :
    S.metricSpectralTriple :=
  Folder.ResearchTopos.spectral_triple_metric S

theorem zero_spectrum_bridge_matches
    {F : Folder.ResearchTopos.RodgersTaoHeatFamily}
    {T : Folder.ResearchTopos.TimeDependentSpectralTriple}
    (B : Folder.ResearchTopos.ZeroSpectrumBridge F T) :
    B.spectrumMatchesZeroPositions :=
  Folder.ResearchTopos.zero_spectrum_bridge_matches B

end SpectralTripleBridge
end ResearchTopos
end Theorem
end Folder
