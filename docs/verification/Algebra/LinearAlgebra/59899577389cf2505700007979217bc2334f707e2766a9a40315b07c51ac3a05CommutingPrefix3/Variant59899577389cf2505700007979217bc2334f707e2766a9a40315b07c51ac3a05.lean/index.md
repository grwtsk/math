# Verification target: GRWTSK.Algebra.LinearAlgebra.59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3.Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aed05ade22852be68b71cae82a9a31a8c81ff3e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aed05ade22852be68b71cae82a9a31a8c81ff3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionplus--8fcb9c8be8fd23529522e0f5.md) | 37 | `declaration-track:8fcb9c8be8fd23529522e0f52ca8cb3ccacc69f37f4454a01fa940ba111f82d5` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionminus--06ca6e68728e30c7d637bad9.md) | 41 | `declaration-track:06ca6e68728e30c7d637bad9cb7c81ed549ca979e85621b7e5dad6421200a2d6` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionplus-apply--196da012ef1fd56fdf026dda.md) | 45 | `result-track:196da012ef1fd56fdf026dda10f4599bf67e2f01a39f22b80c213a8eede81c4c` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionminus-apply--69b7b4d21cee4e365a2111f1.md) | 50 | `result-track:69b7b4d21cee4e365a2111f1f1ffa14023658c65080ea2c47c9efd2147cc2044` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involution-projection-decomposition--122c586734d8f56c20aa4f4d.md) | 55 | `result-track:122c586734d8f56c20aa4f4d67bdf194aca982226bad66e062a4298e0a024554` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionplus-idempotent--e97ccf14f4d62aee12320253.md) | 62 | `result-track:e97ccf14f4d62aee1232025390ad4cd15910a354ada80fb0797e87b888d69fe3` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionminus-idempotent--d31314ddd9a74d988c600ee1.md) | 70 | `result-track:d31314ddd9a74d988c600ee16082acfda3e3a5365883e3f594d9016a9113a5d9` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionplus-after-minus--b929fd44d2ad2a9e28d0b8f2.md) | 78 | `result-track:b929fd44d2ad2a9e28d0b8f238c9d4f16b5fc72d3c06680f011fdf4e12b0d8ce` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involutionminus-after-plus--9392eef44b506aef3928a91e.md) | 85 | `result-track:9392eef44b506aef3928a91e8d17b09eb5d382cabba79f746a1d2e724f1d7d36` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involution-on-plus--61095232da1a612c374773d3.md) | 92 | `result-track:61095232da1a612c374773d35a96f2341cd9b3a19b0f95c63c1e8dce9922cb71` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/involution-on-minus--9559c2144339779af35a7f01.md) | 99 | `result-track:9559c2144339779af35a7f01f694859a359b2458dce89cee9fbf56503c7e7268` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/commutinginvolutions--581ae1e48366e28125edc4ef.md) | 106 | `declaration-track:581ae1e48366e28125edc4ef20ac3d3f8987754406fb1b78e6585678f7b3b0ef` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/plusplus-commute--f949a4cc3cdcbe176fe1bcbe.md) | 118 | `result-track:f949a4cc3cdcbe176fe1bcbec1867d0af6f401f22a32327332ffcff0902ca5aa` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/plusminus-commute--043b5151ba425919ec26fe9d.md) | 126 | `result-track:043b5151ba425919ec26fe9d1fa0059a97db239a240d68d5718c5f6fe0b2132c` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/minusplus-commute--85afc5819f24549c90480687.md) | 134 | `result-track:85afc5819f24549c9048068769de78e163ea4079f4c606a29da032d62d42d0f3` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/minusminus-commute--90eaed0506d6c0f40925b4d9.md) | 142 | `result-track:90eaed0506d6c0f40925b4d9ab45948cb9106aab05ab0497e57f3ea146a31dc3` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpp--759b3bf938a837b9675cde4c.md) | 150 | `declaration-track:759b3bf938a837b9675cde4cc1f96ca62c6df2ba659909983776551a79f6a3f5` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpm--d2663c1bbb843941729f2b40.md) | 154 | `declaration-track:d2663c1bbb843941729f2b4060cad68361c6e1d8f3ce1cd87b9013527bdc4579` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormp--1603cc997b84b7931f1b44a2.md) | 158 | `declaration-track:1603cc997b84b7931f1b44a2cec214104fd2b663418a2c5bd2586cd32323c767` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormm--2a0e478c3825a4c15f944964.md) | 162 | `declaration-track:2a0e478c3825a4c15f9449642230271163fa0bcf6a76e61ac587a756e8285f95` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpp-apply--b2a22065f0aa7bf5734251ea.md) | 166 | `result-track:b2a22065f0aa7bf5734251eaeb1fb8b34a45268bc72c9b323e05e7a6a4e5299a` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpm-apply--f8ebe1379c414adde5f2ea40.md) | 172 | `result-track:f8ebe1379c414adde5f2ea400fbb8e79faf25d280854ebfd5758ca3fe2594003` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormp-apply--bc8fd88bd1524cfe22dae9d0.md) | 178 | `result-track:bc8fd88bd1524cfe22dae9d0971609933ceee5b30497cb3ff94956d92b17ca38` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormm-apply--86c5815c61111b85d66d33bc.md) | 184 | `result-track:86c5815c61111b85d66d33bcadd1ff981995ff2d67799f37e4dc58c1168f8db7` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/idempotent-comp-of-commute--9799f45637cc9d88b200d861.md) | 189 | `result-track:9799f45637cc9d88b200d8616324e9064e43e590fb32e1736b929841eef13e8e` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpp-idempotent--5919512f794010541f89d671.md) | 199 | `result-track:5919512f794010541f89d67140bd8e1dc3895e8c2e2851c91fe203bd0dbb504d` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpm-idempotent--b6c438ff52a77832b9cd970f.md) | 208 | `result-track:b6c438ff52a77832b9cd970fff0bc80a60b268dc63a9df85b90a0d520c9f3cc6` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormp-idempotent--6e6034c61da4283889dc036e.md) | 217 | `result-track:6e6034c61da4283889dc036e822a725622cdf43b56b90b5020b6c5fe7f274833` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormm-idempotent--660c3c4727a30eeb6af43468.md) | 226 | `result-track:660c3c4727a30eeb6af434686b01c8c49f74878a8ff65477d7ef3a9e56630bcc` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/four-sector-decomposition--e70df1d09f70bcc0b7703e1b.md) | 235 | `result-track:e70df1d09f70bcc0b7703e1bef754fa3105fb4aa74d16bd933f993c640bfbe9f` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpp-after-pm--78ca806c3d8c90e42cec4a98.md) | 242 | `result-track:78ca806c3d8c90e42cec4a9880ff4342feaf18e3447fbd3df23d5e4933142fc2` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpm-after-pp--dbb75b25bdec63fda98bec26.md) | 253 | `result-track:dbb75b25bdec63fda98bec26babe881c6d1709ab35019cb48615f6562a6b9acc` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpp-after-mp--6b7ebc3885f15c78eb5c218e.md) | 264 | `result-track:6b7ebc3885f15c78eb5c218e28cd88ab40d1954cdb42223fe9db0d1500a75335` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormp-after-pp--6a22bc6c169e42a1eb774e13.md) | 274 | `result-track:6a22bc6c169e42a1eb774e1330469b03db01cb1db229d03a80272b4574f21459` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectorpp-after-mm--9e2f734c1d659f089d5b1e32.md) | 284 | `result-track:9e2f734c1d659f089d5b1e32ade5d880723ba7d0d377fb5534c97253316d7d6a` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05.lean/declarations/sectormm-after-pp--a63ec6838145bcc4188e6d0b.md) | 294 | `result-track:a63ec6838145bcc4188e6d0b46b88fd06b708e40ca44b300c87031336beda297` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
