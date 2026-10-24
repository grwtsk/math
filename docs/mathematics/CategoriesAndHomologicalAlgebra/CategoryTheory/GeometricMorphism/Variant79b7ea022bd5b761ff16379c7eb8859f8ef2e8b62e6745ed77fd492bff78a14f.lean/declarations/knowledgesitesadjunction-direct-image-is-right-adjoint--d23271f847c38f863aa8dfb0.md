# KnowledgeSitesAdjunction.direct_image_is_right_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bec36a7731070977ad6e95eda3f3d5cb720238848f290bf73d5e74681ce4779",
  "kind": "def",
  "lexical_name": "KnowledgeSitesAdjunction.direct_image_is_right_adjoint",
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
  "slug": "knowledgesitesadjunction-direct-image-is-right-adjoint--d23271f847c38f863aa8dfb0",
  "source": {
    "blob": "38eff93aab6df7d073535f3f5e1fd31930145ea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d23271f847c38f863aa8dfb09e84e5e8657e36ce815d13abd5abfb43edd21183",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bec36a7731070977ad6e95eda3f3d5cb720238848f290bf73d5e74681ce4779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KnowledgeSitesAdjunction.direct_image_is_right_adjoint
    {C D : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Category.{v} D]
    {KC : KnowledgeTopology C}
    {KD : KnowledgeTopology D}
    (G : KnowledgeSitesAdjunction C D KC KD) :
    CategoryTheory.Adjunction G.inverseImage G.directImage :=
by
  exact G.adjunction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GeometricMorphism/Variant79b7ea022bd5b761ff16379c7eb8859f8ef2e8b62e6745ed77fd492bff78a14f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38eff93aab6df7d073535f3f5e1fd31930145ea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
