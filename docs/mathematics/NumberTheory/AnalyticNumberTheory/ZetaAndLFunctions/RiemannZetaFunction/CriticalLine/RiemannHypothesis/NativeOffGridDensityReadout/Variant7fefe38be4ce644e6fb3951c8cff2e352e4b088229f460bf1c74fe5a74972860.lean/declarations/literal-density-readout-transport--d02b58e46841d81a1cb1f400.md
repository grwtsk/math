# literal_density_readout_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ca6329c-6d8c-d190-371c-bab20b61322a",
  "kind": "theorem",
  "lexical_name": "literal_density_readout_transport",
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
  "slug": "literal-density-readout-transport--d02b58e46841d81a1cb1f400",
  "source": {
    "blob": "1dc05f4045e617d33fb4b569fc7ba0e7cca41d3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variant7fefe38be4ce644e6fb3951c8cff2e352e4b088229f460bf1c74fe5a74972860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d02b58e46841d81a1cb1f4001d7c81e9584dccec4f8a1d89af1f7b9108f4ce38",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variant7fefe38be4ce644e6fb3951c8cff2e352e4b088229f460bf1c74fe5a74972860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca6329c-6d8c-d190-371c-bab20b61322a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_density_readout_transport {A : ℝ} (hA : 1 ≤ A) :
    densityReadout A = logarithmicModelReadout A := by
  have hg : ContinuousOn (densitySourceInput A) (Ioi 0) :=
    fun x hx ↦ (literal_density_source_continuous_at hA hx).continuousWithinAt
  have h := intervalIntegral.integral_comp_mul_deriv'
    (a := (0 : ℝ)) (b := 2 * A) (fun t _ ↦ Real.hasDerivAt_exp t)
    Real.continuous_exp.continuousOn
    (hg.mono (by rintro _ ⟨t, _, rfl⟩; exact Real.exp_pos _))
  have heq : (fun t : ℝ ↦ (densitySourceInput A ∘ Real.exp) t * Real.exp t) =
      fun t : ℝ ↦ (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re +
        (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re := by
    funext t
    exact literal_density_exponential_integrand A t
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hcC : Continuous (fun t : ℝ ↦ (C A t : ℂ)) := Complex.continuous_ofReal.comp hc
  have h0 : Continuous (fun t : ℝ ↦ Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)) :=
    (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul hcC
  have h1 : Continuous (fun t : ℝ ↦ phase * exponent *
      Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)) :=
    ((Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).const_mul
      (phase * exponent)).mul hcC
  have hi0 : IntervalIntegrable (fun t : ℝ ↦
      (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re) volume 0 (2 * A) := by
    simpa only [Function.comp_apply] using! (Complex.continuous_re.comp h0).intervalIntegrable 0
      (2 * A)
  have hi1 : IntervalIntegrable (fun t : ℝ ↦
      (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re) volume 0 (2 * A) := by
    simpa only [Function.comp_apply] using! (Complex.continuous_re.comp h1).intervalIntegrable 0
      (2 * A)
  have hre0 : (∫ t in (0 : ℝ)..2 * A,
      (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re) =
      (∫ t in (0 : ℝ)..2 * A, Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re := by
    simpa using! intervalIntegral.intervalIntegral_re (h0.intervalIntegrable 0 (2 * A))
  have hre1 : (∫ t in (0 : ℝ)..2 * A,
      (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re) =
      (∫ t in (0 : ℝ)..2 * A,
        phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re := by
    simpa using! intervalIntegral.intervalIntegral_re (h1.intervalIntegrable 0 (2 * A))
  rw [heq, intervalIntegral.integral_add hi0 hi1, hre0, hre1] at h
  have hconst : (fun t : ℝ ↦ phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)) =
      fun t : ℝ ↦ (phase * exponent) * (Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)) := by
    funext t
    ring
  rw [hconst, intervalIntegral.integral_const_mul] at h
  simpa only [Real.exp_zero, densityReadout, logarithmicModelReadout, complexHalfMoment] using
    h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variant7fefe38be4ce644e6fb3951c8cff2e352e4b088229f460bf1c74fe5a74972860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridDensityReadout/Variant7fefe38be4ce644e6fb3951c8cff2e352e4b088229f460bf1c74fe5a74972860.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dc05f4045e617d33fb4b569fc7ba0e7cca41d3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
