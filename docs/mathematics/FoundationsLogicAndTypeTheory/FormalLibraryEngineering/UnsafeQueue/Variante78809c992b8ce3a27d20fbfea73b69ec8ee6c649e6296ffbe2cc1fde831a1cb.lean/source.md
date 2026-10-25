# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsafeQueue.Variante78809c992b8ce3a27d20fbfea73b69ec8ee6c649e6296ffbe2cc1fde831a1cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4b3df2cd256721304ae648b53120096ca1027ae` · SHA-256 `e7e39289fd0f7bffaefb737197641038c77b31a539026b7805922ed589374ed8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PostponedSafeRule.Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PostponedSafeRule.Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/UnsafeQueue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Rule
import Aesop.Constants


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PostponedSafeRule.Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd

public section

open Lean

namespace Aesop

structure PostponedSafeRule where
  rule : SafeRule
  output : RuleTacOutput
  deriving Inhabited

namespace PostponedSafeRule

def toUnsafeRule (r : PostponedSafeRule) : UnsafeRule :=
  { r.rule with extra := ⟨postponedSafeRuleSuccessProbability⟩ }

end PostponedSafeRule


inductive UnsafeQueueEntry
  | unsafeRule (r : IndexMatchResult UnsafeRule)
  | postponedSafeRule (r : PostponedSafeRule)
  deriving Inhabited

namespace UnsafeQueueEntry

instance : ToString UnsafeQueueEntry where
  toString
    | unsafeRule        r => toString r.rule.name
    | postponedSafeRule r => toString r.rule.name

def successProbability : UnsafeQueueEntry → Percent
  | unsafeRule r => r.rule.extra.successProbability
  | postponedSafeRule .. => postponedSafeRuleSuccessProbability

def name : UnsafeQueueEntry → RuleName
  | unsafeRule r => r.rule.name
  | postponedSafeRule r => r.rule.name

instance : Ord UnsafeQueueEntry :=
  ⟨ compareLex
      (λ x y => compareOn successProbability x y |>.swap)
      (compareOn name) ⟩

end UnsafeQueueEntry


@[expose] def UnsafeQueue := Subarray UnsafeQueueEntry

namespace UnsafeQueue

instance : EmptyCollection UnsafeQueue :=
  inferInstanceAs $ EmptyCollection (Subarray _)

instance : Inhabited UnsafeQueue :=
  inferInstanceAs $ Inhabited (Subarray _)

-- Precondition: `unsafeRules` is ordered lexicographically by descending
-- success probability, then by rule name.
def initial (postponedSafeRules : Array PostponedSafeRule)
    (unsafeRules : Array (IndexMatchResult UnsafeRule)) : UnsafeQueue :=
  let unsafeRules := unsafeRules.map .unsafeRule
  let postponedSafeRules :=
    postponedSafeRules.map .postponedSafeRule
      |>.qsort (λ x y => compare x y |>.isLT)
  postponedSafeRules.mergeDedup unsafeRules |>.toSubarray

def entriesToMessageData (q : UnsafeQueue) : Array MessageData :=
  q.toArray.map toMessageData

end UnsafeQueue

end Aesop
```
