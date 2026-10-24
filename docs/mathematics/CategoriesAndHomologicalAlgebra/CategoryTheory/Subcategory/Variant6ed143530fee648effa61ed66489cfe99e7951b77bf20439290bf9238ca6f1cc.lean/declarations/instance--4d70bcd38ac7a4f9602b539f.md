# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ead44fdf212a4adb8635cf5ef5d83902329c974f023c5aee0cb77dd88f111b23",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4d70bcd38ac7a4f9602b539f",
  "source": {
    "blob": "7c507bd2eafb8ac5e9ff4a732492b3af0ebe7693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 691,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d70bcd38ac7a4f9602b539f52cc5cd4b3f89c48dd32f33d51fcec0ce0c3c548",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ead44fdf212a4adb8635cf5ef5d83902329c974f023c5aee0cb77dd88f111b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Pretriangulated P.FullSubcategory where
  distinguishedTriangles := P.ι.mapTriangle.obj ⁻¹' (distTriang C)
  isomorphic_distinguished T₁ hT₁ T₂ e :=
    isomorphic_distinguished _ hT₁ _ (P.ι.mapTriangle.mapIso e)
  contractible_distinguished X :=
    isomorphic_distinguished _ (contractible_distinguished (P.ι.obj X)) _
      (Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) P.ι.mapZeroObject)
  distinguished_cocone_triangle {X Y} f := by
    obtain ⟨Z', g', h', mem⟩ := distinguished_cocone_triangle (P.ι.map f)
    obtain ⟨Z'', hZ'', ⟨e⟩⟩ := P.ext_of_isTriangulatedClosed₃' _ mem X.2 Y.2
    exact ⟨⟨Z'', hZ''⟩, P.fullyFaithfulι.preimage (g' ≫ e.hom),
      P.fullyFaithfulι.preimage (e.inv ≫ h' ≫ (P.ι.commShiftIso (1 : ℤ)).inv.app X),
      isomorphic_distinguished _ mem _ (Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) e.symm)⟩
  rotate_distinguished_triangle T :=
    (rotate_distinguished_triangle (P.ι.mapTriangle.obj T)).trans
      (distinguished_iff_of_iso (P.ι.mapTriangleRotateIso.app T))
  complete_distinguished_triangle_morphism T₁ T₂ hT₁ hT₂ a b comm := by
    obtain ⟨c, ⟨hc₁, hc₂⟩⟩ := complete_distinguished_triangle_morphism (P.ι.mapTriangle.obj T₁)
      (P.ι.mapTriangle.obj T₂) hT₁ hT₂ (P.ι.map a) (P.ι.map b)
      (by simpa using P.ι.congr_map comm)
    refine ⟨P.fullyFaithfulι.preimage c, ⟨by cat_disch, ?_⟩⟩
    ext
    have := P.ι.commShiftIso_hom_naturality a (1 : ℤ)
    rw [← cancel_mono ((Functor.commShiftIso P.ι (1 : ℤ)).hom.app T₂.obj₁)]
    cat_disch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant6ed143530fee648effa61ed66489cfe99e7951b77bf20439290bf9238ca6f1cc.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c507bd2eafb8ac5e9ff4a732492b3af0ebe7693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
