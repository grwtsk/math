# Verification target: GRWTSK.Algebra.LinearAlgebra.BalancedCoreHull.Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c83aa726cff99a7aec0d8c1ec1eaaa00a821347",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c83aa726cff99a7aec0d8c1ec1eaaa00a821347`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Bound` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore--757819cc030fd35de1556051.md) | 71 | `declaration-track:757819cc030fd35de1556051899f7df37c90afaab99019df4b72275dce701587` |
| 2 | `def` | [balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcoreaux--d9bab9c70b9b1d285249cf5a.md) | 75 | `declaration-track:d9bab9c70b9b1d285249cf5a5bc522fdeae5b5df9feb2dbd00b1e2b20fa25522` |
| 3 | `def` | [balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedhull--c9b4932cee105631e73e073b.md) | 79 | `declaration-track:c9b4932cee105631e73e073bcf6b838cb5e690046071c9ff749c99d91b88545b` |
| 4 | `theorem` | [balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-subset--94dd2d310fee4c0fe6f6240b.md) | 84 | `result-track:94dd2d310fee4c0fe6f6240bae03a10856aa0b0ca5238409dbe9f8d3b974371d` |
| 5 | `theorem` | [balancedCore_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-empty--e8e86b8f0bb86f3545ad376b.md) | 87 | `result-track:e8e86b8f0bb86f3545ad376bcd10ac98514da2544744fb92d4327c891ded7970` |
| 6 | `theorem` | [mem_balancedCore_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/mem-balancedcore-iff--d5b2544471287e6f7366e9a7.md) | 90 | `result-track:d5b2544471287e6f7366e9a76519e3450712b43f4d16946d4a61deac1938ae81` |
| 7 | `theorem` | [smul_balancedCore_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/smul-balancedcore-subset--5da18bdc1bbaed0e61b923bb.md) | 93 | `result-track:5da18bdc1bbaed0e61b923bbcd8e93b83db5dfa9fcc3530f6b11ec2a77c55193` |
| 8 | `theorem` | [balancedCore_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-balanced--b03f941fe3055afdd292c051.md) | 100 | `result-track:b03f941fe3055afdd292c051c307bc362a1fc47128e33298dabd0b21d0480f3e` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balanced-subset-balancedcore-of-subset--242b49a96d4a6515adeef7a0.md) | 105 | `result-track:242b49a96d4a6515adeef7a0b7f0d408231f3377ca07d911750e4f8bec848c80` |
| 10 | `lemma` | [Balanced.balancedCore_eq](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balanced-balancedcore-eq--7c5ad157c7a8027c37059d25.md) | 109 | `result-track:7c5ad157c7a8027c37059d259cb7a24810409a1d424772879486bd10cfbc9a50` |
| 11 | `theorem` | [mem_balancedCoreAux_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/mem-balancedcoreaux-iff--be9911828c41ffad7e2fef60.md) | 112 | `result-track:be9911828c41ffad7e2fef60244b25ca7cb17ca63b36dea3cf6d1e6211f7dc66` |
| 12 | `theorem` | [mem_balancedHull_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/mem-balancedhull-iff--635cd10780d4208cf91a1065.md) | 115 | `result-track:635cd10780d4208cf91a1065465bb2b66cf3c02c2a703a5c7714fe0fa2ca51b1` |
| 13 | `theorem` | [Balanced.balancedHull_subset_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balanced-balancedhull-subset-of-subset--a91f5720c6e2bd1cbf74722e.md) | 120 | `result-track:a91f5720c6e2bd1cbf74722e0796226a2d15d5cc8e174e3da10bc8f6ce6b317b` |
| 14 | `theorem` | [balancedHull_mono](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedhull-mono--f41c40a2b39287d352ad5ec0.md) | 127 | `result-track:f41c40a2b39287d352ad5ec0cfa05617b5f83c3b27d893b032e6d00362c24563` |
| 15 | `theorem` | [balancedCore_zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-zero-mem--2f34917081bb83ed5ec61112.md) | 140 | `result-track:2f34917081bb83ed5ec6111272ebf0ad7635f755b9ff7bbae05aadca3ff74c13` |
| 16 | `theorem` | [balancedCore_nonempty_iff](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-nonempty-iff--641976e1a0952a0a88121eae.md) | 143 | `result-track:641976e1a0952a0a88121eaea04a502aae3fe93c9239b6db4cc2ae9298134bcc` |
| 17 | `lemma` | [Balanced.zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balanced-zero-mem--25f9c1dd763823390d3bd6eb.md) | 149 | `result-track:25f9c1dd763823390d3bd6eb74014648875e2517e99edb9c710e1e36a141f9af` |
| 18 | `theorem` | [subset_balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/subset-balancedhull--b5dc3a90887b400419fabbec.md) | 154 | `result-track:b5dc3a90887b400419fabbecee7bfd5f439745f788fe333e34e48201d9d655e9` |
| 19 | `theorem` | [balancedHull.balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedhull-balanced--242567c2e9632104e2f0e147.md) | 157 | `result-track:242567c2e9632104e2f0e147595e8d15813e4110bf4334b419b70d1b00613267` |
| 20 | `theorem` | [balancedHull_add_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedhull-add-subset--8b455a988ee63ee4dc254e48.md) | 165 | `result-track:8b455a988ee63ee4dc254e483350f1dd72ea8cacff2733ce73da85a0a44e781f` |
| 21 | `theorem` | [balancedCoreAux_empty](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcoreaux-empty--4b3688def39dddce29c9d9e3.md) | 179 | `result-track:4b3688def39dddce29c9d9e35dabef99b529e7191083bd4c4dfe1f14129d8bc8` |
| 22 | `theorem` | [balancedCoreAux_subset](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcoreaux-subset--38cfa56a370477d0c914dfd9.md) | 183 | `result-track:38cfa56a370477d0c914dfd9463b0245c7a82de55ff1412a99a074f62a55fe6c` |
| 23 | `theorem` | [balancedCoreAux_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcoreaux-balanced--93be217978e1b3cad9835245.md) | 186 | `result-track:93be217978e1b3cad98352456b4c79744b4ee85474b47e93b5402d11e8dabeca` |
| 24 | `theorem` | [balancedCoreAux_maximal](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcoreaux-maximal--3df14bfb13130e3ca072913f.md) | 199 | `result-track:3df14bfb13130e3ca072913f18beb91762e8abfa56b265a808e9119926be8da0` |
| 25 | `theorem` | [balancedCore_subset_balancedCoreAux](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-subset-balancedcoreaux--31384064a944d39f009eb7d2.md) | 206 | `result-track:31384064a944d39f009eb7d2e4f8449f9a593fad4b1a4936e60505fa2c203410` |
| 26 | `theorem` | [balancedCore_eq_iInter](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-eq-iinter--5afca93e22cb0f6a069e37b9.md) | 209 | `result-track:5afca93e22cb0f6a069e37b9c7c778a2bea47fe4677097032733f75f673a3647` |
| 27 | `theorem` | [subset_balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/subset-balancedcore--13ca3622fc73a0d8cc80e282.md) | 215 | `result-track:13ca3622fc73a0d8cc80e28219447c82f66fcc9e811341c11c2268a795af2538` |
| 28 | `theorem` | [IsClosed.balancedCore](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/isclosed-balancedcore--476d5a0ff41f227510fe2493.md) | 236 | `result-track:476d5a0ff41f227510fe2493c8d8fca05e61fd1e7002484b8b79456679eca81e` |
| 29 | `theorem` | [IsOpen.balancedHull](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/isopen-balancedhull--033f6e3e79ffd72de7647a7a.md) | 251 | `result-track:033f6e3e79ffd72de7647a7a68046873f4ba5b02058c92f89d5d293f1a76f019` |
| 30 | `theorem` | [balancedCore_mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/balancedcore-mem-nhds-zero--0123e5f6cb69f62eb3a99b62.md) | 264 | `result-track:0123e5f6cb69f62eb3a99b62a83cba7f43cb68fd716c5db86c189273ee895253` |
| 31 | `theorem` | [nhds_basis_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/nhds-basis-balanced--b166b54d47034c9d1ed6417b.md) | 286 | `result-track:b166b54d47034c9d1ed6417b1169e146b5d67c770ef99d2ecced79082954d438` |
| 32 | `theorem` | [nhds_basis_closed_balanced](../../../../../mathematics/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/declarations/nhds-basis-closed-balanced--cfaa4502f7f7f6c351d89013.md) | 292 | `result-track:cfaa4502f7f7f6c351d8901359f0c0d16dbde8622d965efd0f58c66c28b63c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
