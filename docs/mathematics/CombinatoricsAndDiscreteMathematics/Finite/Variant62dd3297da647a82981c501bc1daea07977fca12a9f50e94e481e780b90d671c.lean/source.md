# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61c052edd61bc799f849ccd639b670d0ab8dc777` · SHA-256 `e9acb448c22cd9f0956af53406e665db5ee7d50b565ba59b862ba4d8924813e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Finite.Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.Dimension
public import Mathlib.AlgebraicTopology.SimplicialSet.NonDegenerateSimplices
public import Mathlib.Basic.Finite.Sigma

/-!
# Finite simplicial sets

A simplicial set is finite (`SSet.Finite`) if it has finitely
many nondegenerate simplices.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant1b56bbc3e09a473f20581b6668bd820ba6e266f0c4ba35ab769d6067b0a6399a

public section

universe u

open CategoryTheory

open scoped Simplicial

namespace SSet

variable (X : SSet.{u})

/-- A simplicial set is finite if it has finitely many nondegenerate simplices. -/
protected class Finite : Prop where
  finite : _root_.Finite X.N

attribute [instance] Finite.finite

instance [X.Finite] (n : ℕ) : Finite (X.nonDegenerate n) :=
  Finite.of_injective (fun x ↦ N.mk _ x.property) (fun x y h ↦ by
    rw [N.ext_iff, S.ext_iff'] at h
    aesop)

lemma finite_of_hasDimensionLT (d : ℕ) [X.HasDimensionLT d]
    (h : ∀ (i : ℕ) (_ : i < d), Finite (X.nonDegenerate i)) :
    X.Finite where
  finite := by
    have (i : Fin d) : Finite (X.nonDegenerate i) := h i.1 i.2
    refine Finite.of_surjective (α := Σ (i : Fin d), X.nonDegenerate i)
      (f := fun ⟨i, x⟩ ↦ N.mk _ x.property) (fun x ↦ ?_)
    by_cases hj : x.dim < d
    · exact ⟨⟨⟨_, hj⟩, ⟨_, x.nonDegenerate⟩⟩, rfl⟩
    · have := x.nonDegenerate
      simp [X.nonDegenerate_eq_empty_of_hasDimensionLT d x.dim (by simpa using hj)] at this

set_option backward.defeqAttrib.useBackward true in
lemma hasDimensionLT_of_finite [X.Finite] :
    ∃ (d : ℕ), X.HasDimensionLT d := by
  have : Fintype X.N := Fintype.ofFinite _
  let φ (x : X.N) : ℕ := x.dim
  obtain ⟨d, hd⟩ : ∃ (d : ℕ), ∀ (s : ℕ) (_ : s ∈ Finset.image φ ⊤), s < d := by
    by_cases h : (Finset.image φ ⊤).Nonempty
    · obtain ⟨d, hd⟩ := Finset.max_of_nonempty h
      exact ⟨d + 1, fun _ _ ↦ by grind [WithBot.coe_le_coe, → Finset.le_max]⟩
    · rw [Finset.not_nonempty_iff_eq_empty] at h
      simp only [h]
      exact ⟨0, by simp⟩
  refine ⟨d, ⟨fun n hn ↦ ?_⟩⟩
  ext x
  simp only [mem_degenerate_iff_notMem_nonDegenerate, Set.top_eq_univ,
    Set.mem_univ, iff_true]
  intro hx
  have := hd (φ (N.mk _ hx)) (by simp)
  dsimp [φ] at this
  lia

instance [X.Finite] (n : SimplexCategoryᵒᵖ) : Finite (X.obj n) := by
  obtain ⟨n⟩ := n
  induction n using SimplexCategory.rec with | _ n
  let φ : (Σ (m : Fin (n + 1)) (f : ⦋n⦌ ⟶ ⦋m.1⦌),
    X.nonDegenerate m.1) → X _⦋n⦌ := fun ⟨m, f, x⟩ ↦ X.map f.op x.1
  have hφ : Function.Surjective φ := fun x ↦ by
    obtain ⟨m, f, hf, y, rfl⟩ := X.exists_nonDegenerate x
    have := SimplexCategory.le_of_epi f
    exact ⟨⟨⟨m, by lia⟩, f, y⟩, rfl⟩
  exact Finite.of_surjective _ hφ

instance [X.Finite] (A : X.Subcomplex) : SSet.Finite A := by
  obtain ⟨d, _⟩ := X.hasDimensionLT_of_finite
  refine finite_of_hasDimensionLT _ d (fun i hi ↦ ?_)
  apply Finite.of_injective (f := fun a ↦ a.1.1)
  rintro ⟨⟨x, _⟩, _⟩ ⟨⟨y, _⟩, _⟩ rfl
  rfl

variable {X}

lemma finite_of_mono {Y : SSet.{u}} [Y.Finite] (f : X ⟶ Y) [hf : Mono f] : X.Finite := by
  obtain ⟨d, _⟩ := Y.hasDimensionLT_of_finite
  have := hasDimensionLT_of_mono f d
  exact finite_of_hasDimensionLT _ d
    (fun _ _ ↦ Finite.of_injective _
      ((injective_of_mono (f.app _)).comp Subtype.val_injective))

lemma finite_of_epi {Y : SSet.{u}} [X.Finite] (f : X ⟶ Y) [hf : Epi f] : Y.Finite := by
  obtain ⟨d, _⟩ := X.hasDimensionLT_of_finite
  have := hasDimensionLT_of_epi f d
  refine finite_of_hasDimensionLT _ d (fun i hi ↦ ?_)
  have : Finite (Y _⦋i⦌) := by
    rw [NatTrans.epi_iff_epi_app] at hf
    simp only [epi_iff_surjective] at hf
    exact Finite.of_surjective _ (hf _)
  infer_instance

lemma finite_of_iso {Y : SSet.{u}} (e : X ≅ Y) [X.Finite] : Y.Finite :=
  finite_of_mono e.inv

lemma finite_iff_of_iso {Y : SSet.{u}} (e : X ≅ Y) : X.Finite ↔ Y.Finite :=
  ⟨fun _ ↦ finite_of_iso e, fun _ ↦ finite_of_iso e.symm⟩

variable (X) in
lemma finite_subcomplex_top_iff :
    SSet.Finite (⊤ : X.Subcomplex) ↔ X.Finite :=
  finite_iff_of_iso (Subcomplex.topIso X)

instance finite_range {Y : SSet.{u}} (f : Y ⟶ X) [Y.Finite] :
    SSet.Finite (Subcomplex.range f) :=
  finite_of_epi (Subcomplex.toRange f)

lemma finite_iSup_iff {X : SSet.{u}} {ι : Type*} [Finite ι]
    (A : ι → X.Subcomplex) :
    SSet.Finite (⨆ i, A i :) ↔ ∀ i, SSet.Finite (A i) := by
  refine ⟨fun h i ↦ finite_of_mono (Subcomplex.homOfLE (le_iSup A i)), fun h ↦ ⟨?_⟩⟩
  refine Finite.of_surjective (f := fun (⟨i, s⟩ : Σ (i : ι), (A i).toSSet.N) ↦
    N.mk ((Subcomplex.homOfLE (le_iSup A i)).app _ s.simplex)
      (by simpa only [nonDegenerate_iff_of_mono] using s.nonDegenerate)) ?_
  intro s
  obtain ⟨d, ⟨⟨s, h₁⟩, h₂⟩, rfl⟩ := s.mk_surjective
  simp only [Subfunctor.iSup_obj, Set.mem_iUnion] at h₁
  obtain ⟨i, hi⟩ := h₁
  rw [Subcomplex.mem_nonDegenerate_iff] at h₂
  exact ⟨⟨i, N.mk ⟨s, hi⟩ (by rwa [Subcomplex.mem_nonDegenerate_iff])⟩, rfl⟩

end SSet
```
