# uniformContinuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbd121da-904d-ea4a-f68b-3ad3f89a6e08",
  "kind": "theorem",
  "lexical_name": "uniformContinuousOn",
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
  "slug": "uniformcontinuouson--f1ed47efdff67e9f5dcd7cce",
  "source": {
    "blob": "bb723eb5a1c4b08ef8e786e30e34657a0a7476a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ed47efdff67e9f5dcd7cce7b345b3362b6b6c336dc9dc6ec2c0dc6ebe6d5c6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbd121da-904d-ea4a-f68b-3ad3f89a6e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem uniformContinuousOn (hf : HolderOnWith C r f s) (h0 : 0 < r) :
    UniformContinuousOn f s := by
  refine EMetric.uniformContinuousOn_iff.2 fun ε εpos => ?_
  have : Tendsto (fun d : ℝ≥0∞ => (C : ℝ≥0∞) * d ^ (r : ℝ)) (𝓝 0) (𝓝 0) :=
    ENNReal.tendsto_const_mul_rpow_nhds_zero_of_pos ENNReal.coe_ne_top h0
  rcases ENNReal.nhds_zero_basis.mem_iff.1 (this (gt_mem_nhds εpos)) with ⟨δ, δ0, H⟩
  exact ⟨δ, δ0, fun hx y hy h => (hf.edist_le hx hy).trans_lt (H h)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb723eb5a1c4b08ef8e786e30e34657a0a7476a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
