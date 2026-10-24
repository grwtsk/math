# absoluteWeight_prefix_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0075b786-44a8-5366-e4e5-2527d56a87b9",
  "kind": "theorem",
  "lexical_name": "absoluteWeight_prefix_lower",
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
  "slug": "absoluteweight-prefix-lower--d478b8994eea019aa69a34ee",
  "source": {
    "blob": "022de785bbd1d7839061f2aeceb91ea1eeb3cde2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d478b8994eea019aa69a34ee2215b3a01e96b56a811ec6b62312fd3b80459e03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0075b786-44a8-5366-e4e5-2527d56a87b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteWeight_prefix_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 1) ≤
      ∫ t in 0..A / 40, |baselineLogKernel A t| := by
  have hA1 : 1 ≤ A := by linarith
  have he : (∫ t in 0..A / 40, Real.exp (t / 2)) =
      2 * (Real.exp (A / 80) - 1) := by
    have hd (t : ℝ) : HasDerivAt (fun u : ℝ => 2 * Real.exp (u / 2))
        (Real.exp (t / 2)) t :=
      (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv (by simp only [id_eq]; ring)
    have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => hd t) (show IntervalIntegrable (fun t : ℝ => Real.exp (t / 2))
        volume 0 (A / 40) from (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
    convert hi using 1 <;> simp <;> ring
  have hmono : (∫ t in 0..A / 40, (5 / 16 : ℝ) * Real.exp (t / 2)) ≤
      ∫ t in 0..A / 40, |baselineLogKernel A t| := by
    apply intervalIntegral.integral_mono_on (by linarith : (0 : ℝ) ≤ A / 40)
      ((by fun_prop : Continuous (fun t : ℝ => (5 / 16 : ℝ) * Real.exp (t / 2))).intervalIntegrable _ _)
      ((baselineLogKernel_continuous hA1).abs.intervalIntegrable _ _)
    intro t ht
    have hm := mul_le_mul_of_nonneg_left (criticalWeight_early_lower hA ht.1 ht.2)
      (Real.exp_pos (t / 2)).le
    exact hm.trans (le_abs_self _)
  rw [intervalIntegral.integral_const_mul, he] at hmono
  nlinarith

/-- Total actual absolute weight is at least its positive early prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt01/Variantd8ac550f7b5c1aa84e8ef9f736526bb45b49a66929ebdadc829e89d36a8994e8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `022de785bbd1d7839061f2aeceb91ea1eeb3cde2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
