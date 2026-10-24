# theorem_6_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3466,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6747a84-23fd-acd8-9a68-f4ef9ca9294b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3cfd901-8a2a-e96e-1ef7-fa925b4057b8",
  "kind": "theorem",
  "lexical_name": "theorem_6_2",
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
  "slug": "theorem-6-2--58efff785c1d8107b8e62bc1",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3493,
    "line": 3466,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58efff785c1d8107b8e62bc1f2e7e748db99847f1abbb753edcf5a7452abaf07",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3cfd901-8a2a-e96e-1ef7-fa925b4057b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3466–3493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_6_2 {x₁ : ℝ} (h : x₁ ≥ 14) (x : ℝ) (hx : x ≥ x₁) :
  (log x / x) * ∫ t in x₁..x, 1 / (log t) ^ 2 < 1 / (log x₁ + log (log x₁) - 1) := by
  have h_denom_pos : 0 < log x₁ + log (log x₁) - 1 := by
    have hlog14 : log 14 ≤ log x₁ := Real.log_le_log (by norm_num) h
    have hlog14_pos : 0 < log 14 := Real.log_pos (by norm_num)
    linarith [Real.log_le_log hlog14_pos hlog14,
              show (0 : ℝ) < log 14 + log (log 14) - 1 from by interval_decide]
  rcases exists_isMaxOn_Ici_log_div_self_mul_integral_one_div_log_sq h with ⟨xm, hxm_gt, hxm_bound, h_max⟩
  have h_log_sub_lt : log x₁ + log (log x₁) - 1 < log xm - 1 := by
    have h1 : log x₁ > 1 := log_gt_one_of_ge_14 h
    have h_log_mul : log (x₁ * log x₁) = log x₁ + log (log x₁) :=
      Real.log_mul (by linarith : x₁ ≠ 0) (by linarith : log x₁ ≠ 0)
    linarith [Real.log_lt_log (mul_pos (by linarith : 0 < x₁) (by linarith : 0 < log x₁)) hxm_bound,
              h_log_mul]
  calc (log x / x) * ∫ t in x₁..x, 1 / (log t) ^ 2
      ≤ 1 / (log xm - 1)                        := h_max x hx
    _ < 1 / (log x₁ + log (log x₁) - 1)         := one_div_lt_one_div_of_lt h_denom_pos h_log_sub_lt


@[blueprint
  "fks2-theorem-6-3"
  (title := "FKS2 Theorem 6, substep 3")
  (statement := /-- With the above hypotheses, for all $x \geq x_1$ we have
  $$ \frac{\log x}{x} \int_{x_1}^x \frac{dt}{\log^2 t} \leq \frac{\log x_2}{x_2} \left( \Li(x_2) - \frac{x_2}{\log x_2} - \Li(x_1) + \frac{x_1}{\log x_1} \right ). $$ -/)
  (proof := /-- Let $f(x)$ be as in the previous sublemma.  Notice that by assumption $x_1 \leq x \leq x_2 \leq x_1 \log x_1 < x_m$, so that
  $$ f(x) \leq f(x_2) = \frac{\log x_2}{x_2} \left( \Li(x_2) - \frac{x_2}{\log x_2} - \Li(x_1) + \frac{x_1}{\log x_1} \right). $$ -/)
  (latexEnv := "sublemma")
  (discussion := 717)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L3466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
