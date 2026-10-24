-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.MeanWitnessShellConsistent.Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MeanWitnessShellConsistent.Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3","mathematical_subject":"Foundations.Unclassified","original_sha256":"f5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Spectral/WitnessConsistency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Witness

/-!
# Folder.Theorem.Spectral.WitnessConsistency

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.witness_consistency
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.MeanWitnessShellConsistent.Variantf5a4684eaa452a61fe52baa6ac78abc2d8f9e2d1cb778e05e7c9c7fcb9a1f2f3

namespace Folder
namespace Spectral

open Carrier

theorem meanWitness_shell_consistent {s : GridShape} {k : Nat} :
    Consistent
      (meanWitness (Expansion.expandedShape s) k)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  change SpectralTensor.mean (decodeShell (encodeShell X)) =
    SpectralTensor.mean X
  rw [decode_encode_shell]

theorem energyWitness_shell_consistent {s : GridShape} {k : Nat}
    (G : CellGraph (Expansion.expandedShape s)) :
    Consistent
      (energyWitness k G)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  change energy G (decodeShell (encodeShell X)) = energy G X
  rw [decode_encode_shell]

theorem cellCountWitness_shell_consistent {s : GridShape} {k : Nat} :
    Consistent
      (cellCountWitness (Expansion.expandedShape s) k)
      (encodeShell (s := s) (k := k))
      (decodeShell (s := s) (k := k)) := by
  intro X
  rfl

end Spectral
end Folder
