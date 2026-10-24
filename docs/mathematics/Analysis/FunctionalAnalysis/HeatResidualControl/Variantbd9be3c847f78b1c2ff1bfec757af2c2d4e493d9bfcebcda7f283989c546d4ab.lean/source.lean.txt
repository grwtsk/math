-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.HeatVisible.Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HeatVisible.Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888","mathematical_subject":"Foundations.Unclassified","original_sha256":"f49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Harmonic/HeatResidualControl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Heat
import Folder.Spectral.Residual

/-!
# Folder.Harmonic.HeatResidualControl

Radiation role: harmonic-control
BinaryMatrix spine: This module repackages lifted heat residual reconstruction for downstream BinaryMatrix-radiated stack control.
Ontology: harmonic.heat_residual_control
Pivot role: spectral
Zero typology: harmonic
Contract boundary: proved
Composite stack role: residual
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.HeatVisible.Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888

namespace Folder
namespace Harmonic

def heatVisible
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  H.heat t X

def heatFiber
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  Spectral.heatResidual H t X

theorem heat_visible_plus_fiber
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    heatVisible H t X + heatFiber H t X = X :=
  Spectral.heat_add_residual H t X

end Harmonic
end Folder
