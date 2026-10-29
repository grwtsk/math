-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantd2231a5ce50ff7c037ff686b6e002c3c320851142a63ad03766cbcd62ddc72de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2231a5ce50ff7c037ff686b6e002c3c320851142a63ad03766cbcd62ddc72de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variantd2231a5ce50ff7c037ff686b6e002c3c320851142a63ad03766cbcd62ddc72de","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d2231a5ce50ff7c037ff686b6e002c3c320851142a63ad03766cbcd62ddc72de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/TacticConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantd2231a5ce50ff7c037ff686b6e002c3c320851142a63ad03766cbcd62ddc72de

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

inductive Even : Nat → Prop
| zero : Even 0
| plus_two {n} : Even n → Even (n + 2)

inductive Odd : Nat → Prop
| one : Odd 1
| plus_two {n} : Odd n → Odd (n + 2)

inductive EvenOrOdd : Nat → Prop
| even {n} : Even n → EvenOrOdd n
| odd {n} : Odd n → EvenOrOdd n

-- We can add constants as rules.
example : EvenOrOdd 3 := by
  aesop
    (add safe [Even.zero, Even.plus_two, Odd.one, Odd.plus_two],
         unsafe [apply 50% EvenOrOdd.even, 50% EvenOrOdd.odd])

-- Same with local hypotheses, or a mix.
example : EvenOrOdd 3 := by
  have h : ∀ n, Odd n → EvenOrOdd n := λ _ p => EvenOrOdd.odd p
  aesop
    (add safe [Odd.one, Odd.plus_two], unsafe [EvenOrOdd.even 50%, h 50%])
    (erase Aesop.BuiltinRules.applyHyps) -- This rule subsumes h.

attribute [aesop 50%] Even.zero Even.plus_two

-- We can also erase global rules...

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : EvenOrOdd 2 := by
  aesop (add safe EvenOrOdd.even) (erase Even.zero)
    (config := { terminal := true })

example : EvenOrOdd 2 := by
  aesop (add safe EvenOrOdd.even)

-- ... as well as local ones (but what for?).


/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : EvenOrOdd 2 := by
  have h : ∀ n, Even n → EvenOrOdd n := λ _ p => EvenOrOdd.even p
  aesop (add safe h) (erase Aesop.BuiltinRules.applyHyps, h)
    (config := { terminal := true })

example : EvenOrOdd 2 := by
  have h : ∀ n, Even n → EvenOrOdd n := λ _ p => EvenOrOdd.even p
  aesop (add safe h) (erase Aesop.BuiltinRules.applyHyps)
