# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceMainTermScaleDerivative.Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40f91016377b90ced05186d69ecec134f473855c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40f91016377b90ced05186d69ecec134f473855c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRegularScaleProfiles` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlationScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/correlationscalederivative--ef4fe94e082e7a24e9ee6353.md) | 39 | `declaration-track:ef4fe94e082e7a24e9ee635339c290c36ae1ee81250384f2ca2c972c98c47147` |
| 2 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourcecorrelation-hasderivat-scale--b93c52296c4c94ac3b434009.md) | 43 | `result-track:b93c52296c4c94ac3b4340099b3e27ed264b748e057b9436bd732f8978b1353a` |
| 3 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourcecorrelation-contdiffat-scale--4633e72d7b29bc81610d4da5.md) | 55 | `result-track:4633e72d7b29bc81610d4da53869983616d96e76ebd742fd7c2ad2a69a71a2b0` |
| 4 | `def` | [diagonalCoefficientDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/diagonalcoefficientderivative--233c2db216d61813fe49e00d.md) | 66 | `declaration-track:233c2db216d61813fe49e00d31d6f9c41b9c0cd7ec33f11c3ec79682b7e1125e` |
| 5 | `theorem` | [diagonalMainCoefficient_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/diagonalmaincoefficient-hasderivat--39b177fb4910a8c9261284a5.md) | 70 | `result-track:39b177fb4910a8c9261284a5ff2e419d94be65f6ed5d16b405d370d630903664` |
| 6 | `theorem` | [diagonalMainCoefficient_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/diagonalmaincoefficient-contdiffat--e48c9ea09b81bf64b4fa84b5.md) | 80 | `result-track:e48c9ea09b81bf64b4fa84b5bedba0ca22f6927447e6e51ff9e3421b792a47b1` |
| 7 | `def` | [normalizationMainDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/normalizationmainderivative--a926db0a355c91b8321b8f3f.md) | 87 | `declaration-track:a926db0a355c91b8321b8f3fee6925253cb2f4227c599350d9c3ee56f6550f20` |
| 8 | `theorem` | [normalizedMain_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/normalizedmain-hasderivat--8e394853ce3e56a89cfda4a8.md) | 92 | `result-track:8e394853ce3e56a89cfda4a8fb81d372757007fff01c3ddc8a188f82b15cddd5` |
| 9 | `theorem` | [normalizedMain_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/normalizedmain-contdiffat--f68e43151f340b0fe3e115a4.md) | 101 | `result-track:f68e43151f340b0fe3e115a45b96fecb2b4fe87ac0f69aa90e4776adbf95c54d` |
| 10 | `def` | [plainWeightScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/plainweightscalederivative--39a1681635bdb0d24a8fca5f.md) | 106 | `declaration-track:39a1681635bdb0d24a8fca5f41d7e5d141e9939f1806512209460c71c2013df0` |
| 11 | `theorem` | [sourcePlainWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourceplainweight-hasderivat--5e07340f427c10330d7bea7a.md) | 110 | `result-track:5e07340f427c10330d7bea7a3c9216876ae03dcd045348978f597bd78d0abb78` |
| 12 | `theorem` | [sourcePlainWeight_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourceplainweight-contdiffat--30a573ca0cf94e530740148a.md) | 115 | `result-track:30a573ca0cf94e530740148a7ba774747067a282966a1c220eb58bb363a27f0b` |
| 13 | `def` | [sourceKernelScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourcekernelscalederivative--ad9b25b95269f1dfc9d61668.md) | 120 | `declaration-track:ad9b25b95269f1dfc9d616683c943911d3d47348518972022ae9408bc43fa884` |
| 14 | `theorem` | [sourceKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourcekernel-hasderivat--bf40b13a16896f81bc8f6ba3.md) | 124 | `result-track:bf40b13a16896f81bc8f6ba3574ac1eb8ca2c1e35a5a7931c040a3c8c106d874` |
| 15 | `theorem` | [sourceKernel_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/sourcekernel-contdiffat--8a42fdfc25e1d476abee583d.md) | 129 | `result-track:8a42fdfc25e1d476abee583d1011c441c2bffa592faaf7304adaeafee879a43a` |
| 16 | `def` | [plainOffDerivativeAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/plainoffderivativeat--191dbcbe8adab54e9200a17d.md) | 134 | `declaration-track:191dbcbe8adab54e9200a17da3ba60f6e55458b1d7f3555f5390aa0ad5c47bd2` |
| 17 | `theorem` | [plainOffAt_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/plainoffat-hasderivat--6d514877a1e126dea4f1449e.md) | 138 | `result-track:6d514877a1e126dea4f1449eb2abf84b5bd0c7fc50d25cfe3a9d22fc0bbf0977` |
| 18 | `theorem` | [plainOffAt_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/plainoffat-contdiffat--b653c6a71936de4cd6ef2ae1.md) | 155 | `result-track:b653c6a71936de4cd6ef2ae126e0bdec25ed570c2d427ba4f76b6cbba60066b5` |
| 19 | `def` | [shortMangoldtDerivativeAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/shortmangoldtderivativeat--8dbf3dff16c98426e20d8f82.md) | 168 | `declaration-track:8dbf3dff16c98426e20d8f82f56e47f35d5622c01c2a929225c6748851ca6986` |
| 20 | `theorem` | [shortMangoldtAt_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/shortmangoldtat-hasderivat--7709a3d2f74793bcc8753fb0.md) | 172 | `result-track:7709a3d2f74793bcc8753fb09f9ce49ec343ea5234278cc783673caf6e61af4d` |
| 21 | `theorem` | [shortMangoldtAt_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantee97f9b90a8ed1f2b6a1097c81d811a947e6f103f06f88689b649e5ac5b01088.lean/declarations/shortmangoldtat-contdiffat--1b2c10e814048f93a555881d.md) | 179 | `result-track:1b2c10e814048f93a555881d8ed9b9b5bd06d610e61c79d331a4d0fc188a309e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
