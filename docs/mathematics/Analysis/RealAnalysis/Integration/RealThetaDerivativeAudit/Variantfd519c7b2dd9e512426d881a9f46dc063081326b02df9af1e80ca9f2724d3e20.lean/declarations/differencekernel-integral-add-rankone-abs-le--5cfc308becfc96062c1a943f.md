# differenceKernel_integral_add_rankOne_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8a16c88-d0e9-efae-6e4a-0be5cf9b644a",
  "kind": "theorem",
  "lexical_name": "differenceKernel_integral_add_rankOne_abs_le",
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
  "slug": "differencekernel-integral-add-rankone-abs-le--5cfc308becfc96062c1a943f",
  "source": {
    "blob": "989ec19043f680d216c613841ac5c98df70f39c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 331,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cfc308becfc96062c1a943f60e2be460ba75378a15dfc256ca01c1de74bbfe7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a16c88-d0e9-efae-6e4a-0be5cf9b644a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differenceKernel_integral_add_rankOne_abs_le (A q : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |(∫ x in Set.Ioi (1 : ℝ), differenceSamplingKernel A (q * x)) +
      sourceRankOneCoefficient A / q| ≤
      (24 + 12 * Real.sqrt (65 / 3) / A) / Real.sqrt q := by
  rw [differenceKernel_integral_eq_primitive A q hA hq]
  exact differencePrimitiveSamplingKernel_add_rankOne_abs_le A q hA (by linarith)

end
end RealThetaDerivativeScratch

#print axioms RealThetaDerivativeScratch.realThetaKernel
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel
#print axioms RealThetaDerivativeScratch.realThetaDifferenceKernel
#print axioms RealThetaDerivativeScratch.realThetaRemainder
#print axioms RealThetaDerivativeScratch.samplingIndices_eq_fixed_filter
#print axioms RealThetaDerivativeScratch.realThetaKernel_eq_strict_sum
#print axioms RealThetaDerivativeScratch.realThetaKernel_eq_nat
#print axioms RealThetaDerivativeScratch.realThetaRemainder_eq_nat
#print axioms RealThetaDerivativeScratch.differenceSamplingKernel_eq_mul_deriv
#print axioms RealThetaDerivativeScratch.realThetaKernel_hasDerivAt
#print axioms RealThetaDerivativeScratch.realThetaKernel_deriv
#print axioms RealThetaDerivativeScratch.realThetaRemainder_hasDerivAt
#print axioms RealThetaDerivativeScratch.realThetaRemainder_differentiableOn
#print axioms RealThetaDerivativeScratch.difference_primitive_eq
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_eq
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_add_rankOne_abs_le
#print axioms RealThetaDerivativeScratch.differencePrimitiveSamplingKernel_eq_fixed_sum
#print axioms RealThetaDerivativeScratch.difference_tail_eq_primitive
#print axioms RealThetaDerivativeScratch.rootWeight_difference_integral
#print axioms RealThetaDerivativeScratch.differenceInnerTerm
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_eq
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_integrable
#print axioms RealThetaDerivativeScratch.differenceInnerTerm_integral
#print axioms RealThetaDerivativeScratch.differenceKernel_eq_inner_sum
#print axioms RealThetaDerivativeScratch.differenceKernel_rescaled_integrable
#print axioms RealThetaDerivativeScratch.differenceKernel_integral_eq_primitive
#print axioms RealThetaDerivativeScratch.differenceKernel_integral_add_rankOne_abs_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variantfd519c7b2dd9e512426d881a9f46dc063081326b02df9af1e80ca9f2724d3e20.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `989ec19043f680d216c613841ac5c98df70f39c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
