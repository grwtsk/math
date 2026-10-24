# asIsoHomologyι_inv_comp_homologyι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:879a61ad-c7f0-c8ad-ad70-fe633d8b8882",
  "kind": "lemma",
  "lexical_name": "asIsoHomologyι_inv_comp_homologyι",
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
  "slug": "asisohomology-inv-comp-homology--1e322cc0c5c7b9c667afb0c1",
  "source": {
    "blob": "12b71a88e6b6e8c53e5abe4e794864e7d653e664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1198,
    "line": 1195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e322cc0c5c7b9c667afb0c18865309889b885671c7a6ca9386bf4b5fcd9128c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:879a61ad-c7f0-c8ad-ad70-fe633d8b8882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1195–1198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma asIsoHomologyι_inv_comp_homologyι (hg : S.g = 0) [S.HasHomology] :
    (S.asIsoHomologyι hg).inv ≫ S.homologyι = 𝟙 _ := Iso.inv_hom_id _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean#L1195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b71a88e6b6e8c53e5abe4e794864e7d653e664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
