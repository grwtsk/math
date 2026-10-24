# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Basic.Variantdb1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d018f26c959028f6e6f4bf524c733ac790d3f45` · SHA-256 `db1aea963b977d775e2c3a16195e28cce83b4b442c153b6bc53221bef497781a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.NumberTheory.ModularForms.Basic
import Mathlib.NumberTheory.ModularForms.EisensteinSeries.IsBoundedAtImInfty
import Mathlib.NumberTheory.ModularForms.EisensteinSeries.MDifferentiable

/-!
# Eisenstein series are Modular Forms

We show that Eisenstein series of weight `k` and level `Γ(N)` with congruence condition
`a : Fin 2 → ZMod N` are Modular Forms.

# TODO

Add q-expansions and prove that they are not all identically zero.
-/

noncomputable section

namespace ModularForm

open EisensteinSeries CongruenceSubgroup

/-- This defines Eisenstein series as modular forms of weight `k`, level `Γ(N)` and congruence
condition given by `a: Fin 2 → ZMod N`. -/
def eisensteinSeries_MF {k : ℤ} {N : ℕ+} (hk : 3 ≤ k) (a : Fin 2 → ZMod N) :
    ModularForm (Gamma N) k where
  toFun := eisensteinSeries_SIF a k
  slash_action_eq' := (eisensteinSeries_SIF a k).slash_action_eq'
  holo' := eisensteinSeries_SIF_MDifferentiable hk a
  bdd_at_infty' := isBoundedAtImInfty_eisensteinSeries_SIF a hk

end ModularForm
```
