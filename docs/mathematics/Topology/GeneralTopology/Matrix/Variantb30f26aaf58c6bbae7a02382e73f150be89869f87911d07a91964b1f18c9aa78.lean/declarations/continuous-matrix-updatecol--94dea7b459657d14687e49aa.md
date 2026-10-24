# Continuous.matrix_updateCol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8de9b83f32018187564f5a850e7bc2bfd10cb7dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44f7c395-dd12-ab0a-97eb-fdf72d0cf280",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0c3a35f-9766-de5b-0b11-21d5fc3886db",
  "kind": "theorem",
  "lexical_name": "Continuous.matrix_updateCol",
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
  "slug": "continuous-matrix-updatecol--94dea7b459657d14687e49aa",
  "source": {
    "blob": "8de9b83f32018187564f5a850e7bc2bfd10cb7dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94dea7b459657d14687e49aaad47f6a29e323890292da24106c1f6943b2c3638",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0c3a35f-9766-de5b-0b11-21d5fc3886db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.matrix_updateCol [DecidableEq n] (i : n) {A : X → Matrix m n R}
    {B : X → m → R} (hA : Continuous A) (hB : Continuous B) :
    Continuous fun x => (A x).updateCol i (B x) :=
  continuous_matrix fun _j k =>
    (continuous_apply k).comp <|
      ((continuous_apply _).comp hA).update i ((continuous_apply _).comp hB)

@[deprecated (since := "2024-12-11")]
alias Continuous.matrix_updateColumn := Continuous.matrix_updateCol

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de9b83f32018187564f5a850e7bc2bfd10cb7dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
