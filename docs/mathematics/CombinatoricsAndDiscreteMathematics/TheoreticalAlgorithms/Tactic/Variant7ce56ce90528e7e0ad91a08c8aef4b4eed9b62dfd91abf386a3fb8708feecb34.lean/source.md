# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tactic.Variant7ce56ce90528e7e0ad91a08c8aef4b4eed9b62dfd91abf386a3fb8708feecb34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b6b0e8573dea21d31fd7204441798a7621c93f4` · SHA-256 `7042bb211909c73bff22eccf11732ab5cb0cfa9f2ac2e74f46d9c81d5bba7e58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NoTestableInstance.Variantc09ae90ce88c7356d65bd5e1347b1e2e7745008fc4cf4cd2c09af1e36f0b85c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c09ae90ce88c7356d65bd5e1347b1e2e7745008fc4cf4cd2c09af1e36f0b85c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NoTestableInstance.Variantc09ae90ce88c7356d65bd5e1347b1e2e7745008fc4cf4cd2c09af1e36f0b85c0","mathematical_subject":"Computation.DataStructures","original_sha256":"c09ae90ce88c7356d65bd5e1347b1e2e7745008fc4cf4cd2c09af1e36f0b85c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Plausible

/-!
Demonstrate that Plausible can handle the basic types from core:
- Sum
- Sigma
- Unit
- Prod
- Bool
- Nat
- Fin
- UIntX
- BitVec
- Char
- Option
- List
- String
- Array
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NoTestableInstance.Variantc09ae90ce88c7356d65bd5e1347b1e2e7745008fc4cf4cd2c09af1e36f0b85c0

/-- error: Found a counter-example! -/
#guard_msgs in
example (a b : Sum Nat Nat) : a = b := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a b : Σ n : Nat, Nat) : a.fst = b.snd := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a b : Unit) : a ≠ b := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (x y : Nat × Unit) : x = y := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a b : Bool) : a = b :=  by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a b c : Nat) : a + (b - c) = (a + b) - c := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : Fin (n + 1)) : a + 1 > a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : BitVec n) : a + 1 > a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : UInt8) : a - 1 < a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : UInt16) : a - 1 < a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : UInt32) : a - 1 < a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : UInt64) : a - 1 < a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : USize) : a - 1 < a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : Char) : a ≠ a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (a : Option Char) : a ≠ a := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (xs ys : List Nat) : xs.length = ys.length → xs = ys := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (xs ys : String) : xs.length = ys.length → xs = ys := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (xs ys : Array Nat) : xs.size = ys.size → xs = ys := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
example (xs : List Int) (f : Int → Int) : xs.map f = xs := by
  plausible (config := {quiet := true})

/--
info: Unable to find a counter-example
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (a : Sum Nat Nat) : a = a := by
  plausible

/--
warning: Gave up after failing to generate values that fulfill the preconditions 100 times.
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (a b : Sum Nat Nat) : a ≠ a → a = b := by
  plausible (config := {numInst := 100})

-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/slim_check.20giving.20wrong.20counterexamples.3F/near/420008365
open Nat in
/--
info: Unable to find a counter-example
---
warning: declaration uses `sorry`
-/
#guard_msgs in
theorem testBit_pred :
    testBit (pred x) i = (decide (0 < x) &&
      (Bool.xor ((List.range i).all fun j => ! testBit x j) (testBit x i))) := by
  plausible

/-- error: Found a counter-example! -/
#guard_msgs in
theorem ulift_nat (f : ULift.{1} Nat) : f = ⟨0⟩ := by
  plausible (config := {quiet := true})

/-- error: Found a counter-example! -/
#guard_msgs in
theorem type_u (α : Type u) (l : List α) : l = l ++ l := by
  plausible (config := {quiet := true})

-- https://github.com/leanprover-community/plausible/issues/15
/--
info: Unable to find a counter-example
---
warning: declaration uses `sorry`
-/
#guard_msgs in
theorem true_example_with_guard (a : Nat) (ha : 4 ≤ a) : a = a := by
  plausible

private structure NoTestableInstance where
  x : Nat

/--
error: Failed to create a `testable` instance for `∀ (a : NoTestableInstance), a.x = 0`.
What to do:
1. make sure that the types you are using have `Plausible.SampleableExt` instances
 (you can use `#sample my_type` if you are unsure);
2. make sure that the relations and predicates that your proposition use are decidable;
3. if your hypothesis is big consider increasing `set_option synthInstance.maxSize` to a
    ⏎
  higher power of two
    ⏎
4. make sure that instances of `Plausible.Testable` exist that, when combined,
  apply to your decorated proposition:
```
Plausible.NamedBinder "a" (∀ (a : NoTestableInstance), a.x = 0)
```

Use `set_option trace.Meta.synthInstance true` to understand what instances are missing.

Try this:
set_option trace.Meta.synthInstance true
#synth Plausible.Testable (Plausible.NamedBinder "a" (∀ (a : NoTestableInstance), a.x = 0))
-/
#guard_msgs in
example (a : NoTestableInstance) : a.x = 0 := by
  plausible

/-- warning: declaration uses `sorry` -/
#guard_msgs in
example (a : NoTestableInstance) : a.x = 0 := by
  plausible (config := { sorryIfNoTestable := true })
````
