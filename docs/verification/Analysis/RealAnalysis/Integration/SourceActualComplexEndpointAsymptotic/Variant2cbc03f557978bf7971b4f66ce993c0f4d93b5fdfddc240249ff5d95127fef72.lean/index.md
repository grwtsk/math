# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24e872caaa13d5238ab97e61cad76ae6e614986e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24e872caaa13d5238ab97e61cad76ae6e614986e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualendpointextension--79704fc96b5d41cb34e9380e.md) | 24 | `declaration-track:79704fc96b5d41cb34e9380ea24823d06226a63f289c3bb9de2ac855d54dbdac` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualcomplexendpointintegrand--7174fc2213e7bb4fd63f466d.md) | 28 | `declaration-track:7174fc2213e7bb4fd63f466d6dbbce8e3707989de900f71abf81d45509d3a384` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualleadingcomplexcoefficient--bd151ffde2ccbf175deb09ca.md) | 32 | `declaration-track:bd151ffde2ccbf175deb09cab78105b994ddd9254ff145422ab92b89534d450b` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualendpointmajorant-integrable--6c62e6546f9fbd3d337057c8.md) | 37 | `result-track:6c62e6546f9fbd3d337057c8f7fcc74c968e7b6bf64ab3adc8512fd6f4c24c4b` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualcomplexendpointintegrand-norm-le--0d68ef31e5b367fed39a8524.md) | 48 | `result-track:0d68ef31e5b367fed39a85240d914d7a90cb6ef366987f166cd9da9b39fede0f` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--8b95ea66f2c4c271914858d7.md) | 63 | `result-track:8b95ea66f2c4c271914858d79d19937b802fac1fa9c341cde02c912929b24311` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualcomplexendpointintegrand-integrable--3a47e31e8a490dc9704b36d0.md) | 72 | `result-track:3a47e31e8a490dc9704b36d01a244e5c8a251648205ccd085a47aec8f316c185` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualcomplexendpointintegrand-tendsto--884341d038384a1876e7a246.md) | 80 | `result-track:884341d038384a1876e7a246857568f7fedaeac1cd23ced39f0aae80e4a15994` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant2cbc03f557978bf7971b4f66ce993c0f4d93b5fdfddc240249ff5d95127fef72.lean/declarations/actualcomplexendpoint-integral-tendsto--0d669ebe7a8c8ecbc4ab4a7e.md) | 92 | `result-track:0d669ebe7a8c8ecbc4ab4a7ed72322d32476a8906928ef260eb8eb1408d1725d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
