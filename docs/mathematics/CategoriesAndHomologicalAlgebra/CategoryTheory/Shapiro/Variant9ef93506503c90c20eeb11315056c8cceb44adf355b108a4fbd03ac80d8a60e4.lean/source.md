# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shapiro.Variant9ef93506503c90c20eeb11315056c8cceb44adf355b108a4fbd03ac80d8a60e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d3142b3dc92171adc2840ba0ce1796b9b732ba2` · SHA-256 `33540d25cf87671f24276667a7107c58946aad42a6763f600ebf91bfba488d3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoinvariantsTensorResProjectiveResolutionIso.Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CoinvariantsTensorResProjectiveResolutionIso.Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RepresentationTheory/Homological/GroupHomology/Shapiro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.CategoryTheory.Preadditive.Projective.Resolution
public import Mathlib.RepresentationTheory.Homological.GroupHomology.Basic
public import Mathlib.RepresentationTheory.Coinduced
public import Mathlib.RepresentationTheory.Induced

/-!
# Shapiro's lemma for group homology

Given a commutative ring `k` and a subgroup `S ≤ G`,
the file `Mathlib/RepresentationTheory/Coinduced.lean` proves that
the functor `Coind_S^G : Rep k S ⥤ Rep k G` preserves epimorphisms.
Since `Res(S) : Rep k G ⥤ Rep k S` is left adjoint to `Coind_S^G`,
this means `Res(S)` preserves projective objects.
Since `Res(S)` is also exact,
given a projective resolution `P` of `k` as a trivial `k`-linear `G`-representation,
`Res(S)(P)` is a projective resolution of `k` as a trivial `k`-linear `S`-representation.

In `Mathlib/RepresentationTheory/Induced.lean`,
given a `G`-representation `X`,
we define a natural isomorphism between the functors `Rep k S ⥤ ModuleCat k` sending `A` to
`(Ind_S^G A ⊗ X)_G` and to `(A ⊗ Res(S)(X))_S`. Hence a projective resolution `P` of `k` as a
trivial `G`-representation induces an isomorphism of complexes
`(Ind_S^G A ⊗ P)_G ≅ (A ⊗ Res(S)(P))_S`, and since the homology of these complexes calculate
group homology, we conclude Shapiro's lemma: `Hₙ(G, Ind_S^G(A)) ≅ Hₙ(S, A)` for all `n`.

## Main definitions

* `groupHomology.indIso A n`: Shapiro's lemma for group homology: an isomorphism
  `Hₙ(G, Ind_S^G(A)) ≅ Hₙ(S, A)`, given a subgroup `S ≤ G` and an `S`-representation `A`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoinvariantsTensorResProjectiveResolutionIso.Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784

@[expose] public section

universe u

namespace groupHomology

open CategoryTheory Rep

variable {k G : Type u} [CommRing k] [Group G] (S : Subgroup G) (A : Rep k S)

/-- Given a projective resolution `P` of `k` as a `k`-linear `G`-representation, a subgroup
`S ≤ G`, and a `k`-linear `S`-representation `A`, this is an isomorphism of complexes
`(A ⊗ Res(S)(P))_S ≅ (Ind_S^G(A) ⊗ P)_G`. -/
noncomputable abbrev coinvariantsTensorResProjectiveResolutionIso
    (P : ProjectiveResolution (Rep.trivial k G k)) :
    ((resFunctor S.subtype).mapProjectiveResolution P).complex.coinvariantsTensorObj A ≅
      P.complex.coinvariantsTensorObj (ind S.subtype A) :=
  (NatIso.mapHomologicalComplex (coinvariantsTensorIndNatIso S.subtype A).symm _).app _

-- The smiley face in this proof can be avoided if you replace `ind` with `ind.{_, _, _, u}`.
-- The proof still compiles without this, but it takes much longer because of universe
-- unification issues.
-- Similarly, replacing `resFunctor.{u}` with `resFunctor` works but makes the proof
-- three times as slow.
/-- Shapiro's lemma: given a subgroup `S ≤ G` and an `S`-representation `A`, we have
`Hₙ(G, Ind_S^G(A)) ≅ Hₙ(S, A).` -/
noncomputable def indIso [DecidableEq G] (A : Rep.{u} k S) (n : ℕ) :
    groupHomology (ind S.subtype A) n ≅ groupHomology A n :=
  (HomologicalComplex.homologyFunctor (ModuleCat k) (ComplexShape.down ℕ) n).mapIso
  (inhomogeneousChainsIso (ind S.subtype A :) ≪≫
    (coinvariantsTensorResProjectiveResolutionIso S A (barResolution k G)).symm) ≪≫
  (groupHomologyIso A n ((resFunctor.{u} S.subtype).mapProjectiveResolution <|
    barResolution k G)).symm

end groupHomology
```
