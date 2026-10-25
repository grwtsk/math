# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByContra.Variantf1f7214484f1dbb74a8d0b2f590d522fc8e571f4772ed634b4dfd16ebf6e4ac4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7e3a03877d881fb757332bd450d1f9bef970886` · SHA-256 `ed3f83bfa5b83b7c099bc5ab4ac040b4dce7fccce038381d6cd6e43a118e9e98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
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
````
