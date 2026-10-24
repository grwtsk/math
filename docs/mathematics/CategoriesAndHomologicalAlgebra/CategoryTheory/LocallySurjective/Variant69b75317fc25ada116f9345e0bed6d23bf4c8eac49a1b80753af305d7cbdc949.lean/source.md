# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySurjective.Variant69b75317fc25ada116f9345e0bed6d23bf4c8eac49a1b80753af305d7cbdc949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d1471355f15c7a57a514940ad3b0018a1df6218` · SHA-256 `bd9e18ae1ec4470c07568cc7a4e8538a3173df50d253a5ccd12f15fb29bd6273`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLocallySurjective.Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsLocallySurjective.Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Sheaves/LocallySurjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sam van Gool and Jake Levinson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sam van Gool, Jake Levinson
-/
import Mathlib.Topology.Sheaves.Presheaf
import Mathlib.Topology.Sheaves.Stalks
import Mathlib.CategoryTheory.Limits.Preserves.Filtered
import Mathlib.CategoryTheory.Sites.LocallySurjective

/-!

# Locally surjective maps of presheaves.

Let `X` be a topological space, `ℱ` and `𝒢` presheaves on `X`, `T : ℱ ⟶ 𝒢` a map.

In this file we formulate two notions for what it means for
`T` to be locally surjective:

  1. For each open set `U`, each section `t : 𝒢(U)` is in the image of `T`
     after passing to some open cover of `U`.

  2. For each `x : X`, the map of *stalks* `Tₓ : ℱₓ ⟶ 𝒢ₓ` is surjective.

We prove that these are equivalent.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLocallySurjective.Variant3af1833f4b05a295416f2c71cc6b4819a87672f7067f46f49f4ab4c424203cbe

universe v u

noncomputable section

open CategoryTheory

open TopologicalSpace

open Opposite

namespace TopCat.Presheaf

section LocallySurjective

open scoped AlgebraicGeometry

variable {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type v}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory C FC] {X : TopCat.{v}}
variable {ℱ 𝒢 : X.Presheaf C}

/-- A map of presheaves `T : ℱ ⟶ 𝒢` is **locally surjective** if for any open set `U`,
section `t` over `U`, and `x ∈ U`, there exists an open set `x ∈ V ⊆ U` and a section `s` over `V`
such that `$T_*(s_V) = t|_V$`.

See `TopCat.Presheaf.isLocallySurjective_iff` below.
-/
def IsLocallySurjective (T : ℱ ⟶ 𝒢) :=
  CategoryTheory.Presheaf.IsLocallySurjective (Opens.grothendieckTopology X) T

theorem isLocallySurjective_iff (T : ℱ ⟶ 𝒢) :
    IsLocallySurjective T ↔
      ∀ (U t), ∀ x ∈ U, ∃ (V : _) (ι : V ⟶ U), (∃ s, (T.app _) s = t |_ₕ ι) ∧ x ∈ V :=
  ⟨fun h _ => h.imageSieve_mem, fun h => ⟨h _⟩⟩

section SurjectiveOnStalks

variable [Limits.HasColimits C] [Limits.PreservesFilteredColimits (forget C)]

/-- An equivalent condition for a map of presheaves to be locally surjective
is for all the induced maps on stalks to be surjective. -/
theorem locally_surjective_iff_surjective_on_stalks (T : ℱ ⟶ 𝒢) :
    IsLocallySurjective T ↔ ∀ x : X, Function.Surjective ((stalkFunctor C x).map T) := by
  constructor <;> intro hT
  · /- human proof:
        Let g ∈ Γₛₜ 𝒢 x be a germ. Represent it on an open set U ⊆ X
        as ⟨t, U⟩. By local surjectivity, pass to a smaller open set V
        on which there exists s ∈ Γ_ ℱ V mapping to t |_ V.
        Then the germ of s maps to g -/
    -- Let g ∈ Γₛₜ 𝒢 x be a germ.
    intro x g
    -- Represent it on an open set U ⊆ X as ⟨t, U⟩.
    obtain ⟨U, hxU, t, rfl⟩ := 𝒢.germ_exist x g
    -- By local surjectivity, pass to a smaller open set V
    -- on which there exists s ∈ Γ_ ℱ V mapping to t |_ V.
    rcases hT.imageSieve_mem t x hxU with ⟨V, ι, ⟨s, h_eq⟩, hxV⟩
    -- Then the germ of s maps to g.
    use ℱ.germ _ x hxV s
    simp [h_eq, germ_res_apply]
  · /- human proof:
        Let U be an open set, t ∈ Γ ℱ U a section, x ∈ U a point.
        By surjectivity on stalks, the germ of t is the image of
        some germ f ∈ Γₛₜ ℱ x. Represent f on some open set V ⊆ X as ⟨s, V⟩.
        Then there is some possibly smaller open set x ∈ W ⊆ V ∩ U on which
        we have T(s) |_ W = t |_ W. -/
    constructor
    intro U t x hxU
    set t_x := 𝒢.germ _ x hxU t with ht_x
    obtain ⟨s_x, hs_x : ((stalkFunctor C x).map T) s_x = t_x⟩ := hT x t_x
    obtain ⟨V, hxV, s, rfl⟩ := ℱ.germ_exist x s_x
    -- rfl : ℱ.germ x s = s_x
    have key_W := 𝒢.germ_eq x hxV hxU (T.app _ s) t <| by
      convert hs_x using 1
      symm
      convert stalkFunctor_map_germ_apply _ _ _ _ s
    obtain ⟨W, hxW, hWV, hWU, h_eq⟩ := key_W
    refine ⟨W, hWU, ⟨ℱ.map hWV.op s, ?_⟩, hxW⟩
    convert h_eq using 1
    simp only [← ConcreteCategory.comp_apply, T.naturality]

end SurjectiveOnStalks

end LocallySurjective

end TopCat.Presheaf
```
