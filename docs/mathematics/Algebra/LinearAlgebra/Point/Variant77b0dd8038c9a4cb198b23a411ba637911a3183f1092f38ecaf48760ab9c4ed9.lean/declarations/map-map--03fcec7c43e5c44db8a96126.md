# map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f10d185c70019fd37c82da3d09eb906e12ac9bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 848,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85c20fab-5d5b-4ba6-8e8f-2b2e38f45763",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:905ce462-2ef3-7789-7fa3-70f77c23e29e",
  "kind": "lemma",
  "lexical_name": "map_map",
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
  "slug": "map-map--03fcec7c43e5c44db8a96126",
  "source": {
    "blob": "2f10d185c70019fd37c82da3d09eb906e12ac9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 848,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03fcec7c43e5c44db8a96126f66f2fe404666e48adfd18e2bfc5c0e72f2aa6b1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:905ce462-2ef3-7789-7fa3-70f77c23e29e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_map (P : (W'⁄F).Point) : map g (map f P) = map (g.comp f) P := by
  cases P <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f10d185c70019fd37c82da3d09eb906e12ac9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
