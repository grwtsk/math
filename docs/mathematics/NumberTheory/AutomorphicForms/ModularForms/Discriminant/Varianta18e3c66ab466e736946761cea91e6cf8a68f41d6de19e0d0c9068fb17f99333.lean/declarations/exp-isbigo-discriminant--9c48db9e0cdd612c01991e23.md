# exp_isBigO_discriminant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3df7c350-ad7c-0edf-a2c1-a9ba6534e61e",
  "kind": "lemma",
  "lexical_name": "exp_isBigO_discriminant",
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
  "slug": "exp-isbigo-discriminant--9c48db9e0cdd612c01991e23",
  "source": {
    "blob": "5dbbc6d406dc7f97bb23349d05d66f2f69d7139c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c48db9e0cdd612c01991e23381d312e6646de761d104389af3ac47eac4c9cf7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3df7c350-ad7c-0edf-a2c1-a9ba6534e61e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exp_isBigO_discriminant : (fun τ ↦ Real.exp (-2 * π * τ.im)) =O[atImInfty] Δ := by
  refine .of_bound 2 ?_
  have hprod := tendsto_atImInfty_tprod_one_sub_eta_q_pow.eventually
    (Metric.ball_mem_nhds 1 (by norm_num : (0 : ℝ) < 1/2))
  filter_upwards [hprod] with τ hτ
  rw [discriminant_eq_q_prod, norm_mul, Real.norm_of_nonneg (Real.exp_pos _).le]
  have hq_norm : ‖𝕢 1 τ‖ = Real.exp (-2 * π * τ.im) := by simp [Periodic.qParam, Complex.norm_exp]
  rw [← hq_norm]
  have hprod_bound : 1 / 2 ≤ ‖∏' n, (1 - eta_q n τ) ^ 24‖ := by
    have hsub : ‖∏' n, (1 - eta_q n τ) ^ 24 - 1‖ < 1 / 2 := by rwa [Complex.dist_eq] at hτ
    have h1 := norm_sub_norm_le 1 (∏' n, (1 - eta_q n τ) ^ 24)
    grind [norm_one, norm_sub_rev]
  linarith [norm_nonneg (𝕢 1 τ), mul_le_mul_of_nonneg_left hprod_bound (norm_nonneg (𝕢 1 τ))]

/-- The cusp function of the discriminant equals `q * ∏' n, (1 - q^(n+1))^24`
on the open unit disc. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dbbc6d406dc7f97bb23349d05d66f2f69d7139c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
