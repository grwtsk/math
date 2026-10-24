# isUniformEmbedding_coeFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:773ae169-cd18-6584-8a63-c4f37f3a6ead",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21cf1568-346a-0e2b-8b6f-51f2e9eb648e",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_coeFn",
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
  "slug": "isuniformembedding-coefn--3b017323cd44bd4dcf15185d",
  "source": {
    "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b017323cd44bd4dcf15185dd9e559be820f8b38b9b4d6bbd952d2d42453586d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21cf1568-346a-0e2b-8b6f-51f2e9eb648e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding_coeFn [UniformSpace F] [IsUniformAddGroup F] (𝔖 : Set (Set E)) :
    IsUniformEmbedding (α := E →SLᵤ[σ, 𝔖] F) (UniformOnFun.ofFun 𝔖 ∘ DFunLike.coe) :=
  ⟨isUniformInducing_coeFn .., DFunLike.coe_injective⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2895b3845de48cd019222a498552f7c119aeefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
