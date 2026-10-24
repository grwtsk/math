# response_inner_double

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844601fe-83c1-e1ad-d3dc-393ae7afeac7",
  "kind": "theorem",
  "lexical_name": "response_inner_double",
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
  "slug": "response-inner-double--40e6d376ad48ab7f920d1300",
  "source": {
    "blob": "b377932567934ade5ff070ca3203d60cec461170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e6d376ad48ab7f920d130018d2c9e0e8f410c41a92a9ab6796540d23ad143a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844601fe-83c1-e1ad-d3dc-393ae7afeac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_inner_double (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      ((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) := by
  rw [response_inner_full_double]
  congr 1
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun u hu => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos u (le_of_not_gt hu),
        zero_mul, integral_zero])]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u hu
  exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun v hv => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos v (le_of_not_gt hv),
        mul_zero, zero_mul])).symm

end
end ExponentialCovarianceScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @ExponentialCovarianceScratch.controller
#print ExponentialCovarianceScratch.controller
#print axioms ExponentialCovarianceScratch.controller
#check @ExponentialCovarianceScratch.response
#print ExponentialCovarianceScratch.response
#print axioms ExponentialCovarianceScratch.response
#check @ExponentialCovarianceScratch.controller_ae
#print ExponentialCovarianceScratch.controller_ae
#print axioms ExponentialCovarianceScratch.controller_ae
#check @ExponentialCovarianceScratch.controller_inner
#print ExponentialCovarianceScratch.controller_inner
#print axioms ExponentialCovarianceScratch.controller_inner
#check @ExponentialCovarianceScratch.reference_inner_response
#print ExponentialCovarianceScratch.reference_inner_response
#print axioms ExponentialCovarianceScratch.reference_inner_response
#check @ExponentialCovarianceScratch.response_ae
#print ExponentialCovarianceScratch.response_ae
#print axioms ExponentialCovarianceScratch.response_ae
#check @ExponentialCovarianceScratch.signedCorrelation
#print ExponentialCovarianceScratch.signedCorrelation
#print axioms ExponentialCovarianceScratch.signedCorrelation
#check @ExponentialCovarianceScratch.signedCovariance
#print ExponentialCovarianceScratch.signedCovariance
#print axioms ExponentialCovarianceScratch.signedCovariance
#check @ExponentialCovarianceScratch.signedCorrelation_integrable
#print ExponentialCovarianceScratch.signedCorrelation_integrable
#print axioms ExponentialCovarianceScratch.signedCorrelation_integrable
#check @ExponentialCovarianceScratch.shifted_kernel_norm_integral
#print ExponentialCovarianceScratch.shifted_kernel_norm_integral
#print axioms ExponentialCovarianceScratch.shifted_kernel_norm_integral
#check @ExponentialCovarianceScratch.signed_product_integrable
#print ExponentialCovarianceScratch.signed_product_integrable
#print axioms ExponentialCovarianceScratch.signed_product_integrable
#check @ExponentialCovarianceScratch.weighted_signed_product_integrable
#print ExponentialCovarianceScratch.weighted_signed_product_integrable
#print axioms ExponentialCovarianceScratch.weighted_signed_product_integrable
#check @ExponentialCovarianceScratch.signedCovariance_integrable
#print ExponentialCovarianceScratch.signedCovariance_integrable
#print axioms ExponentialCovarianceScratch.signedCovariance_integrable
#check @ExponentialCovarianceScratch.signedCovariance_eq_reordered
#print ExponentialCovarianceScratch.signedCovariance_eq_reordered
#print axioms ExponentialCovarianceScratch.signedCovariance_eq_reordered
#check @ExponentialCovarianceScratch.fullShift_add
#print ExponentialCovarianceScratch.fullShift_add
#print axioms ExponentialCovarianceScratch.fullShift_add
#check @ExponentialCovarianceScratch.overlap
#print ExponentialCovarianceScratch.overlap
#print axioms ExponentialCovarianceScratch.overlap
#check @ExponentialCovarianceScratch.shifted_controller_inner_of_le
#print ExponentialCovarianceScratch.shifted_controller_inner_of_le
#print axioms ExponentialCovarianceScratch.shifted_controller_inner_of_le
#check @ExponentialCovarianceScratch.shifted_controller_inner
#print ExponentialCovarianceScratch.shifted_controller_inner
#print axioms ExponentialCovarianceScratch.shifted_controller_inner
#check @ExponentialCovarianceScratch.overlap_abs_le
#print ExponentialCovarianceScratch.overlap_abs_le
#print axioms ExponentialCovarianceScratch.overlap_abs_le
#check @ExponentialCovarianceScratch.overlap_measurable
#print ExponentialCovarianceScratch.overlap_measurable
#print axioms ExponentialCovarianceScratch.overlap_measurable
#check @ExponentialCovarianceScratch.gramIntegrand
#print ExponentialCovarianceScratch.gramIntegrand
#print axioms ExponentialCovarianceScratch.gramIntegrand
#check @ExponentialCovarianceScratch.gramIntegrand_integrable
#print ExponentialCovarianceScratch.gramIntegrand_integrable
#print axioms ExponentialCovarianceScratch.gramIntegrand_integrable
#check @ExponentialCovarianceScratch.integral_inner_first
#print ExponentialCovarianceScratch.integral_inner_first
#print axioms ExponentialCovarianceScratch.integral_inner_first
#check @ExponentialCovarianceScratch.response_inner_full_double
#print ExponentialCovarianceScratch.response_inner_full_double
#print axioms ExponentialCovarianceScratch.response_inner_full_double
#check @ExponentialCovarianceScratch.response_inner_double
#print ExponentialCovarianceScratch.response_inner_double
#print axioms ExponentialCovarianceScratch.response_inner_double
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b377932567934ade5ff070ca3203d60cec461170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
