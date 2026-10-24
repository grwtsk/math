# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UniformLimitsDeriv.Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d05eff24a158325e4d1973f9d52564d0a59ff77",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d05eff24a158325e4d1973f9d52564d0a59ff77`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Curry` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformCauchySeqOnFilter_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/uniformcauchyseqonfilter-of-fderiv--5c86a2fc23fef59626e3f296.md) | 120 | `result-track:5c86a2fc23fef59626e3f2968953645402de9fef6504c013007a6b6c9af95850` |
| 2 | `theorem` | [uniformCauchySeqOn_ball_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/uniformcauchyseqon-ball-of-fderiv--4c898dadb2c0b56bc0daf4a7.md) | 184 | `result-track:4c898dadb2c0b56bc0daf4a7b423e85ddaf0a7b61004d1413b803b35c2d74ae0` |
| 3 | `theorem` | [cauchy_map_of_uniformCauchySeqOn_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/cauchy-map-of-uniformcauchyseqon-fderiv--50e80b696135a26648230179.md) | 236 | `result-track:50e80b696135a26648230179887ca830fc6f9c775ce094de4411f1df0284e1cb` |
| 4 | `theorem` | [difference_quotients_converge_uniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/difference-quotients-converge-uniformly--df4f1f0de6a044389552dc17.md) | 267 | `result-track:df4f1f0de6a044389552dc1788bc130a35cc25265af5486c780c7cf78b1ffcf1` |
| 5 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasfderivat-of-tendstouniformlyonfilter--2b4bb44ecdbc99e0261c5646.md) | 317 | `result-track:2b4bb44ecdbc99e0261c5646baaab25a74f4ec8b99ca2d337b0e0214d085db52` |
| 6 | `theorem` | [hasFDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasfderivat-of-tendstolocallyuniformlyon--30d41fc62f7cde39365cab2d.md) | 406 | `result-track:30d41fc62f7cde39365cab2da5182184258e07b955f09853b02a5be16ba6c845` |
| 7 | `theorem` | [hasFDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasfderivat-of-tendsto-locally-uniformly-on--0060841ac2c8153c407c1755.md) | 421 | `result-track:0060841ac2c8153c407c1755b42aefe506aa207178aa5dd0984c5e82bd93e350` |
| 8 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasfderivat-of-tendstouniformlyon--b7e3f530d49b0cbfa47e4b5c.md) | 431 | `result-track:b7e3f530d49b0cbfa47e4b5c639b7b1c1d2f1134d406b8a92c9596e560f95f7c` |
| 9 | `theorem` | [hasFDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasfderivat-of-tendstouniformly--5d6eaa83693ed00da1c6e880.md) | 441 | `result-track:5d6eaa83693ed00da1c6e880bb4fa0611427cae4a1e62ca21a332bca43a4430b` |
| 10 | `theorem` | [UniformCauchySeqOnFilter.one_smulRight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/uniformcauchyseqonfilter-one-smulright--bd19d1ed1f6ccff75740e87e.md) | 465 | `result-track:bd19d1ed1f6ccff75740e87e39431743b7921f9f385ef0b138b179ac33b79e47` |
| 11 | `theorem` | [uniformCauchySeqOnFilter_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/uniformcauchyseqonfilter-of-deriv--c7d69c9862531dbdb8d81de4.md) | 487 | `result-track:c7d69c9862531dbdb8d81de48295225f4e4f6a0959f87c4778ecd626ccee1db6` |
| 12 | `theorem` | [uniformCauchySeqOn_ball_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/uniformcauchyseqon-ball-of-deriv--084ba2a192dc5468c02d5a88.md) | 494 | `result-track:084ba2a192dc5468c02d5a88c3b511036de65ed3ca4e11e3e9184951717d5619` |
| 13 | `theorem` | [hasDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasderivat-of-tendstouniformlyonfilter--701492cb98d52de9fb89ca5b.md) | 507 | `result-track:701492cb98d52de9fb89ca5b27c7a2d774d67a01aacad7911aa5add055627263` |
| 14 | `theorem` | [hasDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasderivat-of-tendstolocallyuniformlyon--e2faa8a57357b603776ecd77.md) | 536 | `result-track:e2faa8a57357b603776ecd77bc58330a216cf9adad4858eb06f77f2a638c729f` |
| 15 | `theorem` | [hasDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasderivat-of-tendsto-locally-uniformly-on--d9e29fcf2147ace0b034c30c.md) | 550 | `result-track:d9e29fcf2147ace0b034c30c082bfd87cf11f178605cbe74940396afaf6733d5` |
| 16 | `theorem` | [hasDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasderivat-of-tendstouniformlyon--c5d812384a3f3e21463adbc7.md) | 558 | `result-track:c5d812384a3f3e21463adbc716fece2d434d56c6962a82fa813557899335def7` |
| 17 | `theorem` | [hasDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/declarations/hasderivat-of-tendstouniformly--12737461cdbe6189d821317c.md) | 566 | `result-track:12737461cdbe6189d821317c27d5056150e2f7dcbd326ed94cdef948a7b5b086` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
