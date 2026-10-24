# isTriangulated_of_isLeftDerivedFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178dc386-1440-1092-6245-57c646b46e6b",
  "kind": "lemma",
  "lexical_name": "isTriangulated_of_isLeftDerivedFunctor",
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
  "slug": "istriangulated-of-isleftderivedfunctor--6c58606ef800fa00338ecf30",
  "source": {
    "blob": "5f2fc78db011d873875301370b0a357121d06685",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c58606ef800fa00338ecf30fd0577fdac45928ac0f9cee10a98bf266e09c737",
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

Occurrence: `result:178dc386-1440-1092-6245-57c646b46e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_of_isLeftDerivedFunctor
    [Φ.IsLeftDerivabilityStructure] [Φ.arrow.HasLeftResolutions]
    {LF : D₂ ⥤ H} [LF.CommShift ℤ]
    (α : L ⋙ LF ⟶ F) [NatTrans.CommShift α ℤ]
    [LF.IsLeftDerivedFunctor α W₂] :
    LF.IsTriangulated :=
  Functor.isTriangulated_of_rightExtension _ α fun X Y f ↦ by
    obtain ⟨φ, ⟨eφ⟩⟩ := Functor.EssSurj.mem_essImage (F := L.mapArrow) (Arrow.mk f)
    let R : Φ.arrow.LeftResolution φ := Classical.arbitrary _
    obtain ⟨Z, g, h, hT⟩ := distinguished_cocone_triangle R.X₁.hom
    refine ⟨_, Φ.functor.map_distinguished _ hT,
      hF.isIso' _ _, hF.isIso' _ _, hF.isIso' _ _,
      ⟨?_ ≪≫ eφ⟩⟩
    exact Arrow.isoMk (Localization.isoOfHom L _ _ R.hw.1)
      (Localization.isoOfHom L _ _ R.hw.2)
      (by simp [← Functor.map_comp])

end LocalizerMorphism.Derives

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DerivesTriangulated/Variantdfdbfab72468566970adfe9892e38180fd603eb7317b4aacc59fc3769bb0a426.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2fc78db011d873875301370b0a357121d06685` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
