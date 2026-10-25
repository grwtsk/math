# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqualUpToIds.Variantc617172c2a4761740cfa33fbc016a9c555eae3f8497049ce9a933ff2388ac260

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92a5d5a2caac4f31ba4342c71af6301fff30126d` · SHA-256 `3c3632a992d8ca36d3631d0413c0271587dd18bf824f082a797ece2a69f051e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertEqualTactics.Variant797e3feddb729daf0b91f0961a54c3f5e29f278171a5fd25502aa577e996f3ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"797e3feddb729daf0b91f0961a54c3f5e29f278171a5fd25502aa577e996f3ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AssertEqualTactics.Variant797e3feddb729daf0b91f0961a54c3f5e29f278171a5fd25502aa577e996f3ce","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"797e3feddb729daf0b91f0961a54c3f5e29f278171a5fd25502aa577e996f3ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/EqualUpToIds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop.Util.Basic
import Aesop.Util.EqualUpToIds
import Aesop.Tree.RunMetaM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertEqualTactics.Variant797e3feddb729daf0b91f0961a54c3f5e29f278171a5fd25502aa577e996f3ce

set_option linter.unreachableTactic false

-- Some simple test cases for the EqualUpToIds module. The module is mostly
-- tested by using it in script validation, which is run on almost all Aesop
-- calls in the test suite.

set_option linter.unreachableTactic false

open Aesop Lean Lean.Elab.Tactic

def assertEqualTactics (t₁ t₂ : TacticM Unit) : TacticM Unit := do
  let commonMCtx ← getMCtx
  let preState ← show MetaM _ from saveState
  let preGoals ← getGoals
  let (state₁, goals₁) ← runTacticMCapturingPostState t₁ preState preGoals
  let (state₂, goals₂) ← runTacticMCapturingPostState t₂ preState preGoals
  let eq ←
    tacticStatesEqualUpToIds commonMCtx state₁.meta.mctx state₂.meta.mctx
      goals₁.toArray goals₂.toArray
  if ! eq then
    throwError "Tactics produced different tactic states.\nTactic 1:{indentD $ ← ppTacticState state₁ goals₁}\nTactic 2:{indentD $ ← ppTacticState state₂ goals₂}\n"
where
  ppTacticState (state : Meta.SavedState) (goals : List MVarId) :
      MetaM MessageData :=
    state.runMetaM' do
      addMessageContext $ .joinSep (goals.map toMessageData) "\n"

open Lean.Elab.Tactic in
elab &"assert_equal_tactics "
    " { " ts₁:tacticSeq " } " " { " ts₂:tacticSeq " } " : tactic => do
  assertEqualTactics (evalTactic ts₁) (evalTactic ts₂)

example : True := by
  assert_equal_tactics { trivial } { trivial }
  trivial

example : True := by
  assert_equal_tactics { open Classical in trivial } { trivial }
  trivial

/--
error: Tactics produced different tactic states.
Tactic 1:
  case zero
  m : Nat
  ⊢ True
  case succ
  m n✝ : Nat
  ⊢ True
Tactic 2:
  case zero
  n : Nat
  ⊢ True
  case succ
  n n✝ : Nat
  ⊢ True
-/
#guard_msgs in
example (n m : Nat) : True := by
  assert_equal_tactics { cases n } { cases m }
  trivial

example : 0 < 3 := by
  apply Nat.lt_trans
  assert_equal_tactics { exact Nat.lt_succ_self 0 } { exact Nat.lt_succ_self 0 }
  (case m => exact 1); all_goals decide

example : 0 < 3 := by
  apply Nat.lt_trans
  assert_equal_tactics { apply Nat.lt_trans } { apply Nat.lt_trans }
  (case m => exact 1); all_goals decide
```
