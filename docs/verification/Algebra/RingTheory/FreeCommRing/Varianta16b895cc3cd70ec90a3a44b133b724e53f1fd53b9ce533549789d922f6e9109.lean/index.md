# Verification target: GRWTSK.Algebra.RingTheory.FreeCommRing.Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "340451f07ed2935f168109878a4749b3fbc104ad",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `340451f07ed2935f168109878a4749b3fbc104ad`.

Source path: `GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommring--d169e8546622b30b3d0cd36d.md) | 62 | `declaration-track:d169e8546622b30b3d0cd36dc1a61a59b26c772ef4295b25c5e580eb5a4d9519` |
| 2 | `instance` | [FreeCommRing.instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommring-instcommring--e44079c37f404a077427eb32.md) | 67 | `declaration-track:e44079c37f404a077427eb32b67ff82c2908291b8fd20e0e6fb0af2e47140474` |
| 3 | `instance` | [FreeCommRing.instInhabited](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommring-instinhabited--8684225a0ffe9b6ec439d9c1.md) | 71 | `declaration-track:8684225a0ffe9b6ec439d9c13a57501ab136522c9314db59767d1f97cf7c4264` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/of--ce3e550b337a35a273c3abd8.md) | 80 | `declaration-track:ce3e550b337a35a273c3abd863486c5b2515f921231a8296cc00ba503217dc0b` |
| 5 | `theorem` | [of_injective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/of-injective--a6ee932d11790ab5997c9eae.md) | 84 | `result-track:a6ee932d11790ab5997c9eaebf88df7ee5c2e7e6a16906341a69d99b04b57015` |
| 6 | `lemma` | [of_cons](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/of-cons--3411da4063317cc4cc1cbc90.md) | 90 | `result-track:3411da4063317cc4cc1cbc90b01f66ecb50cd8284039addc2d34451d286df06f` |
| 7 | `theorem` | [induction_on](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/induction-on--3e3cbedb18a69bd67f8127f9.md) | 99 | `result-track:3e3cbedb18a69bd67f8127f9d3391a67004fd6f4fb1b1146adb383ee8cee1d9c` |
| 8 | `def` | [liftToMultiset](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/lifttomultiset--e1a7f6f3377244b7f929e13a.md) | 117 | `declaration-track:e1a7f6f3377244b7f929e13aa3d11e94e5480a65e95a8f682cdd03cd88d98f7f` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/lift--f5c5449bceb1c299d1da7702.md) | 137 | `declaration-track:f5c5449bceb1c299d1da7702ebfdfd4c90c787ca0a3a70a3b61a0cd294abcaaa` |
| 10 | `theorem` | [lift_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/lift-of--10131801b7152654e9bdf1cc.md) | 142 | `result-track:10131801b7152654e9bdf1cca670d79f349c5c689644cf21b138595549c2470b` |
| 11 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/lift-comp-of--40b4bd6b6e9535b2c0d665ab.md) | 147 | `result-track:40b4bd6b6e9535b2c0d665ab5ea52a5dd4f621b4def8879c7fce832074ba276a` |
| 12 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/hom-ext--4b687c1145b568a18bdda5ea.md) | 155 | `result-track:4b687c1145b568a18bdda5ea68b4f70c69dd68c6a1728684422731e10c24f284` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/map--0017c872dccb8ccda398d240.md) | 164 | `declaration-track:0017c872dccb8ccda398d240e4094060f5d7ddeb5ebf4870c163d2a93dc2d3bd` |
| 14 | `theorem` | [map_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/map-of--d4f6caa244c20b61cae5c59f.md) | 169 | `result-track:d4f6caa244c20b61cae5c59f669c229430d895703767eb8a851e94805ea678ca` |
| 15 | `def` | [IsSupported](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported--867abe143b6e55f60985471a.md) | 174 | `declaration-track:867abe143b6e55f60985471ad6ae620851134fb62ffb1684e2191ad25f09fa98` |
| 16 | `theorem` | [isSupported_upwards](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-upwards--5061fb66e1fd07f444c63cad.md) | 182 | `result-track:5061fb66e1fd07f444c63cad589d0e8fe8a27bfe453dc219e539e27ffdf149fa` |
| 17 | `theorem` | [isSupported_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-add--f518e7af0170293b3af53218.md) | 186 | `result-track:f518e7af0170293b3af5321868e05a47bd262727027c990904c22f044a1799df` |
| 18 | `theorem` | [isSupported_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-neg--f5ec29d6be3be724e5edaa9e.md) | 190 | `result-track:f5ec29d6be3be724e5edaa9e89e56068a58caaa21ca00611b13141df002e80de` |
| 19 | `theorem` | [isSupported_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-sub--7ec99a6b3bda1e3fe130e4f6.md) | 194 | `result-track:7ec99a6b3bda1e3fe130e4f61171c71f7edbd169775eb0262c42102d01452891` |
| 20 | `theorem` | [isSupported_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-mul--706ecf4f04281937947fa76e.md) | 198 | `result-track:706ecf4f04281937947fa76e5419fdd4a37eb3cf7760d70d4d2d7b78acf8f453` |
| 21 | `theorem` | [isSupported_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-zero--f08fedd14263e254874feb98.md) | 202 | `result-track:f08fedd14263e254874feb9821ba3fd051881d99aab0c309d89ce794594e6042` |
| 22 | `theorem` | [isSupported_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-one--d4919d295b89469a93086826.md) | 206 | `result-track:d4919d295b89469a93086826d278fc557615f6076e5012d67b6e9bea15527ada` |
| 23 | `theorem` | [isSupported_int](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-int--d768ded3ef41b5a6634ee9e8.md) | 210 | `result-track:d768ded3ef41b5a6634ee9e8c6001414bbaa0e521f48408953068c3e7878e64e` |
| 24 | `def` | [restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/restriction--69635e415f6e722804df6d95.md) | 220 | `declaration-track:69635e415f6e722804df6d95b5b7e512224869ac2db890bfda66a27113f9de33` |
| 25 | `theorem` | [restriction_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/restriction-of--2bdd5f2b04465cac5bd6700f.md) | 229 | `result-track:2bdd5f2b04465cac5bd6700f0a14c78f2c60a4624da3d666d2260d6cb434a640` |
| 26 | `theorem` | [isSupported_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/issupported-of--9514f23f125049647396624f.md) | 235 | `result-track:9514f23f125049647396624fae119767de330edc259adce262f70b136b974934` |
| 27 | `theorem` | [map_subtype_val_restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/map-subtype-val-restriction--e1f108ec03a8bc4d00758288.md) | 269 | `result-track:e1f108ec03a8bc4d0075828822cf070f946fe0e7ec279c0df40b20a007de0066` |
| 28 | `theorem` | [exists_finite_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/exists-finite-support--7f75fa43c7555d2ade0d35d0.md) | 282 | `result-track:7f75fa43c7555d2ade0d35d01ecd855a49f7e7bb181e8e23244cb3c5eeff7777` |
| 29 | `theorem` | [exists_finset_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/exists-finset-support--18db364a91d72266e0e79366.md) | 295 | `result-track:18db364a91d72266e0e7936698a908fde6060292f59b54f79939fbb0da3fabff` |
| 30 | `def` | [toFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/tofreecommring--41aa32fad39d191339f2ab52.md) | 308 | `declaration-track:41aa32fad39d191339f2ab529ecb64c7a8d564130083862874af1e06f965d3dd` |
| 31 | `def` | [castFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/castfreecommring--575ba99b77b48dc8b04c1d4f.md) | 314 | `declaration-track:575ba99b77b48dc8b04c1d4f6ad57277b65106bcf5b961f2be15417145b3d279` |
| 32 | `instance` | [FreeCommRing.instCoe](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommring-instcoe--27724cd728749110a628fd29.md) | 316 | `declaration-track:27724cd728749110a628fd29aa903b49cc386b04a76a02890bdc3dc01efb2841` |
| 33 | `def` | [coeRingHom](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coeringhom--43d776aa16b9a1ac8977a891.md) | 321 | `declaration-track:43d776aa16b9a1ac8977a891a899717156b565f94335b2f53112e19c064d1215` |
| 34 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-zero--645ee0a6d566e82825fbf9f2.md) | 326 | `result-track:645ee0a6d566e82825fbf9f2838a39bca8c62d920ad62f21bfc97ab0d78f3efa` |
| 35 | `theorem` | [coe_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-one--8bde5c5c128ff8d0997ce82b.md) | 330 | `result-track:8bde5c5c128ff8d0997ce82bde9199e4d0cff91515a2680449b07854360be774` |
| 36 | `theorem` | [coe_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-of--e8592dc2617e431a63446887.md) | 336 | `result-track:e8592dc2617e431a63446887dc2d5937f77db57b4ede67145a8474b14a3529b0` |
| 37 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-neg--0108552903cef5e383611cbd.md) | 341 | `result-track:0108552903cef5e383611cbd18c0e403db125c221000e2b57351a02f9bde4cab` |
| 38 | `theorem` | [coe_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-add--3e4d66b9bb215dac2cd3640b.md) | 346 | `result-track:3e4d66b9bb215dac2cd3640bd1264d7b2416e133692e0adf4a7be9c63a4fbcf8` |
| 39 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-sub--882700a871dfa6e7c1b3434c.md) | 351 | `result-track:882700a871dfa6e7c1b3434c1cbd324e7ef9a38a59a22e2059397816a79703b8` |
| 40 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-mul--9a4c652d850c09e399e24662.md) | 356 | `result-track:9a4c652d850c09e399e246626c5101ffb087944f654c7fc3233fedc657faed70` |
| 41 | `theorem` | [coe_surjective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-surjective--9f557b2cddfe45c1db726c2f.md) | 362 | `result-track:9f557b2cddfe45c1db726c2fe6bf70273c97fdba398216f36e6bede1669ca41e` |
| 42 | `theorem` | [coe_eq](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/coe-eq--fad9490c6ad66501e40ec823.md) | 377 | `result-track:fad9490c6ad66501e40ec8231d53c204a104b34cd6f11a6edc4ba00bee9c6c9e` |
| 43 | `def` | [subsingletonEquivFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/subsingletonequivfreecommring--c3b85981a44dce58fc535682.md) | 394 | `declaration-track:c3b85981a44dce58fc535682a1eee521b89ee1e1144a0b0761c5ba4613953b99` |
| 44 | `instance` | [instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/instcommring--a8c61a3ddd8c590762dc3a3f.md) | 403 | `declaration-track:a8c61a3ddd8c590762dc3a3f8d25103a0ce5d4db9b974474ccb63827633c9842` |
| 45 | `def` | [freeCommRingEquivMvPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommringequivmvpolynomialint--77bb8f3230b5f31e9b13d243.md) | 416 | `declaration-track:77bb8f3230b5f31e9b13d2431540802f08ca1e97fd103ebe35bbfaba9319fbcb` |
| 46 | `def` | [freeCommRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommringpemptyequivint--c240d6e5ecb8c758cc063da3.md) | 423 | `declaration-track:c240d6e5ecb8c758cc063da3884d16b295ad9b61324e39e322ef9b406424f452` |
| 47 | `def` | [freeCommRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freecommringpunitequivpolynomialint--5d564a44afc6ba19be6c11f6.md) | 428 | `declaration-track:5d564a44afc6ba19be6c11f6947f95dba2693bf8a7042fbff3951281e3f898fb` |
| 48 | `def` | [freeRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freeringpemptyequivint--5de952db327f88d854c9f47b.md) | 435 | `declaration-track:5de952db327f88d854c9f47b33bfdbc184489f1ea9cd1034f0d02b1ea01fe9bf` |
| 49 | `def` | [freeRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean/declarations/freeringpunitequivpolynomialint--7ae83ad9175bcbde3cee58f0.md) | 440 | `declaration-track:7ae83ad9175bcbde3cee58f034b098a67323a2813fc784ae51029e98a31f59ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
