-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModule.Variantfc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeprecatedModule.Variantfc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DeprecatedModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.DeprecatedModule
import Mathlib.Tactic.Linter.DocPrime
import Mathlib.Tactic.Linter.DocString


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModule.Variantfc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015

deprecated_module (since := "2025-04-10")

/--
info: Deprecated modules

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with no message
-/
#guard_msgs in
#show_deprecated_modules

-- Deprecating the current module is possible and allows to add more deprecation information.
deprecated_module "We can also give more details about the deprecation" (since := "2025-04-10")

/--
info: Deprecated modules

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with message 'We can also give more details about the deprecation'

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with no message
-/
#guard_msgs in
#show_deprecated_modules

/- Commenting out the following test, since it does not work in CI
besides, it suggests the current date, so it should *not* be uncommented
until that is also fixed!
/-- error: Invalid date: the expected format is "2025-04-14" -/
#guard_msgs in
deprecated_module "Text" (since := "2025-02-31")
-/

/--
info: Deprecated modules

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with message 'We can also give more details about the deprecation'

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with no message
-/
#guard_msgs in
#show_deprecated_modules
