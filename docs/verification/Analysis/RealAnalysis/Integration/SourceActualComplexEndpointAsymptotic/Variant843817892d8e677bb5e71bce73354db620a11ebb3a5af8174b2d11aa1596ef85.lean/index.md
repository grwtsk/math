# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7970cdf28c2b400fba6e657628fe1539c2bddbdf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7970cdf28c2b400fba6e657628fe1539c2bddbdf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualendpointextension--064f4792869a6b99836f7d2d.md) | 24 | `declaration-track:064f4792869a6b99836f7d2df5facf475ab461982c05bc0cf3090b0b94fd9f3e` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualcomplexendpointintegrand--bd39c122ea75816c098f4890.md) | 28 | `declaration-track:bd39c122ea75816c098f48906fac4b79a228cc4645540868f7bfe084bab4df7f` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualleadingcomplexcoefficient--7befa8f4c5b249dbf0f89409.md) | 32 | `declaration-track:7befa8f4c5b249dbf0f89409f9d17ae55de100d4bfaf136a9fbb876569ad46bb` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualendpointmajorant-integrable--0d1ceff2943f13a978d2f1b2.md) | 37 | `result-track:0d1ceff2943f13a978d2f1b20ca3ae5a9521b1a2f12598ac0455cc936cfe4789` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualcomplexendpointintegrand-norm-le--e39aa80428892d487aba9fa6.md) | 55 | `result-track:e39aa80428892d487aba9fa635a70239bf6d54ab8fdbaa9cb55a8a3d05a5e755` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--93b4fab0a67db7708f32620e.md) | 70 | `result-track:93b4fab0a67db7708f32620e78be52f4c1cc0aa13e05144af00e5910a0a23415` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualcomplexendpointintegrand-integrable--f343048c5019d122dc88c761.md) | 84 | `result-track:f343048c5019d122dc88c761df6ae228c7595f067156a84c7400d967df26f600` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualcomplexendpointintegrand-tendsto--e1b7a60b150e3039906c692a.md) | 92 | `result-track:e1b7a60b150e3039906c692ae54fabe4e2c6149de39f468359af4cc1e1f28ec1` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant843817892d8e677bb5e71bce73354db620a11ebb3a5af8174b2d11aa1596ef85.lean/declarations/actualcomplexendpoint-integral-tendsto--9f937a261bbc0eae1adeea0b.md) | 104 | `result-track:9f937a261bbc0eae1adeea0b64a5ce9e976937e0ad79b17047bbc2ae2b9dbec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
