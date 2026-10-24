# Complete source: GRWTSK.Topology.AlgebraicTopology.SingularSet.Variant0a46a76b0b00d86fb800a23232b0d7e51c56769fdf2d54c5fc63eb2a6eb733a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b54f2186522d5965d507091515783d640fb2b180` · SHA-256 `fe1b67334604f0d80c26fa9d0aff2af478fff2cbf5ad45301e2f08ef56bab735`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.TopCatToSSet.Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TopCatToSSet.Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SingularSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kim Morrison, Adam Topaz
-/
import Mathlib.AlgebraicTopology.SimplicialSet.Basic
import Mathlib.AlgebraicTopology.TopologicalSimplex
import Mathlib.CategoryTheory.Limits.Presheaf
import Mathlib.Topology.Category.TopCat.Limits.Basic

/-!
# The singular simplicial set of a topological space and geometric realization of a simplicial set

The *singular simplicial set* `TopCat.toSSet.obj X` of a topological space `X`
has as `n`-simplices the continuous maps `⦋n⦌.toTop → X`.
Here, `⦋n⦌.toTop` is the standard topological `n`-simplex,
defined as `{ f : Fin (n+1) → ℝ≥0 // ∑ i, f i = 1 }` with its subspace topology.

The *geometric realization* functor `SSet.toTop.obj` is left adjoint to `TopCat.toSSet`.
It is the left Kan extension of `SimplexCategory.toTop` along the Yoneda embedding.

# Main definitions

* `TopCat.toSSet : TopCat ⥤ SSet` is the functor
  assigning the singular simplicial set to a topological space.
* `SSet.toTop : SSet ⥤ TopCat` is the functor
  assigning the geometric realization to a simplicial set.
* `sSetTopAdj : SSet.toTop ⊣ TopCat.toSSet` is the adjunction between these two functors.

## TODO

- Generalize to an adjunction between `SSet.{u}` and `TopCat.{u}` for any universe `u`
- Show that the singular simplicial set is a Kan complex.
- Show the adjunction `sSetTopAdj` is a Quillen adjunction.

-/


namespace GRWTSK.Topology.AlgebraicTopology.TopCatToSSet.Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b

open CategoryTheory

/-- The functor associating the *singular simplicial set* to a topological space.

Let `X` be a topological space.
Then the singular simplicial set of `X`
has as `n`-simplices the continuous maps `⦋n⦌.toTop → X`.
Here, `⦋n⦌.toTop` is the standard topological `n`-simplex,
defined as `{ f : Fin (n+1) → ℝ≥0 // ∑ i, f i = 1 }` with its subspace topology. -/
noncomputable def TopCat.toSSet : TopCat ⥤ SSet :=
  Presheaf.restrictedYoneda SimplexCategory.toTop

/-- The *geometric realization functor* is
the left Kan extension of `SimplexCategory.toTop` along the Yoneda embedding.

It is left adjoint to `TopCat.toSSet`, as witnessed by `sSetTopAdj`. -/
noncomputable def SSet.toTop : SSet ⥤ TopCat :=
  yoneda.leftKanExtension SimplexCategory.toTop

/-- Geometric realization is left adjoint to the singular simplicial set construction. -/
noncomputable def sSetTopAdj : SSet.toTop ⊣ TopCat.toSSet :=
  Presheaf.yonedaAdjunction (yoneda.leftKanExtension SimplexCategory.toTop)
    (yoneda.leftKanExtensionUnit SimplexCategory.toTop)

/-- The geometric realization of the representable simplicial sets agree
  with the usual topological simplices. -/
noncomputable def SSet.toTopSimplex :
    (yoneda : SimplexCategory ⥤ _) ⋙ SSet.toTop ≅ SimplexCategory.toTop :=
  Presheaf.isExtensionAlongYoneda _

/-- The singular simplicial set of a totally disconnected space is the constant simplicial set. -/
noncomputable
def TopCat.toSSetIsoConst (X : TopCat) [TotallyDisconnectedSpace X] :
    TopCat.toSSet.obj X ≅ (Functor.const _).obj X :=
  .symm <|
  NatIso.ofComponents (fun i ↦
    { inv v := v.1 ⟨Pi.single 0 1, show ∑ _, _ = _ by simp⟩
      hom x := TopCat.ofHom ⟨fun _ ↦ x, continuous_const⟩
      inv_hom_id := types_ext _ _ fun f ↦ TopCat.hom_ext (ContinuousMap.ext
        fun j ↦ TotallyDisconnectedSpace.eq_of_continuous (α := i.unop.toTopObj) _ f.1.2 _ _)
      hom_inv_id := rfl }) (by intros; ext; rfl)
```
