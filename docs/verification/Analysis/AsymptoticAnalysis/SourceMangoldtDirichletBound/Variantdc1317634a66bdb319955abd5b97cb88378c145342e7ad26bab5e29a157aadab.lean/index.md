# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceMangoldtDirichletBound.Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a6be7b21517ff5179391855e12078d9659adf2a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a6be7b21517ff5179391855e12078d9659adf2a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtDirichletTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichletterm--4f9e178c2f10a7d5aea01eee.md) | 25 | `declaration-track:4f9e178c2f10a7d5aea01eee13395f4d859d6246ed8ad9942b86513521e6390f` |
| 2 | `def` | [cellMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/cellmajorant--b06f413692804c741fdd5bce.md) | 29 | `declaration-track:b06f413692804c741fdd5bcecedcc038cd6ae34914adc2952d0acbb975d2a224` |
| 3 | `def` | [dirichletBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/dirichletbudget--b5ef71aaa1b0918625a753e4.md) | 33 | `declaration-track:b5ef71aaa1b0918625a753e40ca6a96216706c7702f2969feaac288b713409a7` |
| 4 | `theorem` | [mangoldtDirichletTerm_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichletterm-zero--722de2c7b1c70a21c13fd79f.md) | 36 | `result-track:722de2c7b1c70a21c13fd79f7296996f717fe8f0707643e5163cd9a553a44dd6` |
| 5 | `theorem` | [mangoldtDirichletTerm_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichletterm-one--0c732b86bc0b82a3766156c2.md) | 39 | `result-track:0c732b86bc0b82a3766156c21c9f9fabffd44d789eda49f711bc9e13a1f002f4` |
| 6 | `theorem` | [mangoldtDirichletTerm_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichletterm-nonneg--8cf7033fe17edd0cd1678d42.md) | 43 | `result-track:8cf7033fe17edd0cd1678d42695fcd9be6708f511823024ce12e43fe37048211` |
| 7 | `theorem` | [mangoldtDirichletTerm_le_cellMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichletterm-le-cellmajorant--2ae68ac1c4586708947c553f.md) | 49 | `result-track:2ae68ac1c4586708947c553fc94e50e4666a318c17f3cd327708925c11d4717d` |
| 8 | `theorem` | [cellMajorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/cellmajorant-nonneg--325721f9787fd7b9de51e145.md) | 72 | `result-track:325721f9787fd7b9de51e1459c8c136e6baa395be7febd0d1a34430e4c86735d` |
| 9 | `def` | [majorantPrimitive](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/majorantprimitive--af25ed6bdc49b8a307a6867c.md) | 78 | `declaration-track:af25ed6bdc49b8a307a6867c661e64502a2c6c889db1746a59f90fcfb33c432e` |
| 10 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/majorantprimitive-hasderivat--7496582884dfa84dee1b458c.md) | 82 | `result-track:7496582884dfa84dee1b458c481d12a9a7df141d4489889939efab3df28bd024` |
| 11 | `theorem` | [cellMajorant_continuousOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/cellmajorant-continuouson--922bf8ef487bd6d0d6d3d26b.md) | 98 | `result-track:922bf8ef487bd6d0d6d3d26b9239a0ce4c0ad238290b9ca20265a21d101a2a4f` |
| 12 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/cellmajorant-intervalintegrable--e1b09b843b32eb1c4fa6da9b.md) | 105 | `result-track:e1b09b843b32eb1c4fa6da9b165c92d311f6f4eb518e94a3ff0ee580f4e0ed46` |
| 13 | `theorem` | [majorantPrimitive_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/majorantprimitive-one--8d89f1e895b389e9a6aa69df.md) | 112 | `result-track:8d89f1e895b389e9a6aa69dfe72118155eb8af7b20e7b8bab276dc7819cd051f` |
| 14 | `theorem` | [cellMajorant_integral_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/cellmajorant-integral-eq--0888e0090e15940ded909708.md) | 121 | `result-track:0888e0090e15940ded9097081fe1ee967d7221cffa43ac8d783ae6650bcef50f` |
| 15 | `theorem` | [cellMajorant_integral_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/cellmajorant-integral-le--f5ee67ac3755aa45e7844b0f.md) | 134 | `result-track:f5ee67ac3755aa45e7844b0f8e70ddda5c6e8a36021ca884038fdec3bb78301b` |
| 16 | `theorem` | [mangoldtDirichletTerm_le_cellIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichletterm-le-cellintegral--51bc9dff0fec63e388f181b0.md) | 146 | `result-track:51bc9dff0fec63e388f181b06704d92f171c08cf5f8cdcc3ad519d09a64ebae2` |
| 17 | `theorem` | [mangoldtDirichlet_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichlet-sum-range-le--9ce8958f0c5e6aa171a37859.md) | 164 | `result-track:9ce8958f0c5e6aa171a37859ae208b873dad291232b3e53a9cb7e8a93563fe61` |
| 18 | `theorem` | [mangoldtDirichlet_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichlet-summable--f7508da473437ae06571ffb3.md) | 183 | `result-track:f7508da473437ae06571ffb33b267aab8919a03cdf86c33bbada0de609ae3cfe` |
| 19 | `theorem` | [mangoldtDirichlet_tsum_eq_shift](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichlet-tsum-eq-shift--b6423221006fa1d089a87098.md) | 190 | `result-track:b6423221006fa1d089a87098438724c96a05e75bd20967a10edbb62a77b08505` |
| 20 | `theorem` | [mangoldtDirichlet_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichlet-tsum-le--eb5e82c4467ebbcc4e01ad39.md) | 197 | `result-track:eb5e82c4467ebbcc4e01ad393ee8094de6c8406e33f0e95d0914b3fb593b7ffd` |
| 21 | `theorem` | [tsum_vonMangoldt_div_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/tsum-vonmangoldt-div-rpow-le--2186219fc7a2c72dd2501657.md) | 206 | `result-track:2186219fc7a2c72dd2501657c8c659059301657a9f30d541ec082d4cba29f944` |
| 22 | `theorem` | [movingLine_one_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/movingline-one-lt--4ab74cbd76ba9d9e6ba66d06.md) | 212 | `result-track:4ab74cbd76ba9d9e6ba66d061d40c9de02e4c5784c801bfd92dbe9690229f235` |
| 23 | `theorem` | [mangoldtDirichlet_movingLine_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichlet-movingline-le--92a6b8002d3be13d5259735a.md) | 216 | `result-track:92a6b8002d3be13d5259735ae5c27c94fa6f311ccc0236cde72b3941abe830d1` |
| 24 | `theorem` | [mangoldtDirichlet_movingLine_le_quadratic](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variantdc1317634a66bdb319955abd5b97cb88378c145342e7ad26bab5e29a157aadab.lean/declarations/mangoldtdirichlet-movingline-le-quadratic--5b8e25610966a22d83895bc6.md) | 224 | `result-track:5b8e25610966a22d83895bc6d33e197c3cc9a1ade264913253d9e18bfa6f1819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
