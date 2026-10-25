# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertExists.Variante910d952a97bd5cbd716be3c87aaca2ddf5e91008ea22e723350b7185362a0a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1dbee276b4c7e072179d785bbb959211321fdec` · SHA-256 `508761ab7d40601fe3a096427a62e62f50ff6006aee90037afb3deaab702e696`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nats.Variant2296f7bcd86b69fca16d6c9e52f9d44289b6b1b286e1c4471334e72e4e7ba143","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2296f7bcd86b69fca16d6c9e52f9d44289b6b1b286e1c4471334e72e4e7ba143","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Nats.Variant2296f7bcd86b69fca16d6c9e52f9d44289b6b1b286e1c4471334e72e4e7ba143","mathematical_subject":"Foundations.Unclassified","original_sha256":"2296f7bcd86b69fca16d6c9e52f9d44289b6b1b286e1c4471334e72e4e7ba143","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/AssertExists.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Util.AssertExists


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nats.Variant2296f7bcd86b69fca16d6c9e52f9d44289b6b1b286e1c4471334e72e4e7ba143

/-- info: No assertions made. -/
#guard_msgs in
#check_assertions

#check_assertions!

assert_not_exists Nats

theorem Nats : True := .intro

/--
info:
✅️ 'Nats' (declaration) asserted in 'MathlibTest.AssertExists'.
---
✅️ means the declaration or import exists.
❌️ means the declaration or import does not exist.
-/
#guard_msgs in
#check_assertions

#check_assertions!

/--
warning: the module 'Lean.Elab.Command' is (transitively) imported via
Lean.Elab.Command,
  which is imported by Mathlib.Tactic.Linter.DirectoryDependency,
  which is imported by Mathlib.Tactic.Linter.Header,
  which is imported by Mathlib.Tactic.Linter.DeprecatedSyntaxLinter,
  which is imported by Mathlib.Init,
  which is imported by Mathlib.Util.AssertExistsExt,
  which is imported by Mathlib.Util.AssertExists,
  which is imported by this file.
-/
#guard_msgs in
assert_not_imported
  Mathlib.Tactic.Common
  Lean.Elab.Command
  I_do_not_exist

/--
warning:
✅️ 'Nats' (declaration) asserted in 'MathlibTest.AssertExists'.
❌️ 'I_do_not_exist' (module) asserted in 'MathlibTest.AssertExists'.
❌️ 'Mathlib.Tactic.Common' (module) asserted in 'MathlibTest.AssertExists'.
---
✅️ means the declaration or import exists.
❌️ means the declaration or import does not exist.
-/
#guard_msgs in
#check_assertions

/--
warning:
❌️ 'I_do_not_exist' (module) asserted in 'MathlibTest.AssertExists'.
❌️ 'Mathlib.Tactic.Common' (module) asserted in 'MathlibTest.AssertExists'.
---
✅️ means the declaration or import exists.
❌️ means the declaration or import does not exist.
-/
#guard_msgs in
#check_assertions!
/--
error: Declaration commandAssert_not_imported_ is not allowed to be imported by this file.
It is defined in Mathlib.Util.AssertExists,
  which is imported by this file.

These invariants are maintained by `assert_not_exists` statements, and exist in order to ensure that "complicated" parts of the library are not accidentally introduced as dependencies of "simple" parts of the library.
---
error: Declaration commandAssert_not_exists_ is not allowed to be imported by this file.
It is defined in Mathlib.Util.AssertExists,
  which is imported by this file.

These invariants are maintained by `assert_not_exists` statements, and exist in order to ensure that "complicated" parts of the library are not accidentally introduced as dependencies of "simple" parts of the library.
-/
#guard_msgs in
assert_not_exists
  commandAssert_not_imported_
  Rat
  commandAssert_not_exists_
  I_do_not_exist
```
