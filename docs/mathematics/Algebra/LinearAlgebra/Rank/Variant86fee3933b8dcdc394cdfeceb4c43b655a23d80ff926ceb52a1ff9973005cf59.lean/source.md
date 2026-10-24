# Complete source: GRWTSK.Algebra.LinearAlgebra.Rank.Variant86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb68ee68736ca1dacc538aa99b8128a2372065a` · SHA-256 `86fee3933b8dcdc394cdfeceb4c43b655a23d80ff926ceb52a1ff9973005cf59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.RingTheory.SimpleModule.Basic

/-!
# A module over a division ring is simple iff it has rank one
-/

theorem isSimpleModule_iff_finrank_eq_one {R M} [DivisionRing R] [AddCommGroup M] [Module R M] :
    IsSimpleModule R M ↔ Module.finrank R M = 1 :=
  ⟨fun h ↦ have := h.nontrivial; have ⟨v, hv⟩ := exists_ne (0 : M)
    (finrank_eq_one_iff_of_nonzero' v hv).mpr (IsSimpleModule.toSpanSingleton_surjective R hv),
  is_simple_module_of_finrank_eq_one⟩
```
