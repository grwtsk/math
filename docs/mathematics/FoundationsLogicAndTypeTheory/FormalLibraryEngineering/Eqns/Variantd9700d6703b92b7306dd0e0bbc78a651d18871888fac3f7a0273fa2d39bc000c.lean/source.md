# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantd9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14ca7a4cda3f0218222c7f6535dc38f828a17f7a` · SHA-256 `d9700d6703b92b7306dd0e0bbc78a651d18871888fac3f7a0273fa2d39bc000c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Eqns

def transpose {m n} (A : m → n → Nat) : n → m → Nat
  | i, j => A j i

theorem transpose_apply {m n} (A : m → n → Nat) (i j) :
  transpose A i j = A j i := rfl

attribute [eqns transpose_apply] transpose

theorem transpose_const {m n} (c : Nat) :
    transpose (fun (_i : m) (_j : n) => c) = fun _j _i => c := by
  fail_if_success {rw [transpose]}
  fail_if_success {simp [transpose]}
  funext i j -- the rw below does not work without this line
  rw [transpose]
```
