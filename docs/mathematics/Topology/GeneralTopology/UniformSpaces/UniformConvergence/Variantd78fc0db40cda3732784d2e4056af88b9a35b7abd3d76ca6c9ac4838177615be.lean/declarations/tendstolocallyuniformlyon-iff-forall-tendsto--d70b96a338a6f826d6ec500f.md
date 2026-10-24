# tendstoLocallyUniformlyOn_iff_forall_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67fdd99294a7682219834479151f3c026e6e5eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 610,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95f7d8a4-4208-4623-7204-acfb7977cc17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c2c2afe-1a4b-cd20-df28-13b0dc4d3302",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformlyOn_iff_forall_tendsto",
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
  "slug": "tendstolocallyuniformlyon-iff-forall-tendsto--d70b96a338a6f826d6ec500f",
  "source": {
    "blob": "67fdd99294a7682219834479151f3c026e6e5eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 610,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70b96a338a6f826d6ec500f35322c7defe9cbe2d075983353e9117a42c788c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2c2afe-1a4b-cd20-df28-13b0dc4d3302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformlyOn_iff_forall_tendsto :
    TendstoLocallyUniformlyOn F f p s ↔
      ∀ x ∈ s, Tendsto (fun y : ι × α => (f y.2, F y.1 y.2)) (p ×ˢ 𝓝[s] x) (𝓤 β) :=
  forall₂_swap.trans <| forall₄_congr fun _ _ _ _ => by
    rw [mem_map, mem_prod_iff_right]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variantd78fc0db40cda3732784d2e4056af88b9a35b7abd3d76ca6c9ac4838177615be.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67fdd99294a7682219834479151f3c026e6e5eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
