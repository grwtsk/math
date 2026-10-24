# corollary_1_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c75298b4-a7ce-e932-0ecb-e5f341225019",
  "kind": "theorem",
  "lexical_name": "corollary_1_3",
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
  "slug": "corollary-1-3--3af0c6a0324897afb0e006af",
  "source": {
    "blob": "3f6fadbdd31df8bb0d30df5f757f536604aa1149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 285,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variantb2ac734c0be2753f9000d437eac48311ec5942f74ceae6c0fe3b540d76f5422a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af0c6a0324897afb0e006afcf8137bfc224fa28dadfc9c7b225c8148b5f6f4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variantb2ac734c0be2753f9000d437eac48311ec5942f74ceae6c0fe3b540d76f5422a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c75298b4-a7ce-e932-0ecb-e5f341225019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corollary_1_3 : Eπ.classicalBound 9.59 1.515 0.8274 1 2 := by
  have := FKS2.corollary_22
  intro x hx
  have hx2 : x ≥ 2 := by grind [add_one_le_exp 2000]
  refine (this x hx2).trans ?_
  simp only [admissible_bound]; norm_num
  suffices h_div :
      92211 / 10000 * log x ^ (3 / 2 : ℝ) *
        exp (-2119 / 2500 * log x^(1 / 2 : ℝ) + 4137 / 5000 * log x^(1 / 2 : ℝ)) ≤
        959 / 100 * log x ^ (303 / 200 : ℝ)
    by
    convert mul_le_mul_of_nonneg_right h_div
        (exp_nonneg (-4137 / 5000 * log x^(1 / 2 : ℝ))) using 1
    · rw [exp_add (-2119 / 2500 * log x^(1 / 2 : ℝ)) (4137 / 5000 * log x^(1 / 2 : ℝ))]
      ring_nf
      norm_num [mul_assoc, ← exp_add]
    simp only [one_div, mul_eq_mul_left_iff, exp_eq_exp, _root_.mul_eq_zero]
    left
    linarith
  suffices h_div :
      92211 / 10000 * exp (-2119 / 2500 * log x^(1 / 2 : ℝ) +
        4137 / 5000 * log x^(1 / 2 : ℝ)) ≤
        959 / 100 * log x ^ (303 / 200 - 3 / 2 : ℝ)
    by
    convert mul_le_mul_of_nonneg_right h_div
        (rpow_nonneg (log_nonneg (show x ≥ 1 by linarith)) (3 / 2 : ℝ)) using 1 <;>
      ring_nf
    rw [← rpow_add (log_pos (by linarith : x > 1))]
    norm_num
  have hsqrtlogpos : 0 < log x ^ (1/2:ℝ) :=
    by exact rpow_pos_of_pos (log_pos (by linarith : x > 1)) (1/2:ℝ)
  have hneg :
      -(2119 / 2500) * log x^(1 / 2 : ℝ) + 4137 / 5000 * log x^(1 / 2 : ℝ) < 0 :=
    by linarith
  have hexpone :
      exp (-(2119 / 2500) * log x^(1 / 2 : ℝ) + 4137 / 5000 * log x^(1 / 2 : ℝ)) < 1 := by
    exact exp_lt_one_iff.mpr hneg

  suffices h_calc : 92211/10000 ≤ 959/100 * log x ^(303 / 200 - 3/2 : ℝ) by linarith
  refine le_trans ?_ <| mul_le_mul_of_nonneg_left
    (rpow_le_rpow (by grind) (log_two_gt_d9.le.trans (log_le_log (by grind) hx)) (by grind))
    (by grind)
  norm_num
  rw [← log_le_log_iff (by positivity) (by positivity),
    log_mul (by positivity) (by positivity), log_rpow (by positivity),
    div_mul_eq_mul_div, add_div', le_div_iff₀] <;>
    norm_num [← log_rpow, mul_comm, ← log_mul, log_le_log_iff]

@[blueprint
  "thm:jy_14"
  (title := "JY Theorem 1.4")
  (statement := /--
  One has
  \[
  |\pi(x) - \mathrm{Li}(x)| \leq 0.028 x (\log x)^{0.801}
    \exp(-0.1853 \log^{3/5} x / (\log \log x)^{1/5}))
  \]
  for all $x \geq 2$.
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variantb2ac734c0be2753f9000d437eac48311ec5942f74ceae6c0fe3b540d76f5422a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variantb2ac734c0be2753f9000d437eac48311ec5942f74ceae6c0fe3b540d76f5422a.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f6fadbdd31df8bb0d30df5f757f536604aa1149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
