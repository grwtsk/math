# Complete source: GRWTSK.Algebra.LinearAlgebra.OrzechProperty.Varianta9897fd8c9bd039ce3b6244e0f24ef16e42486627caf55cb6412c9e644be0919

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a169c8cc0a93d0d920124198f4962c37b9c2f578` · SHA-256 `56975ace994292c8c541a87b14b977622cd65e5960e41b378cd9c4f23ba32a64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.OrzechProperty.Variantcd400155018927d9747028c294d8b9dafce84eba7c4b1598035611d2bf2487d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd400155018927d9747028c294d8b9dafce84eba7c4b1598035611d2bf2487d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.OrzechProperty.Variantcd400155018927d9747028c294d8b9dafce84eba7c4b1598035611d2bf2487d3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"cd400155018927d9747028c294d8b9dafce84eba7c4b1598035611d2bf2487d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/OrzechProperty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
module

public import Mathlib.Algebra.Module.TransferInstance
public import Mathlib.RingTheory.Finiteness.Cardinality

/-!

# Orzech property of rings

In this file we define the following property of rings:

- `OrzechProperty R` is a type class stating that `R` satisfies the following property:
  for any finitely generated `R`-module `M`, any surjective homomorphism `f : N → M`
  from a submodule `N` of `M` to `M` is injective.
  It was introduced in papers by Orzech [orzech1971], Djoković [djokovic1973] and
  Ribenboim [ribenboim1971], under the names `Π`-ring or `Π₁`-ring.
  It implies the strong rank condition (that is, the existence of an injective linear map
  `(Fin n → R) →ₗ[R] (Fin m → R)` implies `n ≤ m`)
  if the ring is nontrivial (see `Mathlib/LinearAlgebra/InvariantBasisNumber.lean`).

It's proved in the above papers that

- a left-Noetherian ring (not necessarily commutative) satisfies the `OrzechProperty`,
  which in particular includes the division ring case
  (see `Mathlib/RingTheory/Noetherian/Orzech.lean`);
- a commutative ring satisfies the `OrzechProperty`
  (see `Mathlib/RingTheory/FiniteType.lean`).

## References

* [Orzech, Morris. *Onto endomorphisms are isomorphisms*][orzech1971]
* [Djoković, D. Ž. *Epimorphisms of modules which must be isomorphisms*][djokovic1973]
* [Ribenboim, Paulo.
  *Épimorphismes de modules qui sont nécessairement des isomorphismes*][ribenboim1971]

## Tags

free module, rank, Orzech property, (strong) rank condition, invariant basis number, IBN

-/


namespace GRWTSK.Algebra.LinearAlgebra.OrzechProperty.Variantcd400155018927d9747028c294d8b9dafce84eba7c4b1598035611d2bf2487d3

public section

universe u v w

open Function

variable (R : Type u) [Semiring R]

/-- A ring `R` satisfies the Orzech property, if for any finitely generated `R`-module `M`,
any surjective homomorphism `f : N → M` from a submodule `N` of `M` to `M` is injective.

NOTE: In the definition we need to assume that `M` has the same universe level as `R`, but it
in fact implies the universe polymorphic versions
`OrzechProperty.injective_of_surjective_of_injective`
and `OrzechProperty.injective_of_surjective_of_submodule`. -/
@[mk_iff]
class OrzechProperty : Prop where
  injective_of_surjective_of_submodule' : ∀ {M : Type u} [AddCommMonoid M] [Module R M]
    [Module.Finite R M] {N : Submodule R M} (f : N →ₗ[R] M), Surjective f → Injective f

namespace OrzechProperty

instance [Finite R] : OrzechProperty R where
  injective_of_surjective_of_submodule' {M} _ _ _ {N} _f hf :=
    have : Finite M := Module.finite_of_finite R
    have ⟨_g, hg⟩ := N.subtype_injective.hasLeftInverse
    .of_comp (hg.surjective.comp hf).bijective_of_finite.1

variable {R}

variable [OrzechProperty R] {M : Type v} [AddCommMonoid M] [Module R M] [Module.Finite R M]

theorem injective_of_surjective_of_injective
    {N : Type w} [AddCommMonoid N] [Module R N]
    (i f : N →ₗ[R] M) (hi : Injective i) (hf : Surjective f) : Injective f := by
  obtain ⟨n, g, hg⟩ := Module.Finite.exists_fin' R M
  have := small_of_surjective hg
  let j : Shrink.{u} M ≃ₗ[R] M := (Shrink.addEquiv (α := M)).linearEquiv R
  let i' := j.symm.toLinearMap ∘ₗ i
  replace hi : Injective i' := by simpa [i'] using hi
  let f' := j.symm.toLinearMap ∘ₗ f ∘ₗ (LinearEquiv.ofInjective i' hi).symm.toLinearMap
  replace hf : Surjective f' := by simpa [f'] using hf
  simpa [f'] using injective_of_surjective_of_submodule' f' hf

theorem bijective_of_surjective_of_injective
    {N : Type w} [AddCommMonoid N] [Module R N]
    (i f : N →ₗ[R] M) (hi : Function.Injective i)
    (hf : Function.Surjective f) : Function.Bijective f :=
  ⟨OrzechProperty.injective_of_surjective_of_injective _ _ hi hf, hf⟩

theorem injective_of_surjective_of_submodule
    {N : Submodule R M} (f : N →ₗ[R] M) (hf : Surjective f) : Injective f :=
  injective_of_surjective_of_injective N.subtype f N.injective_subtype hf

theorem injective_of_surjective_endomorphism
    (f : M →ₗ[R] M) (hf : Surjective f) : Injective f :=
  injective_of_surjective_of_injective _ f (LinearEquiv.refl _ _).injective hf

theorem bijective_of_surjective_endomorphism
    (f : M →ₗ[R] M) (hf : Surjective f) : Bijective f :=
  ⟨injective_of_surjective_endomorphism f hf, hf⟩

end OrzechProperty
```
