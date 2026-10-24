# finite_tangent_comparison_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7c65ab6-91cd-12e2-0a61-e08470354b7d",
  "kind": "theorem",
  "lexical_name": "finite_tangent_comparison_abs_le",
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
  "slug": "finite-tangent-comparison-abs-le--c45b9b83b8e9ceb9730926fc",
  "source": {
    "blob": "c424fded148cd540757faa8ed4ad0ae558d48584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 279,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c45b9b83b8e9ceb9730926fc87987269f0bb0187a84685529aea0f2de32158ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c65ab6-91cd-12e2-0a61-e08470354b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_tangent_comparison_abs_le (A : ℝ) (N : ℕ) (F G : ℝ → ℝ)
    (ε₀ ε₁ : ℝ)
    (hf : ∀ n ∈ Finset.Icc 2 N,
      |sourceCorrelation explicitSecondDerivative A
        (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
          F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))| ≤ ε₀)
    (hg : ∀ n ∈ Finset.Icc 2 N,
      |deriv (sourceCorrelation explicitSecondDerivative A)
        (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
          G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))| ≤ ε₁) :
    |SourceKapitzaSquareShell.tangentReadout A N -
      ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| ≤
      ε₀ * (∑ n ∈ Finset.Icc 2 N,
        |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
      ε₁ * ∑ n ∈ Finset.Icc 2 N,
        |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
          |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| := by
  unfold SourceKapitzaSquareShell.tangentReadout
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (sourceCorrelation explicitSecondDerivative A
            (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            deriv (sourceCorrelation explicitSecondDerivative A)
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) -
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
          (F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
            (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
              G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 2 N,
        (|(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| * ε₀ +
          |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
            |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| * ε₁) := by
      apply Finset.sum_le_sum
      intro n hn
      rw [← mul_sub, abs_mul, mul_assoc, ← mul_add]
      apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
      have he : sourceCorrelation explicitSecondDerivative A
          (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            deriv (sourceCorrelation explicitSecondDerivative A)
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
          (F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
            (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
              G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) =
          (sourceCorrelation explicitSecondDerivative A
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
            F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            (deriv (sourceCorrelation explicitSecondDerivative A)
                (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
              G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) := by ring
      rw [he]
      exact (abs_add_le _ _).trans (add_le_add (hf n hn)
        (by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hg n hn) (abs_nonneg _)))
    _ = _ := by simp only [Finset.sum_add_distrib, ← Finset.sum_mul]; ring

end FormalResearch.RiemannHypothesis.SourceConservativeComparison
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceConservativeComparison/Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c424fded148cd540757faa8ed4ad0ae558d48584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
