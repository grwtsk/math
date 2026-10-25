# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulBEqTactics.Variant287b7fde8b605f59a241f570cf780d249eb2781aab63b63364cf611790f34b3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35fe6670e224171f2f70f015ba3ffbb6d2fff77e` · SHA-256 `e4a34977709d31f64cbebb0a1f8daa46e45ed985c0eaaed43c37d6982cf4b40e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AndTrueCurry.Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AndTrueCurry.Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/LawfulBEqTactics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Init.Core
import Init.Data.Bool
import Init.ByCases
import Init.Classical


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AndTrueCurry.Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85

public section

namespace DerivingHelpers

macro "deriving_ReflEq_tactic" : tactic => `(tactic|(
  intro x
  induction x
  all_goals
    simp only [BEq.refl, ↓reduceDIte, Bool.and_true, *, reduceBEq ,reduceCtorIdx]
))

theorem and_true_curry {a b : Bool} {P : Prop}
    (h : a → b → P) : (a && b) → P := by
  rw [Bool.and_eq_true_iff]
  intro h'
  apply h h'.1 h'.2


theorem deriving_lawful_beq_helper_dep {x y : α} [BEq α] [ReflBEq α]
  {t : (x == y) = true → Bool} {P : Prop}
    (inst : (x == y) = true → x = y)
    (k : (h : x = y) → t (h ▸ ReflBEq.rfl) = true → P) :
    (if h : (x == y) then t h else false) = true → P := by
  intro h
  by_cases hxy : x = y
  · subst hxy
    apply k rfl
    rw [dif_pos (BEq.refl x)] at h
    exact h
  · by_cases hxy' : x == y
    · exact False.elim <| hxy (inst hxy')
    · rw [dif_neg hxy'] at h
      contradiction

theorem deriving_lawful_beq_helper_nd {x y : α} [BEq α] [ReflBEq α]
    {P : Prop}
    (inst : (x == y) = true → x = y)
    (k : x = y → P) :
    (x == y) = true → P := by
  intro h
  by_cases hxy : x = y
  · subst hxy
    apply k rfl
  · exact False.elim <| hxy (inst h)

end DerivingHelpers

syntax "deriving_LawfulEq_tactic_step" : tactic
macro_rules
| `(tactic| deriving_LawfulEq_tactic_step) =>
  `(tactic| fail "deriving_LawfulEq_tactic_step failed")
macro_rules
| `(tactic| deriving_LawfulEq_tactic_step) =>
  `(tactic| ( with_reducible change dite (_ == _) _ _ = true → _
              refine DerivingHelpers.deriving_lawful_beq_helper_dep ?_ ?_
              · solve | apply_assumption | simp | fail "could not discharge eq_of_beq assumption"
              intro h
              cases h
              dsimp only
    ))
macro_rules
| `(tactic| deriving_LawfulEq_tactic_step) =>
  `(tactic| ( with_reducible change (_ == _) = true → _
              refine DerivingHelpers.deriving_lawful_beq_helper_nd ?_ ?_
              · solve | apply_assumption | simp | fail "could not discharge eq_of_beq assumption"
              intro h
              subst h
    ))
macro_rules
| `(tactic| deriving_LawfulEq_tactic_step) =>
  `(tactic| ( with_reducible change (_ == _ && _) = true → _
              refine DerivingHelpers.and_true_curry ?_))
macro_rules
| `(tactic| deriving_LawfulEq_tactic_step) =>
  `(tactic| rfl)
macro_rules
| `(tactic| deriving_LawfulEq_tactic_step) =>
  `(tactic| intro _; trivial)

macro "deriving_LawfulEq_tactic" : tactic => `(tactic|(
  intro x
  induction x
  all_goals
    intro y
    cases y
    all_goals
      simp only [reduceBEq, reduceCtorIdx]
      repeat deriving_LawfulEq_tactic_step
))
```
