# actual_paired_deriv_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7574472d-e140-7c72-d1c7-554d33075ef7",
  "kind": "theorem",
  "lexical_name": "actual_paired_deriv_zero",
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
  "slug": "actual-paired-deriv-zero--1725afdec1f4187cf1ff8731",
  "source": {
    "blob": "5d23046166ce19057c3958fb20f2174a840dfb6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant4782d2eb279ad2bc8fae9d067cbf4b0ed964846612b5d4e8e2a4407589c8d0ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1725afdec1f4187cf1ff87317d4a9713dcd3fdb7c65e897d7bb1b2f7b86b27ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant4782d2eb279ad2bc8fae9d067cbf4b0ed964846612b5d4e8e2a4407589c8d0ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7574472d-e140-7c72-d1c7-554d33075ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_paired_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (pairedTailTest A) 0 = -(1 / 2 : ℝ) := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let d := deriv C 0
  have hd : HasDerivAt C d 0 :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hdneg : HasDerivAt C d (-(0 : ℝ)) := by
    simpa only [neg_zero] using hd
  have hr : HasDerivAt (fun u : ℝ => C (-u)) (-d) 0 := by
    simpa only [Function.comp_def, mul_neg, mul_one] using
      hdneg.comp (0 : ℝ) (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => C (-u)) = C := funext (sourceCorrelation_even A)
  rw [he] at hr
  have hdz : d = 0 := by linarith [hd.unique hr]
  have hc : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := hdz
  have hc0 : sourceCorrelation explicitSecondDerivative A 0 = 1 := by
    simpa only [criticalPrimeTest, zero_div, Real.exp_zero, one_mul] using
      criticalPrimeTest_at_zero A hA
  have hg : deriv (criticalPrimeTest A) 0 = (1 / 2 : ℝ) := by
    rw [criticalPrimeTest_deriv A 0 hp, hc0, hc]
    norm_num
  rw [pairedTailTest_deriv hA]
  simp only [positiveSlope, negativeSlope, hg]
  norm_num

/-- The actual bridge endpoints kill the product even with a nonzero lower derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant4782d2eb279ad2bc8fae9d067cbf4b0ed964846612b5d4e8e2a4407589c8d0ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant4782d2eb279ad2bc8fae9d067cbf4b0ed964846612b5d4e8e2a4407589c8d0ca.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d23046166ce19057c3958fb20f2174a840dfb6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
