# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2Exp.Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f01a7978e08eb8f6b13f0839f56ac074321a14c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f01a7978e08eb8f6b13f0839f56ac074321a14c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.FinSumExpand` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.BKLNW_a2_pow2` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.BKLNW_a2` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [floor_20](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-20--b74015ddda5485fe824888af.md) | 28 | `result-track:b74015ddda5485fe824888af10f4d6c22f1293ea7473d170327928d8f9f3ecba` |
| 2 | `lemma` | [f_exp_20_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-20-eq--d2f13a81a6d575a5bc5bf8e5.md) | 34 | `result-track:d2f13a81a6d575a5bc5bf8e5a3830effe96b0e8ee81d36b3996fcdbf8cfd8dcd` |
| 3 | `lemma` | [a2_20_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-20-exp-lower--872e5ad846c0087588fe9829.md) | 42 | `result-track:872e5ad846c0087588fe9829e65a317d8741f550bb4c081fbf1133d231a3af04` |
| 4 | `lemma` | [a2_20_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-20-exp-upper--efd2df2aa20155d54acc1f67.md) | 46 | `result-track:efd2df2aa20155d54acc1f6727bcbc0c561bd58d9c24084d69a1506faea0500f` |
| 5 | `lemma` | [floor_25](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-25--f81c49aa8c1fd1c8937c6c47.md) | 53 | `result-track:f81c49aa8c1fd1c8937c6c471e8fd15f454cfde9fb84958c19d57594a89c5001` |
| 6 | `lemma` | [f_exp_25_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-25-eq--32a7468b7b6a357634e69537.md) | 59 | `result-track:32a7468b7b6a357634e69537cfa1e9c0259758c01521c14e74d179977df018a1` |
| 7 | `lemma` | [a2_25_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-25-exp-lower--8eff4f7b9b924c9b4dec488e.md) | 67 | `result-track:8eff4f7b9b924c9b4dec488e89ef7855f63f57f32187618fbf2539810d5983b5` |
| 8 | `lemma` | [a2_25_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-25-exp-upper--4f37a245eb844c2d66b6303a.md) | 71 | `result-track:4f37a245eb844c2d66b6303a86eb6716dcbb92139fb32e4ae6609702692349c1` |
| 9 | `lemma` | [floor_30](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-30--bcc2e55595ad28161139b2aa.md) | 78 | `result-track:bcc2e55595ad28161139b2aadc7b818b9027764c5066b6d9f8cb5452ac612be7` |
| 10 | `lemma` | [f_exp_30_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-30-eq--1f6472ee6f6d7edd5319a3cb.md) | 84 | `result-track:1f6472ee6f6d7edd5319a3cbd3d4ab66096f5419c7cb3a4d0eb47bd04da66dce` |
| 11 | `lemma` | [a2_30_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-30-exp-lower--5d7c60ea43bc0ef0c7d6319d.md) | 92 | `result-track:5d7c60ea43bc0ef0c7d6319d064bb8747df03f0069f3bf0ecabb645f2e4ae7cb` |
| 12 | `lemma` | [a2_30_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-30-exp-upper--91f508731fcb58a7aaf785a6.md) | 96 | `result-track:91f508731fcb58a7aaf785a66f10099d11f4ae9531d93575d5476d3fa1d5be52` |
| 13 | `lemma` | [floor_35](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-35--13074dd4e251a6f224ec8eac.md) | 103 | `result-track:13074dd4e251a6f224ec8eac3717f7b2994f1589fcd2d84af7793a5eeff1a93f` |
| 14 | `lemma` | [f_exp_35_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-35-eq--335a120a3557993f3ed64796.md) | 109 | `result-track:335a120a3557993f3ed64796c33f2e011518bbe7334b783a7a769e8615b35341` |
| 15 | `lemma` | [a2_35_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-35-exp-lower--456a0bf89fdd73ae18424fc0.md) | 117 | `result-track:456a0bf89fdd73ae18424fc0f1e51b7494e0b4003a3635ca5fb7257c9950f299` |
| 16 | `lemma` | [a2_35_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-35-exp-upper--12adb669910f388b75fa3281.md) | 121 | `result-track:12adb669910f388b75fa3281752796176bf9b6390627c6b81a791822e3d8cfb1` |
| 17 | `lemma` | [floor_40](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-40--8ebf88833634e1252f12e8f0.md) | 128 | `result-track:8ebf88833634e1252f12e8f098c7d2eecba7a7a207f202df4c2c5c6bc961cadb` |
| 18 | `lemma` | [f_exp_40_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-40-eq--249e5800bab4377edcbb31b7.md) | 134 | `result-track:249e5800bab4377edcbb31b73dc3cabc6a8c0e19e46a3527fd7d73b595e53a77` |
| 19 | `lemma` | [a2_40_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-40-exp-lower--9551cb84595bcb4a6ae004a9.md) | 142 | `result-track:9551cb84595bcb4a6ae004a991eb5e21f87ae8a9fa778a7ceae4bb7b78f4c12c` |
| 20 | `lemma` | [a2_40_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-40-exp-upper--d19b852445489e492b11c4aa.md) | 146 | `result-track:d19b852445489e492b11c4aa7abadae33eb1e3c4193721e8c259f624022a6dd4` |
| 21 | `lemma` | [floor_43](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-43--513bd363c4b39a789b5403b2.md) | 153 | `result-track:513bd363c4b39a789b5403b2533053567ff7b2da7f7321fad335d8e5de2eb4c7` |
| 22 | `lemma` | [f_exp_43_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-43-eq--3419790206b4433e1e126857.md) | 159 | `result-track:3419790206b4433e1e1268572bd2ab1e69d9841a1a155f9dbeff51f02fcd693a` |
| 23 | `lemma` | [a2_43_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-43-exp-lower--0d0dc3c4137bab9ad35d01d6.md) | 167 | `result-track:0d0dc3c4137bab9ad35d01d6014fd05946ccca21cf1fb1bccfb0c7108cbe4ef0` |
| 24 | `lemma` | [a2_43_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-43-exp-upper--3c6ecbefa6e19e5f5278ae90.md) | 171 | `result-track:3c6ecbefa6e19e5f5278ae90011a5b7c626961b3a555d5c08cff30cb84ab278d` |
| 25 | `lemma` | [floor_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-100--7e301c554351e1068ba68a20.md) | 178 | `result-track:7e301c554351e1068ba68a20db457dd7ac1af3d11e855aaaea910d162e87c711` |
| 26 | `lemma` | [f_exp_100_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-100-eq--5df5afff11a7fff687def17c.md) | 186 | `result-track:5df5afff11a7fff687def17cb62628f815404c7bacb46d1dd351df76c1a91841` |
| 27 | `lemma` | [a2_100_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-100-exp-lower--c04ae107326f8425b6e0e6c5.md) | 219 | `result-track:c04ae107326f8425b6e0e6c5a71f1552a78c1af3b149f103e2c2a5d77b17986e` |
| 28 | `lemma` | [a2_100_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-100-exp-upper--77eef72d25ccaea5af33b707.md) | 226 | `result-track:77eef72d25ccaea5af33b7072c193c6e8ece3b9b9e3fff419952057de2729956` |
| 29 | `lemma` | [floor_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-150--f8972931f03d012ecd30542e.md) | 233 | `result-track:f8972931f03d012ecd30542ef4cb12f5ec4f889a418242cf21018de305e4f53e` |
| 30 | `lemma` | [f_exp_150_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-150-eq--a44c9e57f4fd30993bc5c552.md) | 241 | `result-track:a44c9e57f4fd30993bc5c55246962e867bb023c02f6d501144346d406a4a2695` |
| 31 | `lemma` | [a2_150_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-150-exp-lower--63515f15df0b657ce5da9639.md) | 286 | `result-track:63515f15df0b657ce5da9639eb26ae42917f66fa3ed2fa8e3dab608e1974c32d` |
| 32 | `lemma` | [a2_150_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-150-exp-upper--a42fab334444650fda9f7e0e.md) | 293 | `result-track:a42fab334444650fda9f7e0e19eb8cabe14896170c7ac1de00cd11fc90f763eb` |
| 33 | `lemma` | [floor_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-200--0009d608f786787fe3323fb5.md) | 300 | `result-track:0009d608f786787fe3323fb55407ae0e6c16b3462192e269bb560d84506c2d85` |
| 34 | `lemma` | [f_exp_200_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-200-eq--f6918c141e1270d73c1540d5.md) | 308 | `result-track:f6918c141e1270d73c1540d55a49393358df7039aa562c3bfe04a2aa74a75b35` |
| 35 | `lemma` | [a2_200_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-200-exp-lower--c592eeafafa12491ed6c786f.md) | 365 | `result-track:c592eeafafa12491ed6c786f2f94917bee437b280ce7f5ec8b3f9d3958be312e` |
| 36 | `lemma` | [a2_200_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-200-exp-upper--f19b4e2e73b9c8eeff137ad5.md) | 372 | `result-track:f19b4e2e73b9c8eeff137ad560f6c81c14de28a1f52564d06d5a166ad7823d2e` |
| 37 | `lemma` | [floor_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-250--e0be021554257a4ba6b594e8.md) | 379 | `result-track:e0be021554257a4ba6b594e89bfb7e80ec5dba399a99b7371cf73371c7d5a870` |
| 38 | `lemma` | [f_exp_250_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-250-eq--2dab99f1770059a1660d5a6e.md) | 387 | `result-track:2dab99f1770059a1660d5a6e012e9ce3fc68f6e23fc4595367c4b2a285d57caf` |
| 39 | `lemma` | [a2_250_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-250-exp-lower--5c4a5999dd05999a180a7d95.md) | 456 | `result-track:5c4a5999dd05999a180a7d951ef9dd1b871858416401949264f2459fe1e17d07` |
| 40 | `lemma` | [a2_250_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-250-exp-upper--521a10edfb27cefe23e70321.md) | 463 | `result-track:521a10edfb27cefe23e7032100f24702e989cfa357e6f299fdfbb9d2536b61fc` |
| 41 | `lemma` | [floor_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/floor-300--3ecc248decceae10cc3fac23.md) | 470 | `result-track:3ecc248decceae10cc3fac238b05a01e161058f26d0cd6b3c8568ce5817d7f2a` |
| 42 | `lemma` | [f_exp_300_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/f-exp-300-eq--1234263fb12bd73db68fcfbb.md) | 478 | `result-track:1234263fb12bd73db68fcfbb09743c6541e9f1ebbf2fdb0104f42e5596c5b49a` |
| 43 | `lemma` | [a2_300_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-300-exp-lower--53958aa4df3f003f32d1e234.md) | 559 | `result-track:53958aa4df3f003f32d1e234fec99527989ce222103b85c4f67474e2c39301da` |
| 44 | `lemma` | [a2_300_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variantce6b2c70851186f43dce2b074801fc838035c7232ed6b6a189f83a14c1b75313.lean/declarations/a2-300-exp-upper--75e982988ef13b10677ceae7.md) | 566 | `result-track:75e982988ef13b10677ceae703ad7f9b4360c068a95de41895e7c4016ba67b74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
