# Topology.IsEmbedding.image_mem_codiscreteWithin_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15098c5edd123ac4e36f0b866fb371160e89ca40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 491,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6311874-0b70-d4da-116d-aa5687f9fdd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71e1855b-2a69-6657-a20c-7abc253a6207",
  "kind": "theorem",
  "lexical_name": "Topology.IsEmbedding.image_mem_codiscreteWithin_range",
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
  "slug": "topology-isembedding-image-mem-codiscretewithin-range--e075d3a74c86d6ee823029e1",
  "source": {
    "blob": "15098c5edd123ac4e36f0b866fb371160e89ca40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e075d3a74c86d6ee823029e1c57c29201ee2fcea4041e852cf56ce1a37a0b19b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71e1855b-2a69-6657-a20c-7abc253a6207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsEmbedding.image_mem_codiscreteWithin_range {f : X → Y} (hf : IsEmbedding f)
    {s : Set X} : f '' s ∈ codiscreteWithin (range f) ↔ s ∈ codiscrete X := by
  rw [← image_univ, hf.image_mem_codiscreteWithin, codiscrete]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15098c5edd123ac4e36f0b866fb371160e89ca40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
