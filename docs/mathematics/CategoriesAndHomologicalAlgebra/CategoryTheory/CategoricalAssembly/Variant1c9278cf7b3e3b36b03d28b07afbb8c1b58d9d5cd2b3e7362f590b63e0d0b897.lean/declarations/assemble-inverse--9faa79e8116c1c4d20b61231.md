# assemble_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac7f3225-f496-e766-84bd-9b4c68631aa5",
  "kind": "theorem",
  "lexical_name": "assemble_inverse",
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
  "slug": "assemble-inverse--9faa79e8116c1c4d20b61231",
  "source": {
    "blob": "c23306c65fb81d8252560bd3d55e84b7012fcb9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9faa79e8116c1c4d20b61231df3be45a1d9d7215aea1a94a5c5417f7a53b15d2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac7f3225-f496-e766-84bd-9b4c68631aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem assemble_inverse (F : C ⥤ D) (L R : D ⥤ C)
    (left : F ⋙ L ≅ 𝟭 C) (right : R ⋙ F ≅ 𝟭 D) :
    (assemble F L R left right).inverse = L := rfl

/-- Odd-torsion labels make the minus sign visible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variant1c9278cf7b3e3b36b03d28b07afbb8c1b58d9d5cd2b3e7362f590b63e0d0b897.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c23306c65fb81d8252560bd3d55e84b7012fcb9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
