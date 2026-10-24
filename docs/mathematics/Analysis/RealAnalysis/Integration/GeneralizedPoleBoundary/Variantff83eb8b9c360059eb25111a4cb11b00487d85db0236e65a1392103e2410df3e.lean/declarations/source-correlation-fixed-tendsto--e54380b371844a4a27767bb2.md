# source_correlation_fixed_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9f35366-c6ed-573e-6229-8656161ec94e",
  "kind": "theorem",
  "lexical_name": "source_correlation_fixed_tendsto",
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
  "slug": "source-correlation-fixed-tendsto--e54380b371844a4a27767bb2",
  "source": {
    "blob": "6ac0d5edba5089dfe7283500f0a6ac4722023189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e54380b371844a4a27767bb2763229622584219fe682eac41980af8a0379c3ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9f35366-c6ed-573e-6229-8656161ec94e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_correlation_fixed_tendsto (t : ℝ) :
    Tendsto (fun A : ℝ ↦ sourceCorrelation explicitSecondDerivative A t) atTop (nhds 1) := by
  have ht : Tendsto (fun A : ℝ ↦ t / A) atTop (nhds 0) := by
    simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).const_mul t
  have h0 := (PhaseKernelBoundary.fixed_kernel_continuous 0
    (by norm_num)).continuousAt.tendsto.comp ht
  have h1 := (PhaseKernelBoundary.fixed_kernel_continuous 1
    (by norm_num)).continuousAt.tendsto.comp ht
  have h2 := (PhaseKernelBoundary.fixed_kernel_continuous 2
    (by norm_num)).continuousAt.tendsto.comp ht
  have hn := ((h0.div_const 16).add
    (h1.mul inverse_square_coefficient_tendsto_zero)).add
    (h2.mul inverse_fourth_coefficient_tendsto_zero)
  have hr := hn.div PhaseKernelBoundary.source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ sourceCorrelation explicitSecondDerivative A t) =ᶠ[atTop]
      (fun A ↦ (fixedKernel 0 (t / A) / 16 + fixedKernel 1 (t / A) * (1 / (2 * A ^ 2)) +
        fixedKernel 2 (t / A) * (1 / A ^ 4)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hne : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
    have hc := scaled_kernel_eq_source_correlation A (t / A) hA
    rw [show A * (t / A) = t by field_simp] at hc
    rw [← hc, scaled_kernel_eq_three_fixed_kernels A (t / A) hA]
    ring
  convert hr.congr' heq.symm using 1
  norm_num [fixed_kernel_mass_values.1]

/-- The actual dominating half-line weight is nonnegative everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleBoundary/Variantff83eb8b9c360059eb25111a4cb11b00487d85db0236e65a1392103e2410df3e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ac0d5edba5089dfe7283500f0a6ac4722023189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
