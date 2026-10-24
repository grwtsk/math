# Topology.IsInducing.secondCountableTopology

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
      "line": 1176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:928110f0-152c-79cf-0793-d013abe5827c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85532c17-0980-1806-ee6c-41d9326cca43",
  "kind": "theorem",
  "lexical_name": "Topology.IsInducing.secondCountableTopology",
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
  "slug": "topology-isinducing-secondcountabletopology--c9cf36ab38ffbdd1142c576e",
  "source": {
    "blob": "b83ef8435af34618046ecb4b3b0b05f85d68e8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1180,
    "line": 1176,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9cf36ab38ffbdd1142c576e14365358cf3ba7301959d8d7ed18a0f832d4c0e7",
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

Occurrence: `result:85532c17-0980-1806-ee6c-41d9326cca43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1176–1180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Topology.IsInducing.secondCountableTopology [TopologicalSpace β]
    [SecondCountableTopology β] (hf : IsInducing f) : SecondCountableTopology α := by
  rw [hf.1]
  exact secondCountableTopology_induced α β f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant493185ec0b182c54fa0a77850ae0989a6bccc536f44030b83fb0a654bcb827f3.lean#L1176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83ef8435af34618046ecb4b3b0b05f85d68e8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
