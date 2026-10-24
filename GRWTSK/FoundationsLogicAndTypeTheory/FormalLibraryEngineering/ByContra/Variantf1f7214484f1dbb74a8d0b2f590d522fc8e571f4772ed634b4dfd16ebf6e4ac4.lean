-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variante3c720228b83668a20abba99fefa22d317d849787c0221b8fa3ac1518ddaed1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3c720228b83668a20abba99fefa22d317d849787c0221b8fa3ac1518ddaed1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variante3c720228b83668a20abba99fefa22d317d849787c0221b8fa3ac1518ddaed1a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e3c720228b83668a20abba99fefa22d317d849787c0221b8fa3ac1518ddaed1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/ByContra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Kevin Buzzard
-/
import Lean
import Mathlib.Tactic.PushNeg


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variante3c720228b83668a20abba99fefa22d317d849787c0221b8fa3ac1518ddaed1a

open Lean Lean.Parser Parser.Tactic Elab Command Elab.Tactic Meta

/--
If the target of the main goal is a proposition `p`,
`by_contra'` reduces the goal to proving `False` using the additional hypothesis `this : ¬ p`.
`by_contra' h` can be used to name the hypothesis `h : ¬ p`.
The hypothesis `¬ p` will be negation normalized using `push_neg`.
For instance, `¬ a < b` will be changed to `b ≤ a`.
`by_contra' h : q` will normalize negations in `¬ p`, normalize negations in `q`,
and then check that the two normalized forms are equal.
The resulting hypothesis is the pre-normalized form, `q`.
If the name `h` is not explicitly provided, then `this` will be used as name.
This tactic uses classical reasoning.
It is a variant on the tactic `by_contra`.
Examples:
```lean
example : 1 < 2 := by
  by_contra' h
  -- h : 2 ≤ 1 ⊢ False

example : 1 < 2 := by
  by_contra' h : ¬ 1 < 2
  -- h : ¬ 1 < 2 ⊢ False
```
-/
syntax (name := byContra') "by_contra'" (ppSpace colGt binderIdent)? Term.optType : tactic

macro_rules
  | `(tactic| by_contra'%$tk $[_%$under]? $[: $ty]?) =>
    `(tactic| by_contra' $(mkIdentFrom (under.getD tk) `this (canonical := true)):ident $[: $ty]?)
  | `(tactic| by_contra' $e:ident) => `(tactic| (by_contra $e:ident; push_neg at $e:ident))
  | `(tactic| by_contra' $e:ident : $y) => `(tactic|
       (by_contra' h;
        -- if the below `exact` call fails then this tactic should fail with the message
        -- tactic failed: <goal type> and <type of h> are not definitionally equal
        have $e:ident : $y := by { push_neg; exact h };
        clear h ) )
