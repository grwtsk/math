-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuantizeAfterLiftedReconstruction.Variantdee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.QuantizeAfterLiftedReconstruction.Variantdee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30","mathematical_subject":"Logic.Foundations","original_sha256":"dee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Spectral/QuantizationLate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Quantization
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Theorem.Spectral.QuantizationLate

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.quantization_late
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuantizeAfterLiftedReconstruction.Variantdee6338e5a7331707fb7d5cd521d5bfefebf60e5cf459c9cc6cece981d89ee30

namespace Folder
namespace Spectral

open Carrier

theorem quantize_after_lifted_reconstruction {s : GridShape} {k : Nat}
    (Q : TensorQuantizer)
    (q : Fin k)
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    quantizeChannel Q q
        (reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2) =
      quantizeChannel Q q X := by
  rw [reconstruct_liftedHeat]

theorem late_quantization_can_be_many_to_one :
    ¬ Function.Injective
      (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
        quantizeChannel unitThresholdQuantizer 0 X) :=
  quantization_not_declared_injective

end Spectral
end Folder
