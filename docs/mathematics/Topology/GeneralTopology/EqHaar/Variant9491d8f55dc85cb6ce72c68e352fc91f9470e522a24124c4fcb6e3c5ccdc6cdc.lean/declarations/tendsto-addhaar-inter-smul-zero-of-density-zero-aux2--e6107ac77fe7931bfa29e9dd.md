# tendsto_addHaar_inter_smul_zero_of_density_zero_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d37284c-fe58-7aba-8d8f-80feead933e2",
  "kind": "theorem",
  "lexical_name": "tendsto_addHaar_inter_smul_zero_of_density_zero_aux2",
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
  "slug": "tendsto-addhaar-inter-smul-zero-of-density-zero-aux2--e6107ac77fe7931bfa29e9dd",
  "source": {
    "blob": "0226abd034d26f7e28deaa6a97b3fe7cea4aed41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 664,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6107ac77fe7931bfa29e9dd5099cfc3c58533cb27dade83ad0a8b7a1ba28852",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d37284c-fe58-7aba-8d8f-80feead933e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_addHaar_inter_smul_zero_of_density_zero_aux2 (s : Set E) (x : E)
    (h : Tendsto (fun r => μ (s ∩ closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 0)) (t : Set E)
    (u : Set E) (h'u : μ u ≠ 0) (R : ℝ) (Rpos : 0 < R) (t_bound : t ⊆ closedBall 0 R) :
    Tendsto (fun r : ℝ => μ (s ∩ ({x} + r • t)) / μ ({x} + r • u)) (𝓝[>] 0) (𝓝 0) := by
  set t' := R⁻¹ • t with ht'
  set u' := R⁻¹ • u with hu'
  have A : Tendsto (fun r : ℝ => μ (s ∩ ({x} + r • t')) / μ ({x} + r • u')) (𝓝[>] 0) (𝓝 0) := by
    apply tendsto_addHaar_inter_smul_zero_of_density_zero_aux1 μ s x h t' u'
    · simp only [h'u, (pow_pos Rpos _).ne', abs_nonpos_iff, addHaar_smul, not_false_iff,
        ENNReal.ofReal_eq_zero, inv_eq_zero, inv_pow, Ne.def, or_self_iff, mul_eq_zero]
    · refine (smul_set_mono t_bound).trans_eq ?_
      rw [smul_closedBall _ _ Rpos.le, smul_zero, Real.norm_of_nonneg (inv_nonneg.2 Rpos.le),
        inv_mul_cancel Rpos.ne']
  have B : Tendsto (fun r : ℝ => R * r) (𝓝[>] 0) (𝓝[>] (R * 0)) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · exact (tendsto_const_nhds.mul tendsto_id).mono_left nhdsWithin_le_nhds
    · filter_upwards [self_mem_nhdsWithin]
      intro r rpos
      rw [mul_zero]
      exact mul_pos Rpos rpos
  rw [mul_zero] at B
  apply (A.comp B).congr' _
  filter_upwards [self_mem_nhdsWithin]
  rintro r -
  have T : (R * r) • t' = r • t := by
    rw [mul_comm, ht', smul_smul, mul_assoc, mul_inv_cancel Rpos.ne', mul_one]
  have U : (R * r) • u' = r • u := by
    rw [mul_comm, hu', smul_smul, mul_assoc, mul_inv_cancel Rpos.ne', mul_one]
  dsimp
  rw [T, U]
#align measure_theory.measure.tendsto_add_haar_inter_smul_zero_of_density_zero_aux2 MeasureTheory.Measure.tendsto_addHaar_inter_smul_zero_of_density_zero_aux2

/-- Consider a point `x` at which a set `s` has density zero, with respect to closed balls. Then it
also has density zero with respect to any measurable set `t`: the proportion of points in `s`
belonging to a rescaled copy `{x} + r • t` of `t` tends to zero as `r` tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0226abd034d26f7e28deaa6a97b3fe7cea4aed41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
