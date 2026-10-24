# mul_lipschitzWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569b81b580ee6f34a986f0dbae8f5100eaaad0e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e1cf5a2-38ec-63d4-359c-907e88c6dbf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:177637fc-fc6c-6b6a-c64d-b77993a94fb6",
  "kind": "theorem",
  "lexical_name": "mul_lipschitzWith",
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
  "slug": "mul-lipschitzwith--3e45acbaf7a26615c4c927d5",
  "source": {
    "blob": "569b81b580ee6f34a986f0dbae8f5100eaaad0e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 346,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e45acbaf7a26615c4c927d5f14b1035e0f619d33bfae0fee86b2e691325bfe1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177637fc-fc6c-6b6a-c64d-b77993a94fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_lipschitzWith (hf : AntilipschitzWith Kf f) (hg : LipschitzWith Kg g) (hK : Kg < Kf⁻¹) :
    AntilipschitzWith (Kf⁻¹ - Kg)⁻¹ fun x => f x * g x := by
  let : PseudoMetricSpace α := PseudoEMetricSpace.toPseudoMetricSpace hf.edist_ne_top
  refine AntilipschitzWith.of_le_mul_dist fun x y => ?_
  rw [NNReal.coe_inv, ← _root_.div_eq_inv_mul]
  rw [le_div_iff₀ (NNReal.coe_pos.2 <| tsub_pos_iff_lt.2 hK)]
  rw [mul_comm, NNReal.coe_sub hK.le, sub_mul]
  calc
    ↑Kf⁻¹ * dist x y - Kg * dist x y ≤ dist (f x) (f y) - dist (g x) (g y) :=
      sub_le_sub (hf.mul_le_dist x y) (hg.dist_le_mul x y)
    _ ≤ _ := le_trans (le_abs_self _) (abs_dist_sub_le_dist_mul_mul _ _ _ _)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Varianta51edacdba0c9a0000006c1f962319561955f1c6162b75e03aeeb78db62f935d.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569b81b580ee6f34a986f0dbae8f5100eaaad0e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
