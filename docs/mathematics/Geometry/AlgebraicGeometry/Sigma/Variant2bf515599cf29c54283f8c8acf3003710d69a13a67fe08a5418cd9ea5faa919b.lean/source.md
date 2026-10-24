# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Sigma.Variant2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2aeafc715b69cf9fd1333df96b382244a1979d0f` · SHA-256 `2bf515599cf29c54283f8c8acf3003710d69a13a67fe08a5418cd9ea5faa919b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.AlgebraicGeometry.Morphisms.Basic

/-!
# Collapsing covers

We define the endofunctor on `Scheme.Cover P` that collapses a cover to a single object cover.
-/

universe v u

open CategoryTheory Limits

namespace AlgebraicGeometry.Scheme.Cover

variable {P : MorphismProperty Scheme.{u}} {S : Scheme.{u}} [IsLocalAtSource P] [UnivLE.{v, u}]

/-- If `𝒰` is a cover of `S`, this is the single object cover where the covering
object is the disjoint union. -/
@[simps]
noncomputable def sigma (𝒰 : Cover.{v} P S) : S.Cover P where
  J := PUnit.{v + 1}
  obj _ := ∐ 𝒰.obj
  map _ := Sigma.desc 𝒰.map
  f _ := default
  covers s := by
    obtain ⟨i, y, rfl⟩ := 𝒰.exists_eq s
    refine ⟨(Sigma.ι 𝒰.obj i).base y, by simp [← Scheme.comp_base_apply]⟩
  map_prop _ := IsLocalAtSource.sigmaDesc 𝒰.map_prop

variable [P.IsMultiplicative] {𝒰 𝒱 : Scheme.Cover.{v} P S}

variable (𝒰) in
instance : Unique 𝒰.sigma.J := inferInstanceAs <| Unique PUnit.{v + 1}

/-- `𝒰` refines the single object cover defined by `𝒰`. -/
@[simps]
noncomputable def toSigma (𝒰 : Cover.{v} P S) : 𝒰 ⟶ 𝒰.sigma where
  idx _ := default
  app i := Sigma.ι _ i
  app_prop _ := IsLocalAtSource.of_isOpenImmersion _

/-- A refinement of coverings induces a refinement on the single object coverings. -/
@[simps]
noncomputable def Hom.sigma (f : 𝒰 ⟶ 𝒱) : 𝒰.sigma ⟶ 𝒱.sigma where
  idx _ := default
  app _ := Sigma.desc fun j ↦ f.app j ≫ Sigma.ι _ (f.idx j)
  w _ := Sigma.hom_ext _ _ (by simp)
  app_prop _ := by
    simp only [sigma_obj, sigma_J, PUnit.default_eq_unit,
      IsLocalAtSource.iff_of_openCover (sigmaOpenCover _), sigmaOpenCover_obj, sigmaOpenCover_map,
      colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app]
    intro i
    exact P.comp_mem _ _ (f.app_prop i) (IsLocalAtSource.of_isOpenImmersion _)

/-- Collapsing a cover to a single object cover is functorial. -/
@[simps]
noncomputable def sigmaFunctor : S.Cover P ⥤ S.Cover P where
  obj 𝒰 := 𝒰.sigma
  map f := f.sigma
  map_id 𝒰 := Scheme.Cover.Hom.ext rfl <| by
    simp only [sigma_J, sigma_obj, Hom.sigma_idx, PUnit.default_eq_unit, id_idx_apply, heq_eq_eq]
    ext j : 1
    exact Sigma.hom_ext _ _ (by simp)
  map_comp f g := Scheme.Cover.Hom.ext rfl <| by
    simp only [sigma_J, sigma_obj, Hom.sigma_idx, PUnit.default_eq_unit, comp_idx_apply, heq_eq_eq]
    ext j : 1
    exact Sigma.hom_ext _ _ (by simp)

end AlgebraicGeometry.Scheme.Cover
```
