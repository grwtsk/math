# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UniformLimitsDeriv.Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98bee4e5dc8eb57cbd2486e201e26a0df912a9d5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformCauchySeqOnFilter_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/uniformcauchyseqonfilter-of-fderiv--f5d69e9b2336259c4f33c6e9.md) | 116 | `result-track:f5d69e9b2336259c4f33c6e962a57f5dca17d8160128355b1801d2bed93593fe` |
| 2 | `theorem` | [uniformCauchySeqOn_ball_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/uniformcauchyseqon-ball-of-fderiv--86c4bf320c280f931962fa86.md) | 180 | `result-track:86c4bf320c280f931962fa86d40d3f4bc865a194e76ded3d44de72f8414bd807` |
| 3 | `theorem` | [cauchy_map_of_uniformCauchySeqOn_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/cauchy-map-of-uniformcauchyseqon-fderiv--ce5252f1ed541c40fbc8dbbe.md) | 230 | `result-track:ce5252f1ed541c40fbc8dbbe42a668e8810dd9ad8da917c846e7150eb801d039` |
| 4 | `theorem` | [difference_quotients_converge_uniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/difference-quotients-converge-uniformly--16ce7f4c5f53b88975a55c2b.md) | 260 | `result-track:16ce7f4c5f53b88975a55c2b93aafc015a697663187d6df53751dcf7229de59b` |
| 5 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasfderivat-of-tendstouniformlyonfilter--64be9bb1b0d69fbce598404e.md) | 310 | `result-track:64be9bb1b0d69fbce598404ed75630f95e9c575c833ee648928d7867f4dd6ef6` |
| 6 | `theorem` | [hasFDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasfderivat-of-tendstolocallyuniformlyon--250744c6cbcd1458db01fda5.md) | 398 | `result-track:250744c6cbcd1458db01fda5cf8310e0979851e5ffd49dca770ef326e5ebc81e` |
| 7 | `theorem` | [hasFDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasfderivat-of-tendsto-locally-uniformly-on--84328995356d3a89cd4cc762.md) | 412 | `result-track:84328995356d3a89cd4cc76234909ba88d05f89b35f1bfd8a0cb0e69f1039b28` |
| 8 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasfderivat-of-tendstouniformlyon--a7b2656969a973886c04df2e.md) | 421 | `result-track:a7b2656969a973886c04df2e176efffb09aae8d54fd268fbdd143537a092c75c` |
| 9 | `theorem` | [hasFDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasfderivat-of-tendstouniformly--8646f3e3df98d8631fa6de15.md) | 430 | `result-track:8646f3e3df98d8631fa6de15cb4a27064ae78424e77759d90adf63e344c3c5f4` |
| 10 | `theorem` | [UniformCauchySeqOnFilter.one_smulRight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/uniformcauchyseqonfilter-one-smulright--dec271e914bfb4b147f0fa0e.md) | 453 | `result-track:dec271e914bfb4b147f0fa0e6fdc3d55482dc92eb5a060719e9ad429be9b9633` |
| 11 | `theorem` | [uniformCauchySeqOnFilter_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/uniformcauchyseqonfilter-of-deriv--2c9f55ae195eb6e73df8a478.md) | 461 | `result-track:2c9f55ae195eb6e73df8a47828c9a43e2789df809bc3f7fe92bce209ec214557` |
| 12 | `theorem` | [uniformCauchySeqOn_ball_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/uniformcauchyseqon-ball-of-deriv--94a94f9b1a5445bad8ebdbcd.md) | 467 | `result-track:94a94f9b1a5445bad8ebdbcd8ed50f6e8f4dc7b188674960ea3d17877d60e9ea` |
| 13 | `theorem` | [hasDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasderivat-of-tendstouniformlyonfilter--63b258d2efbaa5111ae7425c.md) | 477 | `result-track:63b258d2efbaa5111ae7425c7b84d278ee970c7c94c7364a3c537e3be5324105` |
| 14 | `theorem` | [hasDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasderivat-of-tendstolocallyuniformlyon--cbdcf54c01e605f26925c6d5.md) | 490 | `result-track:cbdcf54c01e605f26925c6d538fa6130fce54a33eeac4fe1b7a44f5cec56275b` |
| 15 | `theorem` | [hasDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasderivat-of-tendsto-locally-uniformly-on--163c6ae034ded937b7627f11.md) | 503 | `result-track:163c6ae034ded937b7627f1114a69c8b7b547932b62f7518e5d1d15531a0ab7c` |
| 16 | `theorem` | [hasDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasderivat-of-tendstouniformlyon--5d028e8ea3f7fd76573f4b44.md) | 510 | `result-track:5d028e8ea3f7fd76573f4b44a0853b7fb29b07f01538e3c63e0276b21880db48` |
| 17 | `theorem` | [hasDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/declarations/hasderivat-of-tendstouniformly--9ae678c8bc77957e5d2776b4.md) | 517 | `result-track:9ae678c8bc77957e5d2776b48a700959dd0001fcf5cbe217222e6ae7b2453660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
