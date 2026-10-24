# KnowledgeSitesAdjunction.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b6e2bfbe73357ae30bd17c39a868d00b2ed85e28d5f8acb763a25244ae4165b",
  "kind": "def",
  "lexical_name": "KnowledgeSitesAdjunction.adjunction",
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
  "slug": "knowledgesitesadjunction-adjunction--47f49d5ff385da0c60c32538",
  "source": {
    "blob": "3621e6377ddf8470677301ebbec921d442e9aae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47f49d5ff385da0c60c32538dbe01747196ea6e3412c5282d3ad995fed3b64e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b6e2bfbe73357ae30bd17c39a868d00b2ed85e28d5f8acb763a25244ae4165b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KnowledgeSitesAdjunction.adjunction
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD) :
    CategoryTheory.Adjunction G.inverseImage G.directImage :=
  G.unitCounit.toAdjunction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant71915ede5c673695afb2c0be3987a0f89e33f2d1372794b92c7c4977f42f1410.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3621e6377ddf8470677301ebbec921d442e9aae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
