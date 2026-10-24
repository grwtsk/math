# Complete source: GRWTSK.Algebra.PrimeMultiplicity.Variant9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb3b942a531ef8592e2811c765af543dfbf3f978` · SHA-256 `9ece884a85660a33305573abe683f3beb85b3dd83942796af8308d15f6cbb0de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Chris Hughes
-/
module

public import Mathlib.RingTheory.Multiplicity
public import Mathlib.RingTheory.Valuation.Basic

/-!
# `multiplicity` of a prime in an integral domain as an additive valuation
-/

@[expose] public section

variable {R : Type*} [CommRing R] [IsDomain R] {p : R}

/-- `multiplicity` of a prime in an integral domain as an additive valuation to `ℕ∞`. -/
noncomputable def multiplicity_addValuation (hp : Prime p) : AddValuation R ℕ∞ :=
  AddValuation.of (emultiplicity p) (emultiplicity_zero_right _)
    (emultiplicity_of_one_right hp.not_isUnit)
      (fun _ _ => min_le_emultiplicity_add) fun _ _ => emultiplicity_mul hp

@[simp]
theorem multiplicity_addValuation_apply {hp : Prime p} {r : R} :
    multiplicity_addValuation hp r = emultiplicity p r :=
  rfl
```
