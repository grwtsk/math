# Complete source: GRWTSK.Analysis.FunctionalAnalysis.LinearPMap.Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9687806f9d1c8e46810fb22fcc90f1f4bb60d2ef` · SHA-256 `dc0804bb89ad1bcd638c61008a57366814b7aa0f326ba0773fb45de6906f9083`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsFormalAdjoint.Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.IsFormalAdjoint.Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/InnerProductSpace/LinearPMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Topology.Algebra.Module.LinearPMap
import Mathlib.Topology.Algebra.Module.Basic


namespace GRWTSK.Analysis.FunctionalAnalysis.IsFormalAdjoint.Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1

#align_import analysis.inner_product_space.linear_pmap from "leanprover-community/mathlib"@"8b981918a93bc45a8600de608cde7944a80d92b9"

/-!

# Partially defined linear operators on Hilbert spaces

We will develop the basics of the theory of unbounded operators on Hilbert spaces.

## Main definitions

* `LinearPMap.IsFormalAdjoint`: An operator `T` is a formal adjoint of `S` if for all `x` in the
  domain of `T` and `y` in the domain of `S`, we have that `⟪T x, y⟫ = ⟪x, S y⟫`.
* `LinearPMap.adjoint`: The adjoint of a map `E →ₗ.[𝕜] F` as a map `F →ₗ.[𝕜] E`.

## Main statements

* `LinearPMap.adjoint_isFormalAdjoint`: The adjoint is a formal adjoint
* `LinearPMap.IsFormalAdjoint.le_adjoint`: Every formal adjoint is contained in the adjoint
* `ContinuousLinearMap.toPMap_adjoint_eq_adjoint_toPMap_of_dense`: The adjoint on
  `ContinuousLinearMap` and `LinearPMap` coincide.

## Notation

* For `T : E →ₗ.[𝕜] F` the adjoint can be written as `T†`.
  This notation is localized in `LinearPMap`.

## Implementation notes

We use the junk value pattern to define the adjoint for all `LinearPMap`s. In the case that
`T : E →ₗ.[𝕜] F` is not densely defined the adjoint `T†` is the zero map from `T.adjoint.domain` to
`E`.

## References

* [J. Weidmann, *Linear Operators in Hilbert Spaces*][weidmann_linear]

## Tags

Unbounded operators, closed operators
-/


noncomputable section

open IsROrC

open scoped ComplexConjugate Classical

variable {𝕜 E F G : Type*} [IsROrC 𝕜]

variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]

local notation "⟪" x ", " y "⟫" => @inner 𝕜 _ _ x y

namespace LinearPMap

/-- An operator `T` is a formal adjoint of `S` if for all `x` in the domain of `T` and `y` in the
domain of `S`, we have that `⟪T x, y⟫ = ⟪x, S y⟫`. -/
def IsFormalAdjoint (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] E) : Prop :=
  ∀ (x : T.domain) (y : S.domain), ⟪T x, y⟫ = ⟪(x : E), S y⟫
#align linear_pmap.is_formal_adjoint LinearPMap.IsFormalAdjoint

variable {T : E →ₗ.[𝕜] F} {S : F →ₗ.[𝕜] E}

@[symm]
protected theorem IsFormalAdjoint.symm (h : T.IsFormalAdjoint S) :
    S.IsFormalAdjoint T := fun y _ => by
  rw [← inner_conj_symm, ← inner_conj_symm (y : F), h]
#align linear_pmap.is_formal_adjoint.symm LinearPMap.IsFormalAdjoint.symm

variable (T)

/-- The domain of the adjoint operator.

This definition is needed to construct the adjoint operator and the preferred version to use is
`T.adjoint.domain` instead of `T.adjointDomain`. -/
def adjointDomain : Submodule 𝕜 F where
  carrier := {y | Continuous ((innerₛₗ 𝕜 y).comp T.toFun)}
  zero_mem' := by
    rw [Set.mem_setOf_eq, LinearMap.map_zero, LinearMap.zero_comp]
    exact continuous_zero
  add_mem' hx hy := by rw [Set.mem_setOf_eq, LinearMap.map_add] at *; exact hx.add hy
  smul_mem' a x hx := by
    rw [Set.mem_setOf_eq, LinearMap.map_smulₛₗ] at *
    exact hx.const_smul (conj a)
#align linear_pmap.adjoint_domain LinearPMap.adjointDomain

/-- The operator `λ x, ⟪y, T x⟫` considered as a continuous linear operator from `T.adjointDomain`
to `𝕜`. -/
def adjointDomainMkClm (y : T.adjointDomain) : T.domain →L[𝕜] 𝕜 :=
  ⟨(innerₛₗ 𝕜 (y : F)).comp T.toFun, y.prop⟩
#align linear_pmap.adjoint_domain_mk_clm LinearPMap.adjointDomainMkClm

theorem adjointDomainMkClm_apply (y : T.adjointDomain) (x : T.domain) :
    adjointDomainMkClm T y x = ⟪(y : F), T x⟫ :=
  rfl
#align linear_pmap.adjoint_domain_mk_clm_apply LinearPMap.adjointDomainMkClm_apply

variable {T}

variable (hT : Dense (T.domain : Set E))

/-- The unique continuous extension of the operator `adjointDomainMkClm` to `E`. -/
def adjointDomainMkClmExtend (y : T.adjointDomain) : E →L[𝕜] 𝕜 :=
  (T.adjointDomainMkClm y).extend (Submodule.subtypeL T.domain) hT.denseRange_val
    uniformEmbedding_subtype_val.toUniformInducing
#align linear_pmap.adjoint_domain_mk_clm_extend LinearPMap.adjointDomainMkClmExtend

@[simp]
theorem adjointDomainMkClmExtend_apply (y : T.adjointDomain) (x : T.domain) :
    adjointDomainMkClmExtend hT y (x : E) = ⟪(y : F), T x⟫ :=
  ContinuousLinearMap.extend_eq _ _ _ _ _
#align linear_pmap.adjoint_domain_mk_clm_extend_apply LinearPMap.adjointDomainMkClmExtend_apply

variable [CompleteSpace E]

/-- The adjoint as a linear map from its domain to `E`.

This is an auxiliary definition needed to define the adjoint operator as a `LinearPMap` without
the assumption that `T.domain` is dense. -/
def adjointAux : T.adjointDomain →ₗ[𝕜] E where
  toFun y := (InnerProductSpace.toDual 𝕜 E).symm (adjointDomainMkClmExtend hT y)
  map_add' x y :=
    hT.eq_of_inner_left fun _ => by
      simp only [inner_add_left, Submodule.coe_add, InnerProductSpace.toDual_symm_apply,
        adjointDomainMkClmExtend_apply]
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- mathlib3 was finished here
      rw [adjointDomainMkClmExtend_apply, adjointDomainMkClmExtend_apply,
        adjointDomainMkClmExtend_apply]
      simp only [AddSubmonoid.coe_add, Submodule.coe_toAddSubmonoid, inner_add_left]
  map_smul' _ _ :=
    hT.eq_of_inner_left fun _ => by
      simp only [inner_smul_left, Submodule.coe_smul_of_tower, RingHom.id_apply,
        InnerProductSpace.toDual_symm_apply, adjointDomainMkClmExtend_apply]
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- mathlib3 was finished here
      rw [adjointDomainMkClmExtend_apply, adjointDomainMkClmExtend_apply]
      simp only [Submodule.coe_smul_of_tower, inner_smul_left]
#align linear_pmap.adjoint_aux LinearPMap.adjointAux

theorem adjointAux_inner (y : T.adjointDomain) (x : T.domain) :
    ⟪adjointAux hT y, x⟫ = ⟪(y : F), T x⟫ := by
  simp only [adjointAux, LinearMap.coe_mk, InnerProductSpace.toDual_symm_apply,
    adjointDomainMkClmExtend_apply]
  -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
  -- mathlib3 was finished here
  simp only [AddHom.coe_mk, InnerProductSpace.toDual_symm_apply]
  rw [adjointDomainMkClmExtend_apply]
#align linear_pmap.adjoint_aux_inner LinearPMap.adjointAux_inner

theorem adjointAux_unique (y : T.adjointDomain) {x₀ : E}
    (hx₀ : ∀ x : T.domain, ⟪x₀, x⟫ = ⟪(y : F), T x⟫) : adjointAux hT y = x₀ :=
  hT.eq_of_inner_left fun v => (adjointAux_inner hT _ _).trans (hx₀ v).symm
#align linear_pmap.adjoint_aux_unique LinearPMap.adjointAux_unique

variable (T)

/-- The adjoint operator as a partially defined linear operator. -/
def adjoint : F →ₗ.[𝕜] E where
  domain := T.adjointDomain
  toFun := if hT : Dense (T.domain : Set E) then adjointAux hT else 0
#align linear_pmap.adjoint LinearPMap.adjoint

scoped postfix:1024 "†" => LinearPMap.adjoint

theorem mem_adjoint_domain_iff (y : F) : y ∈ T†.domain ↔ Continuous ((innerₛₗ 𝕜 y).comp T.toFun) :=
  Iff.rfl
#align linear_pmap.mem_adjoint_domain_iff LinearPMap.mem_adjoint_domain_iff

variable {T}

theorem mem_adjoint_domain_of_exists (y : F) (h : ∃ w : E, ∀ x : T.domain, ⟪w, x⟫ = ⟪y, T x⟫) :
    y ∈ T†.domain := by
  cases' h with w hw
  rw [T.mem_adjoint_domain_iff]
  -- Porting note: was `by continuity`
  have : Continuous ((innerSL 𝕜 w).comp T.domain.subtypeL) := ContinuousLinearMap.continuous _
  convert this using 1
  exact funext fun x => (hw x).symm
#align linear_pmap.mem_adjoint_domain_of_exists LinearPMap.mem_adjoint_domain_of_exists

theorem adjoint_apply_of_not_dense (hT : ¬Dense (T.domain : Set E)) (y : T†.domain) : T† y = 0 := by
  change (if hT : Dense (T.domain : Set E) then adjointAux hT else 0) y = _
  simp only [hT, not_false_iff, dif_neg, LinearMap.zero_apply]
#align linear_pmap.adjoint_apply_of_not_dense LinearPMap.adjoint_apply_of_not_dense

theorem adjoint_apply_of_dense (y : T†.domain) : T† y = adjointAux hT y := by
  change (if hT : Dense (T.domain : Set E) then adjointAux hT else 0) y = _
  simp only [hT, dif_pos, LinearMap.coe_mk]
#align linear_pmap.adjoint_apply_of_dense LinearPMap.adjoint_apply_of_dense

theorem adjoint_apply_eq (y : T†.domain) {x₀ : E} (hx₀ : ∀ x : T.domain, ⟪x₀, x⟫ = ⟪(y : F), T x⟫) :
    T† y = x₀ :=
  (adjoint_apply_of_dense hT y).symm ▸ adjointAux_unique hT _ hx₀
#align linear_pmap.adjoint_apply_eq LinearPMap.adjoint_apply_eq

/-- The fundamental property of the adjoint. -/
theorem adjoint_isFormalAdjoint : T†.IsFormalAdjoint T := fun x =>
  (adjoint_apply_of_dense hT x).symm ▸ adjointAux_inner hT x
#align linear_pmap.adjoint_is_formal_adjoint LinearPMap.adjoint_isFormalAdjoint

/-- The adjoint is maximal in the sense that it contains every formal adjoint. -/
theorem IsFormalAdjoint.le_adjoint (h : T.IsFormalAdjoint S) : S ≤ T† :=
  ⟨-- Trivially, every `x : S.domain` is in `T.adjoint.domain`
  fun x hx =>
    mem_adjoint_domain_of_exists _
      ⟨S ⟨x, hx⟩, h.symm ⟨x, hx⟩⟩,-- Equality on `S.domain` follows from equality
  -- `⟪v, S x⟫ = ⟪v, T.adjoint y⟫` for all `v : T.domain`:
  fun _ _ hxy => (adjoint_apply_eq hT _ fun _ => by rw [h.symm, hxy]).symm⟩
#align linear_pmap.is_formal_adjoint.le_adjoint LinearPMap.IsFormalAdjoint.le_adjoint

end LinearPMap

namespace ContinuousLinearMap

variable [CompleteSpace E] [CompleteSpace F]

variable (A : E →L[𝕜] F) {p : Submodule 𝕜 E}

/-- Restricting `A` to a dense submodule and taking the `LinearPMap.adjoint` is the same
as taking the `continuous_linear_map.adjoint` interpreted as a `linear_pmap`. -/
theorem toPMap_adjoint_eq_adjoint_toPMap_of_dense (hp : Dense (p : Set E)) :
    (A.toPMap p).adjoint = A.adjoint.toPMap ⊤ := by
  ext x y hxy
  · simp only [LinearMap.toPMap_domain, Submodule.mem_top, iff_true_iff,
      LinearPMap.mem_adjoint_domain_iff, LinearMap.coe_comp, innerₛₗ_apply_coe]
    exact ((innerSL 𝕜 x).comp <| A.comp <| Submodule.subtypeL _).cont
  refine' LinearPMap.adjoint_apply_eq _ _ fun v => _
  · -- Porting note: was simply `hp` as an argument above
    simpa using hp
  · simp only [adjoint_inner_left, hxy, LinearMap.toPMap_apply, coe_coe]
#align continuous_linear_map.to_pmap_adjoint_eq_adjoint_to_pmap_of_dense ContinuousLinearMap.toPMap_adjoint_eq_adjoint_toPMap_of_dense

end ContinuousLinearMap

section Star

namespace LinearPMap

variable [CompleteSpace E]

instance instStar : Star (E →ₗ.[𝕜] E) where
  star := fun A ↦ A.adjoint

variable {A : E →ₗ.[𝕜] E}

theorem isSelfAdjoint_def : IsSelfAdjoint A ↔ A† = A := Iff.rfl

/-- Every self-adjoint `LinearPMap` has dense domain.

This is not true by definition since we define the adjoint without the assumption that the
domain is dense, but the choice of the junk value implies that a `LinearPMap` cannot be self-adjoint
if it does not have dense domain. -/
theorem _root_.GRWTSK.Analysis.FunctionalAnalysis.IsFormalAdjoint.Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.IsSelfAdjoint.dense_domain (hA : IsSelfAdjoint A) : Dense (A.domain : Set E) := by
  by_contra h
  rw [isSelfAdjoint_def] at hA
  have h' : A.domain = ⊤ := by
    rw [← hA, Submodule.eq_top_iff']
    intro x
    rw [mem_adjoint_domain_iff, ← hA]
    refine (innerSL 𝕜 x).cont.comp ?_
    simp [adjoint, h, continuous_const]
  simp [h'] at h

end LinearPMap

end Star
```
