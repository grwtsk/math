# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Clique.Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c429992d5bdcc76e690d58c9751e16c34dfc15b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c429992d5bdcc76e690d58c9751e16c34dfc15b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isclique--1748d03146571dca3a2e3954.md) | 53 | `declaration-track:1748d03146571dca3a2e395491ed5c99f19a1a95c1616e49aea518246aef4cd9` |
| 2 | `theorem` | [isClique_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isclique-iff--92dfd8a5c16071d53bc5c344.md) | 57 | `result-track:92dfd8a5c16071d53bc5c344e6f35f760f88ed1a14d4e830777fcc9ed72d0b3d` |
| 3 | `theorem` | [isClique_iff_induce_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isclique-iff-induce-eq--681cb01b6eb7ef8c244efedc.md) | 62 | `result-track:681cb01b6eb7ef8c244efedcef83f9e4e214190485cfce5d84973c0ef0ff62b0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/instance--4ecaac601156ddfb08d8892d.md) | 76 | `declaration-track:4ecaac601156ddfb08d8892de41d1d4df575a53810485c60e40f3b7e8928fb49` |
| 5 | `theorem` | [IsClique.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isclique-mono--904f7913d8465cfa5054a6e3.md) | 81 | `result-track:904f7913d8465cfa5054a6e33a64dfe383dab9a46ef58d7b43e3e3431077ed1f` |
| 6 | `theorem` | [IsClique.subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isclique-subset--3ad63067b1f95fd71f08c3f4.md) | 86 | `result-track:3ad63067b1f95fd71f08c3f4a20462b5d8d006d84b5a9a3798f0e49286dfa691` |
| 7 | `theorem` | [isClique_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isclique-bot-iff--7debc2b52142a99c26199296.md) | 92 | `result-track:7debc2b52142a99c26199296a148931c4ac9039283adfe34223ac0c7709118aa` |
| 8 | `structure` | [IsNClique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isnclique--5d72cdbe201fbdb16b0976c6.md) | 109 | `declaration-track:5d72cdbe201fbdb16b0976c6e93c3299179d6bfa4320114e2be16e2c33b608a9` |
| 9 | `theorem` | [isNClique_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isnclique-iff--2855a24fc743900096312eab.md) | 114 | `result-track:2855a24fc743900096312eab29525ea35304d45bb5795689c9953cc74f458344` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/instance--fd61ffbc0790b866496b4479.md) | 118 | `declaration-track:fd61ffbc0790b866496b4479d560088942ddb4d10906477f014e30afd52e5d98` |
| 11 | `theorem` | [IsNClique.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isnclique-mono--85f9106a57160b64253b4db5.md) | 124 | `result-track:85f9106a57160b64253b4db5bb15ec2beec57713719adacc276ceb6fc9262a9e` |
| 12 | `theorem` | [isNClique_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isnclique-bot-iff--0092124a97a34132cdb117fb.md) | 130 | `result-track:0092124a97a34132cdb117fb79a529363245ef4fbbfdb9d738c09633e7b8780b` |
| 13 | `theorem` | [is3Clique_triple_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/is3clique-triple-iff--75baf55624f07ccb3013de67.md) | 139 | `result-track:75baf55624f07ccb3013de677a866fdafc72d474dfeaee90528f8057637854e8` |
| 14 | `theorem` | [is3Clique_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/is3clique-iff--a8d334d2bec418791dff6c67.md) | 145 | `result-track:a8d334d2bec418791dff6c6711073d323697f7fdb0fce170ae8a655768d7d4ef` |
| 15 | `def` | [CliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree--44456faf6105e4f86acb8669.md) | 165 | `declaration-track:44456faf6105e4f86acb8669ee4eab7b0882510d44d2f615700e124955e3d667` |
| 16 | `theorem` | [IsNClique.not_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/isnclique-not-cliquefree--fdab3234634649898dc9fa98.md) | 171 | `result-track:fdab3234634649898dc9fa98dc18e9d57edb49eed4cf1d2b26b3714b79781a97` |
| 17 | `theorem` | [not_cliqueFree_of_top_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/not-cliquefree-of-top-embedding--7ccb3532ab535eb3680a4f65.md) | 175 | `result-track:7ccb3532ab535eb3680a4f657e00937a1b0f374dc77e52b9958788f6a7b1166a` |
| 18 | `def` | [topEmbeddingOfNotCliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/topembeddingofnotcliquefree--3109e172630f9fb25b98345d.md) | 189 | `declaration-track:3109e172630f9fb25b98345d4eabeb38253527ecd5249a901a974dd08250c7a3` |
| 19 | `theorem` | [not_cliqueFree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/not-cliquefree-iff--3589e0c3472a27d203221f12.md) | 201 | `result-track:3589e0c3472a27d203221f12626261f624146a95bd94166a583add502a6ad25c` |
| 20 | `theorem` | [cliqueFree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree-iff--7f96ad114385f71a0174ab27.md) | 205 | `result-track:7f96ad114385f71a0174ab27031abde7578ba323b6cae884bfd4191f5878416d` |
| 21 | `theorem` | [not_cliqueFree_card_of_top_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/not-cliquefree-card-of-top-embedding--229b757e7e56afdb80323efd.md) | 209 | `result-track:229b757e7e56afdb80323efdc76e4f44b92eaa096220b8dfbee569517b386c91` |
| 22 | `theorem` | [cliqueFree_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree-bot--26ebd0fbec16cddffe817f39.md) | 215 | `result-track:26ebd0fbec16cddffe817f393384774dce4b9ee9ca86c1f5d65a928366c6b5db` |
| 23 | `theorem` | [CliqueFree.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree-mono--efe98da8f69b741045477ba6.md) | 221 | `result-track:efe98da8f69b741045477ba62e8d4809b27f019e87999f2b100f479158d79675` |
| 24 | `theorem` | [CliqueFree.anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree-anti--1c99a76ff69c695468f1e8fb.md) | 227 | `result-track:1c99a76ff69c695468f1e8fbb5088576dca3b5308d8844f0816b50031cf2672e` |
| 25 | `theorem` | [cliqueFree_of_card_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree-of-card-lt--dc7fe286717a462ad34972a6.md) | 232 | `result-track:dc7fe286717a462ad34972a6b307854f6cac394533a072364673449efc55b404` |
| 26 | `theorem` | [cliqueFree_completeMultipartiteGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefree-completemultipartitegraph--6978680c5cbda507b41fd4f9.md) | 240 | `result-track:6978680c5cbda507b41fd4f99f8029723a92c0f5ff5c091ab7f508c2f830a981` |
| 27 | `def` | [cliqueSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliqueset--eff5bee9ac45066e389d20a5.md) | 258 | `declaration-track:eff5bee9ac45066e389d20a559df97d3b275a5cd6835f4db835b424a0062c1d2` |
| 28 | `theorem` | [mem_cliqueSet_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/mem-cliqueset-iff--922d47e024e3a9b269b98f22.md) | 262 | `result-track:922d47e024e3a9b269b98f2298d63a325c072e225feec71cea7a1592f9d360a7` |
| 29 | `theorem` | [cliqueSet_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliqueset-eq-empty-iff--e1511f8dc701efe80d6b2e19.md) | 267 | `result-track:e1511f8dc701efe80d6b2e19eb95eef77f3de6bbb756bc40799f7ad40cb2ac86` |
| 30 | `theorem` | [cliqueSet_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliqueset-mono--580c10f9857c34f943d14a62.md) | 279 | `result-track:580c10f9857c34f943d14a62438720d25676840e3bbf8468101a282617ee1af0` |
| 31 | `theorem` | [cliqueSet_mono'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliqueset-mono--167189595aee9da7d99414cb.md) | 283 | `result-track:167189595aee9da7d99414cb845c88f362465d70c71d3c7a15fc7bbc06e0fc14` |
| 32 | `def` | [cliqueFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefinset--68948d4f81ce0de8b55dc0fa.md) | 297 | `declaration-track:68948d4f81ce0de8b55dc0fa081fde3d07b5fa8f9eb8afab869f510093d0a643` |
| 33 | `theorem` | [mem_cliqueFinset_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/mem-cliquefinset-iff--b34506eb99d42d1f9493d408.md) | 301 | `result-track:b34506eb99d42d1f9493d408989623f71ee85798a37584b2f2716510bb9c0050` |
| 34 | `theorem` | [coe_cliqueFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/coe-cliquefinset--ee995ebf777a486d05d9c6c1.md) | 306 | `result-track:ee995ebf777a486d05d9c6c1eaea0b2214277d31a2605da2dae70b055c663c25` |
| 35 | `theorem` | [cliqueFinset_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefinset-eq-empty-iff--7e4081a5a1847fa5d5d018ec.md) | 311 | `result-track:7e4081a5a1847fa5d5d018ecd3e5c4ff951527e8727581672d0d188dc887100a` |
| 36 | `theorem` | [cliqueFinset_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean/declarations/cliquefinset-mono--0891f9f3743c7d5420a54c22.md) | 323 | `result-track:0891f9f3743c7d5420a54c2295a377eeaf82d8f79e8cd192f6762fa08f1372e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
