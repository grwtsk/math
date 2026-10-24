# extend_extends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aec8ccb7153a1169a54f9497118a91927c1439b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1db21b2a-9d92-e7b0-106b-461061bba36a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66b0e08a-f8f5-5bd9-ef41-44de177c0a9d",
  "kind": "theorem",
  "lexical_name": "extend_extends",
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
  "slug": "extend-extends--0296fb7ca29d78621437ed0d",
  "source": {
    "blob": "aec8ccb7153a1169a54f9497118a91927c1439b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0296fb7ca29d78621437ed0dc60aa335a7f89b5e5486a09f53cdf18b72ce2d78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66b0e08a-f8f5-5bd9-ef41-44de177c0a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_extends {a b : X} (γ : Path a b) {t : ℝ}
    (ht : t ∈ (Icc 0 1 : Set ℝ)) : γ.extend t = γ ⟨t, ht⟩ :=
  IccExtend_of_mem _ γ ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aec8ccb7153a1169a54f9497118a91927c1439b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
