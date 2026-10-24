# inv_le_ofScalars_radius_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f83542cbe5757a810a4981b144abf46ad70f881",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70ebb5e7-9377-eaf6-54a4-26db31709915",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89a8d3d3-7165-289b-bafb-5dc3dd7bf3b9",
  "kind": "theorem",
  "lexical_name": "inv_le_ofScalars_radius_of_tendsto",
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
  "slug": "inv-le-ofscalars-radius-of-tendsto--60679e5844a966a9bd156cf8",
  "source": {
    "blob": "4f83542cbe5757a810a4981b144abf46ad70f881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60679e5844a966a9bd156cf88148b696b2bcc3bdd64fc4ae4b08de6fcc2cb377",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89a8d3d3-7165-289b-bafb-5dc3dd7bf3b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_le_ofScalars_radius_of_tendsto {r : ℝ≥0} (hr : r ≠ 0)
    (hc : Tendsto (fun n ↦ ‖c n.succ‖ / ‖c n‖) atTop (𝓝 r)) :
      ofNNReal r⁻¹ ≤ (ofScalars E c).radius := by
  refine le_of_forall_nnreal_lt (fun r' hr' ↦ ?_)
  rw [coe_lt_coe, NNReal.lt_inv_iff_mul_lt hr] at hr'
  by_cases hrz : r' = 0
  · simp [hrz]
  apply FormalMultilinearSeries.le_radius_of_summable_norm
  refine Summable.of_norm_bounded_eventually (g := fun n ↦ ‖‖c n‖ * r' ^ n‖) ?_ ?_
  · refine summable_of_ratio_test_tendsto_lt_one hr' ?_ ?_
    · refine (hc.eventually_ne (NNReal.coe_ne_zero.mpr hr)).mp (Eventually.of_forall ?_)
      simp_all
    · simp_rw [norm_norm]
      exact tendsto_succ_norm_div_norm c hrz hc
  · filter_upwards [eventually_cofinite_ne 0] with n hn
    simp only [norm_mul, norm_norm, norm_pow, NNReal.norm_eq]
    gcongr
    exact ofScalars_norm_le E c n (Nat.pos_iff_ne_zero.mpr hn)

/-- The radius of convergence of a scalar series is the inverse of the non-zero limit
`fun n ↦ ‖c n.succ‖ / ‖c n‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f83542cbe5757a810a4981b144abf46ad70f881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
