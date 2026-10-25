# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Measurability.Variantb7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b02c3499798bbcae34c5caea4594c65b112011dc` · SHA-256 `b7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

import Mathlib.Tactic.Measurability.Init
import Mathlib.Algebra.Group.Defs

/-!
# Measurability

We define the `measurability` tactic using `aesop`. -/

open Lean.Parser.Tactic (config)

attribute [aesop (rule_sets [Measurable]) unfold norm] Function.comp
attribute [aesop (rule_sets [Measurable]) unfold norm] npowRec

/--
The `measurability` attribute used to tag continuity statements for the `measurability` tactic. -/
macro "measurability" : attr =>
  `(attr|aesop safe apply (rule_sets [$(Lean.mkIdent `Measurable):ident]))

/--
The tactic `measurability` solves goals of the form `Measurable f`, `AEMeasurable f`,
`StronglyMeasurable f`, `AEStronglyMeasurable f μ`, or `MeasurableSet s` by applying lemmas tagged
with the `measurability` user attribute. -/
macro "measurability" (config)? : tactic =>
  `(tactic| aesop (options := { terminal := true }) (rule_sets [$(Lean.mkIdent `Measurable):ident]))

/--
The tactic `measurability?` solves goals of the form `Measurable f`, `AEMeasurable f`,
`StronglyMeasurable f`, `AEStronglyMeasurable f μ`, or `MeasurableSet s` by applying lemmas tagged
with the `measurability` user attribute, and suggests a faster proof script that can be substituted
for the tactic call in case of success. -/
macro "measurability?" (config)? : tactic =>
  `(tactic| aesop? (options := { terminal := true })
    (rule_sets [$(Lean.mkIdent `Measurable):ident]))

-- Todo: implement `measurability!` and `measurability!?` and add configuration,
-- original syntax was (same for the missing `measurability` variants):
syntax (name := measurability!) "measurability!" (config)? : tactic
syntax (name := measurability!?) "measurability!?" (config)? : tactic
```
