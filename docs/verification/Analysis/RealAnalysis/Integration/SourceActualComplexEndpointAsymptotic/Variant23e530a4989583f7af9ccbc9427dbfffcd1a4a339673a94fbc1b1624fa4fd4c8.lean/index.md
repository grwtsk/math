# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aeb8c7527379784817ad3acc21c737e74f4397f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aeb8c7527379784817ad3acc21c737e74f4397f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualendpointextension--847e62570317178617b92591.md) | 32 | `declaration-track:847e62570317178617b92591422e6e99f7b6a85f94aaf0fd63b8d16d10c1213c` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpointintegrand--d82aab64738c64ea66c2500b.md) | 36 | `declaration-track:d82aab64738c64ea66c2500b3e3bfabb0b65807d029aa05a15bd4fddc98db626` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualleadingcomplexcoefficient--b65613e342339116bc4ded0d.md) | 40 | `declaration-track:b65613e342339116bc4ded0d2d5e59f65627fd169fd73890a6f0a3307b052219` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualendpointmajorant-integrable--fbfdcd8d0af42639448a67ce.md) | 45 | `result-track:fbfdcd8d0af42639448a67ce6f2a82fd95f6712a7aecfbca8907981feccb5f67` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpointintegrand-norm-le--e68abe9e2ef8513daa43db7c.md) | 63 | `result-track:e68abe9e2ef8513daa43db7ca96d475b25ba23aa43910d3b8eb00ed03c00daa2` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--aaf7727249427bd2de8ecd94.md) | 78 | `result-track:aaf7727249427bd2de8ecd944b5e626190c5f06cd4e8032918e7477ae8ae9b8f` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpointintegrand-integrable--aff3411c452ad65249bd5c74.md) | 92 | `result-track:aff3411c452ad65249bd5c74c0d69bd7f6e50057a379197f7683c032016a0a01` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpointintegrand-tendsto--cb4340bf04f21d047817a815.md) | 100 | `result-track:cb4340bf04f21d047817a81598762905c1df561cd2d123b9b0732593e96995de` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpoint-integral-tendsto--1601ee9061e94d36e5672789.md) | 112 | `result-track:1601ee9061e94d36e5672789c3ba226461e4b3a590268a65acc7f0378dfcfb4d` |
| 10 | `def` | [actualSourceComplexTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualsourcecomplextransform--477e43ed5d5e94dad69d8c6d.md) | 133 | `declaration-track:477e43ed5d5e94dad69d8c6dc23d02e3647826738f1a8ea2ff529f9009a4914b` |
| 11 | `theorem` | [actualComplexEndpoint_integral_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualcomplexendpoint-integral-eq-interval--2d56de1e9d2b7b840d049087.md) | 138 | `result-track:2d56de1e9d2b7b840d04908790a27ff0b0eb03cc221a7a81fd58db9b5ee7fee1` |
| 12 | `theorem` | [actualSourceComplexTransform_normalized_eq_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualsourcecomplextransform-normalized-eq-endpoint--7609176c4410b0f88ba663f8.md) | 159 | `result-track:7609176c4410b0f88ba663f8ccb4fb3bdea675f3101bad77ec1a5f92113d7a8b` |
| 13 | `theorem` | [actualSourceComplexTransform_normalized_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant23e530a4989583f7af9ccbc9427dbfffcd1a4a339673a94fbc1b1624fa4fd4c8.lean/declarations/actualsourcecomplextransform-normalized-tendsto--8c89077e343727f8c3f08898.md) | 200 | `result-track:8c89077e343727f8c3f0889898052d32b6c25783eeccf18554ddd204ae55b7a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
