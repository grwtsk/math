# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantd8c5b4e333402d663095a3bbb0c24750376312edd42983a201756a3b3547bf01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c710ff9202971610d9e916b595ad43c0d483dda` · SHA-256 `49035c690ddd8da816571abd4e13542a13825f8c6cb821ec9ffdbca359416d79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyId.Variant22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MyId.Variant22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/simp_trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.SqueezeScope

-- undo changes to simp set after test was written

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyId.Variant22d25e3259fc848aa2e141db54bb510804f5d943e03a528548e5a21c2f0afbf6

attribute [-simp] Nat.add_left_cancel_iff Nat.add_right_cancel_iff

set_option linter.missingDocs false

/--
info: Try this:
  [apply] simp only [Nat.add_comm]
-/
#guard_msgs in
example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
/--
info: Try this:
  [apply] dsimp only [Nat.reduceAdd]
-/
#guard_msgs in
example : 1 + 1 = 2 := by dsimp?

-- Helper definitions for squeeze_scope tests
@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

@[simp] def qux : Bool → Nat → Nat
  | true, z => bar z
  | false, z => baz z

def myId (x : Nat) := x
def myId2 (x : Nat) := x

def myPair : Bool → Nat → Nat
  | true, x => myId x
  | false, x => myId2 x

-- Without squeeze_scope: multiple printouts
/--
info: Try this:
  [apply] simp only [foo, bar]
---
info: Try this:
  [apply] simp only [foo, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

-- With squeeze_scope: single aggregated printout
/--
info: Try this:
  [apply] simp only [foo, bar, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"

-- squeeze_scope works with simp?
/--
info: Try this:
  [apply] simp only [foo, bar, baz]
-/
#guard_msgs in
example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp?

-- squeeze_scope works with simp_all?
/--
info: Try this:
  [apply] simp_all only [qux, baz, bar]
-/
#guard_msgs in
example : qux b y = 1 + y := by
  squeeze_scope
    cases b <;> simp_all?

-- squeeze_scope works with dsimp?
/--
info: Try this:
  [apply] dsimp only [myPair, myId2, myId]
-/
#guard_msgs in
example : myPair b x = x := by
  squeeze_scope
    cases b <;> dsimp? [myPair, myId, myId2]
```
