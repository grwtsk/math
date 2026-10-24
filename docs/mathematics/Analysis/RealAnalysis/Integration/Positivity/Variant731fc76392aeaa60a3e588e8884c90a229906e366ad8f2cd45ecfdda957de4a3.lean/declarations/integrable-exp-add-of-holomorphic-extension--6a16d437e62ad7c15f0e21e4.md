# integrable_exp_add_of_holomorphic_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a379281e-5b34-4f2c-3ad5-def3eac7362d",
  "kind": "theorem",
  "lexical_name": "integrable_exp_add_of_holomorphic_extension",
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
  "slug": "integrable-exp-add-of-holomorphic-extension--6a16d437e62ad7c15f0e21e4",
  "source": {
    "blob": "fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a16d437e62ad7c15f0e21e48ba42258b07b54d555f5e77b1efcecd86bad713b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a379281e-5b34-4f2c-3ad5-def3eac7362d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_exp_add_of_holomorphic_extension (v r R : ℝ)
    (hr : 0 ≤ r) (hrR : r < R) (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hv : v ∈ interior (ProbabilityTheory.integrableExpSet X μ))
    (F : ℂ → ℂ) (hF : DifferentiableOn ℂ F (Metric.ball (v : ℂ) R))
    (heq : F =ᶠ[𝓝 (v : ℂ)] ProbabilityTheory.complexMGF X μ) :
    Integrable (fun ω ↦ Real.exp ((v + r) * X ω)) μ := by
  apply integrable_exp_add_of_summable_mgf_moments v r hr hX hv
  have hz : ((v + r : ℝ) : ℂ) ∈ Metric.ball (v : ℂ) R := by
    simpa [Metric.mem_ball, dist_eq_norm, Real.norm_eq_abs, abs_of_nonneg hr]
      using hrR
  have hTaylor := Complex.hasSum_taylorSeries_on_ball hF hz
  have hreal := (Complex.hasSum_re hTaylor).summable
  have hcoeff (n : ℕ) :
      (((n.factorial : ℂ)⁻¹ • (((v + r : ℝ) : ℂ) - (v : ℂ)) ^ n •
        iteratedDeriv n F (v : ℂ))).re =
      r ^ n / (n.factorial : ℝ) * ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ := by
    rw [heq.iteratedDeriv_eq n, iteratedDeriv_complexMGF_real v hv n]
    simp only [smul_eq_mul, Complex.ofReal_add, add_sub_cancel_left]
    have hcast : (n.factorial : ℂ)⁻¹ * ((r : ℂ) ^ n *
        ((∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ : ℝ) : ℂ)) =
        ((r ^ n / (n.factorial : ℝ) *
          ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ : ℝ) : ℂ) := by
      push_cast
      ring
    exact congrArg Complex.re hcast
  simpa only [hcoeff] using hreal


/-- Landau's finite-boundary conclusion for a positive measure on nonnegative
values. No value or integrability is prescribed at the boundary itself. Every
function agreeing with the integral in a left neighborhood has a singularity there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
