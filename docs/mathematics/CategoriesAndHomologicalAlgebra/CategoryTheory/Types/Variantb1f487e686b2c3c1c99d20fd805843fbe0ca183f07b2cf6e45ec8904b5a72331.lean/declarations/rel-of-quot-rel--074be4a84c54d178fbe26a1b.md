# rel_of_quot_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:507bd0f5-89f6-48de-fcdc-294814a6bddb",
  "kind": "theorem",
  "lexical_name": "rel_of_quot_rel",
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
  "slug": "rel-of-quot-rel--074be4a84c54d178fbe26a1b",
  "source": {
    "blob": "37248b76310a0f1bb7c1acdf2ea6c043acd84ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 486,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:074be4a84c54d178fbe26a1b4a5e6e5aeba8d573d262475582a5c78570bf318f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:507bd0f5-89f6-48de-fcdc-294814a6bddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rel_of_quot_rel (x y : Σ j, F.obj j) :
  Quot.Rel.{v, u} F x y → FilteredColimit.Rel.{v, u} F x y :=
  fun ⟨f, h⟩ => ⟨y.1, f, 𝟙 y.1, by rw [← h, FunctorToTypes.map_id_apply]⟩
#align category_theory.limits.types.filtered_colimit.rel_of_quot_rel CategoryTheory.Limits.Types.FilteredColimit.rel_of_quot_rel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37248b76310a0f1bb7c1acdf2ea6c043acd84ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
