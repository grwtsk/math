# pairedTailTest_second_deriv_at_zero_eq_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5d2229a-e60f-b81f-a6f0-4596120079ef",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_second_deriv_at_zero_eq_energy",
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
  "slug": "pairedtailtest-second-deriv-at-zero-eq-energy--bdcbbef6d4eed83796fea004",
  "source": {
    "blob": "0b335a458171097b7ecf9c60fecf37056e49f446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variant76c19f0d34cb23ea6bbaa42c8f6e6d1f4ae21d0084110c13d3187387be7fbfee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdcbbef6d4eed83796fea00404d79f95f8bf8d37777d9fc342512167b606f748",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variant76c19f0d34cb23ea6bbaa42c8f6e6d1f4ae21d0084110c13d3187387be7fbfee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5d2229a-e60f-b81f-a6f0-4596120079ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_second_deriv_at_zero_eq_energy
    {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (pairedTailTest A)) 0 =
      (∫ x : ℝ, (deriv (SourcePairing.normalizedTest explicitSecondDerivative A) x) ^ 2) -
        1 / 4 := by
  have hp : 0 < A := by linarith
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt
      (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A :=
    funext (sourceCorrelation_even A)
  rw [he] at hn
  have hc0 : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
    have hd := hc.unique hn
    linarith
  have hg : deriv (criticalPrimeTest A) 0 = 1 / 2 := by
    rw [criticalPrimeTest_deriv A 0 hp, hc0, actual_correlation_at_zero A hA]
    norm_num
  have hphase : 0 < deriv (criticalPrimeTest A) 0 := by rw [hg]; norm_num
  have hc2 : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    simpa only [sub_zero, ← pow_two] using sourceCorrelation_second_deriv_eq_integral hp 0
  rw [pairedTailTest_second_deriv_eq_neg_of_deriv_pos hA hphase,
    criticalPrimeTest_second_deriv_eq_correlation hp, hc0,
    actual_correlation_at_zero A hA, hc2]
  simp only [zero_div, Real.exp_zero, one_mul]
  ring

/-- A positive shifted cubic proves the exact source curvature is negative from scale seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variant76c19f0d34cb23ea6bbaa42c8f6e6d1f4ae21d0084110c13d3187387be7fbfee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalOriginCurvature/Variant76c19f0d34cb23ea6bbaa42c8f6e6d1f4ae21d0084110c13d3187387be7fbfee.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b335a458171097b7ecf9c60fecf37056e49f446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
