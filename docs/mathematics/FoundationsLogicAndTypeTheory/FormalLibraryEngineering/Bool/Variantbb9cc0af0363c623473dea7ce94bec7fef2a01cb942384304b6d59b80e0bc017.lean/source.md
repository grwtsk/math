# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bool.Variantbb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3b0ff0a18145026534f8d85cd87e6befbf20d05` · SHA-256 `bb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Chad Sharp. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chad Sharp
-/
module

@[expose] public section

/-!
This file contains `WellFoundedRelation` instances `Bool`.

They are provided as defs rather than instances, despite WellFoundedRelation being a class, as we
provide versions for both < and >. If you need instances, you may use the WellFoundedLT and
WellFoundedGT classes available in Mathlib.
-/

/-- Boolean '<' is well founded -/
@[implicit_reducible]
def Bool.lt_wfRel : WellFoundedRelation Bool where
  rel := (· < ·)
  wf := ⟨fun
    | false => ⟨false, nofun⟩
    | true => ⟨true, fun | false, _ => ⟨false, nofun⟩⟩⟩

/-- Boolean '>' is well founded -/
@[implicit_reducible]
def Bool.gt_wfRel : WellFoundedRelation Bool where
  rel := (· > ·)
  wf := ⟨fun
    | true => ⟨true, nofun⟩
    | false => ⟨false, fun | true, _ => ⟨true, nofun⟩⟩⟩
```
