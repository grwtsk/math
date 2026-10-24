# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3096f2c93da12c4343d6a5e1d6fd71e7cd90e159",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3096f2c93da12c4343d6a5e1d6fd71e7cd90e159`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualendpointextension--8bf274af420f7ecd64a09738.md) | 24 | `declaration-track:8bf274af420f7ecd64a09738ea3303cbc3c0f2cd5bba5da0d98a01f6475e587a` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualcomplexendpointintegrand--2f98760108ca93558bcaca3e.md) | 28 | `declaration-track:2f98760108ca93558bcaca3ef28c283a49b9e22bf88b8798ef1e61ee61925c31` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualleadingcomplexcoefficient--5dd1a6ff2ae3c36221e00cfe.md) | 32 | `declaration-track:5dd1a6ff2ae3c36221e00cfee0c12d2b674d7aa1a2e4ec19d799a5a83da91ae8` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualendpointmajorant-integrable--0f14bc32428e740c6405fdb0.md) | 37 | `result-track:0f14bc32428e740c6405fdb0d1b8bf16362587e9f0ee75b4f9c98b8ff56a3fbe` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualcomplexendpointintegrand-norm-le--3ba54e9c7bb657e5f9a8879d.md) | 55 | `result-track:3ba54e9c7bb657e5f9a8879d7294c055e748e54f24ba4a1a9c16460a98cd6c69` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--b40dbf001f8073776f51e255.md) | 70 | `result-track:b40dbf001f8073776f51e2553e23d07306e05a67c9f10aede35b2fe4c0290401` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualcomplexendpointintegrand-integrable--f3af4ddf7de9b8a020aecc5e.md) | 82 | `result-track:f3af4ddf7de9b8a020aecc5e89cb51d991a830ef7b37c2465a5477ad86f1493d` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualcomplexendpointintegrand-tendsto--3b17b64aa5cede5ef03b280c.md) | 90 | `result-track:3b17b64aa5cede5ef03b280c62266e92ac3dbdb8fa097a2d11667f8c3a721397` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant7cd2a33c13ad0540d8622693d4eb85907ef9719f31cd6caaf23b55cf38758397.lean/declarations/actualcomplexendpoint-integral-tendsto--3fb35dec18d94d6098d90e09.md) | 102 | `result-track:3fb35dec18d94d6098d90e095f39cd67d0f2a2a3558c41fbaf8a936ad0add8a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
