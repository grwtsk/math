# partialLeftAdjointHomEquiv_map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c48222f674f41826200847952192444df7c07e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19ee4fb6-3511-f05d-831a-1359871210d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd0d99cc-9ebb-4303-b32d-adbb081e03b1",
  "kind": "lemma",
  "lexical_name": "partialLeftAdjointHomEquiv_map_comp",
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
  "slug": "partialleftadjointhomequiv-map-comp--0d21adff801d3fbd7fa4000f",
  "source": {
    "blob": "9c48222f674f41826200847952192444df7c07e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d21adff801d3fbd7fa4000f923f943ddb13cd2912962c92457e7adca126a42b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd0d99cc-9ebb-4303-b32d-adbb081e03b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partialLeftAdjointHomEquiv_map_comp {X X' : F.PartialLeftAdjointSource} {Y : D}
    (f : X ⟶ X') (g : F.partialLeftAdjointObj X' ⟶ Y) :
    F.partialLeftAdjointHomEquiv (F.partialLeftAdjointMap f ≫ g) =
      by exact f ≫ F.partialLeftAdjointHomEquiv g := by
  rw [partialLeftAdjointHomEquiv_comp, partialLeftAdjointHomEquiv_map, assoc,
    ← partialLeftAdjointHomEquiv_comp, id_comp]

/-- Given `F : D ⥤ C`, this is the partial adjoint functor `F.PartialLeftAdjointSource ⥤ D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialAdjoint/Variantdffa1c65f7fc1847e1705015f21e8325d463ba8313b638637a2e51b820c48e7e.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c48222f674f41826200847952192444df7c07e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
