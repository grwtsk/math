# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantcd3279f223ef9ed4b1c8069dec11d618bd845cf10801de0a29289d4cfad0e0c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4cd913b7b0f976cbebbb46a427942ea8d10e7d9` · SHA-256 `66f9f6f2cb60a275aa52139f65ad6bd8b15e9ea3d45fea8b53ec379073a03bce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RepresentationTheory/Homological/ContCohomology/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Richard Hill. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Richard Hill, Andrew Yang, Edison Xie
-/

module

public import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex
public import Mathlib.Algebra.Category.ModuleCat.Topology.Homology
public import Mathlib.RepresentationTheory.Continuous.TopRep

/-!

# Continuous cohomology

We define continuous cohomology as the homology of the homogeneous cochain complex.

## Implementation details

We define homogeneous cochains as `g`-invariant continuous function in `C(G, C(G,...,C(G, M)))`
instead of the usual `C(Gⁿ, M)` to allow more general topological groups other than locally compact
ones. For this to work, we also work in `TopRep k G`, where the `G` action on `M`
is only continuous on `M`, and not necessarily continuous in both variables, because the `G` action
on `C(G, M)` might not be continuous on both variables even if it is on `M`.

For the differential map, instead of a finite sum we use the inductive definition
`d₋₁ : M → C(G, M) := const : m ↦ g ↦ m` and
`dₙ₊₁ : C(G, _) → C(G, C(G, _)) := const - C(G, dₙ) : f ↦ g ↦ f - dₙ (f (g))`
See `TopRep.d`.

## Main definition
- `TopRep.homogeneousCochains`:
  The functor taking an `R`-linear `G`-representation to the complex of homogeneous cochains.
- `continuousCohomology`:
  The functor taking an `R`-linear `G`-representation to its `n`-th continuous cohomology.

## TODO
- Show that it coincides with `groupCohomology` for discrete groups.
- Give the usual description of cochains in terms of `n`-ary functions for locally compact groups.
- Show that short exact sequences induce long exact sequences in certain scenarios.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110

@[expose] public section

variable {k G : Type*} [Ring k] [Group G] [TopologicalSpace k]
  [TopologicalSpace G] [IsTopologicalGroup G]

open CategoryTheory ContRepresentation

namespace TopRep

/-- The `n`-th term in the resolution of a topological representation induced by `TopRep.coind₁`. -/
abbrev resolutionX (X : TopRep k G) : ℕ → TopRep k G
  | 0 => X
  | n + 1 => (resolutionX X n).coind₁

/-- The boundary map in the resolution of a topological representation induced
by `TopRep.coind₁Functor`. -/
def d (X : TopRep k G) : (n : ℕ) → resolutionX X n ⟶ resolutionX X (n + 1)
  | 0 => ofHom X.ρ.coind₁ι
  | n + 1 => ofHom (resolutionX X (n + 1)).ρ.coind₁ι - (coind₁Functor k G).map (d X n)

lemma d_zero (X : TopRep k G) : d X 0 = ofHom X.ρ.coind₁ι := rfl

lemma d_succ (X : TopRep k G) (n : ℕ) :
    d X (n + 1) = ofHom (resolutionX X (n + 1)).ρ.coind₁ι - (coind₁Functor k G).map (d X n) :=
  rfl

lemma hom_d_succ (X : TopRep k G) (n : ℕ) :
    (d X (n + 1)).hom = (resolutionX X (n + 1)).ρ.coind₁ι -
      ContRepresentation.coind₁Map (d X n).hom :=
  rfl

@[reassoc (attr := simp)]
lemma d_comp_d (X : TopRep k G) (n : ℕ) : d X n ≫ d X (n + 1) = 0 := by
  induction n with
  | zero =>
    ext
    simp [d_succ, ContIntertwiningMap.toContinuousLinearMap_apply, d_zero, hom_sub]
  | succ n ih =>
    rw [d_succ _ (n + 1), Preadditive.comp_sub]
    nth_rw 2 [d_succ]
    rw [Preadditive.sub_comp, ← Functor.map_comp, ih, Functor.map_zero, sub_zero, sub_eq_zero]
    rfl

/-- The complex of functors whose behaviour pointwise takes an `R`-linear `G`-representation `M`
to the complex `M → C(G, M) → ⋯ → C(G, C(G,...,C(G, M))) → ⋯`
The `G`-invariant submodules of it is the homogeneous cochains (shifted by one). -/
abbrev resolution (X : TopRep k G) : CochainComplex (TopRep k G) ℕ :=
  CochainComplex.of (resolutionX X) (d X) (d_comp_d X)

/-- The shifted object in resolution by `1` degree. -/
abbrev resolution'X (X : TopRep k G) (n : ℕ) : TopRep k G := resolutionX X (n + 1)

/-- The shifted boundary map of the resolution. -/
@[implicit_reducible]
def resolution'd (X : TopRep k G) (n : ℕ) :
    resolution'X X n ⟶ resolution'X X (n + 1) := d X (n + 1)

lemma resolution'd_eq (X : TopRep k G) (n : ℕ) :
    resolution'd X n = d X (n + 1) := rfl

/-- The shifted resolution of a topological representation by `1` degree. -/
abbrev resolution' (X : TopRep k G) : CochainComplex (TopRep k G) ℕ :=
  CochainComplex.of (resolution'X X)
    (resolution'd X) (fun n ↦ d_comp_d X (n + 1))

set_option allowUnsafeReducibility true in
attribute [local reducible] CategoryTheory.Functor.mapHomologicalComplex

/-- The homogeneous cochains of a topological representation. -/
abbrev homogeneousCochains (X : TopRep k G) :
    CochainComplex (TopModuleCat k) ℕ :=
  ((invariantsFunctor k G).mapHomologicalComplex _).obj (resolution' X)

lemma homogeneousCochains.d_eq (X : TopRep k G) (i : ℕ) :
    (homogeneousCochains X).d i (i + 1) =
      (invariantsFunctor k G).map (d X (i + 1)) := by
  dsimp only
  rw [← resolution'd_eq, CochainComplex.of_d]

lemma homogeneousCochains.d_apply (X : TopRep k G) (i : ℕ)
    (σ : (homogeneousCochains X).X i) :
    ((homogeneousCochains X).d i (i + 1)).hom σ = (d X (i + 1)).hom σ := by
  rw [homogeneousCochains.d_eq]
  dsimp [ContIntertwiningMap.mapInvariants_apply]

/-- The continuous cohomology of a continuous representation defined by taking homology
of the homogeneous cochains. -/
noncomputable abbrev _root_.GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ResolutionX.Variant894d44893c995096ce5b1b83f3cbe9d3e35b56b86bf0c6944fceaac36ee13110.continuousCohomology (n : ℕ) (A : TopRep k G) :
    TopModuleCat k := (homogeneousCochains A).homology n

end TopRep

namespace ContinuousCohomology

open TopRep

/-- The `n`-cocycles `Zⁿ(G, A)` of a `k`-linear `G`-representation `A`, i.e. the kernel of the
`n`th differential in the complex of homogeneous cochains. -/
noncomputable abbrev cocycles (A : TopRep k G) (n : ℕ) :
    TopModuleCat k := (homogeneousCochains A).cycles n

/-- The natural map from `n`-cocycles to `n`th continuous cohomology for a `k`-linear
`G`-representation `A`. -/
noncomputable abbrev π (A : TopRep k G) (n : ℕ) := (homogeneousCochains A).homologyπ n

end ContinuousCohomology
```
