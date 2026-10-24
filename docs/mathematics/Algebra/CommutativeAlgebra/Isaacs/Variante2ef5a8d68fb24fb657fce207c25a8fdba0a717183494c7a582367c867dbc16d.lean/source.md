# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Isaacs.Variante2ef5a8d68fb24fb657fce207c25a8fdba0a717183494c7a582367c867dbc16d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49c0d6f6349baac3c0437d7154c0922e0ac2fd57` · SHA-256 `639a494eea0b1a1912c2dfe9ccaabc32b136782199d9f1938f75d94ab7084951`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.NonemptyAlgHomOfExistRoots.Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.NonemptyAlgHomOfExistRoots.Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008","mathematical_subject":"Algebra.Polynomials","original_sha256":"1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/FieldTheory/Isaacs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.FieldTheory.Normal.Basic
import Mathlib.FieldTheory.PrimitiveElement
import Mathlib.GroupTheory.CosetCover

/-!
# Algebraic extensions are determined by their sets of minimal polynomials up to isomorphism

## Main results

`Field.nonempty_algHom_of_exist_roots` says if `E/F` and `K/F` are field extensions
with `E/F` algebraic, and if the minimal polynomial of every element of `E` over `F` has a root
in `K`, then there exists an `F`-embedding of `E` into `K`. If `E/F` and `K/F` have the same
set of minimal polynomials, then `E` and `K` are isomorphic as `F`-algebras. As a corollary:

`IsAlgClosure.of_exist_roots`: if `E/F` is algebraic and every monic irreducible polynomial
in `F[X]` has a root in `E`, then `E` is an algebraic closure of `F`.

## Reference

[Isaacs1980] *Roots of Polynomials in Algebraic Extensions of Fields*,
The American Mathematical Monthly

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.NonemptyAlgHomOfExistRoots.Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008

namespace Field

open Polynomial IntermediateField

variable {F E K : Type*} [Field F] [Field E] [Field K] [Algebra F E] [Algebra F K]
variable [alg : Algebra.IsAlgebraic F E]

theorem nonempty_algHom_of_exist_roots (h : ∀ x : E, ∃ y : K, aeval y (minpoly F x) = 0) :
    Nonempty (E →ₐ[F] K) := by
  refine Lifts.nonempty_algHom_of_exist_lifts_finset fun S ↦ ⟨⟨adjoin F S, ?_⟩, subset_adjoin _ _⟩
  let p := (S.prod <| minpoly F).map (algebraMap F K)
  let K' := SplittingField p
  have splits s (hs : s ∈ S) : (minpoly F s).Splits (algebraMap F K') := by
    apply splits_of_splits_of_dvd _
      (Finset.prod_ne_zero_iff.mpr fun _ _ ↦ minpoly.ne_zero <| (alg.isIntegral).1 _)
      ((splits_map_iff _ _).mp <| SplittingField.splits p) (Finset.dvd_prod_of_mem _ hs)
  let K₀ := (⊥ : IntermediateField K K').restrictScalars F
  let FS := adjoin F (S : Set E)
  let Ω := FS →ₐ[F] K'
  have := finiteDimensional_adjoin (S := (S : Set E)) fun _ _ ↦ (alg.isIntegral).1 _
  let M (ω : Ω) := Subalgebra.toSubmodule (K₀.comap ω).toSubalgebra
  have : ⋃ ω : Ω, (M ω : Set FS) = Set.univ :=
    Set.eq_univ_of_forall fun ⟨α, hα⟩ ↦ Set.mem_iUnion.mpr <| by
      have ⟨β, hβ⟩ := h α
      let ϕ : F⟮α⟯ →ₐ[F] K' := (IsScalarTower.toAlgHom _ _ _).comp ((AdjoinRoot.liftHom _ _ hβ).comp
        (adjoinRootEquivAdjoin F <| (alg.isIntegral).1 _).symm.toAlgHom)
      have ⟨ω, hω⟩ := exists_algHom_adjoin_of_splits
        (fun s hs ↦ ⟨(alg.isIntegral).1 _, splits s hs⟩) ϕ (adjoin_simple_le_iff.mpr hα)
      refine ⟨ω, β, ((DFunLike.congr_fun hω <| AdjoinSimple.gen F α).trans ?_).symm⟩
      rw [AlgHom.comp_apply, AlgHom.comp_apply, AlgEquiv.coe_algHom,
        adjoinRootEquivAdjoin_symm_apply_gen, AdjoinRoot.liftHom_root]
      rfl
  have ω : ∃ ω : Ω, ⊤ ≤ M ω := by
    cases finite_or_infinite F
    · have ⟨α, hα⟩ := exists_primitive_element_of_finite_bot F FS
      have ⟨ω, hω⟩ := Set.mem_iUnion.mp (this ▸ Set.mem_univ α)
      exact ⟨ω, show ⊤ ≤ K₀.comap ω by rwa [← hα, adjoin_simple_le_iff]⟩
    · simp_rw [top_le_iff, Subspace.exists_eq_top_of_iUnion_eq_univ this]
  exact ((botEquiv K K').toAlgHom.restrictScalars F).comp
    (ω.choose.codRestrict K₀.toSubalgebra fun x ↦ ω.choose_spec trivial)

theorem nonempty_algHom_of_minpoly_eq
    (h : ∀ x : E, ∃ y : K, minpoly F x = minpoly F y) :
    Nonempty (E →ₐ[F] K) :=
  nonempty_algHom_of_exist_roots fun x ↦ have ⟨y, hy⟩ := h x; ⟨y, by rw [hy, minpoly.aeval]⟩

theorem nonempty_algHom_of_range_minpoly_subset
    (h : Set.range (@minpoly F E _ _ _) ⊆ Set.range (@minpoly F K _ _ _)) :
    Nonempty (E →ₐ[F] K) :=
  nonempty_algHom_of_minpoly_eq fun x ↦ have ⟨y, hy⟩ := h ⟨x, rfl⟩; ⟨y, hy.symm⟩

theorem nonempty_algEquiv_of_range_minpoly_eq
    (h : Set.range (@minpoly F E _ _ _) = Set.range (@minpoly F K _ _ _)) :
    Nonempty (E ≃ₐ[F] K) :=
  have ⟨σ⟩ := nonempty_algHom_of_range_minpoly_subset h.le
  have : Algebra.IsAlgebraic F K := ⟨fun y ↦ IsIntegral.isAlgebraic <| by
    by_contra hy
    have ⟨x, hx⟩ := h.ge ⟨y, rfl⟩
    rw [minpoly.eq_zero hy] at hx
    exact minpoly.ne_zero ((alg.isIntegral).1 x) hx⟩
  have ⟨τ⟩ := nonempty_algHom_of_range_minpoly_subset h.ge
  ⟨.ofBijective _ (Algebra.IsAlgebraic.algHom_bijective₂ σ τ).1⟩

theorem nonempty_algHom_of_aeval_eq_zero_subset
    (h : {p : F[X] | ∃ x : E, aeval x p = 0} ⊆ {p | ∃ y : K, aeval y p = 0}) :
    Nonempty (E →ₐ[F] K) :=
  nonempty_algHom_of_minpoly_eq fun x ↦
    have ⟨y, hy⟩ := h ⟨_, minpoly.aeval F x⟩
    ⟨y, (minpoly.eq_iff_aeval_minpoly_eq_zero <| (alg.isIntegral).1 x).mpr hy⟩

theorem nonempty_algEquiv_of_aeval_eq_zero_eq [Algebra.IsAlgebraic F K]
    (h : {p : F[X] | ∃ x : E, aeval x p = 0} = {p | ∃ y : K, aeval y p = 0}) :
    Nonempty (E ≃ₐ[F] K) :=
  have ⟨σ⟩ := nonempty_algHom_of_aeval_eq_zero_subset h.le
  have ⟨τ⟩ := nonempty_algHom_of_aeval_eq_zero_subset h.ge
  ⟨.ofBijective _ (Algebra.IsAlgebraic.algHom_bijective₂ σ τ).1⟩

theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.NonemptyAlgHomOfExistRoots.Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.IsAlgClosure.of_exist_roots
    (h : ∀ p : F[X], p.Monic → Irreducible p → ∃ x : E, aeval x p = 0) :
    IsAlgClosure F E :=
  .of_splits fun p _ _ ↦
    have ⟨σ⟩ := nonempty_algHom_of_exist_roots fun x : p.SplittingField ↦
      have := Algebra.IsAlgebraic.isIntegral (K := F).1 x
      h _ (minpoly.monic this) (minpoly.irreducible this)
    splits_of_algHom (SplittingField.splits _) σ

end Field
```
