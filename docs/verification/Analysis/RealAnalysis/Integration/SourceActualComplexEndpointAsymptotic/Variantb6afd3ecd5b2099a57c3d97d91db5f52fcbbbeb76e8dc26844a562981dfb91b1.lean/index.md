# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc514ecb8c8890a6349575eb35078e8b6174a003",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc514ecb8c8890a6349575eb35078e8b6174a003`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualendpointextension--56340c7bb7ac40ae96dca71d.md) | 32 | `declaration-track:56340c7bb7ac40ae96dca71d2ab5d310582952e768eb7b6cf4b4aefd8c5a78b8` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualcomplexendpointintegrand--45a7c6462342a99446a551d2.md) | 36 | `declaration-track:45a7c6462342a99446a551d268c87874c4214d8a66445205e89deff9e538f086` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualleadingcomplexcoefficient--3b6a400e353c84c5ab3128e9.md) | 40 | `declaration-track:3b6a400e353c84c5ab3128e98a4f039e15fff02816a48b7327597fa1d181df83` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualendpointmajorant-integrable--a2e07b29281401dc996bead8.md) | 45 | `result-track:a2e07b29281401dc996bead80d10555ed1b55b545945dbc76d1c55dda3d10e00` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualcomplexendpointintegrand-norm-le--e8370245293166e340ad4688.md) | 56 | `result-track:e8370245293166e340ad46886fb3b0133307a771c96e3db5754e34fca38421be` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--3726423a49e5fc5094de2447.md) | 71 | `result-track:3726423a49e5fc5094de2447f48563982df7caaab31f719476cb7a9919dd0853` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualcomplexendpointintegrand-integrable--291aac9c6a315e597fc95c62.md) | 81 | `result-track:291aac9c6a315e597fc95c62b509eca4417c0b4d6de4ca892f0bc81a3db46381` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualcomplexendpointintegrand-tendsto--b1f8494bb1c63ac30fd212ed.md) | 89 | `result-track:b1f8494bb1c63ac30fd212ed68ad11d898397c4500366775588808e0f42aa91f` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb6afd3ecd5b2099a57c3d97d91db5f52fcbbbeb76e8dc26844a562981dfb91b1.lean/declarations/actualcomplexendpoint-integral-tendsto--5366bbd50580a6e23a377853.md) | 101 | `result-track:5366bbd50580a6e23a3778531a7322c1116d6f3a215836265eefccfd50c0a540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
