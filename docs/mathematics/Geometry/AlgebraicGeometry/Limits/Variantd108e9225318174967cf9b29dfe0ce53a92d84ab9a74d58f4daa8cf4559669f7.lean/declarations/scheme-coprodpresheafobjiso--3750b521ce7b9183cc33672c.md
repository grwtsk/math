# Scheme.coprodPresheafObjIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58836f4eb5a29968584d7c6ce04641935d06516995e8e86bddb8aebf969db502",
  "kind": "def",
  "lexical_name": "Scheme.coprodPresheafObjIso",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "scheme-coprodpresheafobjiso--3750b521ce7b9183cc33672c",
  "source": {
    "blob": "6c5507bcef5900f1cbd60ad35ee429a73aa3f631",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 466,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3750b521ce7b9183cc33672c696b2652c7cb54bac3d2c9bc7e9712242fe23465",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58836f4eb5a29968584d7c6ce04641935d06516995e8e86bddb8aebf969db502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Scheme.coprodPresheafObjIso (U : (X ⨿ Y).Opens) :
    Γ(X ⨿ Y, U) ≅ Γ(X, coprod.inl (C := Scheme) ⁻¹ᵁ U) ⨯ Γ(Y, coprod.inr (C := Scheme) ⁻¹ᵁ U) :=
  letI ι₁ : X ⟶ X ⨿ Y := coprod.inl
  letI ι₂ : Y ⟶ X ⨿ Y := coprod.inr
  haveI h₁ : ι₁ ''ᵁ ι₁ ⁻¹ᵁ U ⊔ ι₂ ''ᵁ ι₂ ⁻¹ᵁ U = U := by
    simp_rw [Scheme.Hom.image_preimage_eq_opensRange_inf]
    rw [← inf_sup_right, (isCompl_opensRange_inl_inr X Y).sup_eq_top, top_inf_eq]
  haveI h₂ : ι₁ ''ᵁ ι₁ ⁻¹ᵁ U ⊓ ι₂ ''ᵁ ι₂ ⁻¹ᵁ U = ⊥ := by
    simp_rw [Scheme.Hom.image_preimage_eq_opensRange_inf]
    rw [← inf_inf_distrib_right, (isCompl_opensRange_inl_inr X Y).inf_eq_bot, bot_inf_eq]
  (X ⨿ Y).presheaf.mapIso (eqToIso h₁).op ≪≫
    ((X ⨿ Y).sheaf.isProductOfDisjoint _ _ h₂).conePointUniqueUpToIso (limit.isLimit _) ≪≫
    prod.mapIso (ι₁.appIso _) (ι₂.appIso _)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variantd108e9225318174967cf9b29dfe0ce53a92d84ab9a74d58f4daa8cf4559669f7.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5507bcef5900f1cbd60ad35ee429a73aa3f631` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
