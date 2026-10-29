-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.GraphTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ChromaticHeight.Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.GraphTheory.SourceCorpus.ChromaticHeight.Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1","mathematical_subject":"Combinatorics.GraphTheory","original_sha256":"23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/ChromaticHeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.TensorSection

/-!
# Folder.CrystallineTensor.ChromaticHeight

Radiation role: research-boundary
BinaryMatrix spine: This module records chromatic-height-to-rank rules as contracts, not BinaryMatrix theorems.
Ontology: crystalline.chromatic_height
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ChromaticHeight.Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1

namespace Folder
namespace CrystallineTensor

structure ChromaticHeight where
  height : Nat
  positive? : Option (PLift (0 < height))
  label : String

structure HeightRankRule where
  rankOfHeight : ChromaticHeight → TensorRank
  monotone : Prop
  monotone_certified : monotone
  sourceLabel : String

theorem height_rank_rule_monotone_if_supplied
    (R : HeightRankRule) :
    R.monotone :=
  R.monotone_certified

end CrystallineTensor
end Folder
