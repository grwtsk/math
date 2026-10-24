# bumpMellinWeight_on_line_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a4f4256-ad14-b654-7cdf-942ea9ea50ac",
  "kind": "theorem",
  "lexical_name": "bumpMellinWeight_on_line_norm_le",
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
  "slug": "bumpmellinweight-on-line-norm-le--70734cec53a68833c4b52f71",
  "source": {
    "blob": "e32fa1e32b1e6b1f6a71d904ff5db421a9adefb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70734cec53a68833c4b52f7175642bdccd76644239b6427e0496fb2a1c1b9857",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4f4256-ad14-b654-7cdf-942ea9ea50ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMellinWeight_on_line_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : 1 ≤ |t|) :
    ‖bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      (204288 : ℝ) ^ 2 / sourceNormalization A *
        (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * |t| ^ 6) := by
  have hZ := source_normalization_pos A hA
  have hb := bump_on_right_line_norm_le A c t hA hc ht
  have hp := pole_norm_on_line_le c t ht
  have he : Real.exp (A * (c - 1 / 2)) ^ 2 = Real.exp ((2 * c - 1) * A) := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  have hn :
      ‖bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I)‖ =
        (A / sourceNormalization A) *
          (‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2 *
            ‖(c : ℂ) + (t : ℂ) * Complex.I - 1‖ ^ 2) *
          ‖bumpLaplace ((A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2))‖ ^ 2 := by
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  rw [hn]
  calc
    _ ≤ (A / sourceNormalization A) *
        ((1 + c ^ 2) * (1 + (c - 1) ^ 2) * |t| ^ 4) *
        (204288 * Real.exp (A * (c - 1 / 2)) / (A ^ 5 * |t| ^ 5)) ^ 2 := by
      gcongr
    _ = _ := by
      rw [div_pow, mul_pow, he]
      have hA0 : A ≠ 0 := by linarith
      have ht0 : |t| ≠ 0 := by linarith
      field_simp
      ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpMellinLineBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32fa1e32b1e6b1f6a71d904ff5db421a9adefb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
