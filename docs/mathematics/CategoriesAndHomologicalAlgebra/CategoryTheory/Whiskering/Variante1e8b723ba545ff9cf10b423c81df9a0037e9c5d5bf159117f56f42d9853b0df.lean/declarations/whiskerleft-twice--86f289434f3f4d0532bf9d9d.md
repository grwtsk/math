# whiskerLeft_twice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3dd8f7e-b6e6-a400-c8fc-9bdac79e5ff1",
  "kind": "theorem",
  "lexical_name": "whiskerLeft_twice",
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
  "slug": "whiskerleft-twice--86f289434f3f4d0532bf9d9d",
  "source": {
    "blob": "6519dca04db6ebe90f209211fed3f78ed0fc3a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86f289434f3f4d0532bf9d9d33ded21565c9ba3fca424cb06ea618e9a0b6691e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3dd8f7e-b6e6-a400-c8fc-9bdac79e5ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerLeft_twice (F : B ⥤ C) (G : C ⥤ D) {H K : D ⥤ E} (α : H ⟶ K) :
    whiskerLeft F (whiskerLeft G α) = whiskerLeft (F ⋙ G) α :=
  rfl
#align category_theory.whisker_left_twice CategoryTheory.whiskerLeft_twice

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variante1e8b723ba545ff9cf10b423c81df9a0037e9c5d5bf159117f56f42d9853b0df.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6519dca04db6ebe90f209211fed3f78ed0fc3a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
