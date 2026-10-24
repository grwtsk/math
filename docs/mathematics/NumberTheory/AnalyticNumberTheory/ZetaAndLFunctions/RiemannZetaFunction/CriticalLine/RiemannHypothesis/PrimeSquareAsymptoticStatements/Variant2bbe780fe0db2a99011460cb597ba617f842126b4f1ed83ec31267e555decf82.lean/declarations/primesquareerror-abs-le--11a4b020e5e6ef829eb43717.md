# primeSquareError_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a74898d8-c528-d1ac-9f91-703b3de6af7e",
  "kind": "theorem",
  "lexical_name": "primeSquareError_abs_le",
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
  "slug": "primesquareerror-abs-le--11a4b020e5e6ef829eb43717",
  "source": {
    "blob": "4c5d175b7b658406004e6ee589fbf38f46729700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11a4b020e5e6ef829eb437173262da00d26ecdbc99059257c5f662cc433524f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a74898d8-c528-d1ac-9f91-703b3de6af7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareError A| ≤ primeSquareErrorBudget / A ^ 2 := by
  have hA0 : 0 ≤ A := by linarith
  have hC0 : 0 ≤ (260 : ℝ) / (3 * A ^ 2) := by positivity
  have hf := (remainder_derivative_integrable A hA).mono_set
    (show Ioc (0 : ℝ) A ⊆ Ioi 0 from fun _ h => h.1)
  have hglobal : IntegrableOn (fun u => (260 / (3 * A ^ 2)) * (u * |thetaRemainder u|))
      (Ioi 0) := thetaRemainder_first_moment_integrable.const_mul (260 / (3 * A ^ 2))
  have hg := hglobal.mono_set
    (show Ioc (0 : ℝ) A ⊆ Ioi 0 from fun _ h => h.1)
  have hp : (∫ u in Ioc 0 A, u * |thetaRemainder u|) ≤ ∫ u in Ioi 0, u * |thetaRemainder u| := by
    apply setIntegral_mono_set thetaRemainder_first_moment_integrable
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      exact mul_nonneg hu.le (abs_nonneg _)
    · exact Filter.Eventually.of_forall (fun _ h => h.1)
  unfold primeSquareError
  rw [intervalIntegral.integral_of_le hA0]
  calc
    _ ≤ ∫ u in Ioc 0 A, |thetaRemainder u *
        deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u| := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (f := fun u => thetaRemainder u *
          deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u)
        (μ := volume.restrict (Ioc 0 A))
    _ ≤ ∫ u in Ioc 0 A, (260 / (3 * A ^ 2)) * (u * |thetaRemainder u|) := by
      refine setIntegral_mono_on ?_ hg measurableSet_Ioc ?_
      · simpa only [Real.norm_eq_abs, IntegrableOn] using hf.norm
      · intro u hu
        exact remainder_derivative_norm_bound A u hA hu.1.le
    _ = (260 / (3 * A ^ 2)) * ∫ u in Ioc 0 A, u * |thetaRemainder u| :=
      integral_const_mul _ _
    _ ≤ (260 / (3 * A ^ 2)) * ∫ u in Ioi 0, u * |thetaRemainder u| :=
      mul_le_mul_of_nonneg_left hp hC0
    _ = primeSquareErrorBudget / A ^ 2 := by unfold primeSquareErrorBudget; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5d175b7b658406004e6ee589fbf38f46729700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
