# actualDeltaCriticalReturn_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d114b97a-7133-5bc6-abba-9f49de0ca37c",
  "kind": "theorem",
  "lexical_name": "actualDeltaCriticalReturn_intervalIntegrable",
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
  "slug": "actualdeltacriticalreturn-intervalintegrable--70ea9a9d1a135ce1259900b6",
  "source": {
    "blob": "9c0cb2c1b1f4d4aca14c3988b1ce26a578701637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ea9a9d1a135ce1259900b6960fe6675e623cd89e2a0a5b09cc714e88e18054",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d114b97a-7133-5bc6-abba-9f49de0ca37c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDeltaCriticalReturn_intervalIntegrable {A : ℝ} (hA : 91 ≤ A) :
    IntervalIntegrable (fun t => actualRelativePsiTimeError t * Real.exp (t / 2) *
      (deriv (sourceCorrelation explicitSecondDerivative A) t -
        sourceCorrelation explicitSecondDerivative A t / 2))
      volume (Real.log 7) (2 * A) := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hi := (actualRelativePsiTimeError_intervalIntegrable
    (show 0 ≤ 2 * A by linarith)).mono_set (by
    rw [uIcc_of_le hab, uIcc_of_le (show 0 ≤ 2 * A by linarith)]
    exact Icc_subset_Icc ha le_rfl)
  have hc := sourceCorrelation_contDiff A (show 0 < A by linarith)
  exact (hi.mul_continuousOn (by fun_prop)).mul_continuousOn
    (hc.continuous_deriv_one.sub (hc.continuous.div_const 2)).continuousOn

/-- Actual finite Abel return keeps the complete lower-seven tail with its true sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0cb2c1b1f4d4aca14c3988b1ce26a578701637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
