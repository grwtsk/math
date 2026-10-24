# isFiltered_of_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05a5ac515fb2d350cb9f4816cc75f7f204519db570b25c7ed17adfd9bc7db22e",
  "kind": "instance",
  "lexical_name": "isFiltered_of_final",
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
  "slug": "isfiltered-of-final--7bd0bc0c25d0a8e0d2dec97f",
  "source": {
    "blob": "5629f5ad793367400acd445dc64b8cbcf53b25e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bd0bc0c25d0a8e0d2dec97f665da0d162e1b2b9cb72c2ece234358c91e1cd0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05a5ac515fb2d350cb9f4816cc75f7f204519db570b25c7ed17adfd9bc7db22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isFiltered_of_final [IsFiltered A] [IsFiltered B] [R.Final] : IsFiltered (Comma L R) := by
  have := R.final_iff_isFiltered_structuredArrow.mp inferInstance
  exact isFiltered_of_isFiltered_structuredArrow L R

/-- Let `A` and `B` be cofiltered categories, `L : A ⥤ T` be initial and `R : B ⥤ T`. Then, the
comma category `Comma L R` is cofiltered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629f5ad793367400acd445dc64b8cbcf53b25e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
