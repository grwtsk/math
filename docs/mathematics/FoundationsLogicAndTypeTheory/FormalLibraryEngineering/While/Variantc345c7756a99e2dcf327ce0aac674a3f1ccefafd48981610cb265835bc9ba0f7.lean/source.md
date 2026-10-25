# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.While.Variantc345c7756a99e2dcf327ce0aac674a3f1ccefafd48981610cb265835bc9ba0f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6a477f06bb90e890495ef7638de97cb128ca7bd` · SHA-256 `2749ed12248bc707f35781fe4587ece1b0cc661392a737cfa5aaeaea776d21f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Loop.Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Loop.Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/While.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Core
public import Init.Classical

/-!
# `repeatM`

`repeatM f a` iterates `f : α → m (α ⊕ β)`, recursing on `.inl` and terminating on
`.inr`. The public unfolding lemma `repeatM_eq_of_monadTail`, which requires a
`Lean.Order.MonadTail m` instance, lives in `Init.Internal.Order.While` to keep this
module's import closure small.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Loop.Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054

variable {α : Type u} {m : Type u → Type v} [Monad m]

/-- The body of `repeatM`: run `f a`, recurse via `recur` on `.inl`, return on `.inr`. -/
public abbrev repeatM.body (f : α → m (α ⊕ β)) (recur : α → m β) (a : α) : m β := do
  match ← f a with
  | .inl a => recur a
  | .inr b => pure b

/-- Pinning predicate for `repeatM.impl`: trivial unless `repeatM.body f` has a fixed point,
in which case `r` is logically pinned to that fixed point applied to `a`. -/
-- For monads like `List`, `Multiset`, no fixed point of `repeatM.body f` need exist:
-- e.g. for `List`, `f a = [.inr 0, .inl a]` forces `g a = [0] ++ g a`, unsatisfiable in
-- finite lists because `++` isn't idempotent. There this `Pred` collapses to `True`;
-- a future per-point `Acc` / `MonadAttach` branch could pin `r` for the cases where
-- execution from `a` is structurally well-founded.
private abbrev repeatM.Pred (f : α → m (α ⊕ β)) (a : α) (r : m β) : Prop :=
  open scoped Classical in
  if h : ∃ g, repeatM.body f g = g then
    r = h.choose a
  else
    True

private instance [Nonempty β] {f : α → m (α ⊕ β)} {a : α} :
    Nonempty (Subtype (repeatM.Pred f a)) :=
  open scoped Classical in
  if h : ∃ g, repeatM.body f g = g then
    ⟨⟨h.choose a, by simp only [repeatM.Pred, dif_pos h]⟩⟩
  else
    ⟨⟨pure (Classical.choice inferInstance), by simp only [repeatM.Pred, dif_neg h]⟩⟩

/-- Computational core of `repeatM`: returns the loop value paired with its
`repeatM.Pred` proof. -/
private partial def repeatM.impl [Nonempty β]
    (f : α → m (α ⊕ β)) (a : α) :
    Subtype (repeatM.Pred f a) :=
  ⟨repeatM.body f (repeatM.impl f · |>.val) a, by
    simp only [repeatM.Pred]
    split <;> rename_i h
    · have key : (fun x => (repeatM.impl f x).val) = h.choose := funext fun x => by
        simpa only [repeatM.Pred, dif_pos h] using (repeatM.impl f x).property
      rw [key]; exact congrFun h.choose_spec a
    · trivial⟩

/--
An erased version of `repeatM.impl` that eta-expands better in the compiler.
Can be removed once `repeatM.impl` optimizes to the same code.
-/
@[specialize] private partial def repeatM.erased [Nonempty β] (f : α → m (α ⊕ β)) (a : α) : m β :=
  repeatM.body f (repeatM.erased f ·) a

/--
`repeatM f a` iterates `f` at `a`, recursing on `.inl` and terminating on `.inr`.

Its unfolding lemma is `repeatM_eq_of_monadTail`.
-/
@[implemented_by repeatM.erased] -- See comment above `repeatM.erased`.
public def repeatM [Nonempty β] (f : α → m (α ⊕ β)) (a : α) : m β :=
  (repeatM.impl f a).val

-- This lemma is intentionally private. Users are expected to unfold using
-- `repeatM_eq_of_monadTail` instead.
private theorem repeatM_eq [Nonempty β] {f : α → m (α ⊕ β)} (a : α)
    (h : ∃ g, repeatM.body f g = g) :
    repeatM f a = repeatM.body f (repeatM f) a := by
  have key : (fun x => (repeatM.impl f x).val) = h.choose := funext fun x => by
    simpa only [repeatM.Pred, dif_pos h] using (repeatM.impl f x).property
  show (repeatM.impl f a).val = repeatM.body f (fun x => (repeatM.impl f x).val) a
  rw [key, congrFun key a]; exact (congrFun h.choose_spec a).symm

namespace Lean

/-!
# `Loop` type backing `repeat`/`while`/`repeat ... until`

The parsers and elaborators for `repeat`, `while`, and `repeat ... until` live in
`Lean.Parser.Do` and `Lean.Elab.BuiltinDo.Repeat`. This module only provides the
`Loop` type (and `ForIn` instance) that those elaborators expand to.
-/

public structure Loop

@[inline, expose] public protected def Loop.forIn {β : Type u} {m : Type u → Type v} [Monad m]
    (_ : Loop) (init : β) (f : Unit → β → m (ForInStep β)) : m β :=
  haveI : Nonempty β := ⟨init⟩
  repeatM (a := init) fun b => do
    match ← f () b with
    | .done b'  => pure (.inr b')
    | .yield b' => pure (.inl b')

public instance [Monad m] : ForIn m Loop Unit where
  forIn := Loop.forIn

end Lean
```
