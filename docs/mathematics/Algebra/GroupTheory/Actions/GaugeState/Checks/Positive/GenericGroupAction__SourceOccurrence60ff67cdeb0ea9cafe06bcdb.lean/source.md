# Complete source: GRWTSK.Algebra.GroupTheory.Actions.GaugeState.Checks.Positive.GenericGroupAction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f29973f5d0f53ac2faf82bfd5afff23d003c48ad` · SHA-256 `c72d07574df6705071e4577950c16f0ec41779651bd82b125ac5aa99d205f0ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
universe u v
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (A B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  X (n+1) = A n • X n ↔ gaugeState B X (n+1) = gaugeTransfer A B n • gaugeState B X n :=
  gaugeState_step_iff A B X n
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  gaugeState B X n = (B n)⁻¹ • X n := rfl
```
