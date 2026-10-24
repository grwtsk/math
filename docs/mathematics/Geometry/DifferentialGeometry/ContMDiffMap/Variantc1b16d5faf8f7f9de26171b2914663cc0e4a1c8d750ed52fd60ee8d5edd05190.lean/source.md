# Complete source: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMap.Variantc1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00feb226f9916c802f08153d0da60478b57d041a` · SHA-256 `c1b16d5faf8f7f9de26171b2914663cc0e4a1c8d750ed52fd60ee8d5edd05190`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright © 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri
-/
import Mathlib.Geometry.Manifold.ContMDiff
import Mathlib.Topology.ContinuousFunction.Basic

#align_import geometry.manifold.cont_mdiff_map from "leanprover-community/mathlib"@"86c29aefdba50b3f33e86e52e3b2f51a0d8f0282"

/-!
# Smooth bundled map

In this file we define the type `ContMDiffMap` of `n` times continuously differentiable
bundled maps.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace 𝕜 E] {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H : Type*}
  [TopologicalSpace H] {H' : Type*} [TopologicalSpace H'] (I : ModelWithCorners 𝕜 E H)
  (I' : ModelWithCorners 𝕜 E' H') (M : Type*) [TopologicalSpace M] [ChartedSpace H M] (M' : Type*)
  [TopologicalSpace M'] [ChartedSpace H' M'] {E'' : Type*} [NormedAddCommGroup E'']
  [NormedSpace 𝕜 E''] {H'' : Type*} [TopologicalSpace H''] {I'' : ModelWithCorners 𝕜 E'' H''}
  {M'' : Type*} [TopologicalSpace M''] [ChartedSpace H'' M'']
  -- declare a manifold `N` over the pair `(F, G)`.
  {F : Type*}
  [NormedAddCommGroup F] [NormedSpace 𝕜 F] {G : Type*} [TopologicalSpace G]
  {J : ModelWithCorners 𝕜 F G} {N : Type*} [TopologicalSpace N] [ChartedSpace G N] (n : ℕ∞)

/-- Bundled `n` times continuously differentiable maps. -/
def ContMDiffMap :=
  { f : M → M' // ContMDiff I I' n f }
#align cont_mdiff_map ContMDiffMap

/-- Bundled smooth maps. -/
@[reducible]
def SmoothMap :=
  ContMDiffMap I I' M M' ⊤
#align smooth_map SmoothMap

scoped[Manifold] notation "C^" n "⟮" I ", " M "; " I' ", " M' "⟯" => ContMDiffMap I I' M M' n

scoped[Manifold]
  notation "C^" n "⟮" I ", " M "; " k "⟯" => ContMDiffMap I (modelWithCornersSelf k k) M k n

open scoped Manifold

namespace ContMDiffMap

variable {I} {I'} {M} {M'} {n}

instance funLike : FunLike C^n⟮I, M; I', M'⟯ M fun _ => M' where
  coe := Subtype.val
  coe_injective' := Subtype.coe_injective
#align cont_mdiff_map.fun_like ContMDiffMap.funLike

protected theorem contMDiff (f : C^n⟮I, M; I', M'⟯) : ContMDiff I I' n f :=
  f.prop
#align cont_mdiff_map.cont_mdiff ContMDiffMap.contMDiff

protected theorem smooth (f : C^∞⟮I, M; I', M'⟯) : Smooth I I' f :=
  f.prop
#align cont_mdiff_map.smooth ContMDiffMap.smooth

-- porting note: use generic instance instead
-- instance : Coe C^n⟮I, M; I', M'⟯ C(M, M') :=
--   ⟨fun f => ⟨f, f.contMDiff.continuous⟩⟩

attribute [to_additive_ignore_args 21] ContMDiffMap ContMDiffMap.funLike

variable {f g : C^n⟮I, M; I', M'⟯}

@[simp]
theorem coeFn_mk (f : M → M') (hf : ContMDiff I I' n f) :
    FunLike.coe (F := C^n⟮I, M; I', M'⟯) ⟨f, hf⟩ = f :=
  rfl
#align cont_mdiff_map.coe_fn_mk ContMDiffMap.coeFn_mk

theorem coe_injective ⦃f g : C^n⟮I, M; I', M'⟯⦄ (h : (f : M → M') = g) : f = g :=
  FunLike.ext' h
#align cont_mdiff_map.coe_inj ContMDiffMap.coe_injective

@[ext]
theorem ext (h : ∀ x, f x = g x) : f = g := FunLike.ext _ _ h
#align cont_mdiff_map.ext ContMDiffMap.ext

instance : ContinuousMapClass C^n⟮I, M; I', M'⟯ M M' where
  map_continuous f := f.contMDiff.continuous

/-- The identity as a smooth map. -/
nonrec def id : C^n⟮I, M; I, M⟯ :=
  ⟨id, contMDiff_id⟩
#align cont_mdiff_map.id ContMDiffMap.id

/-- The composition of smooth maps, as a smooth map. -/
def comp (f : C^n⟮I', M'; I'', M''⟯) (g : C^n⟮I, M; I', M'⟯) : C^n⟮I, M; I'', M''⟯ where
  val a := f (g a)
  property := f.contMDiff.comp g.contMDiff
#align cont_mdiff_map.comp ContMDiffMap.comp

@[simp]
theorem comp_apply (f : C^n⟮I', M'; I'', M''⟯) (g : C^n⟮I, M; I', M'⟯) (x : M) :
    f.comp g x = f (g x) :=
  rfl
#align cont_mdiff_map.comp_apply ContMDiffMap.comp_apply

instance [Inhabited M'] : Inhabited C^n⟮I, M; I', M'⟯ :=
  ⟨⟨fun _ => default, contMDiff_const⟩⟩

/-- Constant map as a smooth map -/
def const (y : M') : C^n⟮I, M; I', M'⟯ :=
  ⟨fun _ => y, contMDiff_const⟩
#align cont_mdiff_map.const ContMDiffMap.const

/-- The first projection of a product, as a smooth map. -/
def fst : C^n⟮I.prod I', M × M'; I, M⟯ :=
  ⟨Prod.fst, contMDiff_fst⟩
#align cont_mdiff_map.fst ContMDiffMap.fst

/-- The second projection of a product, as a smooth map. -/
def snd : C^n⟮I.prod I', M × M'; I', M'⟯ :=
  ⟨Prod.snd, contMDiff_snd⟩
#align cont_mdiff_map.snd ContMDiffMap.snd

/-- Given two smooth maps `f` and `g`, this is the smooth map `x ↦ (f x, g x)`. -/
def prodMk (f : C^n⟮J, N; I, M⟯) (g : C^n⟮J, N; I', M'⟯) : C^n⟮J, N; I.prod I', M × M'⟯ :=
  ⟨fun x => (f x, g x), f.2.prod_mk g.2⟩
#align cont_mdiff_map.prod_mk ContMDiffMap.prodMk

end ContMDiffMap

instance ContinuousLinearMap.hasCoeToContMDiffMap :
    Coe (E →L[𝕜] E') C^n⟮𝓘(𝕜, E), E; 𝓘(𝕜, E'), E'⟯ :=
  ⟨fun f => ⟨f, f.contMDiff⟩⟩
#align continuous_linear_map.has_coe_to_cont_mdiff_map ContinuousLinearMap.hasCoeToContMDiffMap
```
