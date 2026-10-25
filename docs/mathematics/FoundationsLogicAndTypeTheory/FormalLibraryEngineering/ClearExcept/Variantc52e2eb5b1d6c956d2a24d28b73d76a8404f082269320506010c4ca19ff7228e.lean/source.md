# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExcept.Variantc52e2eb5b1d6c956d2a24d28b73d76a8404f082269320506010c4ca19ff7228e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8082d05ae799ba13e7ecde93544a48fb1bc50565` · SHA-256 `49746c4a20d1760b3aa4e3e6ff6cfca90b18df8c395f5c5fe04f400d1f934676`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExcept.Variant8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ClearExcept.Variant8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ClearExcept.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ClearExcept


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExcept.Variant8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467

set_option linter.unusedTactic false
set_option linter.unusedVariables false

-- Most basic test
example (_delete_this : Nat) (dont_delete_this : Int) : Nat := by
  clear * - dont_delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clearExcept does not delete class instances
example [dont_delete_this : Inhabited Nat] (dont_delete_this2 : Prop) : Inhabited Nat := by
  clear * - dont_delete_this2
  assumption

-- Confirms that clearExcept can clear hypotheses even when they have dependencies
example (delete_this : Nat) (_delete_this2 : delete_this = delete_this) (dont_delete_this : Int) :
    Nat := by
  clear * - dont_delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clearExcept does not clear hypotheses
-- when they have dependencies that should not be cleared
example (dont_delete_this : Nat) (dont_delete_this2 : dont_delete_this = dont_delete_this) :
    Nat := by
  clear * - dont_delete_this2
  exact dont_delete_this

-- Confirms that clearExcept can preserve multiple identifiers
example (_delete_this : Nat) (dont_delete_this : Int) (dont_delete_this2 : Int) : Nat := by
  clear * - dont_delete_this dont_delete_this2
  fail_if_success assumption
  exact dont_delete_this.toNat + dont_delete_this2.toNat
```
