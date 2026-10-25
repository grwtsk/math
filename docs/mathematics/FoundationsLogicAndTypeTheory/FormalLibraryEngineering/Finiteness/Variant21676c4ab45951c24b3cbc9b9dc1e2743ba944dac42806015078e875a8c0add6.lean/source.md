# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finiteness.Variant21676c4ab45951c24b3cbc9b9dc1e2743ba944dac42806015078e875a8c0add6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `867719d669c578be870cf94b104a595ee9792684` · SHA-256 `f9af998703415aa904a899a750b80c00ee1251e37a926cce17de9d0070874b86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant3fa5e789e1434752644a0f996538c2f014c85caf69267e34fe24fbbca45a083b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fa5e789e1434752644a0f996538c2f014c85caf69267e34fe24fbbca45a083b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Core.Variant3fa5e789e1434752644a0f996538c2f014c85caf69267e34fe24fbbca45a083b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3fa5e789e1434752644a0f996538c2f014c85caf69267e34fe24fbbca45a083b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Finiteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Tactic.Positivity.Core

/-!
# Finiteness tactic

This file implements a basic `finiteness` tactic, designed to solve goals of the form `*** < ∞` and
(equivalently) `*** ≠ ∞` in the extended nonnegative reals (`ENNReal`, aka `ℝ≥0∞`).

It works recursively according to the syntax of the expression. It is implemented as an `aesop` rule
set.

## Syntax

Standard `aesop` syntax applies. Namely one can write
* `finiteness (add unfold [def1, def2])` to make `finiteness` unfold `def1`, `def2`
* `finiteness?` for the tactic to show what proof it found
* etc
* Note that `finiteness` disables `simp`, so `finiteness (add simp [lemma1, lemma2])` does not do
  anything more than a bare `finiteness`.

We also provide `finiteness_nonterminal` as a version of `finiteness` that doesn't have to close the
goal.

Note to users: when tagging a lemma for finiteness, prefer tagging a lemma with `≠ ⊤`.
Aesop can deduce `< ∞` from `≠ ∞` safely (`Ne.lt_top` is a safe rule), but not conversely
(`ne_top_of_lt` is an unsafe rule): in simpler words, aesop tries to use `≠` as its intermediate
representation that things are finite, so we do so as well.

## TODO

Improve `finiteness` to also deal with other situations, such as balls in proper spaces with
a locally finite measure.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant3fa5e789e1434752644a0f996538c2f014c85caf69267e34fe24fbbca45a083b

open Aesop.BuiltinRules in
attribute [aesop (rule_sets := [finiteness]) safe -50] assumption intros

set_option linter.unusedTactic false in
add_aesop_rules safe tactic (rule_sets := [finiteness]) (by positivity)

/-- Tactic to solve goals of the form `*** < ∞` and (equivalently) `*** ≠ ∞` in the extended
nonnegative reals (`ℝ≥0∞`). -/
macro (name := finiteness) "finiteness" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  aesop $c*
    (config := { introsTransparency? := some .reducible, terminal := true, enableSimp := false })
    (rule_sets := [$(Lean.mkIdent `finiteness):ident, -default, -builtin]))

/-- Tactic to solve goals of the form `*** < ∞` and (equivalently) `*** ≠ ∞` in the extended
nonnegative reals (`ℝ≥0∞`). -/
macro (name := finiteness?) "finiteness?" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  aesop? $c*
    (config := { introsTransparency? := some .reducible, terminal := true, enableSimp := false })
    (rule_sets := [$(Lean.mkIdent `finiteness):ident, -default, -builtin]))

/-- Tactic to solve goals of the form `*** < ∞` and (equivalently) `*** ≠ ∞` in the extended
nonnegative reals (`ℝ≥0∞`). -/
macro (name := finiteness_nonterminal) "finiteness_nonterminal" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  aesop $c*
    (config := { introsTransparency? := some .reducible, terminal := false, enableSimp := false,
                 warnOnNonterminal := false  })
    (rule_sets := [$(Lean.mkIdent `finiteness):ident, -default, -builtin]))
```
