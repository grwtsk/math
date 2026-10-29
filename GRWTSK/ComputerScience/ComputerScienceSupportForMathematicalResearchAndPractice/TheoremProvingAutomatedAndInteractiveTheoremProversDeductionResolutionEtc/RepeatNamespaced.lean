-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variante36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variante36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/repeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Basic
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variante36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a

open Lean Elab Tactic Meta

elab "foo" : tactic => liftMetaTactic fun g => do
  g.assign (← mkFreshExprMVar (← g.getType))
  throwError ""

#guard_msgs in
example : True := by
  repeat' foo
  trivial
