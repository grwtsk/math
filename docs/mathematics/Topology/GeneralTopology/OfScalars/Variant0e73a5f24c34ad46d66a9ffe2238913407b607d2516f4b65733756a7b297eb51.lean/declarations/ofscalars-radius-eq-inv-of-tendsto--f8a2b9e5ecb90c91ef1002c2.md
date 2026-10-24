# ofScalars_radius_eq_inv_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07c86755bf2e0624c86f048d3ab7bcffff772981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b503898a-59a6-ce04-64ea-d84afeee7866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6edd50da-e842-9f7f-584f-e3bc74606107",
  "kind": "theorem",
  "lexical_name": "ofScalars_radius_eq_inv_of_tendsto",
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
  "slug": "ofscalars-radius-eq-inv-of-tendsto--f8a2b9e5ecb90c91ef1002c2",
  "source": {
    "blob": "07c86755bf2e0624c86f048d3ab7bcffff772981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8a2b9e5ecb90c91ef1002c20b1c7af7d750a750866de5a2b104c48bcbe0e119",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6edd50da-e842-9f7f-584f-e3bc74606107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofScalars_radius_eq_inv_of_tendsto [NormOneClass E] {r : ℝ≥0} (hr : r ≠ 0)
    (hc : Tendsto (fun n ↦ ‖c n.succ‖ / ‖c n‖) atTop (𝓝 r)) :
      (ofScalars E c).radius = ofNNReal r⁻¹ := by
  refine le_antisymm ?_ (ofScalars_radius_ge_inv_of_tendsto E c hr hc)
  refine le_of_forall_nnreal_lt (fun r' hr' ↦ ?_)
  rw [coe_le_coe, NNReal.le_inv_iff_mul_le hr]
  have := FormalMultilinearSeries.summable_norm_mul_pow _ hr'
  contrapose! this
  apply not_summable_of_ratio_test_tendsto_gt_one this
  simp_rw [ofScalars_norm]
  exact tendsto_succ_norm_div_norm c (by aesop) hc

/-- A convenience lemma restating the result of `ofScalars_radius_eq_inv_of_tendsto` under
the inverse ratio. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variant0e73a5f24c34ad46d66a9ffe2238913407b607d2516f4b65733756a7b297eb51.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07c86755bf2e0624c86f048d3ab7bcffff772981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
