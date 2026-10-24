# fixedKernel_laplace_eq_transferProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:577ad624-f701-4104-e9b7-1e2ebae57cc6",
  "kind": "theorem",
  "lexical_name": "fixedKernel_laplace_eq_transferProduct",
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
  "slug": "fixedkernel-laplace-eq-transferproduct--07f97f709ade2b1461293271",
  "source": {
    "blob": "db37b78f749808402160d96b5b8bcf4072dc9ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 938,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f97f709ade2b146129327113f6384b69b2a3b218185202606929b8704249f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:577ad624-f701-4104-e9b7-1e2ebae57cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_laplace_eq_transferProduct (z : ℂ) (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := by
  have hi (n : ℕ) : IntegrableOn (laplaceSample z n) (Ioi 0) :=
    (laplaceSample_integrable z n).integrableOn
  calc
    _ = ∫ t : ℝ in Ioi 0, ∑' n : ℕ, laplaceSample z n t := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact (laplaceSample_tsum z t).symm
    _ = ∑' n : ℕ, ∫ t : ℝ in Ioi 0, laplaceSample z n t :=
      (integral_tsum_of_summable_integral_norm hi (laplaceSample_norm_integrals_summable z hz)).symm
    _ = _ := by
      simp_rw [laplaceSample_integral_Ioi, sampleCoefficient_eq_cpow]
      rw [tsum_mul_right, tsum_mul_left,
        ← zeta_eq_tsum_one_div_nat_add_one_cpow (s := 1 / 2 + z) (by
          simp only [Complex.add_re, Complex.div_ofNat_re, Complex.one_re]
          linarith)]

/-- The admitted actual integral agrees with the repaired source transfer in its initial half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variant784d87078fb54ed8f24ed284a5171f498a99ea824fc80d829a839e4dcbf750a9.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db37b78f749808402160d96b5b8bcf4072dc9ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
