# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ApplyFun.Variante4d986b97da40346905d76b182d250fba4d30a81bf39e2b3253258f44f316b7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f92607f35e6cb0798b784a6bf0dc551c115a9c4b` · SHA-256 `46b2030fc1fa89746c9c9f2cd1c78ec626551d1799a84e3c9273af3199b8b684`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TestSorry.Variant5d6ad2b1343a4191c4e0254bd4817ada861c2027de34901bf017879972bef6e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d6ad2b1343a4191c4e0254bd4817ada861c2027de34901bf017879972bef6e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.TestSorry.Variant5d6ad2b1343a4191c4e0254bd4817ada861c2027de34901bf017879972bef6e6","mathematical_subject":"Logic.Foundations","original_sha256":"5d6ad2b1343a4191c4e0254bd4817ada861c2027de34901bf017879972bef6e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/apply_fun.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Notation
import Mathlib.Tactic.Basic
import Mathlib.Tactic.ApplyFun
import Mathlib.Logic.Function.Defs
import Mathlib.Data.Matrix.ConjTranspose


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TestSorry.Variant5d6ad2b1343a4191c4e0254bd4817ada861c2027de34901bf017879972bef6e6

private axiom test_sorry : ∀ {α}, α

set_option autoImplicit true
set_option linter.unusedVariables false

open Function

example (f : ℕ → ℕ) (h : f x = f y) : x = y := by
  apply_fun f
  · guard_target = f x = f y
    assumption
  · guard_target = Injective f
    exact test_sorry

example (f : ℕ → ℕ → ℕ) (h : f 1 x = f 1 y) (hinj : ∀ n, Injective (f n)) : x = y := by
  apply_fun f ?foo
  guard_target = f ?foo x = f ?foo y
  case foo => exact 1
  · exact h
  · apply hinj

-- Uses `refine`-style rules for placeholders:
example (f : ℕ → ℕ → ℕ) : x = y := by
  fail_if_success apply_fun f _
  exact test_sorry

example (f : ℕ → ℕ → ℕ) (h : f 1 x = f 1 y) (hinj : Injective (f 1)) : x = y := by
  apply_fun f _ using hinj
  -- Solves for the hole using unification since it makes use of the `using` clause.
  guard_target = f 1 x = f 1 y
  assumption

-- A test to show a perhaps unexpected consequence of how injectivity is auto-proved:
example (f : ℕ → ℕ → ℕ) (h : f 1 x = f 1 y) (hinj : Injective (f 1)) : x = y := by
  apply_fun f _
  -- Solves for the hole using unification since `hinj` is pulled in by `assumption`.
  guard_target = f 1 x = f 1 y
  assumption

-- A test to show a perhaps unexpected consequence of how injectivity is auto-proved:
example (f : ℕ → ℕ) (h : f x = f y) (hinj : Injective f) : x = y := by
  apply_fun _
  guard_target = f x = f y
  assumption

-- Make sure named holes generate new goals for `≠`
example (f : ℕ → ℕ → ℕ) (h : f 1 x ≠ f 1 y) : x ≠ y := by
  apply_fun f ?foo
  guard_target = f ?foo x ≠ f ?foo y
  case foo => exact 1
  assumption

example (X Y Z : Type) (f : X → Y) (g : Y → Z) (H : Injective <| g ∘ f) : Injective f := by
  intros x x' h
  apply_fun g at h
  exact H h

example (x : Int) (h : x = 1) : 1 = 1 := by
  apply_fun (fun p => p) at h
  rfl

example (a b : Int) (h : a = b) : a + 1 = b + 1 := by
  -- Make sure that we infer the type of the function only after we see the hypothesis:
  apply_fun (fun n => n + 1) at h
  -- check that `h` was β-reduced
  guard_hyp h :ₛ a + 1 = b + 1
  exact h

-- Verify failure when applying a dependently typed function.
example (P : Nat → Type) (Q : (n : Nat) -> P n) (a b : Nat) (h : a = b) : True := by
  fail_if_success apply_fun Q at h
  trivial

example (f : ℕ → ℕ) (a b : ℕ) (monof : Monotone f) (h : a ≤ b) : f a ≤ f b := by
  apply_fun f at h using monof
  assumption

example (f : ℕ → ℕ) (a b : ℕ) (monof : Monotone f) (h : a ≤ b) : f a ≤ f b := by
  apply_fun f at h
  · assumption
  · assumption

example (n m : ℕ) (f : ℕ → ℕ) (h : f n ≠ f m) : n ≠ m := by
  apply_fun f
  exact h

example (n m : ℕ) (f : ℕ ≃ ℕ) (h : f n ≠ f m) : n ≠ m := by
  apply_fun f
  exact h

example (n m : ℕ) (f : ℕ → ℕ) (w : Function.Injective f) (h : f n = f m) : n = m := by
  apply_fun f
  assumption

example (n m : ℕ) (f : ℕ → ℕ) (w : Function.Injective f) (h : f n = f m) : n = m := by
  apply_fun f using w
  assumption

example (n m : ℕ) (f : ℕ → ℕ) (w : Function.Injective f ∧ true) (h : f n = f m) : n = m := by
  apply_fun f using w.1
  assumption

example (f : ℕ ≃ ℕ) (h : f x = f y) : x = y := by
  apply_fun f
  assumption

example (f : ℕ ≃ ℕ) (h : f x = f y) : x = y := by
  apply_fun f using f.injective
  assumption

example {x y : ℕ} (h : Equiv.refl ℕ x = Equiv.refl ℕ y) : x = y := by
  apply_fun Equiv.refl ℕ
  assumption

example (a b : List α) (P : a = b) : True := by
  apply_fun List.length at P
  trivial

example (a b : ℕ) (h : a ≤ b) : a + 1 ≤ b + 1 := by
  apply_fun (· + 1 : ℕ → ℕ) at h -- TODO shouldn't need type ascription here
  · exact h
  · exact Monotone.add_const monotone_id 1

example (a b : ℕ) (h : a < b) : a + 1 < b + 1 := by
  apply_fun (· + 1 : ℕ → ℕ) at h
  · exact h
  · exact StrictMono.add_const strictMono_id 1

example (a b : ℕ) (h : a < b) : a + 1 < b + 1 := by
  apply_fun (· + 1 : ℕ → ℕ) at h using StrictMono.add_const strictMono_id 1
  · exact h

example (a b : ℕ) (h : a ≠ b) : a + 1 ≠ b + 1 := by
  apply_fun (· + 1 : ℕ → ℕ) at h
  · exact h
  · exact add_left_injective 1

-- TODO
-- -- monotonicity will be proved by `mono` in the next example
-- example (a b : ℕ) (h : a ≤ b) : a + 1 ≤ b + 1 := by
--   apply_fun (fun n ↦ n+1) at h
--   exact h

example {n : Type} [Fintype n] {X : Type} [Semiring X]
  (f : Matrix n n X → Matrix n n X) (A B : Matrix n n X) (h : A * B = 0) : f (A * B) = f 0 := by
  apply_fun f at h
  -- check that our β-reduction didn't mess things up:
  -- (previously `apply_fun` was producing `f (A.mul B) = f 0`)
  guard_hyp h :ₛ f (A * B) = f 0
  exact h

-- TODO
-- -- Verify that `apply_fun` works with `Fin.castSucc`, even though it has an implicit argument.
-- example (n : ℕ) (a b : Fin n) (H : a ≤ b) : a.castSucc ≤ b.castSucc :=
--   apply_fun Fin.castSucc at H
--   exact H

example (n m : ℕ) (f : ℕ ≃ ℕ) (h : f n = f m) : n = m := by
  apply_fun f
  assumption

example (n m : ℕ) (f : ℕ ≃o ℕ) (h : f n ≤ f m) : n ≤ m := by
  apply_fun f
  assumption

example (n m : ℕ) (f : ℕ ≃o ℕ) (h : f n < f m) : n < m := by
  apply_fun f
  assumption

example : ∀ m n : ℕ, m = n → (m < 2) = (n < 2) := by
  refine fun m n h => ?_
  apply_fun (· < 2) at h
  exact h

example : ∀ m n : ℕ, m = n → (m < 2) = (n < 2) := by
  intro m n h
  apply_fun (· < 2) at h
  exact h

example (f : ℕ ≃ ℕ) (a b : ℕ) (h : a = b) : True := by
  apply_fun f at h
  guard_hyp h : f a = f b
  trivial

example (f : ℤ ≃ ℤ) (a b : ℕ) (h : a = b) : True := by
  apply_fun f at h
  guard_hyp h : f a = f b
  trivial

example (f : ℤ ≃ ℤ) (a b : α) (h : a = b) : True := by
  fail_if_success apply_fun f at h
  trivial

example (f : ℕ → ℕ) (a b : ℕ) (h : a = b) : True := by
  apply_fun f at h
  guard_hyp h : f a = f b
  trivial

example (f : {i : Nat} → Fin i → ℕ) (a b : Fin 37) (h : a = b) : True := by
  apply_fun f at h
  guard_hyp h : f a = f b
  trivial

example (f : (p : Prop) → [Decidable p] → Nat) (p q : Prop) (h : p = q)
    (h' : {n m : Nat} → n = m → True) : True := by
  classical
  apply_fun f at h
  apply h'
  exact h

example (f : (p : Prop) → [Decidable p] → Nat) (p q : Prop) (h : p = q)
    (h' : {n m : Nat} → n = m → True) : True := by
  classical
  apply_fun (fun x [Decidable x] => f x) at h
  apply h'
  exact h

example (a b : ℕ) (h : a = b) : True := by
  apply_fun (fun i => i + ?_) at h
  · trivial
  · exact 37

-- Check that it can solve congruence (needs Subsingleton.elim for the fintype instances)
example (α β : Type u) [Fintype α] [Fintype β] (h : α = β) : True := by
  apply_fun Fintype.card at h
  guard_hyp h : Fintype.card α = Fintype.card β
  trivial

-- Check that metavariables in the goal do not prevent apply_fun from detecting the relation
set_option linter.unusedTactic false in
example (f : α ≃ β) (x y : α) (h : f x = f y) : x = y := by
  change _
  -- now the goal is a metavariable
  apply_fun f
  exact h

-- Check that lack of WHNF does not prevent apply_fun_from detecting the relation
example (f : α ≃ β) (x y : α) (h : f x = f y) : (fun s => s) (x = y) := by
  apply_fun f
  exact h

-- check that `apply_fun` uses the function provided to help elaborate the injectivity lemma
example (x : ℕ) : x = x := by
  apply_fun (Nat.cast : ℕ → ℚ) using Nat.cast_injective
  rfl

-- Check that locals are elaborated properly in apply_fun
example : 1 = 1 := by
  let f := fun (x : Nat) => x + 1
  -- clearly false but for demo purposes only
  have g : ∀ (f : ℕ → ℕ), Function.Injective f := test_sorry
  apply_fun f using (g f)
  rfl


def funFamily (_i : ℕ) : Bool → Bool := id

-- `apply_fun` should not silence errors in `assumption`
set_option linter.unreachableTactic false in
/--
error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
use `set_option diagnostics true` to get diagnostic information
-/
#guard_msgs (error) in
example (_h₁ : Function.Injective (funFamily ((List.range 128).map (fun _ => 0)).sum)) :
    true = true := by
  apply_fun funFamily 0
```
