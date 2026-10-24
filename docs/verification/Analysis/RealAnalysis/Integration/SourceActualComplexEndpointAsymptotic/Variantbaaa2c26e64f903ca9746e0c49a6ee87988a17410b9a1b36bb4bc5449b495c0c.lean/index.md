# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38f9ddcdb5c6b9150268c429985a5bc4cac452b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38f9ddcdb5c6b9150268c429985a5bc4cac452b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualendpointextension--f74a4f1b27c290691b19774a.md) | 32 | `declaration-track:f74a4f1b27c290691b19774a3b7bb3176cfe0c583c2f47b94a568ac826af7f3e` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualcomplexendpointintegrand--5d3428dedc49ed673c8c158e.md) | 36 | `declaration-track:5d3428dedc49ed673c8c158e6e35952d041d5f7ef5ebf1bbd2dec2ad445dbd7a` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualleadingcomplexcoefficient--9e02946869b2a57a0690cbaa.md) | 40 | `declaration-track:9e02946869b2a57a0690cbaa9dcdcfb2095a17e44ace2646ac8c5a62e4d08cd7` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualendpointmajorant-integrable--b01cd29d82205c4faf4d4653.md) | 45 | `result-track:b01cd29d82205c4faf4d4653def439bfd9253c7541a870658ca482bb1452a526` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualcomplexendpointintegrand-norm-le--9da3fd3507dddd23450dee32.md) | 63 | `result-track:9da3fd3507dddd23450dee32eaf9a5098476d97242ae21b77d1c30f11a621b17` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--39d9f182e8f64bfd51aa4ed0.md) | 78 | `result-track:39d9f182e8f64bfd51aa4ed01be20d6e7a5928a4b43318b688b977efa0101a44` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualcomplexendpointintegrand-integrable--0ff8ef76a98cd5ee42c3a12a.md) | 90 | `result-track:0ff8ef76a98cd5ee42c3a12a1e044c357344060742ee1754640c7bc60af0c75e` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualcomplexendpointintegrand-tendsto--043df1f3a157f869a58fb4d7.md) | 98 | `result-track:043df1f3a157f869a58fb4d7e64020c25d63f2987dd78d9ed43ea32f8d4b0825` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantbaaa2c26e64f903ca9746e0c49a6ee87988a17410b9a1b36bb4bc5449b495c0c.lean/declarations/actualcomplexendpoint-integral-tendsto--4d34ed20c4199ef1021d9bee.md) | 110 | `result-track:4d34ed20c4199ef1021d9bee458d2cfdb12770961ef86ad9d33ed940b760578a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
