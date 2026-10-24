# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualComplexEndpointAsymptotic.Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6db26346785cc8a355a38ec4661d966aea9e018",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6db26346785cc8a355a38ec4661d966aea9e018`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean.json)

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
| 1 | `def` | [actualEndpointExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualendpointextension--b139904c67a1c4ba822a3c62.md) | 24 | `declaration-track:b139904c67a1c4ba822a3c62718260af828d218bc085fdd3e88b04293060771b` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpointintegrand--04497ae0cb65cee9ed9a31c0.md) | 28 | `declaration-track:04497ae0cb65cee9ed9a31c0e5a2ab1a54e9a9f64a1d554619fcea362290d85c` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualleadingcomplexcoefficient--9571d3d7b99fafc6f668e990.md) | 32 | `declaration-track:9571d3d7b99fafc6f668e990f9c579e689cb1ecb87baccdc0e6fee35605adac5` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualendpointmajorant-integrable--964f9b5e7b6a354749accc80.md) | 37 | `result-track:964f9b5e7b6a354749accc802e074fdac6992cb4094bbf13f5055458cb9eddfe` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpointintegrand-norm-le--7c65db25f718e42efbed8815.md) | 55 | `result-track:7c65db25f718e42efbed88150805bf8dd5b70665892eef3ca99988a1c27956d7` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable--c48801dd0a1d21ae972a07b9.md) | 70 | `result-track:c48801dd0a1d21ae972a07b978590ff4c76e243bbf736010b7061987dbf0c6d2` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpointintegrand-integrable--b55c23b0ca1d89c867c0466f.md) | 84 | `result-track:b55c23b0ca1d89c867c0466fced8295021f1e599b9a1fa8f3f42c0f148d86153` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpointintegrand-tendsto--6674c489275322e372ff0d9c.md) | 92 | `result-track:6674c489275322e372ff0d9c1b318a93eaf120c5b6bb9989897f97c7ab392263` |
| 9 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpoint-integral-tendsto--b1e9abaf54574849995b15c4.md) | 104 | `result-track:b1e9abaf54574849995b15c46e874616f80d800fe2285dd85b996adb432a4e39` |
| 10 | `def` | [actualSourceComplexTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualsourcecomplextransform--260dd60beabe788c3f86900d.md) | 125 | `declaration-track:260dd60beabe788c3f86900de8f858a36ff0c088f68ad48f960c2d508775441b` |
| 11 | `theorem` | [actualComplexEndpoint_integral_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualcomplexendpoint-integral-eq-interval--91d0bfe436ccd1df3ce65f90.md) | 130 | `result-track:91d0bfe436ccd1df3ce65f9055d8f3feb0a9a436cd7e2b2dfb973b2cba4860ca` |
| 12 | `theorem` | [actualSourceComplexTransform_normalized_eq_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualsourcecomplextransform-normalized-eq-endpoint--35e086d51c3bebe29c9ed10b.md) | 151 | `result-track:35e086d51c3bebe29c9ed10b6081cfdb0b2a93634b2ea507dc6608f0971b8696` |
| 13 | `theorem` | [actualSourceComplexTransform_normalized_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/declarations/actualsourcecomplextransform-normalized-tendsto--839c16196d00a3cb2f39f3a1.md) | 192 | `result-track:839c16196d00a3cb2f39f3a15b569e997f845c7de4dc3eeeac925e44a749db24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
