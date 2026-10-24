# tendsto_addHaar_inter_smul_zero_of_density_zero_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58e8db04a65a8f78caaa702d66a5ebab016edb0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 664,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11e02449-07cf-8f89-c022-c31d14fda325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca6e527a-af56-8f69-c3eb-507ac4988bd3",
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
  "slug": "tendsto-addhaar-inter-smul-zero-of-density-zero-aux2--7d052de4ae27201ea2cc8afd",
  "source": {
    "blob": "58e8db04a65a8f78caaa702d66a5ebab016edb0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 664,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d052de4ae27201ea2cc8afd9755afa82a7a7e8c5fd8410afd2a8cdf6bace4ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca6e527a-af56-8f69-c3eb-507ac4988bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–697.

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
    · simp only [u', h'u, (pow_pos Rpos _).ne', abs_nonpos_iff, addHaar_smul, not_false_iff,
        ENNReal.ofReal_eq_zero, inv_eq_zero, inv_pow, Ne, or_self_iff, mul_eq_zero]
    · refine (smul_set_mono t_bound).trans_eq ?_
      rw [smul_closedBall _ _ Rpos.le, smul_zero, Real.norm_of_nonneg (inv_nonneg.2 Rpos.le),
        inv_mul_cancel₀ Rpos.ne']
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
    rw [mul_comm, ht', smul_smul, mul_assoc, mul_inv_cancel₀ Rpos.ne', mul_one]
  have U : (R * r) • u' = r • u := by
    rw [mul_comm, hu', smul_smul, mul_assoc, mul_inv_cancel₀ Rpos.ne', mul_one]
  dsimp
  rw [T, U]

/-- Consider a point `x` at which a set `s` has density zero, with respect to closed balls. Then it
also has density zero with respect to any measurable set `t`: the proportion of points in `s`
belonging to a rescaled copy `{x} + r • t` of `t` tends to zero as `r` tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant6c224cd565104f7f921deb1c00d43f25d94cb41ee0b07f1c924b3b985fdcb46d.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e8db04a65a8f78caaa702d66a5ebab016edb0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
