-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedShellTorsion.Varianteeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HeatQuantizedShellTorsion.Varianteeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309","mathematical_subject":"Foundations.Unclassified","original_sha256":"eeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Cellular/HeatQuantizedTorsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.ShellCohomology

/-!
# Folder.Cellular.HeatQuantizedTorsion

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.heat_quantized_torsion
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedShellTorsion.Varianteeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309

namespace Folder
namespace Cellular

structure HeatQuantizedShellTorsion
    (d k m : Nat) where
  field : CubeSpectralField d k
  heat : CubeHeatFlow d k
  time : NNReal
  quantizer : PhaseQuantizer m
  scan : ScanTwist d k m

namespace HeatQuantizedShellTorsion

def q
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain0 d k m :=
  quantizedField T.quantizer (T.heat.heat T.time T.field)

def connection
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain1 d k m :=
  phaseConnection T.q T.scan

def torsionClass
    (T : HeatQuantizedShellTorsion d k m) :
    ShellTorsionClass d k m :=
  ⟨T.connection⟩

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : HeatQuantizedShellTorsion d k m)
    (p : EdgePath d k x x) :
    pathIntegral T.connection p =
      pathIntegral T.scan.value p :=
  phaseConnection_loopIntegral_eq_scan T.q T.scan p

end HeatQuantizedShellTorsion

export HeatQuantizedShellTorsion
  (q connection torsionClass heatQuantizedShellTorsion_loop_eq_scan)

end Cellular
end Folder
