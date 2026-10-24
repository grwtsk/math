# Complete source: GRWTSK.Algebra.Pi.Variantd98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e50eccd56627f845e1e1b361b15cbf559a07ea0` · SHA-256 `d98a0918cb3d1c527ab7f79804bdf99c8245f7dcc8c797e9deb9370d2ecbeba8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Smooth.Pi
import Mathlib.RingTheory.Unramified.Pi
import Mathlib.RingTheory.Etale.Basic

/-!

# Formal-étaleness of finite products of rings

## Main result

- `Algebra.FormallyEtale.pi_iff`: If `I` is finite, `Π i : I, A i` is `R`-formally-étale
  if and only if each `A i` is `R`-formally-étale.

-/

universe u v

namespace Algebra.FormallyEtale

variable {R : Type (max u v)} {I : Type u} (A : I → Type (max u v))
variable [CommRing R] [∀ i, CommRing (A i)] [∀ i, Algebra R (A i)]

theorem pi_iff [Finite I] :
    FormallyEtale R (Π i, A i) ↔ ∀ i, FormallyEtale R (A i) := by
  simp_rw [FormallyEtale.iff_unramified_and_smooth, forall_and]
  rw [FormallyUnramified.pi_iff A, FormallySmooth.pi_iff A]

instance [Finite I] [∀ i, FormallyEtale R (A i)] : FormallyEtale R (Π i, A i) :=
  .of_unramified_and_smooth

end Algebra.FormallyEtale
```
