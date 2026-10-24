# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9632fe50bd6c044cd62ed79294c25e1d49b60f81",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9632fe50bd6c044cd62ed79294c25e1d49b60f81`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualendpointextension--d954730261cfe75c15264b65.md) | 32 | `declaration-track:d954730261cfe75c15264b65a68c32602e654972d39ea97bff099996c3eaa030` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualcomplexendpointintegrand--74f5eda1bb2e39421c9e60b1.md) | 36 | `declaration-track:74f5eda1bb2e39421c9e60b1988032c5c3a8a819269badb2c16e47c9ee253b6e` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualleadingcomplexcoefficient--a407b48de4bad1cbd3e94fbf.md) | 40 | `declaration-track:a407b48de4bad1cbd3e94fbf879af7d0516fcdf754b6185986769c1674ae4859` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualendpointmajorant-integrable--fa30ae16033393b73102b3d3.md) | 45 | `result-track:fa30ae16033393b73102b3d30677b653ced88137fa00b18ab9d43620b42aba47` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualcomplexendpointintegrand-norm-le--2a5712fa4113eb6a277bf686.md) | 59 | `result-track:2a5712fa4113eb6a277bf686589501b0029d138d8ec2d0bda721b6700d5a7add` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--b8f5a1ce437df25f5452f369.md) | 74 | `result-track:b8f5a1ce437df25f5452f369ffa10ad0547fdcb738b54925d53f4f6a8e10d3aa` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualcomplexendpointintegrand-integrable--475dc2211745b8954ff27b6b.md) | 85 | `result-track:475dc2211745b8954ff27b6b29175835a756b3f02e9eec2b322587f9efdda031` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualcomplexendpointintegrand-tendsto--b23b81f40f5a99193ac3722c.md) | 93 | `result-track:b23b81f40f5a99193ac3722c30073b662884c523932b0b050780126ecf92e0c4` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant19a343bb619398726e1044b72b03404ffa281e5f21da72e9b51727e6b80b7f6b.lean/declarations/actualcomplexendpoint-integral-tendsto--ae7e1acda2372a39864a0c77.md) | 105 | `result-track:ae7e1acda2372a39864a0c77297788eef0711e63f96eb956a7d79ecb61cce026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
