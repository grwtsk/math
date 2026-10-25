# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StepSize.Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cf00a615b69fe8cb66f24abf6577d2f543f37c8` · SHA-256 `ea2ad54a3e759576b056688ebab48ad77a7e9dc40a9dde6b11b23eb784e764c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorsTypesStepSizeIterator.Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IteratorsTypesStepSizeIterator.Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Combinators/Monadic/StepSize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Monadic.Access
public import Init.Data.Iterators.Consumers.Monadic.Collect
public import Init.Data.Iterators.Consumers.Monadic.Loop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorsTypesStepSizeIterator.Variant6e0fe1d98de5437d28de61eed953209d224bea09bc3c6541b581d0fad66e00c4

@[expose] public section

/-!
This module implements a combinator that only yields every `n`-th element of another iterator.
-/

namespace Std
open Std.Iterators

@[unbox]
structure Iterators.Types.StepSizeIterator (α : Type w) (m : Type w → Type w') (β : Type w) where
  nextIdx : Nat
  n : Nat
  inner : IterM (α := α) m β

/--
Produces an iterator that emits one value of `it`, then drops `n - 1` elements, then emits another
value, and so on. In other words, it emits every `n`-th value of `it`, starting with the first one.

If `n = 0`, the iterator behaves like for `n = 1`: It emits all values of `it`.


**Marble diagram:**

```
it               ---1----2----3---4----5
it.stepSize 2    ---1---------3--------5
```

**Availability:**

This operation is currently only available for iterators implementing `IteratorAccess`,
such as `PRange.iter` range iterators.

**Termination properties:**

* `Finite` instance: only if the base iterator `it` is finite
* `Productive` instance: always
-/
@[always_inline, inline]
def IterM.stepSize [Iterator α m β] [IteratorAccess α m] [Monad m]
    (it : IterM (α := α) m β) (n : Nat) :
    IterM (α := Types.StepSizeIterator α m β) m β :=
  ⟨⟨0, n - 1, it⟩⟩

namespace Iterators.Types

instance StepSizeIterator.instIterator [Iterator α m β] [IteratorAccess α m] [Monad m] :
    Iterator (Types.StepSizeIterator α m β) m β where
  IsPlausibleStep it step :=
    it.internalState.inner.IsPlausibleNthOutputStep it.internalState.nextIdx
        (step.mapIterator (Types.StepSizeIterator.inner ∘ IterM.internalState)) ∧
      ∀ it' out, step = .yield it' out →
        it'.internalState.n = it.internalState.n ∧ it'.internalState.nextIdx = it.internalState.n
  step it := (fun s => .deflate ⟨s.1.mapIterator (⟨⟨it.internalState.n, it.internalState.n, ·⟩⟩), by
      simp only [IterStep.mapIterator_mapIterator]
      refine cast ?_ s.property
      rw (occs := [1]) [← IterStep.mapIterator_id (step := s.val)]
      congr, by
      intro it' out
      cases s.val
      · simp only [IterStep.mapIterator_yield, IterStep.yield.injEq, and_imp]
        rintro h _
        simp [← h]
      · simp
      · simp
      done⟩) <$> it.internalState.inner.nextAtIdx? it.internalState.nextIdx

def StepSizeIterator.instFinitenessRelation [Iterator α m β] [IteratorAccess α m] [Monad m]
    [Finite α m] : FinitenessRelation (Types.StepSizeIterator α m β) m where
  Rel := InvImage WellFoundedRelation.rel (fun it => it.internalState.inner.finitelyManySteps)
  wf := by
    apply InvImage.wf
    apply WellFoundedRelation.wf
  subrelation {it it'} h := by
    obtain ⟨step, hs, h⟩ := h
    simp only [IterM.IsPlausibleStep, Iterator.IsPlausibleStep, instIterator] at h -- TODO
    simp only [InvImage]
    obtain ⟨⟨n, it⟩⟩ := it
    simp only at ⊢ h
    generalize h' : step.mapIterator (Types.StepSizeIterator.inner ∘ IterM.internalState) = s at h
    replace h := h.1
    induction h
    case zero_yield =>
      cases step <;> (try exfalso; simp at h'; done)
      cases hs; cases h'
      apply IterM.TerminationMeasures.Finite.rel_of_yield ‹_›
    case done =>
      cases step <;> simp_all [IterStep.successor]
    case yield ih =>
      apply Relation.TransGen.trans
      · exact ih h'
      · exact IterM.TerminationMeasures.Finite.rel_of_yield ‹_›
    case skip ih  =>
      apply Relation.TransGen.trans
      · exact ih h'
      · exact IterM.TerminationMeasures.Finite.rel_of_skip ‹_›

instance StepSizeIterator.instFinite [Iterator α m β] [IteratorAccess α m] [Monad m]
    [Finite α m] : Finite (Types.StepSizeIterator α m β) m :=
  .of_finitenessRelation instFinitenessRelation

def StepSizeIterator.instProductivenessRelation [Iterator α m β] [IteratorAccess α m] [Monad m]
    [Productive α m] : ProductivenessRelation (Types.StepSizeIterator α m β) m where
  Rel := InvImage WellFoundedRelation.rel (fun it => it.internalState.inner.finitelyManySkips)
  wf := by
    apply InvImage.wf
    apply WellFoundedRelation.wf
  subrelation {it it'} h := by
    simp only [IterM.IsPlausibleSkipSuccessorOf, IterM.IsPlausibleStep, Iterator.IsPlausibleStep, instIterator] at h -- TODO
    simp only [InvImage]
    obtain ⟨⟨n, it⟩⟩ := it
    simp only [IterStep.mapIterator_skip, Function.comp_apply] at ⊢ h
    generalize h' : IterStep.skip _ = s at h
    exfalso
    replace h := h.1
    induction h
    case zero_yield => cases h'
    case done => cases h'
    case yield hp ih => exact ih h'
    case skip ih  => exact ih h'

instance StepSizeIterator.instProductive [Iterator α m β] [IteratorAccess α m] [Monad m]
    [Productive α m] : Productive (Types.StepSizeIterator α m β) m :=
  .of_productivenessRelation instProductivenessRelation

instance StepSizeIterator.instIteratorLoop {m n} [Iterator α m β]
    [IteratorAccess α m] [Monad m] [Monad n] :
    IteratorLoop (Types.StepSizeIterator α m β) m n :=
  .defaultImplementation

end Std.Iterators.Types
````
