# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `293eab1395ef4a507720449b42e75ef20f9e06b5` · SHA-256 `cc38fdeeb62cc0603dac2bec9bb1bf5592bde66699bcb120be2fab9087a41bf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForInStepBindListConsPrime.Variantecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ForInStepBindListConsPrime.Variantecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Control/ForInStep/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Control.ForInStep.Basic

/-! # Additional theorems on `ForInStep` -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForInStepBindListConsPrime.Variantecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2

@[simp] theorem ForInStep.bind_done [Monad m] (a : α) (f : α → m (ForInStep α)) :
    (ForInStep.done a).bind (m := m) f = pure (.done a) := rfl
@[simp] theorem ForInStep.bind_yield [Monad m] (a : α) (f : α → m (ForInStep α)) :
    (ForInStep.yield a).bind (m := m) f = f a := rfl

attribute [simp] ForInStep.bindM

@[simp] theorem ForInStep.run_done : (ForInStep.done a).run = a := rfl
@[simp] theorem ForInStep.run_yield : (ForInStep.yield a).run = a := rfl

@[simp] theorem ForInStep.bindList_nil [Monad m] (f : α → β → m (ForInStep β))
    (s : ForInStep β) : s.bindList f [] = pure s := rfl

@[simp] theorem ForInStep.bindList_cons [Monad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (a l) :
    s.bindList f (a::l) = s.bind fun b => f a b >>= (·.bindList f l) := rfl

@[simp] theorem ForInStep.done_bindList [Monad m]
    (f : α → β → m (ForInStep β)) (a l) :
    (ForInStep.done a).bindList f l = pure (.done a) := by cases l <;> simp

@[simp] theorem ForInStep.bind_yield_bindList [Monad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (l) :
    (s.bind fun a => (yield a).bindList f l) = s.bindList f l := by cases s <;> simp

@[simp] theorem ForInStep.bind_bindList_assoc [Monad m] [LawfulMonad m]
    (f : β → m (ForInStep β)) (g : α → β → m (ForInStep β)) (s : ForInStep β) (l) :
    s.bind f >>= (·.bindList g l) = s.bind fun b => f b >>= (·.bindList g l)  := by
  cases s <;> simp

theorem ForInStep.bindList_cons' [Monad m] [LawfulMonad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (a l) :
    s.bindList f (a::l) = s.bind (f a) >>= (·.bindList f l) := by simp

@[simp] theorem ForInStep.bindList_append [Monad m] [LawfulMonad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (l₁ l₂) :
    s.bindList f (l₁ ++ l₂) = s.bindList f l₁ >>= (·.bindList f l₂) := by
  induction l₁ generalizing s <;> simp [*]
```
