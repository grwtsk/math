# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Implications.Variante65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dd73ad088edbcf9f63b80a6aad99f54f9e692bc` · SHA-256 `e65c1df6248793b7996399a95a368db94f78e970771d6ac479f05e3a222d72e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.GCongr

variable {a b c d : Prop}

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

-- Binder names are inferred, using the binder names in the LHS.
example (f g : Nat → Nat → Prop) (h : ∀ i j, f i j → g i j) :
    (∃ ε > 0, ∃ δ > 0, f ε δ) → (∃ ε' > 0, ∃ δ' > 0, g ε' δ') := by
  gcongr
  exact h ε δ
```
