# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variant2a701bfac62a069a1d2b0b888405e0b5926a1fb7a28737e5b5791409304e5828

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bf24273e2e30702128e278ab645bf3a33cfa911` · SHA-256 `3e2df58f2fa10a8a536aaf997793328abe786595f60d597c28c666753352449e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant4337d2927b4df1ad45241dd3a072285e0a8fdc7bb362857c0c81a98f9235d0ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4337d2927b4df1ad45241dd3a072285e0a8fdc7bb362857c0c81a98f9235d0ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant4337d2927b4df1ad45241dd3a072285e0a8fdc7bb362857c0c81a98f9235d0ed","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4337d2927b4df1ad45241dd3a072285e0a8fdc7bb362857c0c81a98f9235d0ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Change
import Std.Tactic.GuardExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant4337d2927b4df1ad45241dd3a072285e0a8fdc7bb362857c0c81a98f9235d0ed

set_option pp.unicode.fun true

set_option autoImplicit true
example : n + 2 = m := by
  change n + 1 + 1 = _
  guard_target =ₛ n + 1 + 1 = m
  sorry

example (h : n + 2 = m) : False := by
  change _ + 1 = _ at h
  guard_hyp h :ₛ n + 1 + 1 = m
  sorry

example : n + 2 = m := by
  fail_if_success change true
  fail_if_success change _ + 3 = _
  fail_if_success change _ * _ = _
  change (_ : Nat) + _ = _
  sorry

-- `change ... at ...` allows placeholders to mean different things at different hypotheses
example (h : n + 3 = m) (h' : n + 2 = m) : False := by
  change _ + 1 = _ at h h'
  guard_hyp h :ₛ n + 2 + 1 = m
  guard_hyp h' :ₛ n + 1 + 1 = m
  sorry

-- `change ... at ...` preserves dependencies
example (p : n + 2 = m → Type) (h : n + 2 = m) (x : p h) : false := by
  change _ + 1 = _ at h
  guard_hyp x :ₛ p h
  sorry

example : Nat := by
  fail_if_success change Type 1
  sorry

def foo (a b c : Nat) := if a < b then c else 0

example : foo 1 2 3 = 3 := by
  change (if _ then _ else _) = _
  change ite _ _ _ = _
  change (if _ < _ then _ else _) = _
  change _ = (if true then 3 else 4)
  rfl

example (h : foo 1 2 3 = 4) : True := by
  change ite _ _ _ = _ at h
  guard_hyp h :ₛ ite (1 < 2) 3 0 = 4
  trivial

example (h : foo 1 2 3 = 4) : True := by
  change (if _ then _ else _) = _ at h
  guard_hyp h : (if 1 < 2 then 3 else 0) = 4
  trivial

example (α : Type) [LT α] (x : α) (h : x < x) : x < id x := by
  change _ < _ -- can defer LT typeclass lookup, just like `show`
  change _ < _ at h -- can defer LT typeclass lookup at h too
  guard_target =ₛ x < id x
  change _ < x
  guard_target =ₛ x < x
  exact h

example (x y : Nat) (h : x = y) : True := by
  change (if 1 < 2 then x else ?_) = y at h
  rotate_left
  · exact 4
  guard_hyp h : (if 1 < 2 then x else 4) = y
  · trivial

example : let x := 22; let y : Nat := x; let z : Fin (y + 1) := 0; z.1 < y + 1 := by
  intro x y z -- `z` was erroneously marked as unused
  change _ at y
  exact z.2
/--
info: Try this: change 0 = 1
---
info: Try this: change (fun x ↦ x) 0 = 1
---
info: Try this: change (fun x ↦ x) 0 = 1
---
error: The term
  1 = 0
is not defeq to the goal:
  (fun x ↦ x) 0 = 1
-/
#guard_msgs in
example : (fun x : Nat => x) 0 = 1 := by
  change? 0 = _  -- change 0 = 1
  change?        -- change (fun x ↦ x) 0 = 1
  change? _      -- change (fun x ↦ x) 0 = 1
  change? 1 = 0
    -- The term
    --   1 = 0
    -- is not defeq to the goal:
    --   (fun x ↦ x) 0 = 1
```
