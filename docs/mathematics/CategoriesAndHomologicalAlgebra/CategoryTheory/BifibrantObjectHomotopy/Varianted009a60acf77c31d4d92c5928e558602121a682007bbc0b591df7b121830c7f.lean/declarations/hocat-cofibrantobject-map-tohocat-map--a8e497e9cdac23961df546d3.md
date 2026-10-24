# HoCat.ιCofibrantObject_map_toHoCat_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2a2104c2103d2dfd3a95cbb57def638509921c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0925242-e7e5-a09a-0505-02a5eafa44f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b16213a8-1a49-59a7-4926-4a73950e2263",
  "kind": "lemma",
  "lexical_name": "HoCat.ιCofibrantObject_map_toHoCat_map",
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
  "slug": "hocat-cofibrantobject-map-tohocat-map--a8e497e9cdac23961df546d3",
  "source": {
    "blob": "a2a2104c2103d2dfd3a95cbb57def638509921c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 221,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e497e9cdac23961df546d3a4fa4706d991f40e979a08db4ee90ebfa4d61765",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b16213a8-1a49-59a7-4926-4a73950e2263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HoCat.ιCofibrantObject_map_toHoCat_map {X Y : BifibrantObject C} (f : X ⟶ Y) :
    HoCat.ιCofibrantObject.map (toHoCat.map f) =
      CofibrantObject.toHoCat.map (CofibrantObject.homMk f.hom) :=
  rfl

/-- The isomorphism
`toHoCat ⋙ HoCat.ιCofibrantObject ≅ ιCofibrantObject ⋙ CofibrantObject.toHoCat`
between functors `BifibrantObject C ⥤ CofibrantObject.HoCat C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifibrantObjectHomotopy/Varianted009a60acf77c31d4d92c5928e558602121a682007bbc0b591df7b121830c7f.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a2104c2103d2dfd3a95cbb57def638509921c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
