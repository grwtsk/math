# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variantfb902e20022155049c28eb5d5722516b814e6a6aee5e04e104ac241ae4a38cc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5172d7c95d7189c639d5e88925b97aafcb3a77ed` · SHA-256 `1c7578d24e07459222389625accee7cf53e4e4d3fd29810c6fddca1a3eb32dbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TypeCheck.Variant6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/TypeCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.TypeCheck


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a

set_option linter.unusedTactic false

/-- A term where `inferType` returns `Prop`, but which does not type check. -/
elab "wrong" : term =>
  return Lean.mkApp2 (.const ``id [.zero]) (.sort .zero) (.app (.sort .zero) (.sort .zero))

/--
info: Type
---
info: Bool
---
info: Nat
---
info: Nat
---
info: Prop
---
info: Prop
---
info: Nat → Nat
---
info: List Nat
-/
#guard_msgs in
example : True := by
  type_check Nat -- Type
  type_check Bool.true -- Bool
  type_check nat_lit 1 -- Nat
  type_check (1 : Nat) -- Nat
  type_check (True :) -- Prop
  type_check ∀ x y : Nat, x = y -- Prop
  type_check fun x : Nat => 2 * x + 1 -- Nat -> Nat
  type_check [1]
  fail_if_success type_check wrong
  trivial
```
