-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseSweepSplitReconstruct.Varianta65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PhaseSweepSplitReconstruct.Varianta65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c","mathematical_subject":"Foundations.Unclassified","original_sha256":"a65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Shader/PhaseSweeperSpec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Shader.PhaseSweeperSpec

/-!
# Folder.Theorem.Shader.PhaseSweeperSpec

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes phase-sweeper visible/residual reconstruction for runtime mirrors.
Ontology: proof.shader.phase_sweeper_spec
Pivot role: none
Zero typology: shell
Contract boundary: theorem-wrapper
Composite stack role: phase
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseSweepSplitReconstruct.Varianta65a03dcad58e11a4872b2b713e0c840e207c7ec19b9a848b2a3e2f014a95e7c

namespace Folder
namespace Theorem
namespace Shader

theorem phaseSweep_split_reconstruct
    (raw step : Nat)
    (hstep : 0 < step) :
    Folder.Shader.phaseSweepReconstruct
        (Folder.Shader.phaseSweepSplit raw step hstep) = raw :=
  Folder.Shader.phaseSweep_split_reconstruct raw step hstep

end Shader
end Theorem
end Folder
