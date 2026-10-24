# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiLeftOfEpi.Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.CategoryTheory.Limits.colimit.isColimitToOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21af77318a32f8fc12300466ce38857414aa7c5470b632c1a3ceca18868f89d6",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiLeftOfEpi.Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.CategoryTheory.Limits.colimit.isColimitToOver",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-epileftofepi--02e5bd343f15471396ca9640",
  "source": {
    "blob": "0cb635f32039cb1f266e9d46377683d8b8a57544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02e5bd343f15471396ca9640bf4c344acd6224b00620224b3b6cfff9b4cb4880",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21af77318a32f8fc12300466ce38857414aa7c5470b632c1a3ceca18868f89d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiLeftOfEpi.Variant1da5084efb7bd528e0326856fed5802d83bcde7e45b37b00324f266a3ef09688.CategoryTheory.Limits.colimit.isColimitToOver (F : J ⥤ C) [HasColimit F] :
    IsColimit (colimit.toOver F) :=
  Over.isColimitToOver (colimit.isColimit F)

end CategoryTheory.Over

namespace CategoryTheory.Under

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variantb71fe142768cb9af211521ab508e8e1781e4b452570100fea5f9ed6fcc103f51.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb635f32039cb1f266e9d46377683d8b8a57544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
