# colimit.post_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd538ff84800a39510ea53f93f64ffcefebd3f44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 941,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bf07c3d-f07b-05b8-8e6c-c7fb5ac2c4fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92b8087e-d7c6-6c7f-4a58-56d8b58c92ac",
  "kind": "theorem",
  "lexical_name": "colimit.post_desc",
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
  "slug": "colimit-post-desc--f639889fa9c29560bf069a15",
  "source": {
    "blob": "dd538ff84800a39510ea53f93f64ffcefebd3f44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 947,
    "line": 941,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f639889fa9c29560bf069a1503268c513e532e4aa3f5f742fb1e17e79fd0f6b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92b8087e-d7c6-6c7f-4a58-56d8b58c92ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 941–947.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit.post_desc (c : Cocone F) :
    colimit.post F G ≫ G.map (colimit.desc F c) = colimit.desc (F ⋙ G) (G.mapCocone c) := by
  ext
  rw [← assoc, colimit.ι_post, ← G.map_comp, colimit.ι_desc, colimit.ι_desc]
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant536afaf0d8419e75a112c8ef1d1d04f02a4d473b7e26089865b996261127a2c5.lean#L941).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd538ff84800a39510ea53f93f64ffcefebd3f44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
