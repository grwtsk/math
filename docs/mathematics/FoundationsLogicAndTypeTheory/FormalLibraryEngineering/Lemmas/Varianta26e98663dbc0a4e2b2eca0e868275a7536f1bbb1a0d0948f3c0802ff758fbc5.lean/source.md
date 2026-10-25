# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Varianta26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb5f24300cd4dc2bb3965aed94445ae53a1f9f83` · SHA-256 `a26e98663dbc0a4e2b2eca0e868275a7536f1bbb1a0d0948f3c0802ff758fbc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

namespace Option

/-!
# Bootstrapping theorems for Option

These are theorems used in the definitions of `Std.Data.List.Basic`.
New theorems should be added to `Std.Data.Option.Lemmas` if they are not needed by the bootstrap.
-/

@[simp] theorem getD_none : getD none a = a := rfl
@[simp] theorem getD_some : getD (some a) b = a := rfl

@[simp] theorem map_none' (f : α → β) : none.map f = none := rfl
@[simp] theorem map_some' (a) (f : α → β) : (some a).map f = some (f a) := rfl

@[simp] theorem none_bind (f : α → Option β) : none.bind f = none := rfl
@[simp] theorem some_bind (a) (f : α → Option β) : (some a).bind f = f a := rfl
```
