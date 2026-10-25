# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Measurability.Variant71a323c12c4f958c0a17fc645e9b055bf1f460d75dc198e57a1f2c5a5f0d2476

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da1b22edd30c89747c7d5f5415fe017db32ace2e` · SHA-256 `eac9972242ddd51935420247c32dac0674d21aefb26ec892537dea51fc9f7c5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Measurability.Variantb7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Measurability.Variantb7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Measurability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Measurability.Variantb7f65602d96d55ea27b8852204cac8ed50e487be59992ac7e641c5a790d81f99

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
