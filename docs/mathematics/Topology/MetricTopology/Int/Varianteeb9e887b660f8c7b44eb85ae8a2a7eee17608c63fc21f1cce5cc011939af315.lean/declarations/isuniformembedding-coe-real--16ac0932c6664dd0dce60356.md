# isUniformEmbedding_coe_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11f8ae50-66dc-97df-4c35-56692b49435c",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding_coe_real",
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
  "slug": "isuniformembedding-coe-real--16ac0932c6664dd0dce60356",
  "source": {
    "blob": "4c66cf6ea80ffbff6a51794300a35fb818d653fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 49,
    "path": "GRWTSK/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16ac0932c6664dd0dce60356d22a1582f7eb636a8f37580aa87ae52f56237c3f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11f8ae50-66dc-97df-4c35-56692b49435c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding_coe_real : IsUniformEmbedding ((↑) : ℤ → ℝ) :=
  isUniformEmbedding_bot_of_pairwise_le_dist zero_lt_one pairwise_one_le_dist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c66cf6ea80ffbff6a51794300a35fb818d653fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
