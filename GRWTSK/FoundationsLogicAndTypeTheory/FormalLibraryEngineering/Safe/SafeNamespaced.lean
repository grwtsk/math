-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantc3648a6834be0becc39fe82cb6db4676b1737205abc9254b0c4bc1c3cb93f0b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3648a6834be0becc39fe82cb6db4676b1737205abc9254b0c4bc1c3cb93f0b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variantc3648a6834be0becc39fe82cb6db4676b1737205abc9254b0c4bc1c3cb93f0b8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c3648a6834be0becc39fe82cb6db4676b1737205abc9254b0c4bc1c3cb93f0b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Safe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantc3648a6834be0becc39fe82cb6db4676b1737205abc9254b0c4bc1c3cb93f0b8

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop 50%]
inductive Even : Nat → Prop
| zero : Even 0
| plus_two {n} : Even n → Even (n + 2)

structure Even' (n) : Prop where
  even : Even n

theorem even'_of_false : False → Even' n
| h => nomatch h

theorem even'_of_even' : Even' n → Even' n :=
  id

-- Once a safe rule is applied, the corresponding goal is marked as inactive
-- and never visited again.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Even' 2 := by
  aesop (add safe [even'_of_false 0, Even'.mk 1])
    (config := { terminal := true })

/--
error: Tactic `aesop` failed, maximum number of rule applications (10) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
example : Even' 2 := by
  aesop (add safe [even'_of_even'], unsafe [Even'.mk 100%])
    (config := { maxRuleApplications := 10, terminal := true })

example : Even' 2 := by
  aesop (add safe [even'_of_false 1, Even'.mk 0])
