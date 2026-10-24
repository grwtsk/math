# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4ff8492fb125a566c1db7f45e1e0ce9f8ac7bf9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4ff8492fb125a566c1db7f45e1e0ce9f8ac7bf9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualendpointextension--dd2953e1770e3ae39101efee.md) | 32 | `declaration-track:dd2953e1770e3ae39101efeeef3590e7b486ec9a38a0dcabcdae8b695b0c5751` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpointintegrand--40d266f5ead621e7ce81602b.md) | 36 | `declaration-track:40d266f5ead621e7ce81602bebfe63c203fdd0450028505d9f93899a7e30a558` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualleadingcomplexcoefficient--a8c55db762e3fd076ddab6b5.md) | 40 | `declaration-track:a8c55db762e3fd076ddab6b5eed606f9ced1ac9816dc7c350a064885648c31c6` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualendpointmajorant-integrable--b4b098f1681cdd22489ed082.md) | 45 | `result-track:b4b098f1681cdd22489ed0824a3a21357062d01fdc3fa9e776d8c55ff70429c9` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpointintegrand-norm-le--35b6cdc508c3b02640ed3fcc.md) | 63 | `result-track:35b6cdc508c3b02640ed3fcc128d8c28f583721bfa7e4ce6e3a31fd5a3d00036` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--8caaac3911790cc23f37d899.md) | 78 | `result-track:8caaac3911790cc23f37d8993b00099619eff4122e500ad144d7f71d14a998ee` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpointintegrand-integrable--2cb883c3905194227a65dfa5.md) | 92 | `result-track:2cb883c3905194227a65dfa53280328e429523624e0819739b6e6368b9fcf4e3` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpointintegrand-tendsto--16bb5573a6d6069bee4539bf.md) | 100 | `result-track:16bb5573a6d6069bee4539bff38278b8985cd6e7a9c282766e4a1e5354fa9030` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpoint-integral-tendsto--0d48404a3933a3889d8ccafa.md) | 112 | `result-track:0d48404a3933a3889d8ccafa13224c5c7723fb0cda923513f9578aca89dd0d10` |
| 10 | `def` | [actualSourceComplexTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualsourcecomplextransform--1a9e93421a125fad6cecb02f.md) | 133 | `declaration-track:1a9e93421a125fad6cecb02fd9649a9eb5f104cc59c69c7e93c8929f5466cfa1` |
| 11 | `theorem` | [actualComplexEndpoint_integral_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualcomplexendpoint-integral-eq-interval--e7d5691aeec87d97044f97c3.md) | 138 | `result-track:e7d5691aeec87d97044f97c3d4ba2ed630f6bd4dac973885488a80420b727ef3` |
| 12 | `theorem` | [actualSourceComplexTransform_normalized_eq_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualsourcecomplextransform-normalized-eq-endpoint--296b44497aa924f10974973b.md) | 159 | `result-track:296b44497aa924f10974973b4a40e6671e081ff49e0112472b8ad1197bd2ab5f` |
| 13 | `theorem` | [actualSourceComplexTransform_normalized_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7015413a88654edd6ec863a4bd33081385ca208a8b9ab2f2616d6b257f6c387e.lean/declarations/actualsourcecomplextransform-normalized-tendsto--1e498ba3344b3130c28961ca.md) | 199 | `result-track:1e498ba3344b3130c28961ca34fc588f927861076e52f9e75a1855e0f8f3662c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
