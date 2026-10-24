# Verification target: GRWTSK.Algebra.GroupTheory.Abs.Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29f5079a243a1cdb0c26bc3d01d47f9a214309a5",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29f5079a243a1cdb0c26bc3d01d47f9a214309a5`.

Source path: `GRWTSK/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean.json)

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
| 1 | `def` | [mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs--ff54d8c37bcaa5ec6538f9cd.md) | 37 | `declaration-track:ff54d8c37bcaa5ec6538f9cd52e34daf8d37a51bd6b081ee9abe00a27fcd9e53` |
| 2 | `def` | [mabs.unexpander](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-unexpander--a9976d3c689e6e3a58765903.md) | 48 | `declaration-track:a9976d3c689e6e3a58765903d488b76b1fa2166f24d22d6697cd99681a52f02e` |
| 3 | `def` | [abs.unexpander](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/abs-unexpander--4e03442ca25ec34625287949.md) | 58 | `declaration-track:4e03442ca25ec346252879497823f0cab59cf2550774192e11507f4f7937682b` |
| 4 | `lemma` | [mabs_le'](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-le--d93704e3fd0ec03aca3310ed.md) | 65 | `result-track:d93704e3fd0ec03aca3310ed46a67cb12cd5b9eb543185c5b381cc3f715b096a` |
| 5 | `lemma` | [le_mabs_self](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/le-mabs-self--ffbf08120ecc7d8408dcf57b.md) | 67 | `result-track:ffbf08120ecc7d8408dcf57be992d7cecf3aad3d0eb888ac2fc9c8a12137b140` |
| 6 | `lemma` | [inv_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/inv-le-mabs--9d1c5e1de3a94b6d51a4db22.md) | 69 | `result-track:9d1c5e1de3a94b6d51a4db220857a338adec464ce59bda7760a7189b1720eec6` |
| 7 | `lemma` | [mabs_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-le-mabs--07e5c19a6c40dedb7da3fdce.md) | 71 | `result-track:07e5c19a6c40dedb7da3fdce064234a798f15050f2b3abf42663ae78d28c086e` |
| 8 | `lemma` | [mabs_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-inv--7ad71972cdb86d6d9426715e.md) | 74 | `result-track:7ad71972cdb86d6d9426715e747020d1a8a7d5062dba3b9d7a6de6d7fbec7413` |
| 9 | `lemma` | [mabs_div_comm](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-div-comm--bdd0c0fdd8b6c3424dcf96a0.md) | 76 | `result-track:bdd0c0fdd8b6c3424dcf96a077a490b2e7096590c5bb352fe11131946947aaef` |
| 10 | `lemma` | [mabs_ite](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-ite--2965f580a823021f81dad3ee.md) | 78 | `result-track:2965f580a823021f81dad3ee5e55a86f100f5552c02be6cec1aeb1dc6145bbfc` |
| 11 | `lemma` | [mabs_dite](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-dite--c04294581aa720a467b27749.md) | 82 | `result-track:c04294581aa720a467b2774953220456e6a49f4ccfbcc6a79bd845631ba3d1f1` |
| 12 | `lemma` | [mabs_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-of-one-le--af1bd0f14777377f2f391537.md) | 88 | `result-track:af1bd0f14777377f2f39153715878f5ace52cf920b1ee3d8ddac231b99ca1fb9` |
| 13 | `lemma` | [mabs_of_one_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-of-one-lt--be41781959c2c367beab1354.md) | 91 | `result-track:be41781959c2c367beab1354dd8ce99ea6fc22438547d4c06183f7b68c032c44` |
| 14 | `lemma` | [mabs_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-of-le-one--2cbb4c7c7998f91eacb9674e.md) | 93 | `result-track:2cbb4c7c7998f91eacb9674e43e6459a8ba6766099d435dde0f0962a23c4c59e` |
| 15 | `lemma` | [mabs_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-of-lt-one--b658c0f75d5c13eb07cf2a31.md) | 96 | `result-track:b658c0f75d5c13eb07cf2a31ecd878b3c45746aadf642866ee318b4b9e3d82ec` |
| 16 | `lemma` | [mabs_le_mabs_of_one_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-le-mabs-of-one-le--050a0e8b5998b71ef6ca94b4.md) | 98 | `result-track:050a0e8b5998b71ef6ca94b4696b5bce35421fee784f75a5c2db4e0c0a4e4b63` |
| 17 | `lemma` | [mabs_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-one--e8e3142aa5cb375766b46516.md) | 103 | `result-track:e8e3142aa5cb375766b46516e0c230508b4481d0c3276614557380c07e0a0f07` |
| 18 | `lemma` | [one_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/one-le-mabs--f0a00e61f0594a07ddf4b4f6.md) | 107 | `result-track:f0a00e61f0594a07ddf4b4f6b928b741972dd051bef03108388f55f895cb156b` |
| 19 | `lemma` | [mabs_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-mabs--efc019aaedb1bd2aef517b8f.md) | 112 | `result-track:efc019aaedb1bd2aef517b8f7c8016aa7da400ab01e6014dfdc0ff5f5e6fc398` |
| 20 | `lemma` | [mabs_mul_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-mul-le--ce6759862fe3c8ee8e175fc4.md) | 123 | `result-track:ce6759862fe3c8ee8e175fc4dd44111816e77f0ab121382133d430ca3d70ae13` |
| 21 | `lemma` | [mabs_mabs_div_mabs_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-mabs-div-mabs-le--f3b70616c425c55846349f21.md) | 130 | `result-track:f3b70616c425c55846349f21d3c27dd2b8eb1fe78082e1402da3ece358d9ed78` |
| 22 | `lemma` | [sup_div_inf_eq_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/sup-div-inf-eq-mabs-div--0120a12ad723379d487bf688.md) | 140 | `result-track:0120a12ad723379d487bf6887d4ccd11fc7502361a30acdae628d7644448435e` |
| 23 | `lemma` | [sup_sq_eq_mul_mul_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/sup-sq-eq-mul-mul-mabs-div--e0f65b97ff5eeb566573cf0a.md) | 146 | `result-track:e0f65b97ff5eeb566573cf0a23646a352df5a366724bf621839895cc5b8f7768` |
| 24 | `lemma` | [inf_sq_eq_mul_div_mabs_div](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/inf-sq-eq-mul-div-mabs-div--73b316b85aadf4e63196b649.md) | 151 | `result-track:73b316b85aadf4e63196b649032a3f20b77fa7cf1a95a168a0d3e6cd56c8eb9c` |
| 25 | `lemma` | [mabs_div_sup_mul_mabs_div_inf](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-div-sup-mul-mabs-div-inf--c6f0a68c65c0e2bf52a3bb29.md) | 158 | `result-track:c6f0a68c65c0e2bf52a3bb29ee16b8ddec4b8aeb9308250d1d4693ce58468971` |
| 26 | `lemma` | [mabs_sup_div_sup_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-sup-div-sup-le-mabs--89831c147ff3f6dba94fe55c.md) | 177 | `result-track:89831c147ff3f6dba94fe55ce06acc0128d758a3ccccecff58f9869a8734e143` |
| 27 | `lemma` | [mabs_inf_div_inf_le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-inf-div-inf-le-mabs--3b265b9f377c7731be2239e5.md) | 180 | `result-track:3b265b9f377c7731be2239e5b630e7d277f0d15a9777381b0b9e1ab9d816d559` |
| 28 | `lemma` | [m_Birkhoff_inequalities](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/m-birkhoff-inequalities--07cc6960e8b37c85408d0208.md) | 186 | `result-track:07cc6960e8b37c85408d02082f89d2974d528e371eb41069fd0f9c12085100d5` |
| 29 | `lemma` | [mabs_choice](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-choice--76caf1cb1b2e5f8921dfbb23.md) | 196 | `result-track:76caf1cb1b2e5f8921dfbb23d3feb44201fe211001e65f6d4c39097058a710de` |
| 30 | `lemma` | [le_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/le-mabs--aec9641e45886084e3203290.md) | 198 | `result-track:aec9641e45886084e3203290e281454dcb06187778e20a6d9a31d66d6a5821e3` |
| 31 | `lemma` | [mabs_eq_max_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-eq-max-inv--aa914e6ffa2536aba2960f0b.md) | 200 | `result-track:aa914e6ffa2536aba2960f0ba51ce1d97fcf5977e3bf32144ab6a277d3a27900` |
| 32 | `lemma` | [lt_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/lt-mabs--7f87e14ed4434376e9892698.md) | 202 | `result-track:7f87e14ed4434376e98926985b607e272346f5e849d74af17e1dfdae081e2a87` |
| 33 | `lemma` | [mabs_by_cases](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-by-cases--74e09ef40fbcf39440ae4bd0.md) | 204 | `result-track:74e09ef40fbcf39440ae4bd0b646aaf7dec8da03f396bd886536d772c29e158c` |
| 34 | `lemma` | [eq_or_eq_inv_of_mabs_eq](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/eq-or-eq-inv-of-mabs-eq--15b6928358a6bb6e49d9b4ce.md) | 207 | `result-track:15b6928358a6bb6e49d9b4cec94f35db98248bf339c7525fc529ec06e15a1c16` |
| 35 | `lemma` | [mabs_eq_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-eq-mabs--4731678b2a97b6179fc7e1b5.md) | 210 | `result-track:4731678b2a97b6179fc7e1b5101124ea796d6c6d9ca54c5232080f8b8909c76e` |
| 36 | `lemma` | [isSquare_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/issquare-mabs--c755c977618c554ea41251c3.md) | 215 | `result-track:c755c977618c554ea41251c325f9dbde218d8dd389a2ed36c41fa164a3772888` |
| 37 | `lemma` | [lt_of_mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/lt-of-mabs-lt--f60f681399d35b0a1eab0d26.md) | 218 | `result-track:f60f681399d35b0a1eab0d2647177b5ac694f893c6e2779153efe709210aa6b2` |
| 38 | `lemma` | [map_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/map-mabs--0c928410de823044caf49bf2.md) | 220 | `result-track:0c928410de823044caf49bf278c810c703b2ef79e067b33bbfe6f21a337c780d` |
| 39 | `lemma` | [one_lt_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/one-lt-mabs--79c87084346aef97374fe261.md) | 227 | `result-track:79c87084346aef97374fe261ac95dfca3038e8b38c03809f246c304c0a82171d` |
| 40 | `lemma` | [one_lt_mabs_pos_of_one_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/one-lt-mabs-pos-of-one-lt--88a40571de0df8dff2cb382b.md) | 233 | `result-track:88a40571de0df8dff2cb382b57e703b44f49d43c7708c3ed9d607aade0aad14e` |
| 41 | `lemma` | [one_lt_mabs_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/one-lt-mabs-of-lt-one--943e7d9ab57fde661d450814.md) | 236 | `result-track:943e7d9ab57fde661d450814347d4e7beb0467200baab523cfc5ab2135cae436` |
| 42 | `lemma` | [inv_mabs_le](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/inv-mabs-le--8d03f13ed9cef8774e34f6a9.md) | 239 | `result-track:8d03f13ed9cef8774e34f6a9798d4d2e7c14388706d53bd1e330246a05387e5d` |
| 43 | `lemma` | [one_le_mul_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/one-le-mul-mabs--dedfaba9f50265ad8681d6ef.md) | 244 | `result-track:dedfaba9f50265ad8681d6ef5e6e209bc1e6c05c692afa3e611dfe383e61e0f9` |
| 44 | `lemma` | [inv_mabs_le_inv](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/inv-mabs-le-inv--6c77b108258811c5ba11d43a.md) | 247 | `result-track:6c77b108258811c5ba11d43a4b11cf93c5dddbc5d38bdabd90cf8c9452fb1ee2` |
| 45 | `lemma` | [mabs_ne_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-ne-one--f4d1d2b619a67b553e814722.md) | 251 | `result-track:f4d1d2b619a67b553e8147225f8d4791349c9ef3d652f68707e6dadd323cd40b` |
| 46 | `lemma` | [mabs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-eq-one--353d0c2000d8a4d6752387c6.md) | 254 | `result-track:353d0c2000d8a4d6752387c67f06d53d77210b0fe74a54461e26f7c1ca31233c` |
| 47 | `lemma` | [mabs_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-le-one--f9e7a5744a2dfa3db51aac39.md) | 256 | `result-track:f9e7a5744a2dfa3db51aac39e81a9b6e1d11d5264e67da3922002e4499dfa40c` |
| 48 | `lemma` | [mabs_le_mabs_of_le_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-le-mabs-of-le-one--e0c2939473e0e85f9e9d59c7.md) | 259 | `result-track:e0c2939473e0e85f9e9d59c730269108b75f781b71ad86c6d75ed7e55710a6c6` |
| 49 | `lemma` | [mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-lt--cbd6e74a197f48dace572238.md) | 262 | `result-track:cbd6e74a197f48dace572238161c4322968e8f5e8c29ae430f6caddb48cf68aa` |
| 50 | `lemma` | [inv_lt_of_mabs_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/inv-lt-of-mabs-lt--6a271f4ab0e265ddf14560d3.md) | 265 | `result-track:6a271f4ab0e265ddf14560d363a931fd4c0d2cc0640501b0d74a4a634c016c08` |
| 51 | `lemma` | [max_div_min_eq_mabs'](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/max-div-min-eq-mabs--dcaa588d3b02a9af78680240.md) | 267 | `result-track:dcaa588d3b02a9af786802409675835ff7e69868577940b94b28385ac6c0554f` |
| 52 | `lemma` | [max_div_min_eq_mabs](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/max-div-min-eq-mabs--5abb7a647e522f877091a04f.md) | 274 | `result-track:5abb7a647e522f877091a04fd8ba696c4bf85f2a006c93e80d529cfafd1a47ac` |
| 53 | `lemma` | [mabs_div_lt_of_lt_lt](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-div-lt-of-lt-lt--da6aa02b8b80cb8638624f42.md) | 277 | `result-track:da6aa02b8b80cb8638624f4239bd6efa3b34b3ee6c178a9957e0dc4514be4faf` |
| 54 | `def` | [IsSolid](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/issolid--65c4c9be838e3fb5e12e6234.md) | 289 | `declaration-track:65c4c9be838e3fb5e12e62340a3fa6e0e348390a90ec7d79f08a0a31d69c624d` |
| 55 | `def` | [solidClosure](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/solidclosure--88768721d847ec7cfd0d4549.md) | 292 | `declaration-track:88768721d847ec7cfd0d4549af7891e069acd8a915d819a7a7c296400533a4af` |
| 56 | `lemma` | [isSolid_solidClosure](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/issolid-solidclosure--1db57df3bc85517158cf37bb.md) | 294 | `result-track:1db57df3bc85517158cf37bba2d4ed1731632c6b2028ce257fa57d4c69911a37` |
| 57 | `lemma` | [solidClosure_min](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/solidclosure-min--29758746c2da7a905289e359.md) | 297 | `result-track:29758746c2da7a905289e3590ae72eb8772411e0b1927399457c16844c1b74a8` |
| 58 | `lemma` | [mabs_apply](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-apply--ba0513f5ebc979052ef9f1e5.md) | 307 | `result-track:ba0513f5ebc979052ef9f1e5b0753538984b256ebbb32ad70645ae36d7ee82c8` |
| 59 | `lemma` | [mabs_def](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-def--57dd500ee60a87707df8cd8d.md) | 310 | `result-track:57dd500ee60a87707df8cd8df8729e653ae86786424c828399de0e87b6ab2cb4` |
| 60 | `lemma` | [mabs_eq_one](../../../../../mathematics/Algebra/GroupTheory/Abs/Variantc76d2b000588b29088d3cd060d2e0c72815045825c4a2ebfaa5b0509236cc708.lean/declarations/mabs-eq-one--bba1784387062d44eb8a5cd3.md) | 313 | `result-track:bba1784387062d44eb8a5cd385d6243f899d66b1164968157136fe20fbb61c95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
