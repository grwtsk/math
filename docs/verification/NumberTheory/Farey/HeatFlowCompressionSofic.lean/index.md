# Verification target: GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "290757773fe6f295c025287d0d673d9d82c773df",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `290757773fe6f295c025287d0d673d9d82c773df`.

Source path: `GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/HeatFlowCompressionSofic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.FactorizationFiber`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrefix](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/isprefix--2588bfb6b9f9de63b1ecc945.md) | 46 | `declaration-track:2588bfb6b9f9de63b1ecc945ab9c172f8549af741d1e5ce3e27236e7c7670975` |
| 2 | `def` | [PrefixFree](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/prefixfree--e44f0d4dd09e77dd4bf9b32a.md) | 52 | `declaration-track:e44f0d4dd09e77dd4bf9b32ae83c101ce6e820d065f817f1e9adcac4ef983cad` |
| 3 | `structure` | [LosslessPrefixCode](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/losslessprefixcode--e81155e2ca0cfae2251dd987.md) | 58 | `declaration-track:e81155e2ca0cfae2251dd987d1e4f2d7583f50546377f27f6fc1ca9e1de152fd` |
| 4 | `theorem` | [LosslessPrefixCode.encode_injective](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/losslessprefixcode-encode-injective--d14cf1763c794dc1be09b614.md) | 65 | `result-track:d14cf1763c794dc1be09b614b1edd13c0af1f316fd792e960e66d6a5f32e7e56` |
| 5 | `theorem` | [LosslessPrefixCode.factorsThrough_encode](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/losslessprefixcode-factorsthrough-encode--83574dfdefe9bcd4fb8a53c3.md) | 77 | `result-track:83574dfdefe9bcd4fb8a53c321101e48e43fa90adc2b39ac68bc3126f3de86db` |
| 6 | `theorem` | [factorsThrough_trans](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/factorsthrough-trans--4b1ce08a7fc0334642af9cf5.md) | 87 | `result-track:4b1ce08a7fc0334642af9cf5b21d9ab9132940e5067fb3cf9a411caa109e00b5` |
| 7 | `def` | [HuffmanLikeCover](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/huffmanlikecover--e257dfa9e28d5ec3b32a7d23.md) | 109 | `declaration-track:e257dfa9e28d5ec3b32a7d23eeeaf2a82334dff2bab41b21f4c6bdadc3b453a5` |
| 8 | `theorem` | [readout_bound_to_process_of_huffmanLikeCover](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/readout-bound-to-process-of-huffmanlikecover--c95551ca2ccd66e26e4a447f.md) | 117 | `result-track:c95551ca2ccd66e26e4a447fce15b5907f9aaf5e4e8c80ca1adf7425e523e2f8` |
| 9 | `theorem` | [no_huffmanLikeCover_of_process_collision](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/no-huffmanlikecover-of-process-collision--169b36a1bd0bdce06988eb62.md) | 129 | `result-track:169b36a1bd0bdce06988eb62bbb460e352216127acbc23443122a605d3258155` |
| 10 | `def` | [SoficThrough](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/soficthrough--8e08de378c3ca0dcf1dea09c.md) | 142 | `declaration-track:8e08de378c3ca0dcf1dea09ccdf15a90c84435d9c138cccc576460b03809b5bb` |
| 11 | `theorem` | [trace_eq_of_soficThrough](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/trace-eq-of-soficthrough--d00a79e9b08028da3d1ae790.md) | 149 | `result-track:d00a79e9b08028da3d1ae79019788f4b34af7e323e48ce277982f16aca1ccf7d` |
| 12 | `theorem` | [not_soficThrough_of_collision](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/not-soficthrough-of-collision--f8b09a97e2ef9b5fb5c42c98.md) | 160 | `result-track:f8b09a97e2ef9b5fb5c42c9893d284867981e7affc74cef9cdf0a3debc6712df` |
| 13 | `structure` | [HeightArithmetic](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/heightarithmetic--ae03092bc7b9404e65a98f09.md) | 173 | `declaration-track:ae03092bc7b9404e65a98f095a4f6d2ebfd8500b84d2a891bdbff74d3585d88e` |
| 14 | `def` | [IsIrrational](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/isirrational--ad7d6c61203d9eef11672194.md) | 179 | `declaration-track:ad7d6c61203d9eef11672194b0034834d6407970e245e590321c279534ea0dfc` |
| 15 | `def` | [IsTranscendental](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/istranscendental--e986005425d8ba66d1b5c174.md) | 184 | `declaration-track:e986005425d8ba66d1b5c1746a95c032d985d858cdb73c5909f23d0cec530745` |
| 16 | `theorem` | [irrational_of_transcendental](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/irrational-of-transcendental--45ab71ad651fe99b583e3aab.md) | 190 | `result-track:45ab71ad651fe99b583e3aab3874d7d332bcb83177a75c4716ec9daad4ef6d72` |
| 17 | `theorem` | [transcendental_of_algebraic_implies_sofic_of_nonsofic](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/transcendental-of-algebraic-implies-sofic-of-nonsofic--be74a007ccf33bea9f4943b0.md) | 200 | `result-track:be74a007ccf33bea9f4943b0720387c9ef02f5f418a86d86ccb5d1e1ac2c3d6e` |
| 18 | `theorem` | [irrational_of_rational_implies_sofic_of_nonsofic](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/irrational-of-rational-implies-sofic-of-nonsofic--218c7cae96713b49d69c1420.md) | 216 | `result-track:218c7cae96713b49d69c14206cc8d78ec7a15e4b19bda6801505dfd697b3fc89` |
| 19 | `def` | [GRHFor](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/grhfor--f748e8f5885613c23001856c.md) | 231 | `declaration-track:f748e8f5885613c23001856cadf317fcefc3ee7eb9d796bf5692a28885367136` |
| 20 | `theorem` | [grh_zero_height_transcendental_of_nonsofic](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/grh-zero-height-transcendental-of-nonsofic--de192ec8cbc870434d0b5702.md) | 238 | `result-track:de192ec8cbc870434d0b57020dc83e2507abd15fbb68b57f3e92b1a324008b66` |
| 21 | `theorem` | [zero_height_irrational_and_grh_transcendental_of_nonsofic](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/zero-height-irrational-and-grh-transcendental-of-nonsofic--4a70bad90dd53f139e400636.md) | 269 | `result-track:4a70bad90dd53f139e400636130d8789c2c05c668eb25dd611cbade13365ce16` |
| 22 | `def` | [ZeroFreeRightOf](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/zerofreerightof--f22364182cf87c727098a6bc.md) | 301 | `declaration-track:f22364182cf87c727098a6bced1e4928fd1ce101b629a5fbe0b72c93472d9096` |
| 23 | `def` | [RefinesFromAbove](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/refinesfromabove--b7d32ef5f3bf5ef0c6469d71.md) | 309 | `declaration-track:b7d32ef5f3bf5ef0c6469d7128ed84e489abea4dccc7630decf3a9462f9aab88` |
| 24 | `def` | [AsymptoticallyFree](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/asymptoticallyfree--dd7f9bd14cb7174082cada57.md) | 315 | `declaration-track:dd7f9bd14cb7174082cada5799092d45091f2d4f623e2d04c70718e02fd24853` |
| 25 | `structure` | [ThreeQuarterRefinement](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/threequarterrefinement--bf7ec51676ef2a757fe4938f.md) | 324 | `declaration-track:bf7ec51676ef2a757fe4938f57798154f7a0dffcd77ee488e09779e5a18bf14d` |
| 26 | `theorem` | [ThreeQuarterRefinement.seed_zeroFree](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/threequarterrefinement-seed-zerofree--a3b40a652a87241587d6898b.md) | 336 | `result-track:a3b40a652a87241587d6898ba08efa52e4ff77798b48d223a2cacfe58dad224e` |
| 27 | `theorem` | [ThreeQuarterRefinement.limit_zeroFree](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/threequarterrefinement-limit-zerofree--d8ca99ed659721b50b185fab.md) | 346 | `result-track:d8ca99ed659721b50b185fab8061b23d09d18f24a171706f8604c0ba18d43b43` |
| 28 | `theorem` | [ThreeQuarterRefinement.asymptotically_free_accounting](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/declarations/threequarterrefinement-asymptotically-free-accounting--b7b8689e58be3b3832f89932.md) | 355 | `result-track:b7b8689e58be3b3832f899322f05994d24ff6a2d07a0a6101fd89867c8df2816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
