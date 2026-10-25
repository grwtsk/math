-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulEasyDeprecated.Varianteb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MulEasyDeprecated.Varianteb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DeprecateTo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DeprecateTo
import Mathlib.Tactic.ToAdditive


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MulEasyDeprecated.Varianteb190641606c3022aeac929f35809929f67099bc059efc5939187e577dfc80c6

/--
info: * Pairings:
#[(new_name_mul, mul_easy_deprecated), (new_name_add, add_easy_deprecated)]

Try this:
/-- I also have a doc-string -/
@[to_additive "With its additive doc-string"]
theorem new_name_mul : True :=
  .intro

@[deprecated (since := "YYYY-MM-DD")]
alias mul_easy_deprecated := new_name_mul

@[deprecated (since := "YYYY-MM-DD")]
alias add_easy_deprecated := new_name_add
-/
#guard_msgs in
deprecate to new_name_mul new_name_add "YYYY-MM-DD"
/-- I also have a doc-string -/
@[to_additive "With its additive doc-string"]
theorem mul_easy_deprecated : True := .intro
