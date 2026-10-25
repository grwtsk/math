# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Wlog.Variant1f60daecfdb76e43d9e12c24d9d908266d741601807c257c1788a3df65c4959e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e26e01c43e21f4357fafd65d5bd517b4b5776994` · SHA-256 `e87e5555178a1c40e7c53d137e5b4f03b9f458ec77420972f647215277e98156`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOG.Variant5053e499ea73a1a34f561b1a5be531de286035e38ffa6fea0832525e0380d38b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5053e499ea73a1a34f561b1a5be531de286035e38ffa6fea0832525e0380d38b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.WLOG.Variant5053e499ea73a1a34f561b1a5be531de286035e38ffa6fea0832525e0380d38b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5053e499ea73a1a34f561b1a5be531de286035e38ffa6fea0832525e0380d38b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/wlog.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Johan Commelin
-/
import Mathlib.Tactic.WLOG
import Mathlib.Algebra.Ring.Nat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOG.Variant5053e499ea73a1a34f561b1a5be531de286035e38ffa6fea0832525e0380d38b

example {x y : ℕ} : True := by
  wlog h : x ≤ y
  · guard_hyp h : ¬x ≤ y
    guard_hyp this : ∀ {x y : ℕ}, x ≤ y → True -- `wlog` generalizes by default
    guard_target =ₛ True
    trivial
  · guard_hyp h : x ≤ y
    guard_target =ₛ True
    trivial

example {x y : ℕ} : True := by
  wlog h : x ≤ y generalizing x with H
  · guard_hyp h : ¬x ≤ y
    guard_hyp H : ∀ {x : ℕ}, x ≤ y → True -- only `x` was generalized
    guard_target =ₛ True
    trivial
  · guard_hyp h : x ≤ y
    guard_target =ₛ True
    trivial

example {x y z : ℕ} : True := by
  wlog h : x ≤ y + z with H
  · guard_hyp h : ¬ x ≤ y + z
    guard_hyp H : ∀ {x y z : ℕ}, x ≤ y + z → True -- wlog-claim is named `H` instead of `this`
    guard_target =ₛ True
    trivial
  · guard_hyp h : x ≤ y + z
    guard_target =ₛ True
    trivial

example : ∀ _ _ : ℕ, True := by
  intro x y
  wlog h : x ≤ y -- `wlog` finds new variables
  · trivial
  · trivial

example {x y : ℕ} : True := by
  wlog h : x ≤ y generalizing y x with H
  · guard_hyp h : ¬ x ≤ y
    guard_hyp H : ∀ {x y : ℕ}, x ≤ y → True -- order of ids in `generalizing` is ignored
    trivial
  · trivial

-- metadata doesn't cause a problem
example (α : Type := ℕ) (x : Option α := none) (y : Option α := by exact 0) : True := by
  wlog h : x = y with H
  · guard_hyp h : ¬ x = y
    guard_hyp H : ∀ α, ∀ {x y : Option α}, x = y → True
    trivial
  · guard_hyp h : x = y
    guard_target =ₛ True
    trivial

-- inaccessible names work
example {x y : ℕ} : True := by
  wlog _ : x ≤ y
  case _ h => -- if these hypotheses weren't inaccessible, they wouldn't be renamed by `case`
    guard_hyp h : ¬x ≤ y
    guard_hyp this : ∀ {x y : ℕ}, x ≤ y → True
    guard_target =ₛ True
    trivial
  case _ h =>
    guard_hyp h : x ≤ y
    guard_target =ₛ True
    trivial

-- Handle ldecls properly:
example (x y : ℕ) : True := by
  let z := 0
  wlog hxy' : z ≤ y with H
  · trivial
  · trivial
```
