-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledSphericalResearchRegistry.Variant91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ControlledSphericalResearchRegistry.Variant91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2","mathematical_subject":"Foundations.Unclassified","original_sha256":"91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Registry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Claims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledSphericalResearchRegistry.Variant91afaf8526f96a5b697bedb437a5c4c1d5fc931bed56756a7685315b7a92c7d2

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledSpherical

open FCRS
open FCRS.ControlledPlane

/--
The controlled-spherical research trust boundary contains one coherent witness
package.  In particular, CS-03--CS-08 cannot select unrelated vertex or
spherical-realization witnesses.  Decoder, kernel, operation, and signature
reconstruction remain derived Lean results.
-/
structure ControlledSphericalResearchRegistry
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) : Prop where
  witnesses : Nonempty (ControlledSphericalWitnessPackage S M SM)

end FCRS.ControlledSpherical
