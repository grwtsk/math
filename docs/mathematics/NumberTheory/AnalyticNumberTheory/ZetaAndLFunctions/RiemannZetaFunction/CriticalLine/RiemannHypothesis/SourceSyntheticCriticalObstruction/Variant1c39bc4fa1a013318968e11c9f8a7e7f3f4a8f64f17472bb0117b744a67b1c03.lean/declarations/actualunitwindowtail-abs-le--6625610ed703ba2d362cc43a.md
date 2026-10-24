# actualUnitWindowTail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0a8d4a-575c-1f7b-17eb-413c1fd7ee87",
  "kind": "theorem",
  "lexical_name": "actualUnitWindowTail_abs_le",
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
  "slug": "actualunitwindowtail-abs-le--6625610ed703ba2d362cc43a",
  "source": {
    "blob": "03194ff7cdf39e202e94b4a6ac0bb422bfdf4c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Variant1c39bc4fa1a013318968e11c9f8a7e7f3f4a8f64f17472bb0117b744a67b1c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6625610ed703ba2d362cc43a710fbc06bf7d9c2afa151c3cb7733d26356ba655",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Variant1c39bc4fa1a013318968e11c9f8a7e7f3f4a8f64f17472bb0117b744a67b1c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0a8d4a-575c-1f7b-17eb-413c1fd7ee87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitWindowTail_abs_le {A u : ℝ} (hA : 1 ≤ A) (hu : u ∈ Icc 0 1) :
    |pairedTailTest A u| ≤ 1+Real.exp (1/2 : ℝ) := by
  have huL : u ∈ Icc 0 (2*A) := ⟨hu.1, by linarith [hu.2]⟩
  have hs0 := negativeSurvival_nonneg hA huL
  have hs1 := negativeSurvival_le_one hA huL
  have hs : |negativeSurvival A u| ≤ 1 := by
    simpa only [abs_of_nonneg hs0] using hs1
  have hc := actual_correlation_abs_le_one A u hA
  have he : Real.exp (u/2) ≤ Real.exp (1/2 : ℝ) :=
    Real.exp_le_exp.mpr (by linarith [hu.2])
  have hg : |criticalPrimeTest A u| ≤ Real.exp (1/2 : ℝ) := by
    unfold criticalPrimeTest
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ Real.exp (u/2)*1 :=
        mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le
      _ ≤ _ := by simpa only [mul_one] using he
  calc
    _ = |-criticalPrimeTest A u+negativeSurvival A u| := rfl
    _ ≤ |-criticalPrimeTest A u|+|negativeSurvival A u| := abs_add _ _
    _ ≤ Real.exp (1/2 : ℝ)+1 :=
      add_le_add (by simpa only [abs_neg] using hg) hs
    _ = _ := by ring

/-- This scalar integrand is genuinely integrable, independently of its norm bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Variant1c39bc4fa1a013318968e11c9f8a7e7f3f4a8f64f17472bb0117b744a67b1c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Variant1c39bc4fa1a013318968e11c9f8a7e7f3f4a8f64f17472bb0117b744a67b1c03.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03194ff7cdf39e202e94b4a6ac0bb422bfdf4c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
