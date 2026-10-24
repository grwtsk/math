# ι_mapBifunctorAssociator_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d85712cc-811c-d9f5-2558-55844cfd468a",
  "kind": "lemma",
  "lexical_name": "ι_mapBifunctorAssociator_hom",
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
  "slug": "mapbifunctorassociator-hom--8d299c837b1498afa08f52e0",
  "source": {
    "blob": "d0bd9f2e18059fa3e47ccb6ef3e5ed117c29355b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2e0891a08a79151593d52e36e7240f5b64e893199231efc229e4bd83612f7fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d299c837b1498afa08f52e0ce931eb25d039d53327957e778c7a25df0baad0b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2e0891a08a79151593d52e36e7240f5b64e893199231efc229e4bd83612f7fd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d85712cc-811c-d9f5-2558-55844cfd468a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_mapBifunctorAssociator_hom (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (j : J) (h : r (i₁, i₂, i₃) = j) :
    ιMapBifunctor₁₂BifunctorMapObj F₁₂ G ρ₁₂ X₁ X₂ X₃ i₁ i₂ i₃ j h ≫
      (mapBifunctorAssociator associator ρ₁₂ ρ₂₃ X₁ X₂ X₃).hom j =
        ((associator.hom.app (X₁ i₁)).app (X₂ i₂)).app (X₃ i₃) ≫
          ιMapBifunctorBifunctor₂₃MapObj F G₂₃ ρ₂₃ X₁ X₂ X₃ i₁ i₂ i₃ j h := by
  have := H₁₂.hasMap
  have := H₂₃.hasMap
  dsimp [mapBifunctorAssociator]
  rw [ι_mapBifunctorComp₁₂MapObjIso_inv_assoc, ιMapTrifunctorMapObj,
    ι_mapMap_assoc, mapTrifunctorMapNatTrans_app_app_app]
  erw [ι_mapBifunctorComp₂₃MapObjIso_hom]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2e0891a08a79151593d52e36e7240f5b64e893199231efc229e4bd83612f7fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2e0891a08a79151593d52e36e7240f5b64e893199231efc229e4bd83612f7fd0.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0bd9f2e18059fa3e47ccb6ef3e5ed117c29355b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
