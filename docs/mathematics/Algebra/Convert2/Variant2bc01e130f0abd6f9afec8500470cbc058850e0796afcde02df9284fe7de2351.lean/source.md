# Complete source: GRWTSK.Algebra.Convert2.Variant2bc01e130f0abd6f9afec8500470cbc058850e0796afcde02df9284fe7de2351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b6b2a9164d40c290dc5fddde9a691ebcf0f6bce` · SHA-256 `7ff484a4e3b14a24420eee1f44cfd8092498ee4a5b12a46afeb80a0723805f42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.List.Variantd32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.List.Variantd32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/convert2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Ring.List
import Mathlib.Algebra.Ring.Nat
import Mathlib.Tactic.Convert


namespace GRWTSK.Algebra.List.Variantd32ffc34e85cec4aa5208acb49cbf1586a29a76725061c88c9c20bec0791fbba

set_option linter.unreachableTactic false

-- Prior to https://github.com/leanprover-community/mathlib4/pull/7945 this failed with `(kernel) declaration has metavariables '_example'`.
/--
error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
use `set_option diagnostics true` to get diagnostic information
-/
#guard_msgs (error) in
example (_h₁ : ((List.range 128).map (fun _ => 0)).sum = 0) : 0 ∣ 1 := by
  apply Nat.dvd_of_mul_dvd_mul_left Nat.zero_lt_one
  convert Nat.dvd_mul_left 0 1
```
