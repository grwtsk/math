# Verification target: GRWTSK.Algebra.GroupTheory.Pi.Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff8b220452cf4e18efc0efb8f487bb1d629cc3c",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff8b220452cf4e18efc0efb8f487bb1d629cc3c`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Pairwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupInstances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Pi.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.preimage_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/set-preimage-one--d88862214733694f7d637496.md) | 53 | `result-track:d88862214733694f7d637496c2895437d28c29c72d0a4d3ea0ea047a722d2ed9` |
| 2 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/semigroup--5c87ee6aae182cf63ccec1a3.md) | 62 | `declaration-track:5c87ee6aae182cf63ccec1a36ff7603eadde7dd91aa95ee62bbabb0e00f6adf3` |
| 3 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/commsemigroup--f53731bd7b3f314307e5cb20.md) | 70 | `declaration-track:f53731bd7b3f314307e5cb209a4f1917bf9e6707497e7d4d1bac404b5dd440a6` |
| 4 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/muloneclass--57c3bafac1973e700fc105f6.md) | 79 | `declaration-track:57c3bafac1973e700fc105f6f727372c2639fccaa8a9f1fa7496c542c8915bd7` |
| 5 | `instance` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/invoneclass--9c8de4d565a7c3a2a5d2baab.md) | 90 | `declaration-track:9c8de4d565a7c3a2a5d2baabbdc2c74ebae5c83375b8ff2b14e6f80c9577d4fc` |
| 6 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/monoid--12360fc405ed0d84aed8bb13.md) | 96 | `declaration-track:12360fc405ed0d84aed8bb1306bff3e30c0e49b249f9cff60fc286d17c0ea888` |
| 7 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/addmonoidwithone--364f9f17bea1fbdc22b911f2.md) | 106 | `declaration-track:364f9f17bea1fbdc22b911f208a487bbd26b94d6dad8d2f7f4ebd1e04fbb78e5` |
| 8 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/commmonoid--1f764b1629fc97b738a879ef.md) | 114 | `declaration-track:1f764b1629fc97b738a879ef850b563d14e24e3f7a6f987703c09f678076d8b1` |
| 9 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/divinvmonoid--9ba87634b0d21f31520e1ff9.md) | 120 | `declaration-track:9ba87634b0d21f31520e1ff9684512b8113308304c6ab1918fabfbc3a0532890` |
| 10 | `instance` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/divinvonemonoid--44492382910750efa29d7572.md) | 133 | `declaration-track:44492382910750efa29d7572105a9ff7d51266a2137dc8215b463845324c7597` |
| 11 | `instance` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/involutiveinv--e31548d017d48e3dc8767651.md) | 138 | `declaration-track:e31548d017d48e3dc876765160c181751f23e28fa616a14ec3f99745cebc5868` |
| 12 | `instance` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/divisionmonoid--6e735aebbbe1a7fcc709a211.md) | 145 | `declaration-track:6e735aebbbe1a7fcc709a211a4ae4f1b2079760aae97dc0da53a7205d41ae502` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/instance--aae1cbc2c8ca80c89f1951c3.md) | 154 | `declaration-track:aae1cbc2c8ca80c89f1951c3853dde7c3e48dd4e3a4a7d7d04738a25e2d8eba5` |
| 14 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/group--581407b6c4edde5f30fc67d6.md) | 158 | `declaration-track:581407b6c4edde5f30fc67d6db348e53865eb8b2de65881fade4c9d798de0c1d` |
| 15 | `instance` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/addgroupwithone--55c5e76f47c54e084ab67824.md) | 166 | `declaration-track:55c5e76f47c54e084ab67824b23755fe06bf985735324870b066908175343d0e` |
| 16 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/commgroup--a2f450b423dbacf332b6955c.md) | 174 | `declaration-track:a2f450b423dbacf332b6955c3b182f38d34e448e111f11c5ce2b361b11a93c7f` |
| 17 | `instance` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/leftcancelsemigroup--39bbb3f7b619954020cf09d7.md) | 180 | `declaration-track:39bbb3f7b619954020cf09d7c72b2e807f2827ea1fbbb7ed1a625e48353af925` |
| 18 | `instance` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/rightcancelsemigroup--6d80965684a187bd6283399a.md) | 191 | `declaration-track:6d80965684a187bd6283399a538b426ebd7d4e76cc67992588cabb95fd042f88` |
| 19 | `instance` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/leftcancelmonoid--7d0dd1330ab20bd5fd750f1a.md) | 202 | `declaration-track:7d0dd1330ab20bd5fd750f1ae99c7ff644956cc3c24cdf7965d6293a76648b7d` |
| 20 | `instance` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/rightcancelmonoid--3802e7828121becb62c831fc.md) | 208 | `declaration-track:3802e7828121becb62c831fc2bfa779d6ccd924e980cdac748807869954c78a4` |
| 21 | `instance` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/cancelmonoid--ed10a1d022d8e8b19fb92cea.md) | 214 | `declaration-track:ed10a1d022d8e8b19fb92cea1ef479f7543e6c5706e1a431b194479b0d9fbe40` |
| 22 | `instance` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/cancelcommmonoid--a9296927e3f71838fc34fda9.md) | 220 | `declaration-track:a9296927e3f71838fc34fda9f9443a5031bf24b46eeeaed355bb34f0fd0c37e0` |
| 23 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulzeroclass--79572a2c45ebfb2f237c87ff.md) | 225 | `declaration-track:79572a2c45ebfb2f237c87fff8d34795d0312d541065255cc7bcae1d3be3e7bc` |
| 24 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulzerooneclass--e4154f428c8b4c82c9321773.md) | 234 | `declaration-track:e4154f428c8b4c82c93217737365e636df6fa395558e6298adb919292cfd6829` |
| 25 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/monoidwithzero--ba98983575cab1682dba72ed.md) | 238 | `declaration-track:ba98983575cab1682dba72ed990a842ed2bdbd9fbc5691dc2c6ff94420043e03` |
| 26 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/commmonoidwithzero--064674030f131252fd2f351b.md) | 242 | `declaration-track:064674030f131252fd2f351bf9317dbe391ab4d5fbaa0759baafb4047011ea4a` |
| 27 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/semigroupwithzero--4f4ec299d11c8712eba7cf4a.md) | 246 | `declaration-track:4f4ec299d11c8712eba7cf4af8d2bd4c9c4fce34b93d6db9dc679463660dcea2` |
| 28 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/coe-mul--4da00b9411a77e14eded3f6b.md) | 255 | `result-track:4da00b9411a77e14eded3f6b905f6bfb49198d2aec69d3d09a7495017f287098` |
| 29 | `def` | [Pi.mulHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulhom--e4835c7d66684e972796a3af.md) | 269 | `declaration-track:e4835c7d66684e972796a3af05f57885e9dddb937917d426244c30e5f66e0460` |
| 30 | `theorem` | [Pi.mulHom_injective](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulhom-injective--6f0cc95e1bf1184224b75e0d.md) | 278 | `result-track:6f0cc95e1bf1184224b75e0da19deb3d31678daea7fd61992f569f151ad5bd63` |
| 31 | `def` | [Pi.monoidHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-monoidhom--03d47c0e6378af79c159bf74.md) | 290 | `declaration-track:03d47c0e6378af79c159bf7428bdf5f80423fd16b0392d043b2b7fd5ad58781c` |
| 32 | `theorem` | [Pi.monoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-monoidhom-injective--eb3e56f2cae64afc4cdfd249.md) | 301 | `result-track:eb3e56f2cae64afc4cdfd24925ad00fc90b627ed7910164d8b4e5025a4a16118` |
| 33 | `def` | [Pi.evalMulHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-evalmulhom--f2fe6aab6ba1ed33a8218377.md) | 316 | `declaration-track:f2fe6aab6ba1ed33a8218377cf554998e072ebd3b5b6f2acab0068ecb3e19fc9` |
| 34 | `def` | [Pi.constMulHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-constmulhom--adda4b4456cf78086a99187f.md) | 326 | `declaration-track:adda4b4456cf78086a99187fc1d7e26714171ddf73cd7a1c98963390331f7999` |
| 35 | `def` | [MulHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulhom-coefn--b9a7e16984ae59ddb900b090.md) | 341 | `declaration-track:b9a7e16984ae59ddb900b090b43824e819483698e107e0a9d632eabb04141a69` |
| 36 | `def` | [MulHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulhom-compleft--4d9d8fa2c57a07670b6e3c38.md) | 354 | `declaration-track:4d9d8fa2c57a07670b6e3c38f401ea380f6f53b709400afcc840f1e75955dd02` |
| 37 | `def` | [Pi.evalMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-evalmonoidhom--c29ad0864a194014dafd4756.md) | 375 | `declaration-track:c29ad0864a194014dafd47560054e1b2e85a4e71c0895a76c26b68820e9a9917` |
| 38 | `def` | [Pi.constMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-constmonoidhom--de88317d4e489789f6ca28ec.md) | 386 | `declaration-track:de88317d4e489789f6ca28ecef4a29561b2840dc03fe5c34737652316b778a6e` |
| 39 | `def` | [MonoidHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/monoidhom-coefn--ac22250440d0b02e4e5cbe8e.md) | 402 | `declaration-track:ac22250440d0b02e4e5cbe8ebbf673ff7f72df5e89b555f0ce0c88f2a24a57aa` |
| 40 | `def` | [MonoidHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/monoidhom-compleft--d2efe7d7ce2639cc0571ec58.md) | 416 | `declaration-track:d2efe7d7ce2639cc0571ec584bc2c30a034625cf7827cc1c6c7aae6047447f5d` |
| 41 | `def` | [OneHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/onehom-single--8d1b439243a08c67d7e8eb4e.md) | 445 | `declaration-track:8d1b439243a08c67d7e8eb4e5eac6701efb36a603a7c88ef4b48911f8f2f6aae` |
| 42 | `theorem` | [OneHom.single_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/onehom-single-apply--d0a5930849e74e4d8d37be85.md) | 452 | `result-track:d0a5930849e74e4d8d37be8575001fb81384079ce21e9275fd8b022bc093aab9` |
| 43 | `def` | [MonoidHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/monoidhom-single--155a12ed23f27edc4fc51f50.md) | 467 | `declaration-track:155a12ed23f27edc4fc51f503fe9b33461363129e72b43cb1b39b7b68b3097cd` |
| 44 | `theorem` | [MonoidHom.single_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/monoidhom-single-apply--b1992a7a05e89d5dbc5cc326.md) | 473 | `result-track:b1992a7a05e89d5dbc5cc326d853b41c5cf83883e35f16548f2e6feca0d603f7` |
| 45 | `def` | [MulHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulhom-single--0362aa81e4e046719272ffbe.md) | 484 | `declaration-track:0362aa81e4e046719272ffbeeae4ef10aab12e72fcb8f2fc1f50f621b2fbc2b4` |
| 46 | `theorem` | [Pi.mulSingle_sup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-sup--f5121d6e7da48a82fb10acfa.md) | 493 | `result-track:f5121d6e7da48a82fb10acfa63ff4a181144ae07cd6060e1baac7295dae0ce2e` |
| 47 | `theorem` | [Pi.mulSingle_inf](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-inf--8288bee8c49002262e9a2099.md) | 500 | `result-track:8288bee8c49002262e9a2099513a37b662a57bc2ccefc23451fe98ecc7d13122` |
| 48 | `theorem` | [Pi.mulSingle_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-mul--1a2dbdf31a775e474254dbe4.md) | 507 | `result-track:1a2dbdf31a775e474254dbe4ed8c74df9839fd8ca39021df9ce769167bdf79e6` |
| 49 | `theorem` | [Pi.mulSingle_inv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-inv--acd4797fd19beb63ba295e1e.md) | 514 | `result-track:acd4797fd19beb63ba295e1e4e7c35589f07ee81ca77062344e9f7c7b247aab2` |
| 50 | `theorem` | [Pi.single_div](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-single-div--aed0ad36bb3d19bc4fc19da6.md) | 521 | `result-track:aed0ad36bb3d19bc4fc19da6b740b77548ea2a6d65a15e2d066d5789fb8436ba` |
| 51 | `theorem` | [Pi.single_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-single-mul--a6b8ed9a65decb79b59905e6.md) | 527 | `result-track:a6b8ed9a65decb79b59905e62e7208528733b709549cc143d629fc39107e6e1d` |
| 52 | `theorem` | [Pi.single_mul_left_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-single-mul-left-apply--29e0fbdb0fcee0fa36ba7d2e.md) | 532 | `result-track:29e0fbdb0fcee0fa36ba7d2eab6b3609d156095e458515c98a73b845e9ed7747` |
| 53 | `theorem` | [Pi.single_mul_right_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-single-mul-right-apply--5e19d41a3abe809cb0b705f5.md) | 537 | `result-track:5e19d41a3abe809cb0b705f54d9b6ae16cd52449eb2a0c9f2db4103eb71afd11` |
| 54 | `theorem` | [Pi.single_mul_left](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-single-mul-left--2638658de62c76d5f5b72053.md) | 542 | `result-track:2638658de62c76d5f5b720538ea668aeaa6649f107fa9de8e035f5bb8f4c77b2` |
| 55 | `theorem` | [Pi.single_mul_right](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-single-mul-right--20de4f79067e8d3865976810.md) | 547 | `result-track:20de4f79067e8d386597681090ba768ae0e21deb0dcc4fb9ef459d8961fb7245` |
| 56 | `theorem` | [Pi.mulSingle_commute](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-commute--e1a190d324210f9d31da1290.md) | 559 | `result-track:e1a190d324210f9d31da1290ffab24c595544aceeece9d6f75ebd73701ed0adc` |
| 57 | `theorem` | [Pi.mulSingle_apply_commute](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-apply-commute--2c6fb6e4c8ec38b01c61bacd.md) | 574 | `result-track:2c6fb6e4c8ec38b01c61bacd5904b8feb662d5cbf716fba1ebb6ee8ef89f3812` |
| 58 | `theorem` | [Pi.update_eq_div_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-update-eq-div-mul-mulsingle--c6256a3ed5e189e5c13aca18.md) | 583 | `result-track:c6256a3ed5e189e5c13aca1856f515bc6f3a4baf1bc991aba7ad3dfc51b92903` |
| 59 | `theorem` | [Pi.mulSingle_mul_mulSingle_eq_mulSingle_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/pi-mulsingle-mul-mulsingle-eq-mulsingle-mul-mulsingle--ed6bb28895daf4d904b3306f.md) | 593 | `result-track:ed6bb28895daf4d904b3306f00bc7c871f77c769a87f4bf1529cade7ef67f7c9` |
| 60 | `theorem` | [update_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/update-one--4b82a79cebbc2bbaada1e387.md) | 632 | `result-track:4b82a79cebbc2bbaada1e3872a7ced38b40ae3b073697c3a09111cb75d257e25` |
| 61 | `theorem` | [update_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/update-mul--137ffd67191ac502c1450ce8.md) | 638 | `result-track:137ffd67191ac502c1450ce8c69cf4b5f4f542c208b250e37d14062e2a342236` |
| 62 | `theorem` | [update_inv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/update-inv--898ee7d857de9b6b44aa775b.md) | 645 | `result-track:898ee7d857de9b6b44aa775bad271e5c54dc22ef2ddbd5b69f7f65f572e4c817` |
| 63 | `theorem` | [update_div](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/update-div--7b0952b592e3c45635e21376.md) | 652 | `result-track:7b0952b592e3c45635e21376859c3f9c2b6f9c07b4f71efe8301080cdf31f3fa` |
| 64 | `theorem` | [const_eq_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/const-eq-one--7264b13d1d1d45248c1a0e37.md) | 661 | `result-track:7264b13d1d1d45248c1a0e37c54705c1e40925b12e00c02db60575d2a2db9c70` |
| 65 | `theorem` | [const_ne_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/const-ne-one--d5c870b4c7884351a89eacfa.md) | 667 | `result-track:d5c870b4c7884351a89eacfa9951623176720577c49bc3746c1db1ae7a37fb07` |
| 66 | `theorem` | [Set.piecewise_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/set-piecewise-mul--ddb0895ad49929c3357bfd34.md) | 677 | `result-track:ddb0895ad49929c3357bfd34da4201c766add1cbeaf0b3474eeaf6007470ca1d` |
| 67 | `theorem` | [Set.piecewise_inv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/set-piecewise-inv--3a992c434243324be25f0eee.md) | 685 | `result-track:3a992c434243324be25f0eee2244a22a7cdd684912a69acb134638fd1348ad31` |
| 68 | `theorem` | [Set.piecewise_div](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/set-piecewise-div--1342468eff8ab87e2f377460.md) | 692 | `result-track:1342468eff8ab87e2f37746071420a23abe07887d03b1ce1b6819cfe890c5f03` |
| 69 | `def` | [Function.ExtendByOne.hom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/function-extendbyone-hom--60cf9e97ffc0048b9a9720cb.md) | 707 | `declaration-track:60cf9e97ffc0048b9a9720cb3020db5cb54704e975e0122e1a5467afa4386a10` |
| 70 | `theorem` | [mulSingle_mono](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulsingle-mono--cce08778fdfd1a8a42879380.md) | 724 | `result-track:cce08778fdfd1a8a42879380be17e7d7f99bf0d9a60ff6736b7a12b0806a6fd7` |
| 71 | `theorem` | [mulSingle_strictMono](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant1765168b03be22684f4c7c8071c606bc7972b4e69be7013cf361a2b036ac8011.lean/declarations/mulsingle-strictmono--ef14088039a2c5d85efd56c1.md) | 730 | `result-track:ef14088039a2c5d85efd56c1bd4374b6b6582e0a20c4d14addebaf0027913412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
