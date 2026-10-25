# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e53350dd2539669050ed84b7b5c8eee273c6823` · SHA-256 `79c590d926b73f111eaf946101ab837ac8b2f3d444a94b8acb5ebaf88e3c597c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Init
import Lean.Meta.Tactic.Simp.Attr

/-!
# `@[reduce_mod_char]` attribute

This file registers `@[reduce_mod_char]` as a `simp` attribute.
-/

open Lean Meta

/-- `@[reduce_mod_char]` is an attribute that tags lemmas for preprocessing and cleanup in the
`reduce_mod_char` tactic -/
initialize reduceModCharExt : SimpExtension ←
  registerSimpAttr `reduce_mod_char
    "lemmas for preprocessing and cleanup in the `reduce_mod_char` tactic"
```
