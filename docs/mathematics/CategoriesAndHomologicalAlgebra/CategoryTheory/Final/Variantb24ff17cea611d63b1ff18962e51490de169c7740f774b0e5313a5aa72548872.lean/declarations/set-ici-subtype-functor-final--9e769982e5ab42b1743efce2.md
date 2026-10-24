# Set.Ici.subtype_functor_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b668d4bf788963135d489e5fecc279eae24f7450ca03ca6632da7a20ff3c5a83",
  "kind": "instance",
  "lexical_name": "Set.Ici.subtype_functor_final",
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
  "slug": "set-ici-subtype-functor-final--9e769982e5ab42b1743efce2",
  "source": {
    "blob": "52a7d4241793b708b2de8cb5bb19cb77d51d8dfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 15,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e769982e5ab42b1743efce24cd9959be66ea7893d6784e9b99ba31f32cf74e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b668d4bf788963135d489e5fecc279eae24f7450ca03ca6632da7a20ff3c5a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Set.Ici.subtype_functor_final {J : Type u} [LinearOrder J] (j : J) :
    (Subtype.mono_coe (Set.Ici j)).functor.Final := by
  rw [Monotone.final_functor_iff]
  intro k
  exact ⟨⟨max j k, le_max_left _ _⟩, le_max_right _ _⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a7d4241793b708b2de8cb5bb19cb77d51d8dfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
