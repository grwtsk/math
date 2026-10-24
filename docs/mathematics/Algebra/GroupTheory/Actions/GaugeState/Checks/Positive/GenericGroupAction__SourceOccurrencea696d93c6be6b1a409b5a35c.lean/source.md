# Complete source: GRWTSK.GroupTheory.Actions.GaugeState.Checks.Positive.GenericGroupAction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1d87512e534adb3dd23a38b5f215ecb223b0ea2` · SHA-256 `b0bb9a5354b0edb02af17e86303ecd0975fd94f620a54c043d258d8af98ed89c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
universe u v
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (A B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  X (n+1) = A n • X n ↔ gaugeState B X (n+1) = gaugeTransfer A B n • gaugeState B X n :=
  gaugeState_step_iff A B X n
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  gaugeState B X n = (B n)⁻¹ • X n := rfl
```
