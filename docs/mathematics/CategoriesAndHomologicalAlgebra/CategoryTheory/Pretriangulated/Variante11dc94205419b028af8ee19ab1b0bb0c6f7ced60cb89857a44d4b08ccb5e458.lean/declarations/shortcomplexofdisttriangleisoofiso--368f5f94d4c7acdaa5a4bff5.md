# shortComplexOfDistTriangleIsoOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ccece4b7a47f16f9a269a7607bb85b11fb20e0ed3bf426c9b22d842c332c165",
  "kind": "def",
  "lexical_name": "shortComplexOfDistTriangleIsoOfIso",
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
  "slug": "shortcomplexofdisttriangleisoofiso--368f5f94d4c7acdaa5a4bff5",
  "source": {
    "blob": "334496d1ca65a779532e58d8ad914c532c8ce2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:368f5f94d4c7acdaa5a4bff5058e5c9c4c9ab356fc2b53d828e1216b66a43223",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ccece4b7a47f16f9a269a7607bb85b11fb20e0ed3bf426c9b22d842c332c165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shortComplexOfDistTriangleIsoOfIso {T T' : Triangle C} (e : T ≅ T') (hT : T ∈ distTriang C) :
    shortComplexOfDistTriangle T hT ≅ shortComplexOfDistTriangle T'
      (isomorphic_distinguished _ hT _ e.symm) :=
  ShortComplex.isoMk (Triangle.π₁.mapIso e) (Triangle.π₂.mapIso e) (Triangle.π₃.mapIso e)

/-- Any morphism `Y ⟶ Z` is part of a distinguished triangle `X ⟶ Y ⟶ Z ⟶ X⟦1⟧` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334496d1ca65a779532e58d8ad914c532c8ce2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
