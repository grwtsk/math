# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e2d1db210e52b9011fcf5c78f7d54d0998b7437",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e2d1db210e52b9011fcf5c78f7d54d0998b7437`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-attop--9929cf5ce528b446fd89c5fb.md) | 43 | `result-track:9929cf5ce528b446fd89c5fb8d5995d36cde800cbe625b38365f56066b303a38` |
| 2 | `theorem` | [tendsto_rpow_neg_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-neg-attop--84347aeeba96d3f8956f7453.md) | 57 | `result-track:84347aeeba96d3f8956f7453655da04ed62f4183990bbc73220fe4d7e86a958a` |
| 3 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-attop-of-base-lt-one--26b6bab11e8779d1fd835083.md) | 63 | `result-track:26b6bab11e8779d1fd835083be06a93bc3784e0104c85449943234304c273e79` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-attop-of-base-gt-one--16aa3bf11d565f2e00e21740.md) | 89 | `result-track:16aa3bf11d565f2e00e2174071dadb3500a2104b143e37daf85e843a9ac1a087` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-atbot-of-base-lt-one--366e921d95acf23c86119155.md) | 96 | `result-track:366e921d95acf23c8611915537e4856a6e5587a0f103caac054633a5d6877213` |
| 6 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-atbot-of-base-gt-one--b6fcfd8e20556d5ad3fce070.md) | 103 | `result-track:b6fcfd8e20556d5ad3fce0700477731ef8bb480c616ba5bb448dc6e31b40b023` |
| 7 | `theorem` | [tendsto_rpow_div_mul_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-div-mul-add--0a2f6f22340a4b734a0f511a.md) | 112 | `result-track:0a2f6f22340a4b734a0f511ac0ef0702b842e782b7514f8a4dd36dec952bb290` |
| 8 | `theorem` | [tendsto_rpow_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-div--46c101a72e7d91b440d4f8bc.md) | 130 | `result-track:46c101a72e7d91b440d4f8bc6443397bccbf933a5f945a24f25970a9e66ab21d` |
| 9 | `theorem` | [tendsto_rpow_neg_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-neg-div--cc3df10e1ee987ad9e18f091.md) | 138 | `result-track:cc3df10e1ee987ad9e18f091c69e14d7cc6f71755abf3105494f047147b75327` |
| 10 | `theorem` | [tendsto_exp_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-exp-div-rpow-attop--5c09bb45e7ee311e6b97d1ec.md) | 146 | `result-track:5c09bb45e7ee311e6b97d1ec1f2052d53ce9e0c4bed6b6b0c1afe768a2cd4b7c` |
| 11 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-exp-mul-div-rpow-attop--00576a43f21711217025c32e.md) | 155 | `result-track:00576a43f21711217025c32ec4a42cd1be32c18f5e96a64ad62d2b9d46c0e374` |
| 12 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_0](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-0--2cc863af4236575a98ba0418.md) | 164 | `result-track:2cc863af4236575a98ba04186acf6f4298b6889edd4336ec8ea391810d63d29a` |
| 13 | `theorem` | [NNReal.tendsto_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/nnreal-tendsto-rpow-attop--aa8bceea4e8d6c0863883739.md) | 170 | `result-track:aa8bceea4e8d6c0863883739bae163988d64df7e21706b9948de4b8c659f1655` |
| 14 | `theorem` | [ENNReal.tendsto_rpow_at_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/ennreal-tendsto-rpow-at-top--012e0966e4bb8956ef97c199.md) | 180 | `result-track:012e0966e4bb8956ef97c199fee656f2a1ffb2d813d78bba6c2916ed19335e9c` |
| 15 | `theorem` | [isTheta_exp_arg_mul_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/istheta-exp-arg-mul-im--5d13e823a1dea54a3e1d2cbf.md) | 213 | `result-track:5d13e823a1dea54a3e1d2cbf80587322e487c9a0f3d10868c15c26f20a07545e` |
| 16 | `theorem` | [isBigO_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/isbigo-cpow-rpow--3f9afb08f6fa90ca61f99fdc.md) | 223 | `result-track:3f9afb08f6fa90ca61f99fdc2fb6c1fbaae51d731b0e10a525db1870e50e185b` |
| 17 | `theorem` | [isTheta_cpow_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/istheta-cpow-rpow--fb3187f15c52bea856048fd7.md) | 236 | `result-track:fb3187f15c52bea856048fd7ced8ea9b751e3f55689fb4e09965f9afaa5eb560` |
| 18 | `theorem` | [isTheta_cpow_const_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/istheta-cpow-const-rpow--e5a76f527f1dc556519687a3.md) | 250 | `result-track:e5a76f527f1dc556519687a33653ad90f04136acfbdff5e2374993d000476614` |
| 19 | `theorem` | [IsBigOWith.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/isbigowith-rpow--c7ca857c9e684b13f105d6c5.md) | 272 | `result-track:c7ca857c9e684b13f105d6c548f53cf4e3bdc5debc6bdee5579b58870913ee77` |
| 20 | `theorem` | [IsBigO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/isbigo-rpow--e9f1ba414e078b7364a85f83.md) | 282 | `result-track:e9f1ba414e078b7364a85f8316d2e7712f8091d4a68c4d15e19054c1ec0a7419` |
| 21 | `theorem` | [IsLittleO.rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-rpow--416117223d1150ff39b3fda5.md) | 288 | `result-track:416117223d1150ff39b3fda54a1d5d39957c975cc72733ab6675acf1bb84a640` |
| 22 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-rpow-exp-pos-mul-attop--8f92c146e15ec3c3339fdc18.md) | 301 | `result-track:8f92c146e15ec3c3339fdc18dd2a4b469b456e880904d036d7cbf0661cd46c64` |
| 23 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-zpow-exp-pos-mul-attop--2c5f3ece48cd88c3e2d7782e.md) | 309 | `result-track:2c5f3ece48cd88c3e2d7782e731fd64c7fb3f8589d7c7437fb5fbebdb77977d7` |
| 24 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-pow-exp-pos-mul-attop--ca5ce295059d967dee70fc61.md) | 315 | `result-track:ca5ce295059d967dee70fc6181c4d2d14fcdf8361fc79169ebd0707fb4da0597` |
| 25 | `theorem` | [isLittleO_rpow_exp_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-rpow-exp-attop--a97e0b5cfc00f77dc9d1f77d.md) | 321 | `result-track:a97e0b5cfc00f77dc9d1f77dc476d02002e7b1983d580eb7b798a1fa9c4dd3e1` |
| 26 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-exp-neg-mul-rpow-attop--fa7a2d4d363fa1c95f83dcb1.md) | 326 | `result-track:fa7a2d4d363fa1c95f83dcb1ac7e45afecac6310ff6a3ea553917878f10cc26c` |
| 27 | `theorem` | [isLittleO_log_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-log-rpow-attop--76daf2b5cc5c601220a9cf1a.md) | 338 | `result-track:76daf2b5cc5c601220a9cf1aa6060175e6395db49e6e6680b5da2dd49934dc29` |
| 28 | `theorem` | [isLittleO_log_rpow_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-log-rpow-rpow-attop--0c66c757d5bf7a6c80f6f709.md) | 346 | `result-track:0c66c757d5bf7a6c80f6f709bd6208931a74975c1d632971e091f41ca0a496fa` |
| 29 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-abs-log-rpow-rpow-nhds-zero--a823fe98dc1e86dbad83793f.md) | 365 | `result-track:a823fe98dc1e86dbad83793f7374422e06eab0138abe49d389c34dcee33e1efc` |
| 30 | `theorem` | [isLittleO_log_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/islittleo-log-rpow-nhds-zero--abd0f572fbb544767bd9579f.md) | 374 | `result-track:abd0f572fbb544767bd9579fe02a8c49df9410e337932fe5fc33660cade64d1e` |
| 31 | `theorem` | [tendsto_log_div_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-log-div-rpow-nhds-zero--bcc6b8551513878db9b8dd01.md) | 381 | `result-track:bcc6b8551513878db9b8dd01089c5e11134dbfc57b9a36df861b58d19972c1df` |
| 32 | `theorem` | [tendsto_log_mul_rpow_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/declarations/tendsto-log-mul-rpow-nhds-zero--e5421ca4b8816e890be4bc92.md) | 386 | `result-track:e5421ca4b8816e890be4bc9272832dfdbcf85af091486bedeedc312678b6e0eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
