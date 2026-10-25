# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `083c63039684d2725ba0c249d5acf9a95a1e5f14` · SHA-256 `05c78b367f54f9a41a33d79985f3e0623534390d1cedebe74a6bacf7f6558f08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.GCongr.Core

variable {a b c d : Prop}

lemma imp_mono (h₁ : c → a) (h₂ : c → b → d) : (a → b) → c → d :=
  fun h₃ hc => h₂ hc (h₃ (h₁ hc))

lemma and_mono (h₁ : a → c) (h₂ : a → b → d) : (a ∧ b) → c ∧ d :=
  fun ⟨ha, hb⟩ => ⟨h₁ ha, h₂ ha hb⟩

attribute [gcongr] mt Or.imp and_mono imp_mono forall_imp Exists.imp

example (h : a → b) : (a ∧ ¬b) ∨ c → (b ∧ ¬a) ∨ c := by gcongr
example (h : a → b) : (a ∧ ¬b) ∨ c → (b ∧ ¬a) ∨ c := by gcongr ?_ ∧ ¬?_ ∨ c

example (h : d → b) : (a ∨ b ∧ c → d) → (a ∨ d ∧ c → b) := by gcongr
example (h : d → b) : (a ∨ b ∧ c → d) → (a ∨ d ∧ c → b) := by gcongr a ∨ ?_ ∧ c → ?_

example (h : a → b) : ¬ ¬ ¬ b → ¬ ¬ ¬ a := by gcongr
example (h : a → b) : ¬ ¬ ¬ b → ¬ ¬ ¬ a := by gcongr ¬ ¬ ¬ ?_

example (h : a → b) : (∃ i, ∀ j, i ∧ b → j) → (∃ i, ∀ j, i ∧ a → j) := by gcongr
example (h : a → b) : (∃ i, ∀ j, i ∧ b → j) → (∃ i, ∀ j, i ∧ a → j) := by
  gcongr ∃ i, ∀ j, i ∧ ?_ → j

example (h : c → b) : (a → b → c) → (a → b → b) := by
  gcongr 1
  guard_target =ₛ (b → c) → (b → b)
  gcongr 1

/--
error: `gcongr` did not make progress.

a b c d : Prop
⊢ (∀ (n : Nat), 0 ≤ n) → ∀ (n : Int), 0 ≤ n
-/
#guard_msgs in
example (h : ∀ n : Nat, 0 ≤ n) : ∀ n : Int, 0 ≤ n := by
  revert h
  gcongr

def True' := True

example (h : a → b) : (b → True) → (a → True') := by
  gcongr ?_ → _

example (h : a → b) : (b → True) → (a → True') := by
  gcongr
  exact id
```
