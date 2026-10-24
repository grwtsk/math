# a_eq_admissible_ge_3000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80ec359baaef0e65fcde49ff39d42977efab3cd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1957,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c2dbd10-c72c-ca86-ebf5-3fc5125cc249",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2f3fc19-72c4-6047-3961-e881daf4a388",
  "kind": "theorem",
  "lexical_name": "a_eq_admissible_ge_3000",
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
  "slug": "a-eq-admissible-ge-3000--b32ced28143b9fc66f69b0eb",
  "source": {
    "blob": "80ec359baaef0e65fcde49ff39d42977efab3cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1977,
    "line": 1957,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32ced28143b9fc66f69b0ebc2ed5b7019838d2da222b451f283f4a09ec4d8c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f3fc19-72c4-6047-3961-e881daf4a388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1957–1977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem a_eq_admissible_ge_3000 {z : ℝ} (hz : z ≥ exp 3000) :
    a z = admissible_bound (379.7 * 5.573412 ^ 5) 6.52 1.89 5.573412 z := by
  have h599 : (599 : ℝ) ≤ exp 3000 := by linarith [add_one_le_exp (3000 : ℝ)]
  have h58 : exp 58 ≤ exp 3000 := exp_le_exp.mpr (by norm_num)
  have h1169 : exp 1169 ≤ exp 3000 := exp_le_exp.mpr (by norm_num)
  have h2000 : exp 2000 ≤ exp 3000 := exp_le_exp.mpr (by norm_num)
  unfold a admissible_bound
  simp only [not_mem_Ico_of_ge_exp3000 hz h599, not_mem_Ico_of_ge_exp3000 hz h58,
    not_mem_Ico_of_ge_exp3000 hz h1169, not_mem_Ico_of_ge_exp3000 hz h2000,
    not_mem_Ico_of_ge_exp3000 hz le_rfl, ite_false, sqrt_eq_rpow]
  have hlogz : 0 < log z := log_pos (by linarith [add_one_le_exp (3000 : ℝ)])
  have hdiv : 0 < log z / 5.573412 := by positivity
  have hpow : (log z) ^ (5 : ℕ) = 5.573412 ^ (5 : ℕ) * (log z / 5.573412) ^ (5 : ℕ) := by
    rw [show log z = 5.573412 * (log z / 5.573412) by field_simp]
    ring
  rw [hpow]
  conv_lhs =>
    rw [show ∀ (u v w r s : ℝ), u * v * (w * r * s) = w * u * (v * r) * s from by
      intro u v w r s; ring]
  rw [← rpow_652_split hdiv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean#L1957).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ec359baaef0e65fcde49ff39d42977efab3cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
