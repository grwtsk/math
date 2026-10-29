-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SupportId.Variant7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SupportId.Variant7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/FromPNTPlus/Mathlib/Algebra/Notation/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Ported from https://github.com/AlexKontorovich/PrimeNumberTheoremAnd
at commit 10e1218932db7e2432aa5881d750acb819e91f19, file
PrimeNumberTheoremAnd/Mathlib/Algebra/Notation/Support.lean.
Copyright the PrimeNumberTheoremAnd contributors; Apache License 2.0
(http://www.apache.org/licenses/LICENSE-2.0).
Local modifications: removed the Architect blueprint
tooling (import Architect, blueprint_comment blocks, @[blueprint ...] attributes),
redirected intra-project imports to Zeta23.FromPNTPlus.*.  Mathematical content unchanged.
Modified 2026 by Anthropic PBC.
-/
import Mathlib.Algebra.Notation.Support


namespace GRWTSK.Algebra.UniversalAlgebra.SupportId.Variant7ed4ffe0a99975eb901063cf90f338dd8376d0abde5fdac95983fea1f93be1fb

namespace Function

variable {α : Type*} [Zero α]

theorem support_id : support (id : α → α) = {0}ᶜ := by
  ext; simp

theorem support_id' {α : Type*} [Zero α] : support (fun x : α ↦ x) = {0}ᶜ :=
  support_id

end Function
