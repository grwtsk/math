# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacket.Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64ddef771d4f2a8c004d4b6c9193eaced0d8b23",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64ddef771d4f2a8c004d4b6c9193eaced0d8b23`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePacket](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/finitepacket--d472b5403b0c5b70ebdebecc.md) | 35 | `declaration-track:d472b5403b0c5b70ebdebecc5a2de91bdcf4a94ed521613510ab52226e05542e` |
| 2 | `def` | [expectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation--b6de78c808d6cc24d87e2477.md) | 44 | `declaration-track:b6de78c808d6cc24d87e2477c78c22de446dc31f73e8ef9147b660ab76e8768d` |
| 3 | `def` | [spectralExpectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectralexpectation--5910f552308235ce26700916.md) | 49 | `declaration-track:5910f552308235ce26700916c5c01b38c7769044108f8e76a4ff5fa324c049ec` |
| 4 | `def` | [eventProbability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/eventprobability--c6a339f416a395a1e2134998.md) | 54 | `declaration-track:c6a339f416a395a1e2134998e6639888c09a5481da4cdb6da51db57663f97dc5` |
| 5 | `def` | [spectralEventProbability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectraleventprobability--ef8bf97e7f1467dc2e0eb977.md) | 61 | `declaration-track:ef8bf97e7f1467dc2e0eb9771521e24f11b1959e117026e99000642b0dd4f06f` |
| 6 | `theorem` | [probability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/probability-nonnegative--592b8dcf8c31d7f0b8625bff.md) | 65 | `result-track:592b8dcf8c31d7f0b8625bff4544f210b60df3579814ce9bdf86229e8b91b7f2` |
| 7 | `theorem` | [probability_normalized](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/probability-normalized--afcd2e2a102ad5feb7f13489.md) | 69 | `result-track:afcd2e2a102ad5feb7f13489cb88ec372554dbfc71facf45eb68ea6506b11297` |
| 8 | `theorem` | [expectation_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation-zero--91e751e5e17056cc97cab624.md) | 74 | `result-track:91e751e5e17056cc97cab624ac269eee58f9bfa9f6306c08345eb2962ae31878` |
| 9 | `theorem` | [expectation_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation-one--9b4c734c6ab963835d3a3047.md) | 79 | `result-track:9b4c734c6ab963835d3a3047056472f3062ef7da93c9d9d4778b618501cfc5a4` |
| 10 | `theorem` | [expectation_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation-add--ce3036b51abfddd87cc84adc.md) | 83 | `result-track:ce3036b51abfddd87cc84adc4c6fe223da9e6d1fe040881f61c9f44653404090` |
| 11 | `theorem` | [expectation_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation-smul--51721672a8e05a29a7ee0340.md) | 89 | `result-track:51721672a8e05a29a7ee0340910dff23274ac1cf472361c214da2cfd2f3b3f6c` |
| 12 | `theorem` | [expectation_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation-nonnegative--ea4417de08d556892a8e8130.md) | 99 | `result-track:ea4417de08d556892a8e8130b6de713120b8c68d96879352c70b1cab3ad8c5bd` |
| 13 | `theorem` | [spectralExpectation_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectralexpectation-zero--8390458a2a0e5d2e696afff6.md) | 106 | `result-track:8390458a2a0e5d2e696afff6d3096c42072551c538061e8e32fc8d3a698de63e` |
| 14 | `theorem` | [spectralExpectation_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectralexpectation-one--e4520f7aace5d1f325f7bafd.md) | 111 | `result-track:e4520f7aace5d1f325f7bafdefe90b292e2fa404d0bccf4ffc9e3b7c9ebf37e5` |
| 15 | `theorem` | [spectralExpectation_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectralexpectation-add--3a8be10794070eca5c88fe2f.md) | 115 | `result-track:3a8be10794070eca5c88fe2f80d962344c195c2f1fb0156d9a7795b026313061` |
| 16 | `theorem` | [spectralExpectation_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectralexpectation-smul--b0365af85401a0739067fb36.md) | 121 | `result-track:b0365af85401a0739067fb36f9936de36c2f21a8df7084670d2dace8cdaa8c75` |
| 17 | `theorem` | [eventProbability_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/eventprobability-empty--5db33e4fd742920022bcd7be.md) | 128 | `result-track:5db33e4fd742920022bcd7be8eb0bff488da181fa61766f73c3f9b1d35b0674c` |
| 18 | `theorem` | [eventProbability_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/eventprobability-univ--85f430f2c2694079dc5046d6.md) | 134 | `result-track:85f430f2c2694079dc5046d6f517145c8a87a43bf1bd1a623472fa30da0b7171` |
| 19 | `theorem` | [eventProbability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/eventprobability-nonnegative--39c45d6e8ab2fdf8d94fa93f.md) | 139 | `result-track:39c45d6e8ab2fdf8d94fa93f57af6e58ef68cbc53f54b028a90117cec1092ae8` |
| 20 | `theorem` | [spectralEventProbability_empty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectraleventprobability-empty--52153e0650bee6ab03f2783c.md) | 146 | `result-track:52153e0650bee6ab03f2783cee1da5af12f0e497c92671100854a4adbfb3cb3a` |
| 21 | `theorem` | [spectralEventProbability_univ](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectraleventprobability-univ--d6fd5314b50c5a1c51eb1955.md) | 151 | `result-track:d6fd5314b50c5a1c51eb1955a79ff8a9aa763093b27c81fe1857387612f9c06c` |
| 22 | `theorem` | [spectralEventProbability_nonnegative](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectraleventprobability-nonnegative--176d7dfa9e2bc504bb666228.md) | 155 | `result-track:176d7dfa9e2bc504bb66622827eb73aca27e9528e59a10bc46d1c8c581763feb` |
| 23 | `def` | [mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/mix--549cb8fbef11d9e2aae67012.md) | 170 | `declaration-track:549cb8fbef11d9e2aae67012e8f0137a027b7530b36605f5e965ac37b5e16070` |
| 24 | `theorem` | [mix_spectralValue](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/mix-spectralvalue--9be61f7f5ea849bec0064826.md) | 178 | `result-track:9be61f7f5ea849bec0064826f8891a5db3e481b2e75f331fd2ad9fdbc685c5ed` |
| 25 | `theorem` | [mix_probability](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/mix-probability--087a9631a69a63f88f6c8f8f.md) | 185 | `result-track:087a9631a69a63f88f6c8f8f36e712f18d879222cf869b8575099e7756357b1e` |
| 26 | `theorem` | [mix_probability_normalized](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/mix-probability-normalized--faed25169cab8924efb81f70.md) | 191 | `result-track:faed25169cab8924efb81f707112de786a2eba6ab967a1f8f11d2f492a49aa53` |
| 27 | `theorem` | [expectation_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/expectation-mix--635e6a7ab5b2e516eac4d253.md) | 197 | `result-track:635e6a7ab5b2e516eac4d2537015af85cc1d6684ce279efa44534f56f24e7b85` |
| 28 | `theorem` | [spectralExpectation_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectralexpectation-mix--898694028039038f630c0347.md) | 215 | `result-track:898694028039038f630c0347d80944d402aa738379df679276c2196e6b58f7dc` |
| 29 | `theorem` | [spectralEventProbability_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/spectraleventprobability-mix--727aa4e38da927860ed308a9.md) | 224 | `result-track:727aa4e38da927860ed308a97f3f183cc5b059e26db7784a1880f57cdc939088` |
| 30 | `def` | [fiberEvent](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/fiberevent--8215c9c7a2e6aafa8a51ddec.md) | 231 | `declaration-track:8215c9c7a2e6aafa8a51ddecebf730cfa9535c9f66f5a383287ad349793e0d3f` |
| 31 | `theorem` | [mem_fiberEvent](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/mem-fiberevent--ddd6aeb994eee4a243a89b17.md) | 237 | `result-track:ddd6aeb994eee4a243a89b172e499ce54f51f90f022992539a3e385178312e21` |
| 32 | `theorem` | [eventProbability_mix](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variant8618fbb910d86f5ee52f6819b03a3a123f57515c394dc740e7a2728640b862f7.lean/declarations/eventprobability-mix--4aa8c682767fadb1dda66fb8.md) | 243 | `result-track:4aa8c682767fadb1dda66fb83ef390780f3275cb63aa7e341ebbc2669766823f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
