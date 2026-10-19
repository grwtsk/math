-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.Unclassified
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReconstructSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReconstructSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","mathematical_subject":"Foundations.Unclassified","original_sha256":"d0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/~/2026/08/10/TestProject/Theorem/Shader/BijectiveSplit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Shader.BijectiveSplit

/-!
# Folder.Theorem.Shader.BijectiveSplit

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes the arithmetic split proof mirrored by runtime shader code.
Ontology: proof.shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: residual
-/


namespace FormalResearch.Foundations.Unclassified.SourceCorpus.ReconstructSplit.Variantd0cfcbed9e66ce34ce3778a85b698a0a038c8ba4198ff1562021b1f39f97a73d

namespace Folder
namespace Theorem
namespace Shader

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    Folder.Shader.reconstruct
        (Folder.Shader.split raw step hstep) = raw :=
  Folder.Shader.reconstruct_split raw step hstep

theorem residual_lt_step
    (S : Folder.Shader.QuantizedSplit) :
    S.residual < S.step :=
  Folder.Shader.residual_lt_step S

end Shader
end Theorem
end Folder
