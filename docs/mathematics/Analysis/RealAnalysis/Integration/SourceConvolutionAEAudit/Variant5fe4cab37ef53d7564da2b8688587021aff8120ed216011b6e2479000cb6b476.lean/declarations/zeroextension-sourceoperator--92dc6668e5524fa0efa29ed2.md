# zeroExtension_sourceOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81c33466-ea2c-e272-d369-07247f665c33",
  "kind": "theorem",
  "lexical_name": "zeroExtension_sourceOperator",
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
  "slug": "zeroextension-sourceoperator--92dc6668e5524fa0efa29ed2",
  "source": {
    "blob": "0fc6a7f6d151be2063ef640de560e9f954ccc242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 479,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92dc6668e5524fa0efa29ed2f09fca81ed355ceacb00c78c56a3de8b4378f9bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81c33466-ea2c-e272-d369-07247f665c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroExtension_sourceOperator (f : H) :
    zeroExtension (sourceOperator f) = actualFull (zeroExtension f) := by
  have hR : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
      actualFull (zeroExtension f) := restriction_ae (actualFull (zeroExtension f))
  have hI := (ae_eq_restrict_iff_indicator_ae_eq measurableSet_Ioi).mp hR
  have hzero : actualFull (zeroExtension f) =ᵐ[volume.restrict (Ioi (0 : ℝ))ᶜ] 0 := by
    simpa only [compl_Ioi, Pi.zero_def] using full_sourceOperator_causal f
  apply Lp.ext
  exact Filter.EventuallyEq.trans (zeroExtension_ae (sourceOperator f))
    (hI.trans (indicator_ae_eq_of_restrict_compl_ae_eq_zero measurableSet_Ioi hzero))

end
end SourceConvolutionAEScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @SourceConvolutionAEScratch.smul_integrable_of_memLp_two
#print SourceConvolutionAEScratch.smul_integrable_of_memLp_two
#print axioms SourceConvolutionAEScratch.smul_integrable_of_memLp_two

#check @SourceConvolutionAEScratch.integral_norm_smul_le
#print SourceConvolutionAEScratch.integral_norm_smul_le
#print axioms SourceConvolutionAEScratch.integral_norm_smul_le

#check @SourceConvolutionAEScratch.convolutionFunction
#print SourceConvolutionAEScratch.convolutionFunction
#print axioms SourceConvolutionAEScratch.convolutionFunction

#check @SourceConvolutionAEScratch.convolution_integrand_integrable
#print SourceConvolutionAEScratch.convolution_integrand_integrable
#print axioms SourceConvolutionAEScratch.convolution_integrand_integrable

#check @SourceConvolutionAEScratch.convolution_norm_integral_bound
#print SourceConvolutionAEScratch.convolution_norm_integral_bound
#print axioms SourceConvolutionAEScratch.convolution_norm_integral_bound

#check @SourceConvolutionAEScratch.convolution_integrand_stronglyMeasurable
#print SourceConvolutionAEScratch.convolution_integrand_stronglyMeasurable
#print axioms SourceConvolutionAEScratch.convolution_integrand_stronglyMeasurable

#check @SourceConvolutionAEScratch.convolution_product_integrable
#print SourceConvolutionAEScratch.convolution_product_integrable
#print axioms SourceConvolutionAEScratch.convolution_product_integrable

#check @SourceConvolutionAEScratch.convolutionFunction_integrableOn
#print SourceConvolutionAEScratch.convolutionFunction_integrableOn
#print axioms SourceConvolutionAEScratch.convolutionFunction_integrableOn

#check @SourceConvolutionAEScratch.vector_setIntegral
#print SourceConvolutionAEScratch.vector_setIntegral
#print axioms SourceConvolutionAEScratch.vector_setIntegral

#check @SourceConvolutionAEScratch.actualFull_ae_convolution
#print SourceConvolutionAEScratch.actualFull_ae_convolution
#print axioms SourceConvolutionAEScratch.actualFull_ae_convolution

#check @SourceConvolutionAEScratch.convolutionFunction_commuted
#print SourceConvolutionAEScratch.convolutionFunction_commuted
#print axioms SourceConvolutionAEScratch.convolutionFunction_commuted

#check @SourceConvolutionAEScratch.causal_integrand_identity
#print SourceConvolutionAEScratch.causal_integrand_identity
#print axioms SourceConvolutionAEScratch.causal_integrand_identity

#check @SourceConvolutionAEScratch.convolutionFunction_zeroExtension_eq_setIntegral
#print SourceConvolutionAEScratch.convolutionFunction_zeroExtension_eq_setIntegral
#print axioms SourceConvolutionAEScratch.convolutionFunction_zeroExtension_eq_setIntegral

#check @SourceConvolutionAEScratch.causal_setIntegral_integrable
#print SourceConvolutionAEScratch.causal_setIntegral_integrable
#print axioms SourceConvolutionAEScratch.causal_setIntegral_integrable

#check @SourceConvolutionAEScratch.causal_intervalIntegrable
#print SourceConvolutionAEScratch.causal_intervalIntegrable
#print axioms SourceConvolutionAEScratch.causal_intervalIntegrable

#check @SourceConvolutionAEScratch.convolutionFunction_zeroExtension_nonpositive
#print SourceConvolutionAEScratch.convolutionFunction_zeroExtension_nonpositive
#print axioms SourceConvolutionAEScratch.convolutionFunction_zeroExtension_nonpositive

#check @SourceConvolutionAEScratch.sourceOperator_ae_causal_setIntegral
#print SourceConvolutionAEScratch.sourceOperator_ae_causal_setIntegral
#print axioms SourceConvolutionAEScratch.sourceOperator_ae_causal_setIntegral

#check @SourceConvolutionAEScratch.sourceOperator_ae_causal_integral
#print SourceConvolutionAEScratch.sourceOperator_ae_causal_integral
#print axioms SourceConvolutionAEScratch.sourceOperator_ae_causal_integral

#check @SourceConvolutionAEScratch.full_sourceOperator_causal
#print SourceConvolutionAEScratch.full_sourceOperator_causal
#print axioms SourceConvolutionAEScratch.full_sourceOperator_causal

#check @SourceConvolutionAEScratch.zeroExtension_sourceOperator
#print SourceConvolutionAEScratch.zeroExtension_sourceOperator
#print axioms SourceConvolutionAEScratch.zeroExtension_sourceOperator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fc6a7f6d151be2063ef640de560e9f954ccc242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
