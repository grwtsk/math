# Complete source: GRWTSK.Algebra.RingTheory.Instances.Variant4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3eade43a43d136fd346b0367998eac899c0dc72` · SHA-256 `4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.RingTheory.UniqueFactorizationDomain.Nat
import Mathlib.Tactic.Convert

private axiom test_sorry : ∀ {α}, α

/-! `convert` should not pop up goals about instances. -/
example {a b c : ℕ} (hab : instLTNat.lt a b) : Nat.instLinearOrder.toLT.lt a c := by
  convert (preTransparency := .reducible) hab
  · guard_target =ₛ Nat.instLinearOrder.toLT = instLTNat
    exact test_sorry
  · guard_target =ₛ c = b
    exact test_sorry

example {a b c : ℕ} (hab : instLTNat.lt a b) : Nat.instLinearOrder.toLT.lt a c := by
  convert (preTransparency := .instances) hab
  guard_target =ₛ c = b
  exact test_sorry

example (q z : Nat) : semigroupDvd.dvd q z := by
  convert_to (preTransparency := .reducible) q ^ 1 ∣ z
  · guard_target =ₛ semigroupDvd = Nat.instDvd
    exact test_sorry
  · guard_target =ₛ q = q ^ 1
    exact test_sorry
  · guard_target =ₛ q ^ 1 ∣ z
    exact test_sorry

example (q z : Nat) : semigroupDvd.dvd q z := by
  convert_to (preTransparency := .instances) q ^ 1 ∣ z
  · guard_target =ₛ q = q ^ 1
    exact test_sorry
  · guard_target =ₛ q ^ 1 ∣ z
    exact test_sorry
```
