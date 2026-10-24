# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Summable.Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e56090a42fb6e179274502d8d715e9b30513fc2a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e56090a42fb6e179274502d8d715e9b30513fc2a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [G2_partial_sum_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/g2-partial-sum-eq--5e8e88df42ef01a16668ac65.md) | 56 | `result-track:5e8e88df42ef01a16668ac6564d73c6b30ddd507c35bab810d43bf8acd729632` |
| 2 | `lemma` | [aux_G2_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/aux-g2-tendsto--3b2ad3af4fc154777b302564.md) | 75 | `result-track:3b2ad3af4fc154777b302564c713459a29adab03877c4b385665f7fd3d12db2a` |
| 3 | `lemma` | [hasSum_e2Summand_symmetricIcc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/hassum-e2summand-symmetricicc--171918a0088491bd9a4bc582.md) | 89 | `result-track:171918a0088491bd9a4bc582f4d7b6e9d9102568ed8183613a47d2ddb52bd826` |
| 4 | `lemma` | [summable_e2Summand_symmetricIcc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/summable-e2summand-symmetricicc--1b6a4e1db262a0acf2e90f4b.md) | 94 | `result-track:1b6a4e1db262a0acf2e90f4b85b8f1730d56825b9e7f1f1cfa184c580e694110` |
| 5 | `lemma` | [G2_eq_tsum_cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/g2-eq-tsum-cexp--59d95804e1f023b56330b986.md) | 97 | `result-track:59d95804e1f023b56330b986b8069db83d7ebbce8bdb95413569acccdcd6be8c` |
| 6 | `lemma` | [E2_eq_tsum_cexp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/e2-eq-tsum-cexp--9af2455051269997cc7bb856.md) | 102 | `result-track:9af2455051269997cc7bb856b04783b3396e9baff3c5a3a0b7e71760824bd65a` |
| 7 | `theorem` | [hasSum_qExpansion_E2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/hassum-qexpansion-e2--a70253e166b683359e1ea8ef.md) | 107 | `result-track:a70253e166b683359e1ea8efc114f4ba6553931a777afc1992f02dfb3a2a8e0f` |
| 8 | `theorem` | [tendsto_E2_atImInfty](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tendsto-e2-atiminfty--38a9eb90a207f1bd5d2ad54a.md) | 119 | `result-track:38a9eb90a207f1bd5d2ad54aee3a53c3c7893f3aafddb7d4406723688925cbb8` |
| 9 | `theorem` | [isBoundedAtImInfty_E2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/isboundedatiminfty-e2--307d9245ae5701f7cdc52531.md) | 124 | `result-track:307d9245ae5701f7cdc525314130b40bf0fbc3126187d0e9b036550464c60e7c` |
| 10 | `lemma` | [tendsto_e2Summand_atTop_nhds_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tendsto-e2summand-attop-nhds-zero--35b7471ac1ed1525845ab022.md) | 127 | `result-track:35b7471ac1ed1525845ab022d8c857fe53c0a91d368795474f4114cdc6949a8c` |
| 11 | `lemma` | [hasSum_e2Summand_symmetricIco](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/hassum-e2summand-symmetricico--15b24833adae38e5467bd663.md) | 130 | `result-track:15b24833adae38e5467bd663f43260ed806c1e9440c47ad2ec208e1440e93da9` |
| 12 | `lemma` | [summable_e2Summand_symmetricIco](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/summable-e2summand-symmetricico--005c62d0436ab8754b873251.md) | 135 | `result-track:005c62d0436ab8754b87325140073fa2de9afc74be738366b82d3b4f251bb314` |
| 13 | `lemma` | [G2_eq_tsum_symmetricIco](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/g2-eq-tsum-symmetricico--265201d4ab9409b816d6f46a.md) | 138 | `result-track:265201d4ab9409b816d6f46a10e0d13f7e752ba62a8ff13dfe013f806f9108f2` |
| 14 | `lemma` | [one_div_linear_sub_one_div_linear_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/one-div-linear-sub-one-div-linear-eq--ae712979193dba1a781369fa.md) | 148 | `result-track:ae712979193dba1a781369fa1288e26184116d914058fac77f66d4fb6a857f8e` |
| 15 | `lemma` | [summable_left_one_div_linear_sub_one_div_linear](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/summable-left-one-div-linear-sub-one-div-linear--fe99078b49695a1064f00139.md) | 155 | `result-track:fe99078b49695a1064f0013941c1722cc82be85f03e46ff9fdeb5a326e32a6cb` |
| 16 | `lemma` | [summable_right_one_div_linear_sub_one_div_linear_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/summable-right-one-div-linear-sub-one-div-linear-succ--028255ccf3a3a956d5dbced7.md) | 162 | `result-track:028255ccf3a3a956d5dbced7208b0211f9778f2159c3495f4a12684e3f12bcde` |
| 17 | `lemma` | [aux_sum_Ico_S_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/aux-sum-ico-s-identity--2987a5ff07fd8470ba24bcd0.md) | 172 | `result-track:2987a5ff07fd8470ba24bcd0e8118213b97ec630990cb8843a682ddf2b96af6c` |
| 18 | `lemma` | [tendsto_double_sum_S_act](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tendsto-double-sum-s-act--9d19502d3a869ee658c96b0e.md) | 181 | `result-track:9d19502d3a869ee658c96b0e2e334f6546237bb0f8183497b9a7207c6f01c11a` |
| 19 | `lemma` | [tsum_symmetricIco_tsum_eq_S_act](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tsum-symmetricico-tsum-eq-s-act--c2cef475223f2fec895a7a5a.md) | 190 | `result-track:c2cef475223f2fec895a7a5aa55ecc62795076e3a4d29d8a07984212d9630987` |
| 20 | `lemma` | [telescope_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/telescope-aux--ea11c5d3a8719a51aeda7c4f.md) | 199 | `result-track:ea11c5d3a8719a51aeda7c4f856c89a786b0f64558c8fc0a79e53e4cae022978` |
| 21 | `lemma` | [tsum_symmetricIco_linear_sub_linear_add_one_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tsum-symmetricico-linear-sub-linear-add-one-eq-zero--79b8be4ac6f903000a1e2df0.md) | 205 | `result-track:79b8be4ac6f903000a1e2df0f23e0147516ddeaf1f1a2c500eb2b47133708152` |
| 22 | `lemma` | [aux_tsum_identity_1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/aux-tsum-identity-1--ecd23fa170b5a2d4c0dc6f10.md) | 212 | `result-track:ecd23fa170b5a2d4c0dc6f10630e63a636e5202dfc18df3ce636dc9a5f780e1e` |
| 23 | `lemma` | [aux_tsum_identity_2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/aux-tsum-identity-2--5610b2c8a5b550970764a5f6.md) | 230 | `result-track:5610b2c8a5b550970764a5f643e70bd1703ab2c92b9594b12332cc80f6897d62` |
| 24 | `lemma` | [aux_tendsto_tsum_cexp_pnat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/aux-tendsto-tsum-cexp-pnat--244aafef9e607968c80befa8.md) | 241 | `result-track:244aafef9e607968c80befa874f4b712facfa11299b7e76b14b1ff1e12ca0b80` |
| 25 | `lemma` | [aux_tendsto_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/aux-tendsto-tsum--e4b855da91bbea18d6069716.md) | 249 | `result-track:e4b855da91bbea18d60697161a0964a38ce72dc72d227faad3337ffef4aba912` |
| 26 | `lemma` | [tendsto_tsum_one_div_linear_sub_succ_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tendsto-tsum-one-div-linear-sub-succ-eq--798dfa2afc2e4380f88aebc4.md) | 269 | `result-track:798dfa2afc2e4380f88aebc454bf55b09bf21b752cb242174e8e658381be8256` |
| 27 | `lemma` | [tsum_symmetricIco_tsum_sub_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tsum-symmetricico-tsum-sub-eq--3e31cf91ebee17ffd3488722.md) | 287 | `result-track:3e31cf91ebee17ffd3488722a2dada04beb5c4c3132cf9055fd3f0d3ca03b298` |
| 28 | `lemma` | [tsum_tsum_symmetricIco_sub_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant45cca79ce744ff87d735b7865ed1c5b7789f2136a0ebbd007e3b6d18f0342e3a.lean/declarations/tsum-tsum-symmetricico-sub-eq--6286a05a99233a7fbc059681.md) | 294 | `result-track:6286a05a99233a7fbc05968130368a986e8e29c86f6399509f3a0b268b48fe11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
