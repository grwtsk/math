# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantd36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3da5505f2c84f95436854be4dd1d78b2031f1151` · SHA-256 `d36b3ccb2e672690392637ad68b1186146e28bf2a667089e905320f38f998d1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.Attr.Register

/-!
# Simp tags for core lemmas

In Lean 4, an attribute declared with `register_simp_attr` cannot be used in the same file. So, we
declare all `simp` attributes used in `Mathlib` in `Mathlib/Tactic/Attr/Register` and tag lemmas
from the core library and the `Batteries` library with these attributes in this file.
-/

attribute [simp] id_map'
attribute [functor_norm, monad_norm] seq_assoc pure_seq pure_bind bind_assoc bind_pure map_pure
attribute [monad_norm] seq_eq_bind_map

-- Porting note: changed some `iff` lemmas to `eq` lemmas
attribute [mfld_simps] id and_true true_and Function.comp_apply and_self eq_self not_false
  true_or or_true heq_eq_eq forall_const and_imp

attribute [nontriviality] eq_iff_true_of_subsingleton
```
