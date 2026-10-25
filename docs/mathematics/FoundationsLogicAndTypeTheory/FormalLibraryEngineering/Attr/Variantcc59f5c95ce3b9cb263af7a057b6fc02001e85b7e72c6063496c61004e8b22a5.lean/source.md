# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantcc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43bc734336e24aebaca52e0fba3500e1c7016cde` · SHA-256 `cc59f5c95ce3b9cb263af7a057b6fc02001e85b7e72c6063496c61004e8b22a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Init
import Aesop
import Qq

/-!
# Aesop rule set for finsets

This file defines `finsetNonempty`, an aesop rule set to prove that a given finset is nonempty.
-/

-- `finsetNonempty` rules try to prove that a given finset is nonempty,
-- for use in positivity extensions.
declare_aesop_rule_sets [finsetNonempty] (default := true)

open Qq Lean Meta
```
