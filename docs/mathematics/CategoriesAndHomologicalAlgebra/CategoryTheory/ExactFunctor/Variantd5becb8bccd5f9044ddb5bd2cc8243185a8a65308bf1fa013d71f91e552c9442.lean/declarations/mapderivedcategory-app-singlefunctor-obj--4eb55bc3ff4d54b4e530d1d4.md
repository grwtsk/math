# mapDerivedCategory_app_singleFunctor_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48b40cc12697b47e6b3d5612b565b21b445aca08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d743844-f8d1-7727-1fca-958110dabde5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71d0cd67-acc6-7d45-e01c-fd30f0895579",
  "kind": "lemma",
  "lexical_name": "mapDerivedCategory_app_singleFunctor_obj",
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
  "slug": "mapderivedcategory-app-singlefunctor-obj--4eb55bc3ff4d54b4e530d1d4",
  "source": {
    "blob": "48b40cc12697b47e6b3d5612b565b21b445aca08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb55bc3ff4d54b4e530d1d466b8fe1dd76563e3e50f98e7b6021017cf5c00f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d0cd67-acc6-7d45-e01c-fd30f0895579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapDerivedCategory_app_singleFunctor_obj (τ : F ⟶ G) (X : C₁) (n : ℤ) :
    τ.mapDerivedCategory.app ((DerivedCategory.singleFunctor C₁ n).obj X) =
    (F.mapDerivedCategorySingleFunctor n).hom.app X ≫
      (DerivedCategory.singleFunctor C₂ n).map (τ.app X) ≫
        (G.mapDerivedCategorySingleFunctor n).inv.app X := by
  simp [← DerivedCategory.Q_obj_single_obj, mapDerivedCategory_app_Q_obj,
    Functor.mapDerivedCategorySingleFunctor_hom_app,
    Functor.mapDerivedCategorySingleFunctor_inv_app,
    DerivedCategory.singleFunctorIsoCompQ_hom_app,
    DerivedCategory.singleFunctorIsoCompQ_inv_app,
    HomologicalComplex.natTransMapHomologicalComplex_app_single_obj]

end NatTrans

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b40cc12697b47e6b3d5612b565b21b445aca08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
