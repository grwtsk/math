# colimitObjIsoColimitCompEvaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:135a9894d43fa836b38f6546581a226b289c32dcd1c97f6a3c7a90afba681903",
  "kind": "def",
  "lexical_name": "colimitObjIsoColimitCompEvaluation",
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
  "slug": "colimitobjisocolimitcompevaluation--5a8eb50548917bfa1fc34816",
  "source": {
    "blob": "4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 276,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a8eb50548917bfa1fc34816f015173ab0e574711af6cf84d31ea2e30d676b32",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:135a9894d43fa836b38f6546581a226b289c32dcd1c97f6a3c7a90afba681903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitObjIsoColimitCompEvaluation [HasColimitsOfShape J C] (F : J ⥤ K ⥤ C) (k : K) :
    (colimit F).obj k ≅ colimit (F ⋙ (evaluation K C).obj k) :=
  preservesColimitIso ((evaluation K C).obj k) F
#align category_theory.limits.colimit_obj_iso_colimit_comp_evaluation CategoryTheory.Limits.colimitObjIsoColimitCompEvaluation

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
