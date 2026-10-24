# IsSeparable.secondCountableTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a018e7cd9cf73cca86af3af0ae8a63aa6f463f20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6976cbc5-3f4d-6f3d-cd87-bafeab38456c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf2afe12-a0cf-82f7-36c4-093d4c1465c9",
  "kind": "theorem",
  "lexical_name": "IsSeparable.secondCountableTopology",
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
  "slug": "isseparable-secondcountabletopology--cbda8fd117bc8e59bc1ea93e",
  "source": {
    "blob": "a018e7cd9cf73cca86af3af0ae8a63aa6f463f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbda8fd117bc8e59bc1ea93eb9599e8ac3a02e93b35b121f40825ebbab28ecf1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf2afe12-a0cf-82f7-36c4-093d4c1465c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparable.secondCountableTopology [PseudoMetrizableSpace X] {s : Set X}
    (hs : IsSeparable s) : SecondCountableTopology s :=
  let ⟨u, hu, hs⟩ := hs
  have := hu.to_subtype
  have : SeparableSpace (closure u) :=
    ⟨Set.range (u.inclusion subset_closure), Set.countable_range (u.inclusion subset_closure),
      Subtype.dense_iff.2 <| by rw [← Set.range_comp, Set.val_comp_inclusion, Subtype.range_coe]⟩
  let := pseudoMetrizableSpaceUniformity (closure u)
  have := pseudoMetrizableSpaceUniformity_countably_generated (closure u)
  have := secondCountable_of_separable (closure u)
  (Topology.IsEmbedding.inclusion hs).secondCountableTopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a018e7cd9cf73cca86af3af0ae8a63aa6f463f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
