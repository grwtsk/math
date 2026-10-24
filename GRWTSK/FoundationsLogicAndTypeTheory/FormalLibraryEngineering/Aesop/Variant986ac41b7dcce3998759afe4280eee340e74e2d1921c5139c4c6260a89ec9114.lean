-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variant1133c229a8c4f7076e4fd7afc08067bb687f04383e7cf3137c9baa6201ab9274","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1133c229a8c4f7076e4fd7afc08067bb687f04383e7cf3137c9baa6201ab9274","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variant1133c229a8c4f7076e4fd7afc08067bb687f04383e7cf3137c9baa6201ab9274","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1133c229a8c4f7076e4fd7afc08067bb687f04383e7cf3137c9baa6201ab9274","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Aesop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variant1133c229a8c4f7076e4fd7afc08067bb687f04383e7cf3137c9baa6201ab9274

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

open Lean
open Lean.Meta
open Lean.Elab.Tactic

section EvenOdd

inductive Even : Nat → Prop
| zero : Even 0
| plus_two {n} : Even n → Even (n + 2)

inductive Odd : Nat → Prop
| one : Odd 1
| plus_two {n} : Odd n → Odd (n + 2)

inductive EvenOrOdd : Nat → Prop
| even {n} : Even n → EvenOrOdd n
| odd {n} : Odd n → EvenOrOdd n

attribute [aesop unsafe] EvenOrOdd.even EvenOrOdd.odd
attribute [aesop safe] Even.zero Even.plus_two
attribute [aesop 100%] Odd.one Odd.plus_two

@[aesop norm unfold]
def EvenOrOdd' (n : Nat) : Prop := EvenOrOdd n

example : EvenOrOdd' 3 := by
  aesop

end EvenOdd

-- In this example, the goal is solved already during normalisation.
example : 0 = 0 := by aesop


-- An intentionally looping Aesop call, to test the limiting options
section Loop

structure Wrap (α) where
  unwrap : α

/--
error: Tactic `aesop` failed, maximum number of rule applications (20) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
example (h : α → α) (h' : Wrap α) : α := by
  aesop (add safe h)
    (config := { maxRuleApplications := 20, maxGoals := 0, maxRuleApplicationDepth := 0, terminal := true })

/--
error: Tactic `aesop` failed, maximum number of goals (20) reached. Set the 'maxGoals' option to increase the limit.
-/
#guard_msgs in
example (h : α → α) (h' : Wrap α) : α := by
  aesop (add safe h)
    (config := { maxGoals := 20, maxRuleApplications := 0, maxRuleApplicationDepth := 0, terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal. Some goals were not explored because the maximum rule application depth (20) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
-/
#guard_msgs in
example (h : α → α) (h' : Wrap α) : α := by
  aesop (add safe h)
    (config := { maxRuleApplicationDepth := 20, maxGoals := 0, maxRuleApplications := 0, terminal := true })

end Loop


-- This example tests the builtin rule that applies local hypotheses.
example (Even : Nat → Prop) (zero : Even 0)
    (plusTwo : ∀ n, Even n → Even (n + 2)) : Even 20 := by
  aesop
