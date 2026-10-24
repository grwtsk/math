# coeq₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a00b8fca6949eb785f091dba4a31540d98926eb33b41d68dbece0f89a1760751",
  "kind": "def",
  "lexical_name": "coeq₃",
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
  "slug": "coeq--1aca474b3f2bf753b90afa2d",
  "source": {
    "blob": "b235eda0da9b0fb1432eb49acf0644db09b0de9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 419,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1aca474b3f2bf753b90afa2d5eb7ff60d96382c9725b2e61404a08354da01a83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a00b8fca6949eb785f091dba4a31540d98926eb33b41d68dbece0f89a1760751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coeq₃ {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) : C :=
  coeq (coeqHom f g ≫ leftToMax (coeq f g) (coeq g h))
    (coeqHom g h ≫ rightToMax (coeq f g) (coeq g h))

/-- `coeq₃Hom f g h`, for morphisms `f g h : j₁ ⟶ j₂`, is an arbitrary choice of morphism
`j₂ ⟶ coeq₃ f g h` such that `coeq₃_condition₁`, `coeq₃_condition₂` and `coeq₃_condition₃`
are satisfied. Its existence is ensured by `IsFiltered`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c8b454e2d8f1da01828048d5505ead9cdd54655f0abe6be3244b57459bbc7df.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235eda0da9b0fb1432eb49acf0644db09b0de9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
