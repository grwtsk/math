# ofScalars_radius_eq_inv_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc149d4e-9270-bcf5-3c71-9f8958c2f0b9",
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
  "slug": "ofscalars-radius-eq-inv-of-tendsto--d8d1f476ab1f8e617ae2d242",
  "source": {
    "blob": "e023a4985dca7a2838c80579aa7cd25c54e8bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d1f476ab1f8e617ae2d242f74337b8ef8b0bd3eb3b2dd2ea2986dcb67b3455",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc149d4e-9270-bcf5-3c71-9f8958c2f0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–228.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e023a4985dca7a2838c80579aa7cd25c54e8bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
