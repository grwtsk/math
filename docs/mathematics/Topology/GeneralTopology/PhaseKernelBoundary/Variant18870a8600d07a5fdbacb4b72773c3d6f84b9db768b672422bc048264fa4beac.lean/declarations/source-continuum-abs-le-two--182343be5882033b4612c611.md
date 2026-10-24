# source_continuum_abs_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fd405c8-ef37-fc63-646f-f2c9654af967",
  "kind": "theorem",
  "lexical_name": "source_continuum_abs_le_two",
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
  "slug": "source-continuum-abs-le-two--182343be5882033b4612c611",
  "source": {
    "blob": "6a497da550d16d3d51290f5b93e29f0e27545c30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182343be5882033b4612c6116fa88a774165ec71f97187ada28a254ba40cc3a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fd405c8-ef37-fc63-646f-f2c9654af967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_continuum_abs_le_two (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 2 := by
  have hab : (0 : ℝ) ≤ 2 * A := by linarith
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ Real.exp (-t / 2)) := by fun_prop
  have hp : (∫ t in 0..2 * A, Real.exp (-t / 2)) = 2 - 2 * Real.exp (-A) := by
    have hd (t : ℝ) : HasDerivAt (fun x : ℝ ↦ -2 * Real.exp (-x / 2))
        (Real.exp (-t / 2)) t := by
      apply ((((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2)).congr_deriv
      simp only [Pi.neg_apply, id_eq]
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
    ring
  have hbound : |∫ t in 0..2 * A, Real.exp (-t / 2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 2 := by
    calc
      _ ≤ ∫ t in 0..2 * A, |Real.exp (-t / 2) *
          sourceCorrelation explicitSecondDerivative A t| :=
        intervalIntegral.abs_integral_le_integral_abs hab
      _ ≤ ∫ t in 0..2 * A, Real.exp (-t / 2) := by
        apply intervalIntegral.integral_mono_on hab
          ((he.mul hc).abs.intervalIntegrable _ _) (he.intervalIntegrable _ _)
        intro t _
        change |Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t| ≤
          Real.exp (-t / 2)
        rw [abs_mul, abs_of_pos (Real.exp_pos _)]
        simpa only [mul_one] using mul_le_mul_of_nonneg_left
          (EstimateCorrelation.actual_correlation_abs_le_one A t hA) (Real.exp_pos _).le
      _ = 2 - 2 * Real.exp (-A) := hp
      _ ≤ 2 := by linarith [Real.exp_pos (-A)]
  have hpole := CorrelationMoment.pole_correlation_certificate A hA
  have heq : (∫ t in 0..2 * A, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) =
      -(∫ t in 0..2 * A, Real.exp (-t / 2) *
        sourceCorrelation explicitSecondDerivative A t) := by linarith
  rw [heq, abs_neg]
  exact hbound

/-- The actual scaled kernel cannot be nonnegative everywhere: its pole moment is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant18870a8600d07a5fdbacb4b72773c3d6f84b9db768b672422bc048264fa4beac.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a497da550d16d3d51290f5b93e29f0e27545c30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
