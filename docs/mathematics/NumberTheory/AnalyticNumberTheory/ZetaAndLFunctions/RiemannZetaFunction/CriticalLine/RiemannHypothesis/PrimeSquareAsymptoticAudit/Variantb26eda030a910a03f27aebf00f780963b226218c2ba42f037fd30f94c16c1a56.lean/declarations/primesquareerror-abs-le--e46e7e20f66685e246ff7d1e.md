# primeSquareError_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e23ba7436261fd021c59b459d31ee83ea8e9e2e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eb37056-a36d-bf74-33f2-68ad5e3574f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:437172d3-369d-de3f-4a0c-55837c151cdf",
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
  "slug": "primesquareerror-abs-le--e46e7e20f66685e246ff7d1e",
  "source": {
    "blob": "e23ba7436261fd021c59b459d31ee83ea8e9e2e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e46e7e20f66685e246ff7d1e0412b7466b4e4b3875b58ce7dc28f77562451989",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:437172d3-369d-de3f-4a0c-55837c151cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–111.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variantb26eda030a910a03f27aebf00f780963b226218c2ba42f037fd30f94c16c1a56.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23ba7436261fd021c59b459d31ee83ea8e9e2e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
