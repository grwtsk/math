# category

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01265bbac0bb4e6c624d8b4ee214c06a44e90614d33758fef1bfa5cc9e30248f",
  "kind": "instance",
  "lexical_name": "category",
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
  "slug": "category--743b63cea7cab4a19df3912d",
  "source": {
    "blob": "dfa52fa61565c4a5efa412e0cde947c155c26133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:743b63cea7cab4a19df3912d322757894fe0265ef6aceb7a5fab2d731b1f2d1d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01265bbac0bb4e6c624d8b4ee214c06a44e90614d33758fef1bfa5cc9e30248f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance category : LargeCategory.{max v u} Grpd.{v, u} where
  Hom C D := C ⥤ D
  id C := 𝟭 C
  comp F G := F ⋙ G
  id_comp _ := rfl
  comp_id _ := rfl
  assoc := by intros; rfl

/-- Functor that gets the set of objects of a groupoid. It is not
called `forget`, because it is not a faithful functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa52fa61565c4a5efa412e0cde947c155c26133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
