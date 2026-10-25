# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionalOperations.Variant105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac8c83e3520d118b58dc4498c0bce5d6bc5dd64f` · SHA-256 `105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeSet.Raw.Basic
public import Std.Data.TreeMap.AdditionalOperations

@[expose] public section

/-!
# Additional tree set operations

This file defines more operations on `Std.TreeSet`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : Type v} {cmp : α → α → Ordering}

namespace Std.TreeSet

/-!
We do not provide `get*GE`, `get*GT`, `get*LE` and `get*LT` functions for the raw trees.
-/

/--
Given a proof that such an element exists, retrieves the smallest element that is
greater than or equal to the given element.
-/
@[inline]
def getGE [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) : α :=
  TreeMap.getKeyGE t.inner k h

/--
Given a proof that such an element exists, retrieves the smallest element that is
greater than the given element.
-/
@[inline]
def getGT [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) : α :=
  TreeMap.getKeyGT t.inner k h

/--
Given a proof that such an element exists, retrieves the largest element that is
less than or equal to the given element.
-/
@[inline]
def getLE [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) : α :=
  TreeMap.getKeyLE t.inner k h

/--
Given a proof that such an element exists, retrieves the smallest element that is
less than the given element.
-/
@[inline]
def getLT [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) : α :=
  TreeMap.getKeyLT t.inner k h

end Std.TreeSet
```
