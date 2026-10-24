# ofScalars_radius_eq_zero_of_tendsto

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
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efe7d571-fc9d-cbb2-f8f3-eb50702f248c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6fa5d802-1276-5eb9-7e26-7fd652bb2db6",
  "kind": "theorem",
  "lexical_name": "ofScalars_radius_eq_zero_of_tendsto",
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
  "slug": "ofscalars-radius-eq-zero-of-tendsto--aa1f3237d3e3549d41421da0",
  "source": {
    "blob": "4f83542cbe5757a810a4981b144abf46ad70f881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 262,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa1f3237d3e3549d41421da09374a68a4ae844470fe92e2b9541fcdca785d20f",
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

Occurrence: `result:6fa5d802-1276-5eb9-7e26-7fd652bb2db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofScalars_radius_eq_zero_of_tendsto [NormOneClass E]
    (hc : Tendsto (fun n ↦ ‖c n.succ‖ / ‖c n‖) atTop atTop) : (ofScalars E c).radius = 0 := by
  suffices (ofScalars E c).radius ≤ 0 by simp_all
  refine le_of_forall_nnreal_lt (fun r hr ↦ ?_)
  rw [← coe_zero, coe_le_coe]
  have := FormalMultilinearSeries.summable_norm_mul_pow _ hr
  contrapose! this
  refine not_summable_of_ratio_norm_eventually_ge (r := 2) (by simp) ?_ ?_
  · contrapose! hc
    apply not_tendsto_atTop_of_tendsto_nhds (a := 0)
    apply Tendsto.congr' ?_ tendsto_const_nhds
    filter_upwards [hc] with n hc'
    rw [ofScalars_norm, norm_mul, norm_norm, mul_eq_zero] at hc'
    cases hc' <;> aesop
  · filter_upwards [hc.eventually_ge_atTop (2 * r⁻¹), eventually_ne_atTop 0] with n hc hn
    simp only [ofScalars_norm, norm_mul, norm_norm, norm_pow, NNReal.norm_eq]
    rw [mul_comm ‖c n‖, ← mul_assoc, ← div_le_div_iff₀, mul_div_assoc]
    · convert! hc
      rw [pow_succ, div_mul_cancel_left₀, NNReal.coe_inv]
      aesop
    · simp_all
    · refine Ne.lt_of_le (fun hr' ↦ Not.elim ?_ hc) (norm_nonneg _)
      rw [← hr']
      simp [this]

/-- This theorem combines the results of the special cases above, using `ENNReal` division to remove
the requirement that the ratio is eventually non-zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variante04111dca6353668162a14e5ccdba8232b505912888bacf98c3c37e547a93670.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f83542cbe5757a810a4981b144abf46ad70f881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
