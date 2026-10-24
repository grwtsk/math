-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NonDecid.Variantfe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.NonDecid.Variantfe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9","mathematical_subject":"Logic.Foundations","original_sha256":"fe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/by_contra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NonDecid.Variantfe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9

private def nonDecid (P : Prop) (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

private def decid (P : Prop) [Decidable P] (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

example (P : Prop) [Decidable P] : nonDecid P = decid P := by
  delta nonDecid decid
  guard_target =
    (fun x : P => Classical.byContradiction fun h => h x) =
    (fun x : P => Decidable.byContradiction fun h => h x)
  rfl

example (P : Prop) : P → P := by
  by_contra
  guard_hyp ‹_› : ¬(P → P)
  exact ‹¬(P → P)› id
