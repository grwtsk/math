# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21ae202f5a349bf88115b2779581015782d9305",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21ae202f5a349bf88115b2779581015782d9305`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualendpointextension--c5e7559ce2d35c7e6deb999b.md) | 32 | `declaration-track:c5e7559ce2d35c7e6deb999b90b71d22146f52c23f3531c52330052f44e332fd` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualcomplexendpointintegrand--43a15b9db2bf7ae1c56847cd.md) | 36 | `declaration-track:43a15b9db2bf7ae1c56847cdb7039044b4f9046a66eab7f8a6e9a3519bc2520a` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualleadingcomplexcoefficient--e5131441d8ce9b916772a7ab.md) | 40 | `declaration-track:e5131441d8ce9b916772a7ab4a85d92023df1681e6a182bad2d7fa0f2d5f3409` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualendpointmajorant-integrable--09d262a386a6d621e6b76765.md) | 45 | `result-track:09d262a386a6d621e6b7676512dd5e378daa5aedb61ff0d4d2fa4f169c19f379` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualcomplexendpointintegrand-norm-le--205cbd03f95ae419b2df33ee.md) | 63 | `result-track:205cbd03f95ae419b2df33ee11c4ecbc935ea569e1397d27a5260602f584cf07` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--369e212ef2eceb76b1ba4c59.md) | 78 | `result-track:369e212ef2eceb76b1ba4c593c42358ccd14aafd0f7f5c6bb71032ca7a6846b5` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualcomplexendpointintegrand-integrable--5ff26e092e9706d43f00e70c.md) | 92 | `result-track:5ff26e092e9706d43f00e70c7763a904923bb4cf921580254d320fc3b1c09ad2` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualcomplexendpointintegrand-tendsto--6ed72c9346f8e0d566fd6c00.md) | 100 | `result-track:6ed72c9346f8e0d566fd6c00cac699c279779268190420bf1f380b187b644c80` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7dbcd5c1d1c0ada7af2d987e754255d9f133895f16476446e6b934b2dac4a729.lean/declarations/actualcomplexendpoint-integral-tendsto--513ff73099645d0fd9615044.md) | 112 | `result-track:513ff73099645d0fd96150442d641c9b52a33c4ed93b0e91cebbfcd2d4d1888a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
