-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FiniteType.Variant1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FiniteType.Variant1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/FreeModule/StrongRankCondition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.RingTheory.FiniteType
import Mathlib.LinearAlgebra.InvariantBasisNumber

/-!

# Strong rank condition for commutative rings

We prove that any nontrivial commutative ring satisfies `StrongRankCondition`, meaning that
if there is an injective linear map `(Fin n → R) →ₗ[R] Fin m → R`, then `n ≤ m`. This implies that
any commutative ring satisfies `InvariantBasisNumber`: the rank of a finitely generated free
module is well defined.

## Main result

* `commRing_strongRankCondition R` : `R` has the `StrongRankCondition`.

The `commRing_strongRankCondition` comes from `CommRing.orzechProperty`, proved in
`Mathlib/RingTheory/FiniteType.lean`, which states that any commutative ring satisfies
the `OrzechProperty`, that is, for any finitely generated
`R`-module `M`, any surjective homomorphism `f : N → M` from a submodule `N` of `M` to `M`
is injective.


## References

* [Orzech, Morris. *Onto endomorphisms are isomorphisms*][orzech1971]
* [Djoković, D. Ž. *Epimorphisms of modules which must be isomorphisms*][djokovic1973]
* [Ribenboim, Paulo. *Épimorphismes de modules qui sont nécessairement
  des isomorphismes*][ribenboim1971]

-/



namespace GRWTSK.Algebra.FiniteType.Variant1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9

variable (R : Type*) [CommRing R] [Nontrivial R]

/-- Any nontrivial commutative ring satisfies the `StrongRankCondition`. -/
instance (priority := 100) commRing_strongRankCondition : StrongRankCondition R :=
  inferInstance
