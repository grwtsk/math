# weightedCorrelation_full_peano

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49e94d30-6b0a-333d-776a-ed1f79d0c595",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_full_peano",
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
  "slug": "weightedcorrelation-full-peano--257f1895fb7e6970184c1541",
  "source": {
    "blob": "fb15d3015bc3973237bc00a8567b42d30ac73c52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257f1895fb7e6970184c15416ce80e51d3ac130d9703b9c827a530931780285b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49e94d30-6b0a-333d-776a-ed1f79d0c595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_full_peano (A v : ℝ) (hA : 1 ≤ A) (hv : 0 ≤ v) :
    (∫ u in (0 : ℝ)..(2 * A),
      max (v - u) 0 * deriv (deriv (weightedCorrelation A)) u) =
        weightedCorrelation A v - 1 - v * (3 / 2) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  have hcont : Continuous (fun u ↦ max (v - u) 0 *
      deriv (deriv (weightedCorrelation A)) u) := by fun_prop
  by_cases hcut : v ≤ 2 * A
  · have hleft : (∫ u in (0 : ℝ)..v, max (v - u) 0 *
        deriv (deriv (weightedCorrelation A)) u) =
      ∫ u in (0 : ℝ)..v, (v - u) * deriv (deriv (weightedCorrelation A)) u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hv] at hu
      dsimp only
      rw [max_eq_left (sub_nonneg.mpr (le_trans hu.2 (by linarith)))]
    have hright : (∫ u in v..(2 * A), max (v - u) 0 *
        deriv (deriv (weightedCorrelation A)) u) = 0 := by
      calc
        _ = ∫ _u in v..(2 * A), (0 : ℝ) := by
          apply intervalIntegral.integral_congr
          intro u hu
          rw [uIcc_of_le hcut] at hu
          dsimp only
          simp [max_eq_right (sub_nonpos.mpr hu.1)]
        _ = 0 := by simp
    have hsum := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
      (hcont.intervalIntegrable 0 v) (hcont.intervalIntegrable v (2 * A))
    rw [hleft, hright, add_zero] at hsum
    rw [← hsum, weightedCorrelation_peano A v hA]
  · have hcut' : 2 * A ≤ v := le_of_not_ge hcut
    have heq : (∫ u in (0 : ℝ)..(2 * A), max (v - u) 0 *
        deriv (deriv (weightedCorrelation A)) u) =
      ∫ u in (0 : ℝ)..(2 * A), (v - u) * deriv (deriv (weightedCorrelation A)) u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)] at hu
      dsimp only
      rw [max_eq_left (sub_nonneg.mpr (le_trans hu.2 (by linarith)))]
    rw [heq, weightedCorrelation_ibp A v (2 * A) hA,
      weightedCorrelation_deriv_upper_zero A (2 * A) hA le_rfl,
      weightedCorrelation_upper_zero A (2 * A) hA le_rfl,
      weightedCorrelation_upper_zero A v hA hcut']
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb15d3015bc3973237bc00a8567b42d30ac73c52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
