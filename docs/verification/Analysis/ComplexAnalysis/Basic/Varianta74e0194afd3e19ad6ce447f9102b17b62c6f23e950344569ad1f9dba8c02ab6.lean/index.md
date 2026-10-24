# Verification target: GRWTSK.Analysis.ComplexAnalysis.Basic.Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8fdda0b73ca2e5abe8fe8904cda5d157de2d378",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8fdda0b73ca2e5abe8fe8904cda5d157de2d378`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/meromorphicat--e3396827516762ec8b20a086.md) | 29 | `declaration-track:e3396827516762ec8b20a086edbc4b1e4a2add509f3c256db04fa53e8d80df60` |
| 2 | `lemma` | [AnalyticAt.meromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/analyticat-meromorphicat--6878a50ac2c3e929ab631bc1.md) | 33 | `result-track:6878a50ac2c3e929ab631bc1a66f3416126c4b5aa39f7a7e1619be48d7e8c7bc` |
| 3 | `theorem` | [MeromorphicAt.eventually_eq_zero_or_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/meromorphicat-eventually-eq-zero-or-eventually-ne-zero--9f7ec8322ae2a7fac6f40d75.md) | 40 | `result-track:9f7ec8322ae2a7fac6f40d752e6633661e5f23252b0956cb76806da3f4c0b1a6` |
| 4 | `lemma` | [id](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/id--cbca544c9375b63976aa51c9.md) | 55 | `result-track:cbca544c9375b63976aa51c9507015a5a45b0349027cee9916235fd5160b8a5b` |
| 5 | `lemma` | [const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/const--dadc4441cb2c4ad671aa3e10.md) | 58 | `result-track:dadc4441cb2c4ad671aa3e10f8bc4388984d9a5616c9c6d39495ceff4aaea65c` |
| 6 | `lemma` | [add](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/add--70c172ffbdc678a964c0e245.md) | 62 | `result-track:70c172ffbdc678a964c0e2456789126c28f4c9067df0d51aa85f29ac12f422b1` |
| 7 | `lemma` | [fun_add](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-add--aa396a3329d7d1cef5d67572.md) | 76 | `result-track:aa396a3329d7d1cef5d675722af298c7ac8721d17f71cf2be692aff71cf70e0c` |
| 8 | `lemma` | [smul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/smul--d4c264b91c188a18655e30b0.md) | 83 | `result-track:d4c264b91c188a18655e30b04a6a9c19c27d3bce50960e776e0ad67f897b28bd` |
| 9 | `lemma` | [fun_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-smul--6c9f1c1c4585754f0c6bddb2.md) | 93 | `result-track:6c9f1c1c4585754f0c6bddb2cf2002af9b07effc34e444275732e09460494635` |
| 10 | `lemma` | [mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/mul--3fc6febbf4aa38dff19a4a9c.md) | 100 | `result-track:3fc6febbf4aa38dff19a4a9c1e124129697f953a12589fa5ce337281353897ec` |
| 11 | `lemma` | [fun_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-mul--e692505311cc75b4d46e8035.md) | 105 | `result-track:e692505311cc75b4d46e8035e2a87884f89f36ced12e39084b3d3000297f0a40` |
| 12 | `theorem` | [prod](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/prod--b59016f42db031cf9482e171.md) | 113 | `result-track:b59016f42db031cf9482e171288c4fd03e0d0a44841e63f04dbee54c37b3f050` |
| 13 | `theorem` | [fun_prod](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-prod--22f5194b6b467f7452ec3d70.md) | 127 | `result-track:22f5194b6b467f7452ec3d70e79cf64a31075db51f150dbf423ad7d64e45f1ae` |
| 14 | `lemma` | [neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/neg--de098c24a1bd40a3900b19f7.md) | 134 | `result-track:de098c24a1bd40a3900b19f75a705389f7240dcb36530f25ce1e541503579e12` |
| 15 | `lemma` | [fun_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-neg--2dec4a047be4cf74ab1cd68d.md) | 140 | `result-track:2dec4a047be4cf74ab1cd68d8f5669b8e645244b232bbd3e239c80329b2ded35` |
| 16 | `lemma` | [neg_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/neg-iff--953d84ef0299f388eb932f52.md) | 146 | `result-track:953d84ef0299f388eb932f52e2bd9f5d29f43bcd96f7a89b8d201f59594dc83f` |
| 17 | `lemma` | [sub](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/sub--fbea4bfa196aecd58123f6af.md) | 151 | `result-track:fbea4bfa196aecd58123f6af9a8abfb315da4741f4b2ec31ab158b37d9e8c4b4` |
| 18 | `lemma` | [fun_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-sub--271920e7e24a198d45edfeb9.md) | 158 | `result-track:271920e7e24a198d45edfeb9cbdb6f9d00f72d5e22e0543f69be221b0b89f584` |
| 19 | `lemma` | [congr](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/congr--e03f6e8df11287b45d8c6500.md) | 166 | `result-track:e03f6e8df11287b45d8c65000737528a27495ef2a7a73641edca719a3400b172` |
| 20 | `lemma` | [meromorphicAt_congr](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/meromorphicat-congr--ba96038607888107e0399f0e.md) | 181 | `result-track:ba96038607888107e0399f0eb806b103637a5d681a1e2754a92e6747fee0404c` |
| 21 | `lemma` | [inv](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/inv--f0ee4c350872c5f3241ba989.md) | 186 | `result-track:f0ee4c350872c5f3241ba989837ffa3d5b63ae96599612107e2e7b7a9e427fac` |
| 22 | `lemma` | [fun_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-inv--879b7ab199e64f1c450cec67.md) | 214 | `result-track:879b7ab199e64f1c450cec67aa753f6320c7935bc637e2b8fd6d69686bd0ea86` |
| 23 | `lemma` | [inv_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/inv-iff--9c45b71ad2542af1d7d8970f.md) | 220 | `result-track:9c45b71ad2542af1d7d8970f8e639c4a83a52f1b23629acb64fa6e25c0b01d82` |
| 24 | `lemma` | [div](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/div--d45c2f4d62a289f27fa7a4ca.md) | 225 | `result-track:d45c2f4d62a289f27fa7a4ca50ffd082dd072ada9e5904b257bed35149e37c23` |
| 25 | `lemma` | [fun_div](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-div--b29498c4b2b86eed32181f27.md) | 230 | `result-track:b29498c4b2b86eed32181f27e0ae55807b1f76557c545dd5964b2eca5fa5dfa9` |
| 26 | `lemma` | [pow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/pow--dfd789a239b3583dec7dd8ce.md) | 237 | `result-track:dfd789a239b3583dec7dd8ce9d207827a730362aa7c747f2929051fcecf80e08` |
| 27 | `lemma` | [fun_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-pow--c23ec7a11da5329552836624.md) | 243 | `result-track:c23ec7a11da5329552836624b4e5104196f8f5cb3cebb7b155d9d52ece210ef6` |
| 28 | `lemma` | [zpow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/zpow--4407176581ee30dee18240a7.md) | 250 | `result-track:4407176581ee30dee18240a7e68a768265d04761c0ff7dd117a4428e4ee222db` |
| 29 | `lemma` | [fun_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-zpow--d838cfae9265399f9e1bbc66.md) | 256 | `result-track:d838cfae9265399f9e1bbc6631c077155e7e0b1c4c8609b7a3d93af9e8c1d22d` |
| 30 | `theorem` | [eventually_continuousAt](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/eventually-continuousat--a792efe2aa62932a7f08b515.md) | 263 | `result-track:a792efe2aa62932a7f08b515a7b92d3ef50eb710e7b1cc8818a98a4f25353896` |
| 31 | `theorem` | [eventually_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/eventually-analyticat--6256c838908ab1f9124fd168.md) | 279 | `result-track:6256c838908ab1f9124fd168bab716c177c55e99f40251979421d1d21adbae57` |
| 32 | `lemma` | [iff_eventuallyEq_zpow_smul_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/iff-eventuallyeq-zpow-smul-analyticat--65dacb160e98326b0c329b30.md) | 295 | `result-track:65dacb160e98326b0c329b3028e58995ba45b8cfc51b5437d645d586ba5fb28d` |
| 33 | `def` | [MeromorphicOn](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/meromorphicon--511bfe937e807a959eeafdd2.md) | 307 | `declaration-track:511bfe937e807a959eeafdd2fcbe46db35085b4af5a45a09ddc82567c2120c94` |
| 34 | `lemma` | [AnalyticOnNhd.meromorphicOn](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/analyticonnhd-meromorphicon--db3ca5ef7c5c9b2ee6c6197a.md) | 309 | `result-track:db3ca5ef7c5c9b2ee6c6197ac43ed0418352cd89eab1842e00e4e1402ab7eb59` |
| 35 | `theorem` | [congr_codiscreteWithin_of_eqOn_compl](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/congr-codiscretewithin-of-eqon-compl--bc14bf7ff11cbbb905d99948.md) | 323 | `result-track:bc14bf7ff11cbbb905d99948e94654385ea178ad4265c1525c38a026dc9c0c82` |
| 36 | `theorem` | [congr_codiscreteWithin](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/congr-codiscretewithin--ea731e0553903a3e0e5bab73.md) | 338 | `result-track:ea731e0553903a3e0e5bab739fe5e44a0a61c12eef427a6a6eb1cd4305d7d8f7` |
| 37 | `lemma` | [id](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/id--79cca652ced1c0c289dbd6ac.md) | 352 | `result-track:79cca652ced1c0c289dbd6ac7ef8c4cb9ad657c6bef2dede09c4aa41f9a5b9b4` |
| 38 | `lemma` | [const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/const--60cf27c38eaf69d37fc50776.md) | 354 | `result-track:60cf27c38eaf69d37fc50776db5b49976999fcf23909cfc148be2ab31ac7609d` |
| 39 | `lemma` | [mono_set](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/mono-set--07c9db89f0d9904f7dce6206.md) | 360 | `result-track:07c9db89f0d9904f7dce6206d9fbbec53c3f702a04df440b0ae66a08b66b3e92` |
| 40 | `lemma` | [add](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/add--fe561cdd8d5c87cca967088e.md) | 363 | `result-track:fe561cdd8d5c87cca967088e65d9129983d7478833d734d8ac74f236d2f3e715` |
| 41 | `lemma` | [fun_add](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-add--041f99c429bad5228a0024bc.md) | 366 | `result-track:041f99c429bad5228a0024bc662f1fef9adfc73a248a084d8664a4b562c49cfe` |
| 42 | `lemma` | [sub](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/sub--d1fe673793141e3a9c3854b9.md) | 369 | `result-track:d1fe673793141e3a9c3854b90fa7706ea90c81b678de61ae60a8c933247a20f9` |
| 43 | `lemma` | [fun_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-sub--dbb532664480911d44a1189d.md) | 372 | `result-track:dbb532664480911d44a1189d32e71e180ac0f56c642e343b7df8e521c013f5eb` |
| 44 | `lemma` | [neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/neg--3f1dd2878e5a0fe5228ee36e.md) | 375 | `result-track:3f1dd2878e5a0fe5228ee36e51d5d53f4add857feb9d93116344ad0da5d9bece` |
| 45 | `lemma` | [fun_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-neg--fbb2175cb0e4f3b240ccd0c5.md) | 378 | `result-track:fbb2175cb0e4f3b240ccd0c595856ffb1311fad936dec6664b358aaf60a39919` |
| 46 | `lemma` | [neg_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/neg-iff--709cc0a54541abc7b8c55751.md) | 380 | `result-track:709cc0a54541abc7b8c55751e113a5834539553da780237526138de839e5ebaa` |
| 47 | `lemma` | [smul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/smul--68def03a69ee31ed1c7d90b6.md) | 384 | `result-track:68def03a69ee31ed1c7d90b6bc4429644616bc8b3a6a8d91ec0188f39c8c1865` |
| 48 | `lemma` | [fun_smul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-smul--aa9cd4c75b11996461aa1a5e.md) | 387 | `result-track:aa9cd4c75b11996461aa1a5ea9e2286f5cd1e0c8b8e263a00926f6a73e47d8c3` |
| 49 | `lemma` | [mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/mul--9b7e46daaee1d1de41a682cd.md) | 390 | `result-track:9b7e46daaee1d1de41a682cd6436edd875a1dbcfd737c764111071f3ffd46c95` |
| 50 | `lemma` | [fun_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-mul--6f6051976b3d8c9d37315029.md) | 393 | `result-track:6f6051976b3d8c9d37315029f5c5f76b564dba746481f4e5aa78ebac7b440ee0` |
| 51 | `lemma` | [prod](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/prod--0124a02cf999aa4d0119dcdc.md) | 396 | `result-track:0124a02cf999aa4d0119dcdc9140dd576e5d026dfdf50bd7d738b59cbcf84db3` |
| 52 | `lemma` | [fun_prod](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-prod--a036476eb48d7387f1df2316.md) | 402 | `result-track:a036476eb48d7387f1df2316076e2fbf34a16cd715b77dc45041b51caf23647b` |
| 53 | `lemma` | [inv](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/inv--cdd3e61a2800f83b85a1f060.md) | 408 | `result-track:cdd3e61a2800f83b85a1f06002521ec42dbd90b6cf819e327bab51f39475b85a` |
| 54 | `lemma` | [fun_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-inv--af7e2938c2ca6f0f447d733f.md) | 411 | `result-track:af7e2938c2ca6f0f447d733f4bc82167afeda5b60f4b69663bf3db0fbefae780` |
| 55 | `lemma` | [inv_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/inv-iff--c46586a42abac4084b35e5f1.md) | 413 | `result-track:c46586a42abac4084b35e5f14e60e8bdf57b80d34d779b19c35f8e4bf96219f8` |
| 56 | `lemma` | [div](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/div--56e3110dd547e775c05ca856.md) | 417 | `result-track:56e3110dd547e775c05ca85675ca01d17884fa1227460e1f0ba6e15e81f17994` |
| 57 | `lemma` | [fun_div](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-div--5cf9024f9703ff3a94374aab.md) | 420 | `result-track:5cf9024f9703ff3a94374aab45fb2e49b042b6a725b97584bc314f273b0e91e4` |
| 58 | `lemma` | [pow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/pow--069b3f063f61dd90e1e49b3e.md) | 423 | `result-track:069b3f063f61dd90e1e49b3e0925d4d00232254c22edf699201ed68f01429646` |
| 59 | `lemma` | [fun_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-pow--70fa9a6a4d2d6b42cb7d7076.md) | 426 | `result-track:70fa9a6a4d2d6b42cb7d7076b91b8bfb81a15279cfa286bcf7699666c021e156` |
| 60 | `lemma` | [zpow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/zpow--ccf66a1fe2c37e9f2391a95b.md) | 429 | `result-track:ccf66a1fe2c37e9f2391a95b87213a5423e04b39336d9e75f175eae6170a72c0` |
| 61 | `lemma` | [fun_zpow](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/fun-zpow--d3b71173660da85751c78c8c.md) | 432 | `result-track:d3b71173660da85751c78c8cb9f9f234bfc08bf85de5a15eef9c5327c6adaa72` |
| 62 | `lemma` | [congr](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/congr--af2fddb617ea45bebbbeec92.md) | 437 | `result-track:af2fddb617ea45bebbbeec92dd2a5125cf47ba4701e4ab1dd5da185afe3ff685` |
| 63 | `theorem` | [eventually_codiscreteWithin_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Varianta74e0194afd3e19ad6ce447f9102b17b62c6f23e950344569ad1f9dba8c02ab6.lean/declarations/eventually-codiscretewithin-analyticat--ca94099e437d8d8225a0f3ae.md) | 441 | `result-track:ca94099e437d8d8225a0f3aeef7a3831bcf373d493493b4b4a908155a83d188c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
