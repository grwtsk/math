# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTree.Variantbe04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0977a19e932d73b3ff4103f1b6098ecce2bf743` · SHA-256 `be04768677f145da39913f8c65ebf56b617cd1ad3ca542eeb84c39cdb017149c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Mario Carneiro
-/
import Lean.Elab.InfoTree.Main

namespace Lean.Elab

/-- Like `InfoTree.foldInfo`, but also passes the whole node to `f` instead of just the head. -/
partial def InfoTree.foldInfo' (init : α) (f : ContextInfo → InfoTree → α → α) : InfoTree → α :=
  go none init
where
  /-- `foldInfo'.go` is like `foldInfo'` but with an additional outer context parameter `ctx?`. -/
  go ctx? a
  | context ctx t => go ctx a t
  | t@(node i ts) =>
    let a := match ctx? with
      | none => a
      | some ctx => f ctx t a
    ts.foldl (init := a) (go <| i.updateContext? ctx?)
  | _ => a
```
