# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UniformLimitsDeriv.Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ddc330a84ad3e77e17c6e7cabd4f8e8594ee27",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ddc330a84ad3e77e17c6e7cabd4f8e8594ee27`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean.json)

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
| 1 | `theorem` | [uniformCauchySeqOnFilter_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/uniformcauchyseqonfilter-of-fderiv--fdcac6fb3c112c37dad78c9d.md) | 124 | `result-track:fdcac6fb3c112c37dad78c9d86c20b3be059f2335dbe053aae0530dee737f9fa` |
| 2 | `theorem` | [uniformCauchySeqOn_ball_of_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/uniformcauchyseqon-ball-of-fderiv--f0f2a104af774d3eb2ea650b.md) | 188 | `result-track:f0f2a104af774d3eb2ea650b2838f550c8958edfa63313f51eeaaa0bb0569ae4` |
| 3 | `theorem` | [cauchy_map_of_uniformCauchySeqOn_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/cauchy-map-of-uniformcauchyseqon-fderiv--6e018099c96d44736f2c5a24.md) | 238 | `result-track:6e018099c96d44736f2c5a24a2278e5d8f6992e37aaa9de701b95ad094af341b` |
| 4 | `theorem` | [difference_quotients_converge_uniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/difference-quotients-converge-uniformly--6c596e7c1812a5d7b22d72f6.md) | 268 | `result-track:6c596e7c1812a5d7b22d72f63209f094fd5b8b6d4b5c4d9863771d6cebb057e7` |
| 5 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasfderivat-of-tendstouniformlyonfilter--4f22d0c0db490ed2b46eadc3.md) | 318 | `result-track:4f22d0c0db490ed2b46eadc3ac164301c8f144e00132b9bab9c3528ae1f36c32` |
| 6 | `theorem` | [hasFDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasfderivat-of-tendstolocallyuniformlyon--fcbe72c739b615b0ee8d8448.md) | 406 | `result-track:fcbe72c739b615b0ee8d8448e3e86ecb9fcd8f338d849f8fb16354c95ca9c05b` |
| 7 | `theorem` | [hasFDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasfderivat-of-tendsto-locally-uniformly-on--0b5481f1c61a37a931201525.md) | 420 | `result-track:0b5481f1c61a37a93120152532907278aeb23ca05bdfd940c74cbcd26fd4c002` |
| 8 | `theorem` | [hasFDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasfderivat-of-tendstouniformlyon--c91d25621050d3493d9cbb12.md) | 429 | `result-track:c91d25621050d3493d9cbb129caecde6e8b807deaaa15bd5aa8cccf1d2ea12de` |
| 9 | `theorem` | [hasFDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasfderivat-of-tendstouniformly--e42655884c77e0c08745ad83.md) | 438 | `result-track:e42655884c77e0c08745ad83234c460f20d0862d6b93e0dd512ee6ec53d11f31` |
| 10 | `theorem` | [UniformCauchySeqOnFilter.one_smulRight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/uniformcauchyseqonfilter-one-smulright--c18ff2e83440f957f6ef04c5.md) | 461 | `result-track:c18ff2e83440f957f6ef04c5181b793c441f23bde1a502d0aaba01781e4cbf8b` |
| 11 | `theorem` | [uniformCauchySeqOnFilter_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/uniformcauchyseqonfilter-of-deriv--5c29ad13758d556e46cbff86.md) | 469 | `result-track:5c29ad13758d556e46cbff8698cc00152af8359b7faf3fa3453981f89e0599d5` |
| 12 | `theorem` | [uniformCauchySeqOn_ball_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/uniformcauchyseqon-ball-of-deriv--26c3292a96d87004d2de6cbf.md) | 475 | `result-track:26c3292a96d87004d2de6cbf8bcff6d6e20737296ee57bfa2f30379d416571d4` |
| 13 | `theorem` | [hasDerivAt_of_tendstoUniformlyOnFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasderivat-of-tendstouniformlyonfilter--e20539f6ac6c77c0d414c07b.md) | 485 | `result-track:e20539f6ac6c77c0d414c07b1034054fe7614d2fed667133c603b0ebce6f89ad` |
| 14 | `theorem` | [hasDerivAt_of_tendstoLocallyUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasderivat-of-tendstolocallyuniformlyon--e1a33d76485be368608f59ad.md) | 498 | `result-track:e1a33d76485be368608f59ad3e8991d43af75c7cefc75426c85f17930e047312` |
| 15 | `theorem` | [hasDerivAt_of_tendsto_locally_uniformly_on'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasderivat-of-tendsto-locally-uniformly-on--00f7f143ccbe71cc0c16ffef.md) | 511 | `result-track:00f7f143ccbe71cc0c16ffef3846db3ee9e9dcceac72610e6c9c67dc9b9bb0a0` |
| 16 | `theorem` | [hasDerivAt_of_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasderivat-of-tendstouniformlyon--d18bff6b0d9582638344735d.md) | 518 | `result-track:d18bff6b0d9582638344735dbd43f32cf5a423b980a9a6e55f95f106328e6bfc` |
| 17 | `theorem` | [hasDerivAt_of_tendstoUniformly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/declarations/hasderivat-of-tendstouniformly--009bb3a81fc4554e5c8aeaa1.md) | 525 | `result-track:009bb3a81fc4554e5c8aeaa1c23c12ab80164813c7925d7c5b95453fb810ce36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
