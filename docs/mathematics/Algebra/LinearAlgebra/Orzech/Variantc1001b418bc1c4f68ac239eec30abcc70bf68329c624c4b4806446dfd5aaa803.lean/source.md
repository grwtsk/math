# Complete source: GRWTSK.Algebra.LinearAlgebra.Orzech.Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a17cf72890811e7dafab99fd6830433694839fa7` · SHA-256 `dcdffc7a3d9696b24326b9828c5bc18e87f970c58828a4f27827b24acb518e16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsNoetherianInjectiveOfSurjectiveOfInjective.Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsNoetherianInjectiveOfSurjectiveOfInjective.Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Noetherian/Orzech.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro, Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kevin Buzzard
-/
import Mathlib.Algebra.Module.Submodule.IterateMapComap
import Mathlib.Order.PartialSups
import Mathlib.RingTheory.Noetherian.Basic
import Mathlib.RingTheory.OrzechProperty

/-!
# Noetherian rings have the Orzech property

## Main results

* `IsNoetherian.injective_of_surjective_of_injective`: if `M` and `N` are `R`-modules for a ring `R`
  (not necessarily commutative), `M` is Noetherian, `i : N →ₗ[R] M` is injective,
  `f : N →ₗ[R] M` is surjective, then `f` is also injective.
* `IsNoetherianRing.orzechProperty`: Any Noetherian ring satisfies the Orzech property.
-/



namespace GRWTSK.Algebra.LinearAlgebra.IsNoetherianInjectiveOfSurjectiveOfInjective.Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d

open Set Filter Pointwise

open IsNoetherian Submodule Function

section

universe w

variable {R M P : Type*} {N : Type w} [Ring R] [AddCommGroup M] [Module R M] [AddCommGroup N]
  [Module R N] [AddCommGroup P] [Module R P] [IsNoetherian R M]

/-- **Orzech's theorem** for Noetherian modules: if `R` is a ring (not necessarily commutative),
`M` and `N` are `R`-modules, `M` is Noetherian, `i : N →ₗ[R] M` is injective,
`f : N →ₗ[R] M` is surjective, then `f` is also injective. The proof here is adapted from
Djoković's paper *Epimorphisms of modules which must be isomorphisms* [djokovic1973],
utilizing `LinearMap.iterateMapComap`.
See also Orzech's original paper: *Onto endomorphisms are isomorphisms* [orzech1971]. -/
theorem IsNoetherian.injective_of_surjective_of_injective (i f : N →ₗ[R] M)
    (hi : Injective i) (hf : Surjective f) : Injective f := by
  haveI := isNoetherian_of_injective i hi
  obtain ⟨n, H⟩ := monotone_stabilizes_iff_noetherian.2 ‹_›
    ⟨_, monotone_nat_of_le_succ <| f.iterateMapComap_le_succ i ⊥ (by simp)⟩
  exact LinearMap.ker_eq_bot.1 <| bot_unique <|
    f.ker_le_of_iterateMapComap_eq_succ i ⊥ n (H _ (Nat.le_succ _)) hf hi

/-- **Orzech's theorem** for Noetherian modules: if `R` is a ring (not necessarily commutative),
`M` is a Noetherian `R`-module, `N` is a submodule, `f : N →ₗ[R] M` is surjective, then `f` is also
injective. -/
theorem IsNoetherian.injective_of_surjective_of_submodule
    {N : Submodule R M} (f : N →ₗ[R] M) (hf : Surjective f) : Injective f :=
  IsNoetherian.injective_of_surjective_of_injective N.subtype f N.injective_subtype hf

/-- Any surjective endomorphism of a Noetherian module is injective. -/
theorem IsNoetherian.injective_of_surjective_endomorphism (f : M →ₗ[R] M)
    (s : Surjective f) : Injective f :=
  IsNoetherian.injective_of_surjective_of_injective _ f (LinearEquiv.refl _ _).injective s

/-- Any surjective endomorphism of a Noetherian module is bijective. -/
theorem IsNoetherian.bijective_of_surjective_endomorphism (f : M →ₗ[R] M)
    (s : Surjective f) : Bijective f :=
  ⟨IsNoetherian.injective_of_surjective_endomorphism f s, s⟩

/-- If `M ⊕ N` embeds into `M`, for `M` noetherian over `R`, then `N` is trivial. -/
theorem IsNoetherian.subsingleton_of_prod_injective (f : M × N →ₗ[R] M)
    (i : Injective f) : Subsingleton N := .intro fun x y ↦ by
  have h := IsNoetherian.injective_of_surjective_of_injective f _ i LinearMap.fst_surjective
  simpa using h (show LinearMap.fst R M N (0, x) = LinearMap.fst R M N (0, y) from rfl)

/-- If `M ⊕ N` embeds into `M`, for `M` noetherian over `R`, then `N` is trivial. -/
@[simps!]
def IsNoetherian.equivPUnitOfProdInjective (f : M × N →ₗ[R] M)
    (i : Injective f) : N ≃ₗ[R] PUnit.{w + 1} :=
  haveI := IsNoetherian.subsingleton_of_prod_injective f i
  .ofSubsingleton _ _

end

/-- Any Noetherian ring satisfies Orzech property.
See also `IsNoetherian.injective_of_surjective_of_submodule` and
`IsNoetherian.injective_of_surjective_of_injective`. -/
instance (priority := 100) IsNoetherianRing.orzechProperty
    (R) [Ring R] [IsNoetherianRing R] : OrzechProperty R where
  injective_of_surjective_of_submodule' {M} :=
    letI := Module.addCommMonoidToAddCommGroup R (M := M)
    IsNoetherian.injective_of_surjective_of_submodule
```
