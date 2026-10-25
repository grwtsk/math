# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b01fb56cf424deadc948004e3342ee74d73fe5ab` · SHA-256 `146ef8b3ebf4b02f6cf4f317c9f7220901cfed6d83e5ddc597dcc17ebf1f70a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

prelude
public import Init.Ext

public section

namespace Subtype

universe u
variable {α : Sort u} {p q : α → Prop}

@[simp]
protected theorem «forall» {q : { a // p a } → Prop} : (∀ x, q x) ↔ ∀ a b, q ⟨a, b⟩ :=
  ⟨fun h a b ↦ h ⟨a, b⟩, fun h ⟨a, b⟩ ↦ h a b⟩

@[simp]
protected theorem «exists» {q : { a // p a } → Prop} :
    (Exists fun x => q x) ↔ Exists fun a => Exists fun b => q ⟨a, b⟩ :=
  ⟨fun ⟨⟨a, b⟩, h⟩ ↦ ⟨a, b, h⟩, fun ⟨a, b, h⟩ ↦ ⟨⟨a, b⟩, h⟩⟩

end Subtype
```
