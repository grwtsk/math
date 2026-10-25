# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a5e388bcebfed85ea549250eb4bb0f969d48e18` · SHA-256 `32f88a2524ba772c10e57d27ca317dede049db6789a7f6cc91d43da28f5c0af4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
import Std.Tactic.Ext

namespace ReaderT

attribute [ext] ReaderT.ext

@[simp] theorem run_failure [Monad m] [Alternative m] (ctx : ρ) :
    (failure : ReaderT ρ m α).run ctx = failure := rfl

@[simp] theorem run_orElse [Monad m] [Alternative m] (x y : ReaderT ρ m α) (ctx : ρ) :
    (x <|> y).run ctx = (x.run ctx <|> y.run ctx) := rfl

end ReaderT

namespace StateT

attribute [ext] StateT.ext

@[simp] theorem run_failure {α σ} [Monad m] [Alternative m] (s : σ) :
    (failure : StateT σ m α).run s = failure := rfl

@[simp] theorem run_orElse {α σ} [Monad m] [Alternative m] (x y : StateT σ m α) (s : σ) :
    (x <|> y).run s = (x.run s <|> y.run s) := rfl

end StateT
```
