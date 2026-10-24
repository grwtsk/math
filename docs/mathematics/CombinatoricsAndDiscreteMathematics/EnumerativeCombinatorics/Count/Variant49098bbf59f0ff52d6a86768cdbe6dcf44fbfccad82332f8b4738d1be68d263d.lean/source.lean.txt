-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanCountZero.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CatalanCountZero.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Catalan/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.Count

/-!
# Folder.Theorem.Catalan.Count

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.count
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CatalanCountZero.Variant5af1220aa76a52fdd4fad93450354eac3753350bd347b0179f73653bf0a7804f

namespace Folder
namespace Catalan

theorem catalan_count_zero :
    catalan 0 = 1 :=
  catalan_zero

theorem catalan_count_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  catalan_succ n

end Catalan
end Folder
