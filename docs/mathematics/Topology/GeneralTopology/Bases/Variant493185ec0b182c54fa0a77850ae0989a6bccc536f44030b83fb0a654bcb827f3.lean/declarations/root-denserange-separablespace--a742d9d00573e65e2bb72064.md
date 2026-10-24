# _root_.DenseRange.separableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:361256d4-babf-60f3-435f-59fe9835c97b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca660d5d-a73b-962d-181b-0ee55fff2923",
  "kind": "theorem",
  "lexical_name": "_root_.DenseRange.separableSpace",
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
  "slug": "root-denserange-separablespace--a742d9d00573e65e2bb72064",
  "source": {
    "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 397,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a742d9d00573e65e2bb72064744c0bca2440ffd74a65104238978330effc5955",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca660d5d-a73b-962d-181b-0ee55fff2923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.DenseRange.separableSpace [SeparableSpace α] [TopologicalSpace β]
    {f : α → β} (h : DenseRange f) (h' : Continuous f) : SeparableSpace β :=
  let ⟨s, s_cnt, s_dense⟩ := exists_countable_dense α
  ⟨⟨f '' s, Countable.image s_cnt f, h.dense_image h' s_dense⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83ef8435af34618046ecb4b3b0b05f85d68e8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
