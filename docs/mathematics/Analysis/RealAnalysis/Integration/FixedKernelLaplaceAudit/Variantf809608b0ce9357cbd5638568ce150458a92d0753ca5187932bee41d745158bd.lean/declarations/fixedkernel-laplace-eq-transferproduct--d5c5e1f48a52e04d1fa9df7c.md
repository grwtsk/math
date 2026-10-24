# fixedKernel_laplace_eq_transferProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bb0fd1c27edc89935365d7119e55a1f8f9c4082",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 930,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57f49b81-2e87-8556-cdfd-2debd0ae1167",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2947cffc-36d4-9754-f499-93b7dacc0a1c",
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
  "slug": "fixedkernel-laplace-eq-transferproduct--d5c5e1f48a52e04d1fa9df7c",
  "source": {
    "blob": "0bb0fd1c27edc89935365d7119e55a1f8f9c4082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 930,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5c5e1f48a52e04d1fa9df7c9320287aa0d38679062c30f9d9086cdd28a0313b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2947cffc-36d4-9754-f499-93b7dacc0a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–949.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceAudit/Variantf809608b0ce9357cbd5638568ce150458a92d0753ca5187932bee41d745158bd.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb0fd1c27edc89935365d7119e55a1f8f9c4082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
