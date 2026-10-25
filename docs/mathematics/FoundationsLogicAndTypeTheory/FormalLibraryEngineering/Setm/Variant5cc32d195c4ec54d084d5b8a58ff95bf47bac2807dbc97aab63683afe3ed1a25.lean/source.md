# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Setm.Variant5cc32d195c4ec54d084d5b8a58ff95bf47bac2807dbc97aab63683afe3ed1a25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b531bcb6742e8dc36d64f37d6e8eb7c3d260c16a` · SHA-256 `6a1796b9b357e6c5f7a2b20494556a06d19579d68f699c7d7c1bea2ba677c2e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AOrB.Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AOrB.Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/Setm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lua Viana Reis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lua Viana Reis, Gareth Ma
-/
module

import Mathlib.Tactic.Setm
import Mathlib.Tactic.FailIfNoProgress

/- Basic usage. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AOrB.Variantfe62611232e7c0625a543b2ed98e080f9c1b6ba0d5abd528247fecc4ab46ef8d

example : 1 + 2 = 3 := by
  setm ?a + ?b = _
  guard_target =ₛ a + b = 3
  guard_hyp a :=ₛ 1
  guard_hyp b :=ₛ 2
  trivial

-- Docstring examples:
/--
trace: a : Nat := 2 ^ 10 - 1
⊢ ∃ x, x = a
-/
#guard_msgs in
example : ∃ n, n = 2 ^ 10 - 1 := by
  setm ∃ _, _ = ?a
  trace_state
  exact .intro a rfl

/--
trace: a : Nat := 2
h : 1 + a = 3
⊢ ∃ n, n = 2
-/
#guard_msgs in
example (h : 1 + 2 = 3) : ∃ n, n = 2 := by
  setm _ + ?a = _ using h
  trace_state
  exact .intro a rfl

/--
trace: a : Nat := 2
h₁ : 1 + a = 3
h₂ : a + a = 4
⊢ ∃ n, n = 2
-/
#guard_msgs in
example (h₁ : 1 + 2 = 3) (h₂ : 2 + 2 = 4) : ∃ n, n = 2 := by
  setm _ + ?a = _ using h₁ at h₂
  trace_state
  exact .intro a rfl

/- We don't replace identical expressions unless the pattern requires it. -/
example : 1 + 1 = 2 := by
  setm ?a + _ = _
  guard_hyp a :=ₛ 1
  guard_target =ₛ a + 1 = 2
  trivial

/- However `at ⊢` will replace the identical expressions. -/
example : 1 + 1 = 2 := by
  setm ?a + _ = _ at ⊢
  guard_hyp a :=ₛ 1
  guard_target =ₛ a + a = 2
  trivial

/- Assignment of a constant under a binder. -/
example : (fun x ↦ x + 2) = (fun y ↦ y + 1 + 1) := by
  setm (fun x ↦ x + ?b) = _
  guard_target =ₛ (fun x ↦ x + b) = (fun y ↦ y + 1 + 1)
  guard_hyp b :=ₛ 2
  trivial

/- If the name conflicts with a binder, the bound name is renamed. -/
example : id = fun n : Nat ↦ n + 0 := by
  setm _ = fun n ↦ n + ?n
  guard_hyp n :=ₛ 0
  guard_target =ₛ id = fun n_1 ↦ n_1 + n
  trivial

/- Usage with `using` and `at` keywords -/
set_option linter.unusedVariables false in
example (h1 : 1 + 1 = 5) (h2 : 1 + 3 = 5) (h3 : 1 + 2 = 5) : True := by
  setm ?a + _ = ?b using h1 at h1 h2 h3
  guard_hyp a :=ₛ 1
  guard_hyp b :=ₛ 5
  guard_hyp h1 :ₛ a + a = b
  guard_hyp h2 :ₛ a + 3 = b
  guard_hyp h3 :ₛ a + 2 = b
  trivial

/- `at *` replaces all occurrences of the matched expressions, ignoring hypotheses that don't
include any of them. -/
example {m n : Nat} (h₁ : 1 = 1) (hmn : m = n) (hn : n = 1) : m = 1 := by
  setm ?one = 1 using h₁ at *
  guard_hyp one :=ₛ 1
  guard_hyp h₁ :ₛ one = one
  guard_hyp hmn :ₛ m = n
  guard_hyp hn :ₛ n = one
  guard_target =ₛ m = one
  rw [hmn, hn]

/- Conflict with a previously defined local declaration name. (The previous one gets ignored.) -/
example : 1 + 2 = 3 := by
  let a := "foo"
  setm ?a + ?b = _
  guard_target =ₛ a + b = 3
  guard_hyp a :=ₛ 1
  guard_hyp b :=ₛ 2
  trivial

/--
error: Tactic `setm` failed: Pattern
  ?_ = ?_
is not definitionally equal to the target
  True

⊢ True
-/
#guard_msgs in
example : True := by
  setm _ = _

/--
error: Tactic `setm` failed: Pattern
  a + a = 3
is not definitionally equal to the target
  1 + 2 = 3

⊢ 1 + 2 = 3
-/
#guard_msgs in
example : 1 + 2 = 3 := by
  setm ?a + ?a = 3

/- Expressions containing bound variables cannot be matched against. -/
/--
error: Tactic `setm` failed: Pattern
  (fun n => a) = ?_
is not definitionally equal to the target
  id = fun n => n

⊢ id = fun n => n
-/
#guard_msgs in
example : @id Nat = fun n ↦ n := by
  setm (fun n ↦ ?a) = _

/- Variables introduced by binders with the same identifiers as holes don't confuse the tactic. -/
/--
trace: n : Prop := True
⊢ ∃ n_1, n
-/
#guard_msgs in
example : ∃ _n : Nat, True := by
  setm ∃ n, ?n
  guard_hyp n :=ₛ True
  guard_target =ₛ ∃ n_1 : Nat, n
  trace_state
  exact .intro 0 .intro

variable {a b c : Nat}

/- Test reusing named holes -/
example (h : b + a = c) : a + b = c := by
  /- setm 1-/
  setm ?A + ?B = _
  guard_target =ₛ A + B = c
  guard_hyp A :=ₛ a
  guard_hyp B :=ₛ b
  /- clean up -/
  unfold A B
  clear A B
  /- setm 2 -/
  rewrite [Nat.add_comm]
  setm ?A + ?B = _ at h
  guard_hyp h :ₛ A + B = c
  guard_hyp A :=ₛ b
  guard_hyp B :=ₛ a
  exact h

/- Test reducible + instances transparency -/

def NotQuiteNat : Type := Nat

instance : HAdd NotQuiteNat NotQuiteNat NotQuiteNat := inferInstanceAs (HAdd Nat Nat Nat)

example {a b c : NotQuiteNat} (h : a + b = c) : True := by
  /- setm 1-/
  have A : True := trivial
  setm ?A + ?B = _ using h
  guard_hyp h :ₛ A + B = c
  guard_hyp A := a
  guard_hyp B := b
  trivial

/- It does not skip type-checking the inside of a subsingleton in the pattern. -/
/--
error: Type mismatch
  true
has type
  Bool
but is expected to have type
  Unit
-/
#guard_msgs in
example (h : 4 = 3) : () = () := by
  setm (?_ : Unit) = (true : Unit)
  rfl

/--
error: Tactic `setm` failed: Pattern
  @Eq Nat (A + B) ?_
is not definitionally equal to the target
  @Eq NotQuiteNat (a + b) c

a✝ b✝ c✝ : Nat
a b c : NotQuiteNat
h : a + b = c
⊢ True
-/
#guard_msgs in
example {a b c : NotQuiteNat} (h : a + b = c) : True := by
  /- setm 1-/
  setm (?A : Nat) + ?B = _ using h

/- Test conflicts with goal metavariables (thanks to Niklas Halonen for this example). -/

inductive AOrB where | A | B

example (h : AOrB) : 1 + 2 = 3 := by
  cases h
  · setm ?A + ?B = _
    guard_target =ₛ A + B = 3
    guard_hyp A :=ₛ 1
    guard_hyp B :=ₛ 2
    trivial
  trivial

/- Test for `.synthetic` metavariables created during elaboration of the pattern that should be
synthesized "later". Here it is the hypothesis `h` that `i < l.length`. -/
example {i : Nat} {l : List Nat} (h) : l[i] = l[i] := by
  setm l[?j] = _
  trivial

/- The `at` syntax also supports places that `rw` would fail due to `motive is not type correct`.
  -/
example {i : Nat} {l : List Nat} (h) (heq : i = 2) : l[i] = l[i] := by
  setm ?j = 2 using heq at ⊢
  guard_hyp j :=ₛ i
  guard_hyp heq :ₛ j = 2
  guard_target =ₛ l[j] = l[j]
  trivial

/- A pattern with no holes fails. -/
/--
warning: No holes (`?n`, `?_`) were present in the `setm` pattern. This means `setm` has no effect.
---
error: unsolved goals
a b c : Nat
⊢ True
-/
#guard_msgs in
example : True := by
  setm _

/- If different holes resolve to identical expressions, occurrences of the expression will be
replaced by the first hole in alphabetical order. -/
example (h : 1 + 1 = 2) : 1 + 1 = 2 := by
  setm ?b + ?a = _ at h
  guard_hyp a :=ₛ 1
  guard_hyp b :=ₛ 1
  guard_hyp h :ₛ a + a = 2
  guard_target =ₛ b + a = 2
  exact h

/- The setm tactic should unify as much as possible with the target expression, even if some
arguments elaborate as `.syntheticOpaque` metavariables.

Below we test that the implicit `h` is assigned instead of failing with a defeq error. -/
#guard_msgs in
example {i : Nat} {l : List Nat} (h) : l[i] = l[i] := by
  setm l[i] = ?_
  trivial

section withoutProofIrrelevance

/-! Demonstrate that disabling proof irrelevance can be useful for `setm` --/

/- This test fails due to the current interaction of metavariable assigment and proof irrelevance,
and perhaps is due to a bug.

See https://github.com/leanprover/lean4/issues/9612 -/
/--
error: `?a` could not be assigned
---
error: unsolved goals
a b c : Nat
x : True
k : True → Type
⊢ k x
-/
#guard_msgs in
example (x : True) (k : True → Type) : k x := by
  setm k ?a

end withoutProofIrrelevance
```
