# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantd65dc42592278333b7ed333f309be13d1d61569b3ba9cb40fd55bafb10268138

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c77a93765a9ffd3787df14d7abb16c9e602cec2` · SHA-256 `ee4a1892dea5029fcad10c7c7fc22547cc3fe7a086832c5ecf8b271a20f04766`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqueezeScope.Variantfda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SqueezeScope.Variantfda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/.lake/packages/batteries/BatteriesTest/simp_trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.SqueezeScope

-- undo changes to simp set after test was written

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqueezeScope.Variantfda33ab6a570eba5336866bc1efba03613ed6668223d479c4e12fbd8d63ddadc

attribute [-simp] Nat.add_left_cancel_iff Nat.add_right_cancel_iff

set_option linter.missingDocs false

/-- info: Try this: simp only [Nat.add_comm] -/
#guard_msgs in
example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
/-- info: Try this: dsimp only [Nat.reduceAdd] -/
#guard_msgs in
example : 1 + 1 = 2 := by dsimp?

@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

/--
info: Try this: simp only [foo, bar]
---
info: Try this: simp only [foo, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

/-- info: Try this: simp only [foo, bar, baz] -/
#guard_msgs in
example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"
```
