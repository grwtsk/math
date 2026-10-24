# toNormalization_app_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:843c621d-a75c-42f1-1c5a-72f65fa590c7",
  "kind": "lemma",
  "lexical_name": "toNormalization_app_preimage",
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
  "slug": "tonormalization-app-preimage--2c0b114f434e935d18438257",
  "source": {
    "blob": "5ae53fc5e8b129ad008bb61b2d33ac664b547236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 233,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0b114f434e935d18438257012d15f7bb050b4bae6867f4ecccb1966ca26257",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:843c621d-a75c-42f1-1c5a-72f65fa590c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toNormalization_app_preimage (U : Y.affineOpens) :
    let := (f.app U.1).hom.toAlgebra
    dsimp% f.toNormalization.app (f.fromNormalization ⁻¹ᵁ ↑U) =
      (f.normalizationObjIso U.2).hom ≫
      CommRingCat.ofHom (integralClosure ↑Γ(Y, ↑U) ↑Γ(X, f ⁻¹ᵁ ↑U)).val.toRingHom ≫
      X.presheaf.map (eqToHom (by simp [← Scheme.Hom.comp_preimage])).op := by
  let := (f.app U.1).hom.toAlgebra
  dsimp [normalizationObjIso]
  change _ = f.normalization.presheaf.map (eqToHom (by simp [fromNormalization_preimage])).op ≫
      ((f.normalizationOpenCover.f U).appIso _).hom ≫
      (Scheme.ΓSpecIso _).hom ≫
      CommRingCat.ofHom (integralClosure ↑Γ(Y, ↑U) ↑Γ(X, f ⁻¹ᵁ ↑U)).val.toRingHom ≫
      X.presheaf.map (eqToHom (by simp [← Scheme.Hom.comp_preimage])).op
  have H : f.toNormalization ⁻¹ᵁ f.fromNormalization ⁻¹ᵁ U =
      (f ⁻¹ᵁ U).ι ''ᵁ (((f ⁻¹ᵁ U).ι ≫ f.toNormalization) ⁻¹ᵁ f.fromNormalization ⁻¹ᵁ U) := by
    simp [← Scheme.Hom.comp_preimage]
  convert! congr($(Scheme.Hom.congr_app (f.ι_toNormalization U) (f.fromNormalization ⁻¹ᵁ U)) ≫
    X.presheaf.map (eqToHom H).op) using 1
  · simp [Hom.app_eq_appLE]
  dsimp
  simp only [eqToHom_op, Hom.appIso_hom, Category.assoc, Scheme.Hom.naturality_assoc, eqToHom_unop,
    ← Functor.map_comp_assoc, eqToHom_map (TopologicalSpace.Opens.map _), eqToHom_trans]
  congr 1
  rw [← IsIso.eq_inv_comp, ← Functor.map_inv, inv_eqToHom]
  simp [← Functor.map_comp, Scheme.Opens.toSpecΓ_appTop,
    ΓSpecIso_naturality_assoc (CommRingCat.ofHom _)]
  rfl

set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Normalization/Variantad9d7a74a356cab89f9b3c78e2982fbf6f87290596e75f5227496ff2731e0776.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae53fc5e8b129ad008bb61b2d33ac664b547236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
