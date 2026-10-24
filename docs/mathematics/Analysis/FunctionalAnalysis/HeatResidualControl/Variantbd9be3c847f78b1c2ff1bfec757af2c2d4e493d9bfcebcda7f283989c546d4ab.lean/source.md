# Complete source: GRWTSK.Analysis.FunctionalAnalysis.HeatResidualControl.Variantbd9be3c847f78b1c2ff1bfec757af2c2d4e493d9bfcebcda7f283989c546d4ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19836f80637c0886ba7163281bb604e434595dc5` · SHA-256 `96e1144b84d2d1f2b4ea566902b7d41b0f7f3f1036a8c001f1f436a50f916eb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
