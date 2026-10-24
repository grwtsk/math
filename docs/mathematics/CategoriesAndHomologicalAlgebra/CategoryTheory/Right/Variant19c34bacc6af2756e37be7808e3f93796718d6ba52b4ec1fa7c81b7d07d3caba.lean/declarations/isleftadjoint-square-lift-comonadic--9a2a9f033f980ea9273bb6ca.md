# isLeftAdjoint_square_lift_comonadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21fde77-1df5-de45-ffbd-8ca67df8116a",
  "kind": "lemma",
  "lexical_name": "isLeftAdjoint_square_lift_comonadic",
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
  "slug": "isleftadjoint-square-lift-comonadic--9a2a9f033f980ea9273bb6ca",
  "source": {
    "blob": "9d014feebe1015ce4430db93a6bb7fb145381013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2a9f033f980ea9273bb6ca2af0a73c6e08dafcf70e5b50f681247726e9c54d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21fde77-1df5-de45-ffbd-8ca67df8116a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftAdjoint_square_lift_comonadic (Q : A ⥤ B) (V : B ⥤ D) (U : A ⥤ C) (L : C ⥤ D)
    (comm : U ⋙ L ≅ Q ⋙ V) [U.IsLeftAdjoint] [ComonadicLeftAdjoint V] [L.IsLeftAdjoint]
    [HasCoreflexiveEqualizers A] : Q.IsLeftAdjoint :=
  have := ((Adjunction.ofIsLeftAdjoint (U ⋙ L)).ofNatIsoLeft comm).isLeftAdjoint
  isLeftAdjoint_triangle_lift_comonadic V

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d014feebe1015ce4430db93a6bb7fb145381013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
