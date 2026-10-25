# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attach.Varianta2f764001f9cc6e0a4fc4bd187d7208b0f3af3f44c3155da59d00b2ced067e5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ce6391d19b66153dd00740db63689e62a85714d` · SHA-256 `4e8eb1538db17e140f92d0c13f56b0557bedaf8ceecf5797fd5ab0877a647fd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attach.Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Attach.Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Combinators/Monadic/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Monadic.Loop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attach.Variant3d6a4f3fb0c4b4829d6e5f8796cab8b4edcf5c10d38cfbd6085647c8227e2438

public section

namespace Std.Iterators.Types

/--
Internal state of the `attachWith` combinator. Do not depend on its internals.
-/
@[unbox]
structure Attach (α : Type w) (m : Type w → Type w') {β : Type w} [Iterator α m β]
    (P : β → Prop) where
  inner : IterM (α := α) m β
  invariant : ∀ out, inner.IsPlausibleIndirectOutput out → P out

@[always_inline, inline]
def Attach.Monadic.modifyStep {α : Type w} {m : Type w → Type w'} {β : Type w} [Iterator α m β]
    {P : β → Prop}
    (it : IterM (α := Attach α m P) m { out : β // P out })
    (step : it.internalState.inner.Step (α := α) (m := m)) :
    IterStep (IterM (α := Attach α m P) m { out : β // P out })
        { out : β // P out } :=
  match step with
  | .yield it' out h =>
    .yield ⟨it', fun out ho => it.internalState.invariant out (.indirect ⟨_, rfl, h⟩ ho)⟩
      ⟨out, it.internalState.invariant out (.direct ⟨_, h⟩)⟩
  | .skip it' h =>
    .skip ⟨it', fun out ho => it.internalState.invariant out (.indirect ⟨_, rfl, h⟩ ho)⟩
  | .done _ => .done

instance Attach.instIterator {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] {P : β → Prop} :
    Iterator (Attach α m P) m { out : β // P out } where
  IsPlausibleStep it step := ∃ step', Monadic.modifyStep it step' = step
  step it := (fun step => .deflate ⟨Monadic.modifyStep it step.inflate, step.inflate, rfl⟩) <$>
      it.internalState.inner.step

def Attach.instFinitenessRelation {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Finite α m] {P : β → Prop} :
    FinitenessRelation (Attach α m P) m where
  Rel := InvImage WellFoundedRelation.rel fun it => it.internalState.inner.finitelyManySteps
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    apply Relation.TransGen.single
    obtain ⟨_, hs, step, h', rfl⟩ := h
    cases step using PlausibleIterStep.casesOn
    · simp only [IterStep.successor, Monadic.modifyStep, Option.some.injEq] at hs
      simp only [← hs]
      exact ⟨_, rfl, ‹_›⟩
    · simp only [IterStep.successor, Monadic.modifyStep, Option.some.injEq] at hs
      simp only [← hs]
      exact ⟨_, rfl, ‹_›⟩
    · simp [IterStep.successor, Monadic.modifyStep, reduceCtorEq] at hs

instance Attach.instFinite {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Finite α m] {P : β → Prop} : Finite (Attach α m P) m :=
  .of_finitenessRelation instFinitenessRelation

def Attach.instProductivenessRelation {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Productive α m] {P : β → Prop} :
    ProductivenessRelation (Attach α m P) m where
  Rel := InvImage WellFoundedRelation.rel fun it => it.internalState.inner.finitelyManySkips
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    apply Relation.TransGen.single
    simp_wf
    obtain ⟨step, hs⟩ := h
    cases step using PlausibleIterStep.casesOn
    · simp [Monadic.modifyStep] at hs
    · simp only [Monadic.modifyStep, IterStep.skip.injEq] at hs
      simp only [← hs]
      assumption
    · simp [Monadic.modifyStep] at hs

instance Attach.instProductive {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [Productive α m] {P : β → Prop} :
    Productive (Attach α m P) m :=
  .of_productivenessRelation instProductivenessRelation

instance Attach.instIteratorLoop {α β : Type w} {m : Type w → Type w'} [Monad m]
    {n : Type x → Type x'} [Monad n] {P : β → Prop} [Iterator α m β] :
    IteratorLoop (Attach α m P) m n :=
  .defaultImplementation

end Iterators.Types

/--
“Attaches” individual proofs to an iterator of values that satisfy a predicate `P`, returning an
iterator with values in the corresponding subtype `{ x // P x }`.

**Termination properties:**

* `Finite` instance: only if the base iterator is finite
* `Productive` instance: only if the base iterator is productive
-/
@[always_inline, inline, expose]
def IterM.attachWith {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] (it : IterM (α := α) m β) (P : β → Prop)
    (h : ∀ out, it.IsPlausibleIndirectOutput out → P out) :
    IterM (α := Iterators.Types.Attach α m P) m { out : β // P out } :=
  ⟨⟨it, h⟩⟩

end Std
```
