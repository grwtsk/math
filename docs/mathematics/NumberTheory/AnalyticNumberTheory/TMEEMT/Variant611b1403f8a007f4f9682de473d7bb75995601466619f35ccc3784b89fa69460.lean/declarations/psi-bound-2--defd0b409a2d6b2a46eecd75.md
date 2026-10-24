# psi_bound_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04cf61c3-4443-ca9e-aa1e-793a2a22a0bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75cb7508-dd2e-14bb-31a7-353c9c2773be",
  "kind": "theorem",
  "lexical_name": "psi_bound_2",
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
  "slug": "psi-bound-2--defd0b409a2d6b2a46eecd75",
  "source": {
    "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 432,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:defd0b409a2d6b2a46eecd75904f4a3c50032e57d4591c41c3dab5efa2eddd71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75cb7508-dd2e-14bb-31a7-353c9c2773be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_bound_2 (x : ℝ) (hx : x ≥ 2) :
    |ψ x - x| ≤ x * 9.39 * (log x) ^ (1.51 : ℝ) * exp (-0.8274 * sqrt (log x)) := by
  have h_exp : (log x) ^ (0.01 : ℝ) * exp (0.0202836 * sqrt (log x)) ≥ 1 := by
    by_cases h₂ : log x ≤ 1 <;> by_cases h₃ : log x ≥ 1
    · norm_num [show log x = 1 by grind] at *
    · simp_all only [ge_iff_le, not_le, rpow_def_of_pos (log_pos <| show 1 < x by grind)]
      rw [← exp_add]; norm_num; ring_nf; norm_num
      have h_log_log : log (log x) ≥ log (log 2) := log_le_log (log_pos (by norm_num)) (log_le_log (by norm_num) hx)
      have h_log_log_pos : log (log 2) > -1 / 2 := by
        rw [gt_iff_lt, div_lt_iff₀'] <;> norm_num [← log_rpow, log_lt_log]
        rw [← log_rpow, lt_log_iff_exp_lt] <;> norm_num
        · exact lt_of_le_of_lt (exp_neg_one_lt_d9.le) (by norm_num at *; nlinarith [log_two_gt_d9])
        · positivity
        · positivity
      nlinarith [sqrt_nonneg (log x), mul_self_sqrt (log_nonneg (by grind : (1 : ℝ) ≤ x)),
        log_le_sub_one_of_pos (show 0 < log x from log_pos (by grind))]
    · simp_all only [ge_iff_le, not_le, rpow_def_of_pos (log_pos <| show 1 < x by grind)]
      rw [← exp_add]
      exact one_le_exp (by nlinarith [log_pos h₂, sqrt_nonneg (log x), mul_self_sqrt (log_nonneg (by linarith))])
    · grind
  have h_ineq : |ψ x - x| ≤ x * 9.22022 * (log x) ^ (1.5 : ℝ) * exp (-0.8476836 * sqrt (log x)) := by
    have h_ineq : |ψ x - x| / x ≤ 9.22022 * (log x) ^ (3 / 2 : ℝ) * exp (-0.8476836 * sqrt (log x)) := by
      have := FKS.FKS_corollary_1_4
      convert this x hx using 1; norm_num [exp_neg, sqrt_eq_rpow, rpow_neg, div_eq_mul_inv]; ring_nf
      norm_num [admissible_bound, exp_neg, sqrt_eq_rpow, rpow_neg, div_eq_mul_inv]; ring_nf
    rw [div_le_iff₀] at h_ineq <;> ring_nf at * <;> grind
  refine le_trans h_ineq ?_
  norm_num [rpow_def_of_pos (log_pos (by grind : 1 < x))] at *
  norm_num [mul_assoc, ← exp_add] at *; ring_nf at *; norm_num at *
  exact mul_le_mul (mul_le_mul_of_nonneg_left (exp_le_exp.mpr <| by grind) <| by grind)
    (by norm_num) (by positivity) <| by positivity

@[blueprint
  "thm:jy-psi-3"
  (title := "Johnston-Yang $\\psi$ bound 3")
  (statement := /-- For $x \geq 23$, we have $|\psi(x) - x| \leq x \cdot 0.026\, (\log x)^{1.801} \exp\!\left(-0.1853\, \frac{(\log x)^{3/5}}{(\log\log x)^{1/5}}\right)$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec90d8c858baca8b01364abdfa948bb05f941a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
