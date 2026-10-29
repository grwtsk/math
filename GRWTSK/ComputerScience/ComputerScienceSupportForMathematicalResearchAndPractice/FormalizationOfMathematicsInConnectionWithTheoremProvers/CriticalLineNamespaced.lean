-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalLineOfCenteredZero.Variant0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CriticalLineOfCenteredZero.Variant0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed","mathematical_subject":"Foundations.Unclassified","original_sha256":"0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/CriticalLine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.CriticalLine

/-!
# Folder.Theorem.Research.CriticalLine

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports critical-line normalization facts for the research-boundary layer.
Ontology: proof.research.critical_line
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalLineOfCenteredZero.Variant0ab7a1ba563f31216f0f4478d0110272f987b5fa6c42fcccfab9bb15d36d33ed

namespace Folder
namespace Theorem
namespace Research
namespace CriticalLine

theorem criticalLine_of_centered_zero
    (x : ℝ)
    (h : Folder.Research.CriticalLine.CenteredWithZeroVariance x) :
    Folder.Research.CriticalLine.IsCriticalLineRealPart x :=
  Folder.Research.CriticalLine.criticalLine_of_centered_zero x h

theorem centered_zero_of_criticalLine
    (x : ℝ)
    (h : Folder.Research.CriticalLine.IsCriticalLineRealPart x) :
    Folder.Research.CriticalLine.CenteredWithZeroVariance x :=
  Folder.Research.CriticalLine.centered_zero_of_criticalLine x h

theorem criticalLine_iff_centered_zero
    (x : ℝ) :
    Folder.Research.CriticalLine.IsCriticalLineRealPart x ↔
      Folder.Research.CriticalLine.CenteredWithZeroVariance x :=
  Folder.Research.CriticalLine.criticalLine_iff_centered_zero x

end CriticalLine
end Research
end Theorem
end Folder
