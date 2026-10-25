# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecateTo.Variant68e53eea1888b025c9332c5231700d09695fbb8ea19d934dee8821ecc3dec552

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7218aaba80be60cac4beb0a161ff5fce13dcec91` · SHA-256 `fb6810e7a3d14408e542dae32ca7aa1eaa8b30ce9c3d092bcb9329a173496b41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
