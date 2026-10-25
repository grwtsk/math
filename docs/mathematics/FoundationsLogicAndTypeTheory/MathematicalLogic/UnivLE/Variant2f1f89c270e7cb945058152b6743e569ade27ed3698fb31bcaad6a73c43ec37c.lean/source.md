# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variant2f1f89c270e7cb945058152b6743e569ade27ed3698fb31bcaad6a73c43ec37c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc24b5a543a814e4922306156f90e56ad4043150` · SHA-256 `427aa0437ab9d4496ce43d8e0ee9c76c588064bbc18d53d1f189dd380f3dbd59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variant624e54bdd92bf3b001aeefd03d8fe512e218935664167719716ede3e0dd339f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"624e54bdd92bf3b001aeefd03d8fe512e218935664167719716ede3e0dd339f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.UnivLE.Variant624e54bdd92bf3b001aeefd03d8fe512e218935664167719716ede3e0dd339f3","mathematical_subject":"Logic.Foundations","original_sha256":"624e54bdd92bf3b001aeefd03d8fe512e218935664167719716ede3e0dd339f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Logic.Small.Defs

/-!
# UnivLE

A proposition expressing a universe inequality. `UnivLE.{u, v}` expresses that `u ≤ v`,
in the form `∀ α : Type u, Small.{v} α`.

This API indirectly provides an instance for `Small.{u, max u v}`, which could not be declared
directly due to https://github.com/leanprover/lean4/issues/2297.

See the doc-string for the comparison with an alternative stronger definition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variant624e54bdd92bf3b001aeefd03d8fe512e218935664167719716ede3e0dd339f3

public section

universe u v w

noncomputable section

/--
A class expressing a universe inequality. `UnivLE.{u, v}` expresses that `u ≤ v`.

There used to be a stronger definition `∀ α : Type max u v, Small.{v} α` that immediately implies
`Small.{v} ((α : Type u) → (β : Type v))` which is essential for proving that `Type v` has
`Type u`-indexed limits when `u ≤ v`. However the current weaker condition
`∀ α : Type u, Small.{v} α` also implies the same, so we switched to use it for
its simplicity and transitivity.

The strong definition easily implies the weaker definition (see below),
but we cannot prove the reverse implication.
This is because in Lean's type theory, while `max u v` is at least as big as `u` and `v`,
it could be bigger than both!
See also `Mathlib/CategoryTheory/UnivLE.lean` for the statement that the stronger definition is
equivalent to `EssSurj (uliftFunctor : Type v ⥤ Type max u v)`.
-/
-- After https://github.com/leanprover/lean4/pull/12286 and
-- https://github.com/leanprover/lean4/pull/12423, both universe parameters would default to
-- output (since there are no input parameters at all).
-- See Note [universe output parameters and typeclass caching].
@[univ_out_params, pp_with_univ, mk_iff]
class UnivLE : Prop where
  small (α : Type u) : Small.{v} α

attribute [instance] UnivLE.small


/- This is useless as an instance due to https://github.com/leanprover/lean4/issues/2297 -/
theorem univLE_max : UnivLE.{u, max u v} where small α := small_max.{v} α

theorem Small.trans_univLE (α : Type w) [hα : Small.{u} α] [h : UnivLE.{u, v}] :
    Small.{v} α :=
  let ⟨β, ⟨f⟩⟩ := hα.equiv_small
  let ⟨_, ⟨g⟩⟩ := (h.small β).equiv_small
  ⟨_, ⟨f.trans g⟩⟩

theorem UnivLE.trans [UnivLE.{u, v}] [UnivLE.{v, w}] : UnivLE.{u, w} where
  small α := Small.trans_univLE α

instance UnivLE.self : UnivLE.{u, u} := ⟨inferInstance⟩
instance UnivLE.zero : UnivLE.{0, u} := ⟨inferInstance⟩

/-- This is redundant as an instance given the below. -/
theorem UnivLE.succ [UnivLE.{u, v}] : UnivLE.{u, v + 1} := @UnivLE.trans _ ⟨inferInstance⟩

/-- This is the crucial instance that subsumes `univLE_max`. -/
instance univLE_of_max [UnivLE.{max u v, v}] : UnivLE.{u, v} := @UnivLE.trans univLE_max ‹_›

-- order doesn't matter
example : UnivLE.{v, max v u} := inferInstance
example : UnivLE.{v, max u v} := inferInstance
example : UnivLE.{u, max v u} := inferInstance
example : UnivLE.{u, max u v} := inferInstance
-- `succ` is implied
example : UnivLE.{u, u + 1} := inferInstance
example : UnivLE.{2, 5} := inferInstance

/- When `small_Pi` from `Mathlib/Logic/Small/Basic.lean` is imported, we have: -/
-- example (α : Type u) (β : Type v) [UnivLE.{u, v}] : Small.{v} (α → β) := inferInstance

example : ¬UnivLE.{u + 1, u} := by
  simp only [univLE_iff, small_iff, not_forall, not_exists]
  exact ⟨Type u, fun α => fun ⟨f⟩ => Function.not_surjective_Type.{u, u} f.symm f.symm.surjective⟩
```
