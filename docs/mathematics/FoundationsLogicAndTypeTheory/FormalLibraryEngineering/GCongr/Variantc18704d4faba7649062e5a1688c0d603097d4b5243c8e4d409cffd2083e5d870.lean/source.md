# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6d16260c69c19508f1fd978f085419eb4048bff` · SHA-256 `c18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro, Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Heather Macbeth
-/
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.GCongr.CoreAttrs

/-! # Setup for the `gcongr` tactic

The core implementation of the `gcongr` ("generalized congruence") tactic is in the file
`Tactic.GCongr.Core`. In this file we set it up for use across the library by listing
`positivity` as a first-pass discharger for side goals (`gcongr_discharger`). -/

macro_rules | `(tactic| gcongr_discharger) => `(tactic| positivity)

/-!
We register `gcongr` with the `hint` tactic.
-/

register_hint gcongr
```
