# actual_full_census_quadrature_exact_uniform_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4ef7c94-7ddf-6666-371a-dd9554162f23",
  "kind": "theorem",
  "lexical_name": "actual_full_census_quadrature_exact_uniform_price",
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
  "slug": "actual-full-census-quadrature-exact-uniform-price--eedf015ccca9a66f418c706d",
  "source": {
    "blob": "0d9f4aba45360e1b76f7eb02d0369bc802cae91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eedf015ccca9a66f418c706df846c29c3c6001d2e6ad2d0645bb89dd86c157fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4ef7c94-7ddf-6666-371a-dd9554162f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_census_quadrature_exact_uniform_price {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    |actualCensus A r -
      (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)| ≤
      2 * Real.sqrt (65 / 3) := by
  have hApos : 0 < A := by linarith
  have hX1 : 1 ≤ censusCutoff A r := Real.one_le_exp_iff.mpr (by positivity)
  have hXpos : 0 < censusCutoff A r := Real.exp_pos _
  have hXN : censusCutoff A r ≤ censusCount A r + 1 := (Nat.lt_floor_add_one _).le
  have hc := actual_logarithmic_derivative_continuousOn hA r
  have hi {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
      IntervalIntegrable (fun x ↦ |logarithmicDerivative A r x|) volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply hc.abs.mono
    rw [uIcc_of_le hab]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
  have hz : (∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ),
      |logarithmicDerivative A r x|) = 0 := by
    calc
      _ = ∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hXN
        intro x hx
        dsimp only
        rw [actual_logarithmic_derivative_zero_after_cutoff hA hr hx.1, abs_zero]
      _ = 0 := intervalIntegral.integral_zero
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hi (by norm_num) hX1) (hi hX1 hXN)
  rw [hz, add_zero] at hsplit
  have hquad := complete_positive_domain_sampling_price
    (logarithmicSample A r) (logarithmicDerivative A r)
    (fun x hx ↦ actual_logarithmic_hasDerivAt hA r hx) hc (censusCount A r)
  rw [actual_census_integral_retains_final_cell hA hr, ← hsplit] at hquad
  have hj : IntervalIntegrable (fun x : ℝ ↦
      (r * Real.sqrt (65 / 3) / A) * (1 / x)) volume 1 (censusCutoff A r) := by
    apply ContinuousOn.intervalIntegrable
    intro x hx
    rw [uIcc_of_le hX1] at hx
    exact (continuousAt_const.mul (continuousAt_const.div continuousAt_id
      (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))).continuousWithinAt
  have hp := intervalIntegral.integral_mono_on (μ := volume) hX1
    (hi (by norm_num) hX1) hj
    (fun x hx ↦ exact_native_logarithmic_derivative_price hA hr
      (lt_of_lt_of_le zero_lt_one hx.1))
  rw [intervalIntegral.integral_const_mul,
    integral_one_div_of_pos zero_lt_one hXpos, div_one, censusCutoff, Real.log_exp] at hp
  have heq : (r * Real.sqrt (65 / 3) / A) * (2 * A / r) =
      2 * Real.sqrt (65 / 3) := by field_simp
  rw [heq] at hp
  exact hquad.trans hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusSharpError/Variant96ce54c0dbefa26830bef868dc32d3074244b40f5c46723502144b9a767b71a4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9f4aba45360e1b76f7eb02d0369bc802cae91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
