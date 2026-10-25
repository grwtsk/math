# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinderPredicates.Variantd2473c2ace79805247047391876bd335bfa3a2a1fd23a693f2669c47712c41e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bad260db5f0766846be1e433ff887c6d9301726` · SHA-256 `b6de42037166580fe394bf9aa0ef513a0f6b524938dc752b4459a6e02ff90092`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantc6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactics.Variantc6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/BinderPredicates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public meta import Init.Grind.Tactics
public import Init.Notation
import Init.Meta.Defs
import Init.NotationExtra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variantc6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26

public section

namespace Lean

/--
The syntax category of binder predicates contains predicates like `> 0`, `∈ s`, etc.
(`: t` should not be a binder predicate because it would clash with the built-in syntax for ∀/∃.)
-/
declare_syntax_cat binderPred

/--
`satisfies_binder_pred% t pred` expands to a proposition expressing that `t` satisfies `pred`.
-/
syntax "satisfies_binder_pred% " term:max binderPred : term

-- Extend ∀ and ∃ to binder predicates.

/--
The notation `∃ x < 2, p x` is shorthand for `∃ x, x < 2 ∧ p x`,
and similarly for other binary operators.
-/
syntax "∃ " binderIdent binderPred ", " term : term
/--
The notation `∀ x < 2, p x` is shorthand for `∀ x, x < 2 → p x`,
and similarly for other binary operators.
-/
syntax "∀ " binderIdent binderPred ", " term : term

macro_rules
  | `(∃ $x:ident $pred:binderPred, $p) =>
    `(∃ $x:ident, satisfies_binder_pred% $x $pred ∧ $p)
  | `(∃ _ $pred:binderPred, $p) =>
    `(∃ x, satisfies_binder_pred% x $pred ∧ $p)

macro_rules
  | `(∀ $x:ident $pred:binderPred, $p) =>
    `(∀ $x:ident, satisfies_binder_pred% $x $pred → $p)
  | `(∀ _ $pred:binderPred, $p) =>
    `(∀ x, satisfies_binder_pred% x $pred → $p)

/-- Declare `∃ x > y, ...` as syntax for `∃ x, x > y ∧ ...` -/
binder_predicate x " > " y:term => `($x > $y)
/-- Declare `∃ x ≥ y, ...` as syntax for `∃ x, x ≥ y ∧ ...` -/
binder_predicate x " ≥ " y:term => `($x ≥ $y)
/-- Declare `∃ x < y, ...` as syntax for `∃ x, x < y ∧ ...` -/
binder_predicate x " < " y:term => `($x < $y)
/-- Declare `∃ x ≤ y, ...` as syntax for `∃ x, x ≤ y ∧ ...` -/
binder_predicate x " ≤ " y:term => `($x ≤ $y)
/-- Declare `∃ x ≠ y, ...` as syntax for `∃ x, x ≠ y ∧ ...` -/
binder_predicate x " ≠ " y:term => `($x ≠ $y)

/-- Declare `∀ x ∈ y, ...` as syntax for `∀ x, x ∈ y → ...` and `∃ x ∈ y, ...` as syntax for
`∃ x, x ∈ y ∧ ...` -/
binder_predicate x " ∈ " y:term => `($x ∈ $y)

/-- Declare `∀ x ∉ y, ...` as syntax for `∀ x, x ∉ y → ...` and `∃ x ∉ y, ...` as syntax for
`∃ x, x ∉ y ∧ ...` -/
binder_predicate x " ∉ " y:term => `($x ∉ $y)

/-- Declare `∀ x ⊆ y, ...` as syntax for `∀ x, x ⊆ y → ...` and `∃ x ⊆ y, ...` as syntax for
`∃ x, x ⊆ y ∧ ...` -/
binder_predicate x " ⊆ " y:term => `($x ⊆ $y)

/-- Declare `∀ x ⊂ y, ...` as syntax for `∀ x, x ⊂ y → ...` and `∃ x ⊂ y, ...` as syntax for
`∃ x, x ⊂ y ∧ ...` -/
binder_predicate x " ⊂ " y:term => `($x ⊂ $y)

/-- Declare `∀ x ⊇ y, ...` as syntax for `∀ x, x ⊇ y → ...` and `∃ x ⊇ y, ...` as syntax for
`∃ x, x ⊇ y ∧ ...` -/
binder_predicate x " ⊇ " y:term => `($x ⊇ $y)

/-- Declare `∀ x ⊃ y, ...` as syntax for `∀ x, x ⊃ y → ...` and `∃ x ⊃ y, ...` as syntax for
`∃ x, x ⊃ y ∧ ...` -/
binder_predicate x " ⊃ " y:term => `($x ⊃ $y)

end Lean
```
