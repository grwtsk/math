# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ByContra.Variantfe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8cd826c5cc00942e131a31c000884bbfc695507` · SHA-256 `fe5c9c55f543cd5cff74d4f719d82b8d35bba2c97f0cbcf2d2900a92de5af6c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Basic

private def nonDecid (P : Prop) (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

private def decid (P : Prop) [Decidable P] (x : P) : P := by
  by_contra h
  guard_hyp h : ¬P
  guard_target = False
  exact h x

example (P : Prop) [Decidable P] : nonDecid P = decid P := by
  delta nonDecid decid
  guard_target =
    (fun x : P => Classical.byContradiction fun h => h x) =
    (fun x : P => Decidable.byContradiction fun h => h x)
  rfl

example (P : Prop) : P → P := by
  by_contra
  guard_hyp ‹_› : ¬(P → P)
  exact ‹¬(P → P)› id
```
