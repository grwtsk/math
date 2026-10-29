-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Direction.Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.Direction.Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Catalan/ExpansionIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.Tree

/-!
# Folder.Catalan.ExpansionIndex

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Direction.Variant9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855

namespace Folder
namespace Catalan

inductive Direction where
  | left
  | right
deriving DecidableEq, Repr

abbrev Address := List Direction

namespace CTree

def HasAddress : CTree → Address → Prop
  | leaf, [] => True
  | leaf, _ :: _ => False
  | node l _, Direction.left :: rest => HasAddress l rest
  | node _ r, Direction.right :: rest => HasAddress r rest
  | node _ _, [] => False

def expandAt? : CTree → Address → Option CTree
  | leaf, [] => some (node leaf leaf)
  | leaf, _ :: _ => none
  | node l r, Direction.left :: rest =>
      match expandAt? l rest with
      | some l' => some (node l' r)
      | none => none
  | node l r, Direction.right :: rest =>
      match expandAt? r rest with
      | some r' => some (node l r')
      | none => none
  | node _ _, [] => none

theorem expandAt?_internal :
    ∀ {T : CTree} {a : Address} {U : CTree},
      T.expandAt? a = some U →
        U.internal = T.internal + 1 := by
  intro T
  induction T with
  | leaf =>
      intro a U h
      cases a with
      | nil =>
          simp [expandAt?] at h
          cases h
          simp [internal]
      | cons d rest =>
          cases d <;> simp [expandAt?] at h
  | node l r ihl ihr =>
      intro a U h
      cases a with
      | nil =>
          simp [expandAt?] at h
      | cons d rest =>
          cases d with
          | left =>
              cases hl : l.expandAt? rest with
              | none =>
                  simp [expandAt?, hl] at h
              | some l' =>
                  simp [expandAt?, hl] at h
                  cases h
                  have hl' := ihl hl
                  simp [internal, hl']
                  omega
          | right =>
              cases hr : r.expandAt? rest with
              | none =>
                  simp [expandAt?, hr] at h
              | some r' =>
                  simp [expandAt?, hr] at h
                  cases h
                  have hr' := ihr hr
                  simp [internal, hr']
                  omega

theorem expandAt?_leaves :
    ∀ {T : CTree} {a : Address} {U : CTree},
      T.expandAt? a = some U →
        U.leaves = T.leaves + 1 := by
  intro T a U h
  have hi := expandAt?_internal h
  calc
    U.leaves = U.internal + 1 := leaves_eq_internal_add_one U
    _ = (T.internal + 1) + 1 := by rw [hi]
    _ = T.leaves + 1 := by
      rw [leaves_eq_internal_add_one T]

end CTree
end Catalan
end Folder
