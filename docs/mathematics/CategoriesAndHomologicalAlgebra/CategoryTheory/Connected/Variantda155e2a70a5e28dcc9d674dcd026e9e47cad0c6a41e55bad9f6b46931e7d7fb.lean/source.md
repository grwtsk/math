# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantda155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1755d71662292ae9cae46c3720646decc58d6c45` · SHA-256 `da155e2a70a5e28dcc9d674dcd026e9e47cad0c6a41e55bad9f6b46931e7d7fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.IsConnected
import Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks

/-!

# Connected shapes

In this file we prove that various shapes are connected.

-/

namespace CategoryTheory

open Limits

instance {J} : IsConnected (WidePullbackShape J) := by
  apply IsConnected.of_constant_of_preserves_morphisms
  intros α F H
  suffices ∀ i, F i = F none from fun j j' ↦ (this j).trans (this j').symm
  rintro ⟨⟩
  exacts [rfl, H (.term _)]

instance {J} : IsConnected (WidePushoutShape J) := by
  apply IsConnected.of_constant_of_preserves_morphisms
  intros α F H
  suffices ∀ i, F i = F none from fun j j' ↦ (this j).trans (this j').symm
  rintro ⟨⟩
  exacts [rfl, (H (.init _)).symm]

end CategoryTheory
```
