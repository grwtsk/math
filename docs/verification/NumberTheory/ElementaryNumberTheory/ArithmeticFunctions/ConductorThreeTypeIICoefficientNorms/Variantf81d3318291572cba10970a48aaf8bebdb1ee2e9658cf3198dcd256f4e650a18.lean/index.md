# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ConductorThreeTypeIICoefficientNorms.Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dfd6a331d07998d68d2e7d5d700bf4593184b07`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_vaughanDivisorCoefficient_le_card_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/abs-vaughandivisorcoefficient-le-card-divisors--76ca9fec69c2c178fde0978e.md) | 35 | `result-track:76ca9fec69c2c178fde0978e28bb4d6b749482de07f61a722c2297f2e5e086a5` |
| 2 | `theorem` | [truncatedMobiusDivisorSum_le_divisorCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/truncatedmobiusdivisorsum-le-divisorcount--2677c023a3088c6b231e26f4.md) | 62 | `result-track:2677c023a3088c6b231e26f4fd8a79da4fc58e0fc161d25b557cd46e43d82694` |
| 3 | `def` | [blockLeftEuclideanCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blocklefteuclideancoefficient--06991483347f31fd9810b080.md) | 71 | `declaration-track:06991483347f31fd9810b080b0835958260f4430ef1d54ce7cbf82207137b473` |
| 4 | `def` | [blockRightEuclideanCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blockrighteuclideancoefficient--2f3d574219ea61741bd070e4.md) | 77 | `declaration-track:2f3d574219ea61741bd070e4d45dc04efd130839d08ae8902de37dcdfd062365` |
| 5 | `def` | [leftShellOffset](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/leftshelloffset--aa1a5aeb262f55edabba1741.md) | 81 | `declaration-track:aa1a5aeb262f55edabba174110a0767c383f58a7e0f295209671ee5a00cebe47` |
| 6 | `theorem` | [leftShellOffset_injective](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/leftshelloffset-injective--265df015f00d207a5476fcd1.md) | 85 | `result-track:265df015f00d207a5476fcd10b10d3cae113c384d0f49d5f27c67549eededf16` |
| 7 | `def` | [rightShellOffset](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/rightshelloffset--eb83f393a2cca726660ca05c.md) | 100 | `declaration-track:eb83f393a2cca726660ca05c3791a5e76466f36c9938f0981fd358acde061501` |
| 8 | `theorem` | [rightShellOffset_injective](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/rightshelloffset-injective--f29565596dbdb3d10ccb393e.md) | 104 | `result-track:f29565596dbdb3d10ccb393ec9e1f1dfc69181045ae3c0cebf95377b9e0dd5d7` |
| 9 | `theorem` | [blockLeft_card_le_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blockleft-card-le-scale--0095bbcf049d89c7c2be2d88.md) | 120 | `result-track:0095bbcf049d89c7c2be2d8866336ac4226c957dcaaa04f9fe3722e2a7241b4e` |
| 10 | `theorem` | [blockRight_card_le_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blockright-card-le-scale--cd2be029cfb22a848114e765.md) | 127 | `result-track:cd2be029cfb22a848114e76553e914284af7f0f64d47e9176b5d6b05a3ec104d` |
| 11 | `theorem` | [abs_conductorThreeIntegerValue_cast_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/abs-conductorthreeintegervalue-cast-le-one--815b5618f39429b2330ebfc5.md) | 133 | `result-track:815b5618f39429b2330ebfc54256ea72a4d7951db8bf6285569ea839f512ba20` |
| 12 | `theorem` | [block_index_le_two_mul_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/block-index-le-two-mul-scale--42019b4c8f5d6ec269c728e9.md) | 143 | `result-track:42019b4c8f5d6ec269c728e9c646a1ab9776e60dbf2cd7f73f2a56b40094f5b9` |
| 13 | `theorem` | [two_mul_N_pos_of_block](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/two-mul-n-pos-of-block--e342cac8e945e73b76c34dab.md) | 147 | `result-track:e342cac8e945e73b76c34dabe078ef655546d145f8917f3d40dcdec461ae8264` |
| 14 | `theorem` | [log_two_mul_N_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/log-two-mul-n-nonneg--cfe4e2b0bcfa07e66e51b2a0.md) | 152 | `result-track:cfe4e2b0bcfa07e66e51b2a0ede5d297b0ded237cecb746572d8eaf576607674` |
| 15 | `theorem` | [blockLeftCoefficient_norm_le_log](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blockleftcoefficient-norm-le-log--0f9b09b8217811b384f82d2f.md) | 157 | `result-track:0f9b09b8217811b384f82d2f51d24814e7181aca3f45af2d11925d2f06cde5a5` |
| 16 | `theorem` | [blockRightCoefficient_norm_le_twice_scale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blockrightcoefficient-norm-le-twice-scale--1588d13f1dd8476fb1ffad44.md) | 183 | `result-track:1588d13f1dd8476fb1ffad445b2298939a044e42ec531d973ae8f4b424fddb40` |
| 17 | `theorem` | [sum_blockLeft_norm_sq_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/sum-blockleft-norm-sq-le--73d6ae151105a0bc5e166b24.md) | 205 | `result-track:73d6ae151105a0bc5e166b24e69f4cb6ca2b44dec57481aabf0fea1cbd57f86e` |
| 18 | `theorem` | [sum_blockRight_norm_sq_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/sum-blockright-norm-sq-le--86e1f28a7952192a73f2d6c2.md) | 222 | `result-track:86e1f28a7952192a73f2d6c28440fc184df9a1131777e581797b553a81f3e538` |
| 19 | `theorem` | [conductorThreeVaughanLeft_l2](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/conductorthreevaughanleft-l2--c36e215f929cfe6bf748e3fe.md) | 240 | `result-track:c36e215f929cfe6bf748e3fe42dfdc82ce06a305422fe1d24037c5cd6d94d62d` |
| 20 | `theorem` | [conductorThreeVaughanRight_l2_unconditional](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/conductorthreevaughanright-l2-unconditional--f194dd1b77e60988b06a8e3b.md) | 258 | `result-track:f194dd1b77e60988b06a8e3b43a9954c58f7496a06c153f3bb53976877deea30` |
| 21 | `def` | [DivisorCountSubpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/divisorcountsubpolynomial--8ca1f8cc3e19be4358f20814.md) | 279 | `declaration-track:8ca1f8cc3e19be4358f208149d2dda8effd291e03a217f61f380e296c76f5fc9` |
| 22 | `def` | [divisorCount_subpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/divisorcount-subpolynomial--56bb569293ca8866c54de851.md) | 289 | `declaration-track:56bb569293ca8866c54de8512d0fdfa32a86954ea5900a32fb3cff78e7b9c86d` |
| 23 | `theorem` | [blockRightCoefficient_norm_le_of_divisorCountSubpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/blockrightcoefficient-norm-le-of-divisorcountsubpolynomial--ebd00c633fe2ef105240b69b.md) | 292 | `result-track:ebd00c633fe2ef105240b69b97034a32a18c78c9cf7d0169fbc289953dd1efd3` |
| 24 | `theorem` | [conductorThreeVaughanRight_l2_of_divisorCountSubpolynomial](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/declarations/conductorthreevaughanright-l2-of-divisorcountsubpolynomial--da058c4305afd78ddad2652e.md) | 329 | `result-track:da058c4305afd78ddad2652ed85a2c54d89ff0f2eb234bea194620d7679736ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
