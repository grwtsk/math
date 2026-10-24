# isTriangulated_of_isRightDerivedFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0230f1b2-ee99-3f8a-c972-b0596e903b8b",
  "kind": "lemma",
  "lexical_name": "isTriangulated_of_isRightDerivedFunctor",
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
  "slug": "istriangulated-of-isrightderivedfunctor--79837b3a8c0c356eb5f7a38d",
  "source": {
    "blob": "5f2fc78db011d873875301370b0a357121d06685",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79837b3a8c0c356eb5f7a38dc92ceebf7015eb74ba2e29ebcc8d9adb3217aaf7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0230f1b2-ee99-3f8a-c972-b0596e903b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_of_isRightDerivedFunctor
    [Φ.IsRightDerivabilityStructure] [Φ.arrow.HasRightResolutions]
    {RF : D₂ ⥤ H} [RF.CommShift ℤ]
    (α : F ⟶ L ⋙ RF) [NatTrans.CommShift α ℤ]
    [RF.IsRightDerivedFunctor α W₂] :
    RF.IsTriangulated :=
  Functor.isTriangulated_of_leftExtension _ α fun X Y f ↦ by
    obtain ⟨φ, ⟨eφ⟩⟩ := Functor.EssSurj.mem_essImage (F := L.mapArrow) (Arrow.mk f)
    let R : Φ.arrow.RightResolution φ := Classical.arbitrary _
    obtain ⟨Z, g, h, hT⟩ := distinguished_cocone_triangle R.X₁.hom
    exact ⟨_, Φ.functor.map_distinguished _ hT,
      hF.isIso_of_isRightDerivedFunctor _ _, hF.isIso_of_isRightDerivedFunctor _ _,
      hF.isIso_of_isRightDerivedFunctor _ _,
      ⟨(Arrow.isoMk (Localization.isoOfHom L _ _ R.hw.1)
        (Localization.isoOfHom L _ _ R.hw.2) (by simp [← Functor.map_comp])).symm ≪≫ eφ⟩⟩

include hF in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2fc78db011d873875301370b0a357121d06685` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
