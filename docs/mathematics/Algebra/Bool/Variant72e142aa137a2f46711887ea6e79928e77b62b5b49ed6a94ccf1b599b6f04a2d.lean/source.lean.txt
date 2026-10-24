-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Algebra.Variant3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Algebra.Variant3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Algebra/Bool.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Algebra


namespace GRWTSK.Algebra.Algebra.Variant3c6b718a563ef9ec74bacffbad1d5a21ce22376e5f6ca06832388ef94760e2ae

namespace Boolean

universe u

instance instBoolAlgebra : Algebra Bool where
  join := fun a b => a || b
  meet := fun a b => a && b
  compl := fun a => !a
  bot := false
  top := true

  bot_ne_top := by
    intro h
    cases h

  join_bot := by
    intro a
    cases a <;> rfl

  meet_top := by
    intro a
    cases a <;> rfl

  join_comm := by
    intro a b
    cases a <;> cases b <;> rfl

  meet_comm := by
    intro a b
    cases a <;> cases b <;> rfl

  join_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  meet_assoc := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  join_meet_distrib := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  meet_join_distrib := by
    intro a b c
    cases a <;> cases b <;> cases c <;> rfl

  join_compl := by
    intro a
    cases a <;> rfl

  meet_compl := by
    intro a
    cases a <;> rfl

end Boolean
