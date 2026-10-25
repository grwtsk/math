# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SaddlePoint.Variant2c8b1e0db9c482805bd0eddec77298c7bbbae6a858b6544fb479cdd39a155cf3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f402bdd7c657a4d0d03a00aee50408b2f59515b` · SHA-256 `eb5ecf2b5f9af62577e34f5755439260667454d72f3fec33636784c9dc507ec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ISupIInfLeIInfISup.Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ISupIInfLeIInfISup.Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/SaddlePoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir, Anatole Dedecker
-/
module

public import Mathlib.Order.ConditionallyCompleteLattice.Basic
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.SetLike

/-!
# Saddle points of a map

* `IsSaddlePointOn`.
  Let `f : E × F → β` be a map, where `β` is preordered.
  A pair `(a,b)` in `E × F` is a *saddle point* of `f` on `X × Y`
  if `f a y ≤ f x b` for all `x ∈ X` and all `y` in `Y`.

* `isSaddlePointOn_iff`: if `β` is a complete linear order,
  then `(a, b) ∈ X × Y` is a saddle point on `X × Y` iff
  `⨆ y ∈ Y, f a y = ⨅ x ∈ X, f x b = f a b`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ISupIInfLeIInfISup.Variant3f6196b3057a7b64d431f0fc05b492447411d803f09207bc81f7d45c69c9240f

@[expose] public section

open Set

section SaddlePoint

variable {E F : Type*} {β : Type*}
variable (X : Set E) (Y : Set F) (f : E → F → β)

/-- The trivial minimax inequality -/
theorem iSup₂_iInf₂_le_iInf₂_iSup₂ [CompleteLinearOrder β] :
    ⨆ y ∈ Y, ⨅ x ∈ X, f x y ≤ ⨅ x ∈ X, ⨆ y ∈ Y, f x y := by
  rw [iSup₂_le_iff]; intro y hy
  rw [le_iInf₂_iff]; intro x hx
  exact iInf₂_le_of_le x hx (le_iSup₂_of_le y hy (le_refl _))

-- [Hiriart-Urruty, (4.1.4)]
/-- The pair `(a, b)` is a saddle point of `f` on `X × Y`
if `f a y ≤ f x b` for all `x ∈ X` and all `y` in `Y`.

Note: we do not require that `a ∈ X` and `b ∈ Y`. -/
def IsSaddlePointOn [Preorder β] (a : E) (b : F) : Prop :=
  ∀ x ∈ X, ∀ y ∈ Y, f a y ≤ f x b

variable {X Y f}

lemma IsSaddlePointOn.swap_left [Preorder β] {a a' : E} {b b' : F} (ha' : a' ∈ X) (hb : b ∈ Y)
    (h : IsSaddlePointOn X Y f a b) (h' : IsSaddlePointOn X Y f a' b') :
    IsSaddlePointOn X Y f a b' := fun x hx y hy ↦
  le_trans (h a' ha' y hy) (h' x hx b hb)

lemma IsSaddlePointOn.swap_right [Preorder β] {a a' : E} {b b' : F} (ha : a ∈ X) (hb' : b' ∈ Y)
    (h : IsSaddlePointOn X Y f a b) (h' : IsSaddlePointOn X Y f a' b') :
    IsSaddlePointOn X Y f a' b :=
  IsSaddlePointOn.swap_left ha hb' h' h

-- [Hiriart-Urruty, (4.1.1)]
lemma isSaddlePointOn_iff [CompleteLinearOrder β]
    {a : E} (ha : a ∈ X) {b : F} (hb : b ∈ Y) :
    IsSaddlePointOn X Y f a b ↔
      ⨆ y ∈ Y, f a y = f a b ∧ ⨅ x ∈ X, f x b = f a b := by
  refine ⟨fun h ↦ ⟨?_, ?_⟩, fun ⟨h, h'⟩ x hx y hy ↦ ?_⟩
  · apply le_antisymm
    · simp only [iSup_le_iff]
      exact h a ha
    · apply le_iSup₂ b hb
  · apply le_antisymm
    · apply iInf₂_le a ha
    · simp only [le_iInf_iff]
      intro x hx
      exact h x hx b hb
  · trans f a b
    · -- f a y ≤ f a b
      rw [← h]
      apply le_iSup₂ y hy
    · -- f a b ≤ f x b
      rw [← h']
      apply iInf₂_le x hx

-- [Hiriart-Urruty, Prop. 4.2.2]
lemma isSaddlePointOn_iff' [CompleteLinearOrder β]
    {a : E} (ha : a ∈ X) {b : F} (hb : b ∈ Y) :
    IsSaddlePointOn X Y f a b ↔
      ⨆ y ∈ Y, f a y ≤ ⨅ x ∈ X, f x b := by
  rw [isSaddlePointOn_iff ha hb]
  refine ⟨fun ⟨h, h'⟩ ↦ ?_, fun h ↦ ⟨?_, ?_⟩⟩
  · exact le_trans (le_of_eq h) (le_of_eq h'.symm)
  · apply le_antisymm
    · exact le_trans h (iInf₂_le a ha)
    · apply le_iSup₂ b hb
  · apply le_antisymm
    · apply iInf₂_le a ha
    · apply le_trans (le_iSup₂ b hb) h

-- [Hiriart-Urruty, Prop. 4.2.2]
-- The converse doesn't seem to hold
/-- Minimax formulation of saddle points -/
lemma isSaddlePointOn_value [CompleteLinearOrder β]
    {a : E} (ha : a ∈ X) {b : F} (hb : b ∈ Y)
    (h : IsSaddlePointOn X Y f a b) :
    ⨅ x ∈ X, ⨆ y ∈ Y, f x y = f a b ∧
      ⨆ y ∈ Y, ⨅ x ∈ X, f x y = f a b := by
  rw [isSaddlePointOn_iff ha hb] at h
  constructor
  · apply le_antisymm
    · rw [← h.1]
      exact le_trans (iInf₂_le a ha) (le_rfl)
    · rw [← h.2]
      apply iInf₂_mono
      intro x _
      apply le_iSup₂ b hb
  · apply le_antisymm
    · rw [← h.1]
      apply iSup₂_mono
      intro y _
      apply iInf₂_le a ha
    · rw [← h.2]
      apply le_trans (le_rfl) (le_iSup₂ b hb)

end SaddlePoint
```
