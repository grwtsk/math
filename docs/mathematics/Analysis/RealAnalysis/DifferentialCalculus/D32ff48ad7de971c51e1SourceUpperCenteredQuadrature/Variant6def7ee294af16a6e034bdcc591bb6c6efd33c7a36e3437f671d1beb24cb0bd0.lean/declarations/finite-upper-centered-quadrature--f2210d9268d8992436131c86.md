# finite_upper_centered_quadrature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4405d88e-1a0c-3934-ba9a-e0ada13612c5",
  "kind": "theorem",
  "lexical_name": "finite_upper_centered_quadrature",
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
  "slug": "finite-upper-centered-quadrature--f2210d9268d8992436131c86",
  "source": {
    "blob": "c3a09d51603f63b3973d4ddf327961680d26a312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2210d9268d8992436131c86642212f97e802820c3fa1863659b0fbbd2e7d0c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4405d88e-1a0c-3934-ba9a-e0ada13612c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_upper_centered_quadrature (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      (∫ u in 1..(N + 1 : ℝ), f u) + (f 1 - f (N + 1 : ℝ)) / 2 +
        ∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u := by
  have hq := finite_quadrature f hf N
  have hz := unit_right_sampling_identity f hf 0
  simp only [Nat.cast_zero, zero_add] at hz
  have hfadd := intervalIntegral.integral_add_adjacent_intervals
    (hf.continuous.intervalIntegrable (μ := volume) 0 1)
    (hf.continuous.intervalIntegrable (μ := volume) 1 (N + 1 : ℝ))
  have hdadd := intervalIntegral.integral_add_adjacent_intervals
    (fract_deriv_intervalIntegrable f hf 0 1)
    (fract_deriv_intervalIntegrable f hf 1 (N + 1 : ℝ))
  have hd : (∫ u in 1..(N + 1 : ℝ), deriv f u) = f (N + 1 : ℝ) - f 1 := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · intro u _
      exact hf.differentiable (by norm_num) u
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : (fun u => centeredSawtooth u * deriv f u) =
      (fun u => Int.fract u * deriv f u - deriv f u / 2) := by
    funext u
    unfold centeredSawtooth
    ring
  have hc : (∫ u in 1..(N + 1 : ℝ), centeredSawtooth u * deriv f u) =
      (∫ u in 1..(N + 1 : ℝ), Int.fract u * deriv f u) -
        (f (N + 1 : ℝ) - f 1) / 2 := by
    rw [he, intervalIntegral.integral_sub
      (fract_deriv_intervalIntegrable f hf 1 (N + 1 : ℝ))
      ((hf.continuous_deriv_one.intervalIntegrable _ _).div_const 2),
      intervalIntegral.integral_div, hd]
  linarith only [hq, hz, hfadd, hdadd, hc]

/-- Actual global derivative existence and compact support justify the upper signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variant6def7ee294af16a6e034bdcc591bb6c6efd33c7a36e3437f671d1beb24cb0bd0.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a09d51603f63b3973d4ddf327961680d26a312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
