# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b644fa2fda6a1e1a0bbb7de37ef7333f23ab944b` · SHA-256 `3eabbce355e23a3228e95022f260da65a007bca77d5280a3f0a0d14dedd17814`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Data.HashMap.Basic
import Std.Util.ProofWanted

namespace Std.HashMap

@[simp] proof_wanted empty_find? [BEq α] [Hashable α] {a : α} :
    (∅ : HashMap α β).find? a = none

proof_wanted insert_find? [BEq α] [Hashable α] (m : HashMap α β) (a a' : α) (b : β) :
    (m.insert a b).find? a' = if a' == a then some b else m.find? a'
```
