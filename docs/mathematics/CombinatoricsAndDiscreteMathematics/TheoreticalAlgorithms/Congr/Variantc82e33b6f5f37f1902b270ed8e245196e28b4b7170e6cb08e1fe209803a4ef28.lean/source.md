# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Congr.Variantc82e33b6f5f37f1902b270ed8e245196e28b4b7170e6cb08e1fe209803a4ef28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31d590a0b83ec7aa0ed7f4c6d2660f133824c720` · SHA-256 `c82e33b6f5f37f1902b270ed8e245196e28b4b7170e6cb08e1fe209803a4ef28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.GuardExpr
import Std.Tactic.Congr

section congr

example (c : Prop → Prop → Prop → Prop) (x x' y z z' : Prop)
    (h₀ : x ↔ x') (h₁ : z ↔ z') : c x y z ↔ c x' y z' := by
  apply Iff.of_eq -- FIXME: not needed in lean 3
  congr
  · guard_target =ₐ x = x'
    apply_ext_lemma
    assumption
  · guard_target =ₐ z = z'
    ext
    assumption

example {α β γ δ} {F : ∀ {α β}, (α → β) → γ → δ} {f g : α → β} {s : γ}
    (h : ∀ x : α, f x = g x) : F f s = F g s := by
  congr with x
  -- apply_assumption -- FIXME
  apply h

attribute [ext] Subtype.eq

example {α β : Type _} {f : _ → β} {x y : { x : { x : α // x = x } // x = x }}
    (h : x.1 = y.1) : f x = f y := by
  congr with : 1
  exact h

example {α β : Type _} {F : _ → β} {f g : { f : α → β // f = f }}
    (h : ∀ x : α, (f : α → β) x = (g : α → β) x) : F f = F g := by
  rcongr x
  revert x
  guard_target = type_of% h
  exact h

private opaque List.sum : List Nat → Nat

example {ls : List Nat} :
    (ls.map fun x => (ls.map fun y => 1 + y).sum + 1) =
    (ls.map fun x => (ls.map fun y => Nat.succ y).sum + 1) := by
  rcongr (_x y)
  guard_target =ₐ 1 + y = y.succ
  rw [Nat.add_comm]

example {ls : List Nat} {f g : Nat → Nat} {h : ∀ x, f x = g x} :
    (ls.map fun x => f x + 3) = ls.map fun x => g x + 3 := by
  rcongr x
  exact h x

-- succeed when either `ext` or `congr` can close the goal
example : () = () := by rcongr

example : 0 = 0 := by rcongr

example {α} (a : α) : a = a := by congr

example : { f : Nat → Nat // f = id } :=
  ⟨_, by
    congr (config := { closePre := false, closePost := false }) with x
    exact Nat.zero_add x⟩

-- FIXME(?): congr doesn't fail
-- example {α} (a b : α) (h : False) : a = b := by
--   fail_if_success congr
--   cases h

end congr
```
