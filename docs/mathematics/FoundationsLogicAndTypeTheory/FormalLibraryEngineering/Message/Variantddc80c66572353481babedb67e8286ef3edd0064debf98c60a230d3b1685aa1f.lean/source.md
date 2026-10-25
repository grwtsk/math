# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9b79ad7675662c12f42bc1b13872630b64d50cf` · SHA-256 `ddc80c66572353481babedb67e8286ef3edd0064debf98c60a230d3b1685aa1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.Message

/-!
# Additional operations on MessageData and related types
-/

open Lean Std MessageData

instance {α β : Type} [ToMessageData α] [ToMessageData β] : ToMessageData (α × β) :=
  ⟨fun x => paren <| toMessageData x.1 ++ ofFormat "," ++ Format.line ++ toMessageData x.2⟩
```
