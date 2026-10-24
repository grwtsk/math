# Circle.hasBasis_centeredArc_div_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e26debc9-aa64-2c3f-7322-2d36138b66d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:167af6a4-bffb-fdfe-7316-e42dc507ffb1",
  "kind": "theorem",
  "lexical_name": "Circle.hasBasis_centeredArc_div_two_pow",
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
  "slug": "circle-hasbasis-centeredarc-div-two-pow--a28ea86766c0e6473365da17",
  "source": {
    "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 462,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a28ea86766c0e6473365da17ed02d16885e5dbb2674262a3ce72096743ef883d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:167af6a4-bffb-fdfe-7316-e42dc507ffb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Circle.hasBasis_centeredArc_div_two_pow :
    (nhds (1 : Circle)).HasBasis (fun _ ↦ True) (fun n ↦ centeredArc (π / 2 ^ (n + 1))) := by
  rw [← Circle.exp_zero, ← isLocalHomeomorph_circleExp.map_nhds_eq 0]
  simp_rw [centeredArc, abs_lt, Set.Ioo_def, ← Real.ball_zero_eq_Ioo]
  apply Filter.HasBasis.map
  refine nhds_basis_uniformity <| Metric.mk_uniformity_basis_of_tendsto (l := Filter.atTop)
    (fun _ _ ↦ by positivity) (by simp) ?_
  simp_rw [div_eq_mul_inv, pow_succ, mul_inv_rev, ← mul_assoc]
  rw [← mul_zero (π * 2⁻¹)]
  exact tendsto_inv_atTop_zero.comp (tendsto_pow_atTop_atTop_of_one_lt (by norm_num))
    |>.const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
