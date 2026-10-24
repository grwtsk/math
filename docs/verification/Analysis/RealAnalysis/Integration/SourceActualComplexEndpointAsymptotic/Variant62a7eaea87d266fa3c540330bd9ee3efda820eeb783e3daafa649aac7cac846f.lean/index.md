# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b3a4c73432d69109eed4f537658cc7764fc1bf8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b3a4c73432d69109eed4f537658cc7764fc1bf8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualendpointextension--177f166b1faeec0267fd17dc.md) | 24 | `declaration-track:177f166b1faeec0267fd17dc63eaed87ea3d3bfa1a2c6b12a1512e58f0d5a831` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualcomplexendpointintegrand--9b2e38bc0a99c78b91cbaebd.md) | 28 | `declaration-track:9b2e38bc0a99c78b91cbaebd2afaf3b9704a9236ad28a433ca719421bfcf4895` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualleadingcomplexcoefficient--3cae6ef2ee6975e156142adb.md) | 32 | `declaration-track:3cae6ef2ee6975e156142adbfa754343f288794ba98a6a066881d193ebb77827` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualendpointmajorant-integrable--bf1452e7b46db7522a23fbc1.md) | 37 | `result-track:bf1452e7b46db7522a23fbc1d26fab39eaee3b35e198af9bb72ff1edb53cb616` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualcomplexendpointintegrand-norm-le--f6a0ada88a1c6618c3424953.md) | 51 | `result-track:f6a0ada88a1c6618c3424953bbdf2dc48f847cf7078f0cfe457a44dfd34c2cf4` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--51463439a02c2c0e7fdd3706.md) | 66 | `result-track:51463439a02c2c0e7fdd3706cb205e62c0c7d03bbde88afd5525c6ca318731ed` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualcomplexendpointintegrand-integrable--2f8bbf99e82d697d8252b8c6.md) | 77 | `result-track:2f8bbf99e82d697d8252b8c6b0ecd16aa07153ff726061f977f457e6030e7642` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualcomplexendpointintegrand-tendsto--99df4678eddd312cfd524c98.md) | 85 | `result-track:99df4678eddd312cfd524c982cdf79f2885204eeba3fce1a6a1184b325b82fcb` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant62a7eaea87d266fa3c540330bd9ee3efda820eeb783e3daafa649aac7cac846f.lean/declarations/actualcomplexendpoint-integral-tendsto--a9a37c21c55fac64addd42bc.md) | 97 | `result-track:a9a37c21c55fac64addd42bcddedd48e33299cacd67ad8162f586e731df776da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
