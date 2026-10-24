# actual_census_integral_retains_final_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76586edd-f090-31f8-dac7-1e937c9b63a9",
  "kind": "theorem",
  "lexical_name": "actual_census_integral_retains_final_cell",
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
  "slug": "actual-census-integral-retains-final-cell--7c0982774915d46c0468253c",
  "source": {
    "blob": "4d00d9d873cce5585fdd5ab67f6d239f485ec90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c0982774915d46c0468253c298a5690e59219f4901094ff2782b1c1134db50c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76586edd-f090-31f8-dac7-1e937c9b63a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_census_integral_retains_final_cell {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    (∫ x in (1 : ℝ)..(censusCount A r + 1 : ℝ), logarithmicSample A r x) =
      ∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x := by
  have hX1 : 1 ≤ censusCutoff A r := Real.one_le_exp_iff.mpr (by positivity)
  have hXN : censusCutoff A r ≤ censusCount A r + 1 :=
    (Nat.lt_floor_add_one _).le
  have hc : ContinuousOn (logarithmicSample A r) (Ioi 0) :=
    fun x hx ↦ (actual_logarithmic_hasDerivAt hA r hx).continuousAt.continuousWithinAt
  have hi {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
      IntervalIntegrable (logarithmicSample A r) volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply hc.mono
    rw [uIcc_of_le hab]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
  have hz : (∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ),
      logarithmicSample A r x) = 0 := by
    calc
      _ = ∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro x hx
        rw [uIcc_of_le hXN] at hx
        exact actual_sample_zero_at_and_beyond_cutoff hA hr hx.1
      _ = 0 := intervalIntegral.integral_zero
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (hi (by norm_num) hX1) (hi hX1 hXN)
  rw [hz, add_zero] at hs
  exact hs.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusCutoff/Variantbcb10510c7e915c798e8aed1b6c6ca17a209e45825a4b039a66c2674bf1e551f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d00d9d873cce5585fdd5ab67f6d239f485ec90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
