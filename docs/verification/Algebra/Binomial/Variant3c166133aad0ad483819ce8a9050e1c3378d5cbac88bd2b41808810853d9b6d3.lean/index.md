# Verification target: GRWTSK.Algebra.Binomial.Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29ea28732ccc71f8229cfeababdd5912fcb84610",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29ea28732ccc71f8229cfeababdd5912fcb84610`.

Source path: `GRWTSK/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BinomialRing](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/binomialring--79c6a3160e43fdb2b38c6d63.md) | 76 | `declaration-track:79c6a3160e43fdb2b38c6d6390c93681c875c158d49cb63682e365d7232e226a` |
| 2 | `def` | [multichoose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose--580ead17bff8ab8ca3127083.md) | 100 | `declaration-track:580ead17bff8ab8ca31270835846c678ee93bdd92012d992d1ce7a4f1c1021e6` |
| 3 | `theorem` | [multichoose_eq_multichoose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-eq-multichoose--36b4415a884250c6bcf77b25.md) | 103 | `result-track:36b4415a884250c6bcf77b253b5f8f3d847e4f4c7403c3668572b191ac6aee0f` |
| 4 | `theorem` | [factorial_nsmul_multichoose_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/factorial-nsmul-multichoose-eq-ascpochhammer--d1afc759f7b4b547e67c87b6.md) | 106 | `result-track:d1afc759f7b4b547e67c87b60afa040d20f2a69774dacb9dcbf7c6201e37096b` |
| 5 | `theorem` | [multichoose_zero_right'](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-zero-right--01457a30547f24654e33aa2e.md) | 111 | `result-track:01457a30547f24654e33aa2e08a5e094141b096f1850dbabc53a3b28303361ae` |
| 6 | `theorem` | [multichoose_zero_right](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-zero-right--3c59680bcfafaee169d16823.md) | 115 | `result-track:3c59680bcfafaee169d1682377888f3ff69c27d099d1184719573a2dd2e2174d` |
| 7 | `theorem` | [multichoose_one_right'](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-one-right--851222aff5e618c643fb8915.md) | 120 | `result-track:851222aff5e618c643fb8915affa3f3a38d27bda08db1e19934991fee08d9918` |
| 8 | `theorem` | [multichoose_one_right](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-one-right--7fb19e08ab86df87f550ee8f.md) | 125 | `result-track:7fb19e08ab86df87f550ee8f18563da18951f76adba11d25b8be386c8dcf4421` |
| 9 | `theorem` | [multichoose_zero_succ](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-zero-succ--b2245a308ab54b16d55e63f3.md) | 131 | `result-track:b2245a308ab54b16d55e63f341e55a8d954a9ac2fc4cb9a924c49c91bd3ae475` |
| 10 | `theorem` | [ascPochhammer_succ_succ](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/ascpochhammer-succ-succ--dad06566ffde3f679dba8b99.md) | 136 | `result-track:dad06566ffde3f679dba8b993caa9bfff2c46daa35c0cf7992242d722cff82a3` |
| 11 | `theorem` | [multichoose_succ_succ](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-succ-succ--37c58ff62f7201a2c62e3845.md) | 147 | `result-track:37c58ff62f7201a2c62e3845df326b17ccf42fdfc93a402017eecf1f6c957df4` |
| 12 | `theorem` | [multichoose_one](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-one--6e04b5d50dd303a11d0b33d9.md) | 154 | `result-track:6e04b5d50dd303a11d0b33d909b8e64a675dda2a97aba29f2ce767efcd8d087c` |
| 13 | `theorem` | [multichoose_two](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-two--f92b7601385e17922950c332.md) | 161 | `result-track:f92b7601385e17922950c3326147a63e8b02daba8f4916a150596a4ff16477d0` |
| 14 | `lemma` | [map_multichoose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/map-multichoose--4a286a55cea0adb76699bce2.md) | 170 | `result-track:4a286a55cea0adb76699bce2c5743e0dcf11b2508e1cf370a3ad5ad1e0a5e34e` |
| 15 | `theorem` | [ascPochhammer_smeval_cast](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/ascpochhammer-smeval-cast--062236df91b89c91b9928810.md) | 188 | `result-track:062236df91b89c91b9928810385876c72cf84c0e46d08e19c7acd07bf2429f92` |
| 16 | `theorem` | [ascPochhammer_smeval_eq_eval](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/ascpochhammer-smeval-eq-eval--094796fc9a7cf78c7e29039e.md) | 200 | `result-track:094796fc9a7cf78c7e29039e5af55a68f8ca315c3ce25eb37198aa151bc3c446` |
| 17 | `theorem` | [descPochhammer_smeval_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/descpochhammer-smeval-eq-ascpochhammer--80a97e87f4de2aa890e8aa99.md) | 206 | `result-track:80a97e87f4de2aa890e8aa99a2e0ee33d1d4cbe00561981af9c37538066b5940` |
| 18 | `theorem` | [descPochhammer_smeval_eq_descFactorial](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/descpochhammer-smeval-eq-descfactorial--83603c0f072c87564ff3637b.md) | 216 | `result-track:83603c0f072c87564ff3637b9416fe11f4cb2943fe6337414764cb35dcc927cc` |
| 19 | `theorem` | [ascPochhammer_smeval_neg_eq_descPochhammer](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/ascpochhammer-smeval-neg-eq-descpochhammer--bb0df13dc07ecda6f4489c14.md) | 228 | `result-track:bb0df13dc07ecda6f4489c1421fc716a0c8518d532be7276a2bc9a938cfc84f1` |
| 20 | `instance` | [Nat.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/nat-instbinomialring--882f98b19e43a5a53446db0c.md) | 247 | `declaration-track:882f98b19e43a5a53446db0c6fba5168f24dbeb4d825f0ad98f4630b27c0d9d1` |
| 21 | `def` | [Int.multichoose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/int-multichoose--c2b1704e5dcaf18c32f7ea48.md) | 254 | `declaration-track:c2b1704e5dcaf18c32f7ea4889ee97026b0688ffce4c0689f713ef7cb2f6981a` |
| 22 | `instance` | [Int.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/int-instbinomialring--62242f5c48fe61df993d7dec.md) | 259 | `declaration-track:62242f5c48fe61df993d7dec42026bbcdf948f6d2b67adbcb181cc6df429c01f` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/instance--9537b090d6f54092506a5753.md) | 277 | `declaration-track:9537b090d6f54092506a5753d0e1cf71d7d62d3557f5f6e399fd5fe15dbe416c` |
| 24 | `theorem` | [smeval_ascPochhammer_self_neg](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/smeval-ascpochhammer-self-neg--4502095120d8fb14d655c248.md) | 294 | `result-track:4502095120d8fb14d655c24804c85db9b608cf6e6f0ed13251ea844e97f52bd2` |
| 25 | `theorem` | [smeval_ascPochhammer_succ_neg](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/smeval-ascpochhammer-succ-neg--2c78bf673ab82cfd751118b5.md) | 307 | `result-track:2c78bf673ab82cfd751118b5692182181fb964b5a08c7e68eb72f51f3fe7a690` |
| 26 | `theorem` | [smeval_ascPochhammer_neg_add](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/smeval-ascpochhammer-neg-add--2b1ab7b06b1c96ec74893cd9.md) | 312 | `result-track:2b1ab7b06b1c96ec74893cd9c8a14c6390e3a765953935091eac0fcb8fd02e4d` |
| 27 | `theorem` | [smeval_ascPochhammer_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/smeval-ascpochhammer-neg-of-lt--73c20e9481f25549ef1d0f8c.md) | 321 | `result-track:73c20e9481f25549ef1d0f8ce6c98e084f9c9d3b37a4dce66305a7497dbffc9a` |
| 28 | `theorem` | [smeval_ascPochhammer_nat_cast](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/smeval-ascpochhammer-nat-cast--2661db5dce9f10616c69bd09.md) | 325 | `result-track:2661db5dce9f10616c69bd096970d621c13518c490540f83a40d61fedf066bf4` |
| 29 | `theorem` | [multichoose_neg_self](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-neg-self--66a87fd76107c3348a3a414d.md) | 329 | `result-track:66a87fd76107c3348a3a414d665ec9b79eb74421c1e7a15d2d9c37674d465d90` |
| 30 | `theorem` | [multichoose_neg_succ](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-neg-succ--2c334d4d75d4490bef3fccdd.md) | 335 | `result-track:2c334d4d75d4490bef3fccdd326d3f511e40abd906f62287defdfab4638c461d` |
| 31 | `theorem` | [multichoose_neg_add](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-neg-add--3e7137dcc848ee09dd5f34ea.md) | 339 | `result-track:3e7137dcc848ee09dd5f34eaa1d5d71c1d55ad8d30f6e8bba6d48060ca7f28a3` |
| 32 | `theorem` | [multichoose_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-neg-of-lt--62bdb406ef5e3688f8315408.md) | 344 | `result-track:62bdb406ef5e3688f8315408319131ac9f06e2d99afa673cd82592e3ea42adfd` |
| 33 | `theorem` | [multichoose_succ_neg_natCast](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-succ-neg-natcast--b9c7c5dbb7d696eba2318714.md) | 348 | `result-track:b9c7c5dbb7d696eba23187143502992e5f5dd82f96a027000894dc665c9bd588` |
| 34 | `theorem` | [smeval_ascPochhammer_int_ofNat](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/smeval-ascpochhammer-int-ofnat--8f91518711c44798fbfca043.md) | 354 | `result-track:8f91518711c44798fbfca043483c0b683cfcf950edf878bafcb6ea1fd36b0f83` |
| 35 | `def` | [choose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose--4ec72ecb6700724cbaca0343.md) | 380 | `declaration-track:4ec72ecb6700724cbaca03431c0d7e09542ea4a38ed1da7e585620e1b0b99130` |
| 36 | `theorem` | [multichoose_eq](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/multichoose-eq--572453a492d36b0432f19d6f.md) | 385 | `result-track:572453a492d36b0432f19d6f1b927aa443150cd4de0271f75c908e0acb5c0318` |
| 37 | `theorem` | [descPochhammer_eq_factorial_smul_choose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/descpochhammer-eq-factorial-smul-choose--f2e2ffd59cb8be341f70cec6.md) | 390 | `result-track:f2e2ffd59cb8be341f70cec6d11378fe804330b26987b5514889685c7735d20a` |
| 38 | `theorem` | [choose_natCast](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-natcast--4d7a2e841ae036d24eff90ef.md) | 399 | `result-track:4d7a2e841ae036d24eff90efdb54f4bdf16e6b7ef3317a97af3b741c3d81528e` |
| 39 | `theorem` | [choose_zero_right'](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-zero-right--c263ded22c1fda4f58c8679b.md) | 405 | `result-track:c263ded22c1fda4f58c8679bf8557f350f49a560a72af100ceef80d131e6b527` |
| 40 | `theorem` | [choose_zero_right](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-zero-right--2debeb1ebf581d11958c689a.md) | 410 | `result-track:2debeb1ebf581d11958c689a75ff9f702a1c92a538767c6010f40736f89073d9` |
| 41 | `theorem` | [choose_zero_succ](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-zero-succ--79e18b01329e299b7ee97ead.md) | 414 | `result-track:79e18b01329e299b7ee97eadbe9fc8a46ed63fe228f88be8ff14bfe077f837cb` |
| 42 | `theorem` | [choose_zero_pos](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-zero-pos--520016503e0e579933bad31b.md) | 418 | `result-track:520016503e0e579933bad31bce97c14daccb2634e3e5f6843b4730e198fff6d9` |
| 43 | `theorem` | [choose_zero_ite](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-zero-ite--68449860a82ebae2c67dae5e.md) | 422 | `result-track:68449860a82ebae2c67dae5ed0e69ae5f63bf8ab56a4831f16ee3568edba5420` |
| 44 | `theorem` | [choose_one_right'](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-one-right--94d25a2d0b7c525801487cbc.md) | 429 | `result-track:94d25a2d0b7c525801487cbc699fc3b5f81d78ae7a3d732e0b6edcbf186b0a08` |
| 45 | `theorem` | [choose_one_right](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-one-right--ffd5d3c545c247a0e667df6b.md) | 432 | `result-track:ffd5d3c545c247a0e667df6b604eda225328026173f70c590ba4d7f360d85790` |
| 46 | `theorem` | [choose_neg](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-neg--4fdd9c6be4732259c9cdba7f.md) | 435 | `result-track:4fdd9c6be4732259c9cdba7f8cad255bb3d291ab574e6a9b2626506724eff2d5` |
| 47 | `theorem` | [choose_neg'](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-neg--ef0bc07f89cc2bf83e817fbf.md) | 442 | `result-track:ef0bc07f89cc2bf83e817fbff7cf07dcc3186955c1a39bbd067181619757152a` |
| 48 | `theorem` | [descPochhammer_succ_succ_smeval](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/descpochhammer-succ-succ-smeval--6481c15e1fbb47caac8a4be7.md) | 446 | `result-track:6481c15e1fbb47caac8a4be74e4a01cbf7caf1bb09d6802f9b237340e1c36bd8` |
| 49 | `theorem` | [choose_succ_succ](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-succ-succ--9a0accf56c85121f4c74a05a.md) | 457 | `result-track:9a0accf56c85121f4c74a05a9f1662ba84b56527b828f6a5e9550b118ae237fa` |
| 50 | `theorem` | [choose_smul_choose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-smul-choose--ac477392f94992dff2b94091.md) | 464 | `result-track:ac477392f94992dff2b9409105958e3db582af6f2815264b59e9eab13d4fd85d` |
| 51 | `theorem` | [choose_add_smul_choose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-add-smul-choose--d25e92b796209939edacf3b5.md) | 475 | `result-track:d25e92b796209939edacf3b55fa53e691f962392ad75111c0ec0eae573a7be0d` |
| 52 | `theorem` | [choose_eq_smul](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/choose-eq-smul--fcef92fedef49e7b1734bd32.md) | 482 | `result-track:fcef92fedef49e7b1734bd32bfe0dbc8574bed43c54e670b00e3a2452a8bfd03` |
| 53 | `theorem` | [descPochhammer_smeval_add](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/descpochhammer-smeval-add--209bdbbce6b80c73db39285e.md) | 490 | `result-track:209bdbbce6b80c73db39285e75fba37733a6ebd472d5ace383c4548802821b67` |
| 54 | `theorem` | [add_choose_eq](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/add-choose-eq--e229004c008c518b7805412a.md) | 519 | `result-track:e229004c008c518b7805412a615dd6939b5afd11dca279db65b6a6ebedbcf84f` |
| 55 | `lemma` | [map_choose](../../../../mathematics/Algebra/Binomial/Variant3c166133aad0ad483819ce8a9050e1c3378d5cbac88bd2b41808810853d9b6d3.lean/declarations/map-choose--d20db571772d32d328877a9c.md) | 533 | `result-track:d20db571772d32d328877a9c4af901c7d8271122a0b1a73a12fb92990c121dcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
