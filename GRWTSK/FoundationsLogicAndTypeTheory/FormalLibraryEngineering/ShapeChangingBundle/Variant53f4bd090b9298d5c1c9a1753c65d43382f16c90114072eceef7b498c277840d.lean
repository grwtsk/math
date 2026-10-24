-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShapeChangesOfStep.Variante7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ShapeChangesOfStep.Variante7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107","mathematical_subject":"Foundations.Unclassified","original_sha256":"e7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/ShapeChangingBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.ShapeChangingBundle

/-!
# Folder.Theorem.Research.ShapeChangingBundle

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.shape_changing_bundle
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShapeChangesOfStep.Variante7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107

namespace Folder
namespace Theorem
namespace Research
namespace ShapeChangingBundle

open Carrier

theorem shape_changes_of_step
    (base : GridShape)
    (n : Nat) :
    (Folder.Research.ShapeChangingBundle.levelShape base (n + 1)).rows =
        (Folder.Research.ShapeChangingBundle.levelShape base n).rows + 2 ∧
    (Folder.Research.ShapeChangingBundle.levelShape base (n + 1)).cols =
        (Folder.Research.ShapeChangingBundle.levelShape base n).cols + 2 :=
  Folder.Research.ShapeChangingBundle.shape_changes_of_step base n

theorem contract_expandWithShell_center
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
    (X : Folder.Research.ShapeChangingBundle.ShapeChangingState base k n) :
    (Folder.Research.ShapeChangingBundle.contractOneStep base k
      (Folder.Research.ShapeChangingBundle.expandWithShell base k P X)).1 = X :=
  Folder.Research.ShapeChangingBundle.contract_expandWithShell_center base k P X

theorem contract_expandWithShell_shell
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
    (X : Folder.Research.ShapeChangingBundle.ShapeChangingState base k n) :
    (Folder.Research.ShapeChangingBundle.contractOneStep base k
      (Folder.Research.ShapeChangingBundle.expandWithShell base k P X)).2 =
      P.shell :=
  Folder.Research.ShapeChangingBundle.contract_expandWithShell_shell base k P X

theorem expand_contractOneStep
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (Y : Folder.Research.ShapeChangingBundle.ShapeChangingState base k (n + 1)) :
    Folder.Research.ShapeChangingBundle.expandWithShell base k
      ({ shell :=
          (Folder.Research.ShapeChangingBundle.contractOneStep base k Y).2 } :
        Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
      (Folder.Research.ShapeChangingBundle.contractOneStep base k Y).1
    = Y :=
  Folder.Research.ShapeChangingBundle.expand_contractOneStep base k Y

end ShapeChangingBundle
end Research
end Theorem
end Folder
