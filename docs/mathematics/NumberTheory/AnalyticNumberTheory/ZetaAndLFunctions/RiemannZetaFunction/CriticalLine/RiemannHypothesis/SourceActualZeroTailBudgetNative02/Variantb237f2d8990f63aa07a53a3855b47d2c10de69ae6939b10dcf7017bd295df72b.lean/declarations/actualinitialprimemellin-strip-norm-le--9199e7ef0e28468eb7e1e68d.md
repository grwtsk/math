# actualInitialPrimeMellin_strip_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eac0d85-7f7d-cafd-6549-ca13f208ad29",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_strip_norm_le",
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
  "slug": "actualinitialprimemellin-strip-norm-le--9199e7ef0e28468eb7e1e68d",
  "source": {
    "blob": "ff5f16cf14f90d3e75c11872c151aebe1e573b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative02/Variantb237f2d8990f63aa07a53a3855b47d2c10de69ae6939b10dcf7017bd295df72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9199e7ef0e28468eb7e1e68d4f2a2d402b4d7f144976d6be8877965bb92ed02e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative02/Variantb237f2d8990f63aa07a53a3855b47d2c10de69ae6939b10dcf7017bd295df72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eac0d85-7f7d-cafd-6549-ca13f208ad29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_strip_norm_le (A : ℝ) (s : ℂ) (hA : 1 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 1 ≤ |s.im|) :
    ‖actualInitialPrimeMellin A s‖ ≤
      4 * (204288 : ℝ) ^ 2 * Real.exp A /
        (sourceNormalization A * A ^ 9 * |s.im| ^ 6) := by
  have hZ := source_normalization_pos A hA
  have hb := bump_on_strip_norm_le A s hA hs ht
  have hp := pole_norm_on_strip_le s hs ht
  have he : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
  have hn : ‖bumpMellinWeight A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  rw [hn]
  calc
    _ ≤ (A / sourceNormalization A) * (4 * |s.im| ^ 4) *
        (204288 * Real.exp (A / 2) / (A ^ 5 * |s.im| ^ 5)) ^ 2 := by gcongr
    _ = _ := by
      rw [div_pow, mul_pow, he]
      have hA0 : A ≠ 0 := by linarith
      have ht0 : |s.im| ≠ 0 := by linarith
      field_simp

end
end FormalResearch.RiemannHypothesis.SourceActualZeroTailBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative02/Variantb237f2d8990f63aa07a53a3855b47d2c10de69ae6939b10dcf7017bd295df72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative02/Variantb237f2d8990f63aa07a53a3855b47d2c10de69ae6939b10dcf7017bd295df72b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff5f16cf14f90d3e75c11872c151aebe1e573b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
