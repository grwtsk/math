# _root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.Complex.tendsto_euler_sin_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed168217-a981-97e1-9244-109c894d4da2",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.Complex.tendsto_euler_sin_prod",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-antiderivcoscompconstmul-v--be4eb27405bc43d93c335c27",
  "source": {
    "blob": "588a6fd282bf917ecd8d0896ffd09b3e15366a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 311,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be4eb27405bc43d93c335c27204772c8e02c3152868b60912024478b9c562bfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed168217-a981-97e1-9244-109c894d4da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.AntiderivCosCompConstMul.Variant59871e9d32875f0b86ad704e8228ecfc9944d958a7bd0a9af45b81ac3c070d54.Complex.tendsto_euler_sin_prod (z : ℂ) :
    Tendsto (fun n : ℕ => π * z * ∏ j in Finset.range n, ((1 : ℂ) - z ^ 2 / ((j : ℂ) + 1) ^ 2))
      atTop (𝓝 <| Complex.sin (π * z)) := by
  have A :
    Tendsto
      (fun n : ℕ =>
        ((π * z * ∏ j in Finset.range n, ((1 : ℂ) - z ^ 2 / ((j : ℂ) + 1) ^ 2)) *
            ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n)) /
          (∫ x in (0 : ℝ)..π / 2, cos x ^ (2 * n) : ℝ))
      atTop (𝓝 <| _) :=
    Tendsto.congr (fun n => sin_pi_mul_eq z n) tendsto_const_nhds
  have : 𝓝 (Complex.sin (π * z)) = 𝓝 (Complex.sin (π * z) * 1) := by rw [mul_one]
  simp_rw [this, mul_div_assoc] at A
  convert (tendsto_mul_iff_of_ne_zero _ one_ne_zero).mp A
  suffices :
    Tendsto
      (fun n : ℕ =>
        (∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ n) /
          (∫ x in (0 : ℝ)..π / 2, cos x ^ n : ℝ))
      atTop (𝓝 1)
  exact this.comp (tendsto_id.const_mul_atTop' zero_lt_two)
  have : ContinuousOn (fun x : ℝ => Complex.cos (2 * z * x)) (Icc 0 (π / 2)) :=
    (Complex.continuous_cos.comp (continuous_const.mul Complex.continuous_ofReal)).continuousOn
  convert tendsto_integral_cos_pow_mul_div this using 1
  · ext1 n; congr 2 with x : 1; rw [mul_comm]
  · rw [Complex.ofReal_zero, mul_zero, Complex.cos_zero]
#align complex.tendsto_euler_sin_prod Complex.tendsto_euler_sin_prod

/-- Euler's infinite product formula for the real sine function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variantc83a588c18465a7177b6bc003d8ee8cbde793ac962ebbc32ffd3708675e6849c.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588a6fd282bf917ecd8d0896ffd09b3e15366a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
