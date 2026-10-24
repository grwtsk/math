# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c20d4ecc0a177e4501313e1ad4231b4ff7f02ab6` · SHA-256 `07ad1dbe57c81ec1d2ae0f3d30cd5c183bc5cbd3c328efc581d92b246b401f5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

import Mathlib.Init
/-!
# Monad instances for `List`
-/

universe u

namespace List

variable {α : Type u}

instance instMonad : Monad List.{u} where
  pure x := [x]
  bind l f := l.flatMap f
  map f l := l.map f

@[simp] theorem pure_def (a : α) : pure a = [a] := rfl

instance instLawfulMonad : LawfulMonad List.{u} := LawfulMonad.mk'
  (id_map := map_id)
  (pure_bind := fun _ _ => List.append_nil _)
  (bind_assoc := fun _ _ _ => List.flatMap_assoc)
  (bind_pure_comp := fun _ _ => map_eq_flatMap.symm)

instance instAlternative : Alternative List.{u} where
  failure := @List.nil
  orElse l l' := List.append l (l' ())

end List
```
