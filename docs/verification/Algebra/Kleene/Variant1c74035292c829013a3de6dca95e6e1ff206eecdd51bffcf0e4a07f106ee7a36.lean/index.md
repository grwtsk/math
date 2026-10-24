# Verification target: GRWTSK.Algebra.Kleene.Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0efd534146d77613f0917768f3b8f9c0987c646",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0efd534146d77613f0917768f3b8f9c0987c646`.

Source path: `GRWTSK/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean.json)

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
| 1 | `class` | [IdemSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/idemsemiring--92f523a3704605a5e1e28cd1.md) | 61 | `declaration-track:92f523a3704605a5e1e28cd1ab8a7b955c0e92e504f21be70407dadfbce79064` |
| 2 | `class` | [IdemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/idemcommsemiring--c9fcf31736c26c245b99acac.md) | 66 | `declaration-track:c9fcf31736c26c245b99acac3ad6a48766d43f545c6ebb958fa03e98e9653f8f` |
| 3 | `class` | [KStar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar--14e12be53e482da0f923e33a.md) | 69 | `declaration-track:14e12be53e482da0f923e33a1f3940bdd19e30055c19b630a5406ec3708740ea` |
| 4 | `class` | [KleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kleenealgebra--5eab2063df582bce9ac56ec2.md) | 85 | `declaration-track:5eab2063df582bce9ac56ec254af7bfff0010506cbe3adcfbac71cfc797eadd8` |
| 5 | `abbrev` | [IdemSemiring.ofSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/idemsemiring-ofsemiring--44b7e0bfe31786e420d8a397.md) | 94 | `declaration-track:44b7e0bfe31786e420d8a397c86749954c8424fc36d4f90c22397034010da5f0` |
| 6 | `theorem` | [add_eq_sup](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/add-eq-sup--08a9250e076be8f46cbbf910.md) | 110 | `result-track:08a9250e076be8f46cbbf910979e5ce8e9dab95d71a661dc41335b6023610e30` |
| 7 | `theorem` | [add_idem](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/add-idem--a88bc2cd76be8cd7ddd82976.md) | 115 | `result-track:a88bc2cd76be8cd7ddd82976a8852555152b11b242ed8c9c6eb2ed0b986fce0e` |
| 8 | `lemma` | [natCast_eq_one](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/natcast-eq-one--ea27c9eaf97c067e37f639d7.md) | 117 | `result-track:ea27c9eaf97c067e37f639d771a056988af4b8650c00e81d8e4e2c0458d5cfa6` |
| 9 | `lemma` | [ofNat_eq_one](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/ofnat-eq-one--b9dd5d5d52b1cc0ccf2a71e3.md) | 123 | `result-track:b9dd5d5d52b1cc0ccf2a71e3bd37e449c3d210c023108f4a985df809859a517f` |
| 10 | `theorem` | [nsmul_eq_self](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/nsmul-eq-self--a5072d323113c95767176542.md) | 126 | `result-track:a5072d323113c957671765421735851fc3afe0f2eccbcebcc607812aa98ca745` |
| 11 | `theorem` | [add_eq_left_iff_le](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/add-eq-left-iff-le--88c59ac0b6fc20d902d3861c.md) | 131 | `result-track:88c59ac0b6fc20d902d3861c807a92206da9777f36b2f38e9285053375f0c793` |
| 12 | `theorem` | [add_eq_right_iff_le](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/add-eq-right-iff-le--bbefb09e46116de1a5530922.md) | 133 | `result-track:bbefb09e46116de1a55309227191bfbe6524aeb6c299d3681ec13364a3a4684a` |
| 13 | `theorem` | [add_le_iff](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/add-le-iff--cafcd03b308e55c88cdeefd6.md) | 139 | `result-track:cafcd03b308e55c88cdeefd630687b153c7d5d4c3b8370f86aed58a5e34d804c` |
| 14 | `theorem` | [add_le](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/add-le--d1e6b5d71ad5da5ec9025189.md) | 141 | `result-track:d1e6b5d71ad5da5ec90251894f7954e4711c8fb36e3ec37224c0963022fc2bee` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--35f643304c76b97f40f0f865.md) | 145 | `declaration-track:35f643304c76b97f40f0f865e62daeacaa6a027ae4ad1b49ea55e7e11050cc85` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--a3b7068d8d3fd893625e63ad.md) | 151 | `declaration-track:a3b7068d8d3fd893625e63ade3aa012f13605c8bd6f45d6f4d06e2366e86fcc6` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--6e2ec06bd4585275e91c1fa8.md) | 157 | `declaration-track:6e2ec06bd4585275e91c1fa89dcbe31d8b5bc957322cbc2112884db22d597907` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--1f8a8bf4eb2fa575dd7bc806.md) | 161 | `declaration-track:1f8a8bf4eb2fa575dd7bc806f5823443fa6994a2c63dbe517a659e0530e669fc` |
| 19 | `theorem` | [one_le_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/one-le-kstar--35272c1db9d26dc723236b23.md) | 171 | `result-track:35272c1db9d26dc723236b239abe2141a5db4995e9bbc7772711e5ead82e943d` |
| 20 | `theorem` | [mul_kstar_le_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/mul-kstar-le-kstar--adce53b1871d693f7a93b48e.md) | 174 | `result-track:adce53b1871d693f7a93b48ef3c56c6c244ae5868133b6fc21875b098dbabd27` |
| 21 | `theorem` | [kstar_mul_le_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-mul-le-kstar--1c07c04e4d4e9119d4c0cb5b.md) | 177 | `result-track:1c07c04e4d4e9119d4c0cb5bd13812c139949671166698c58f64cdb7a39d6bae` |
| 22 | `theorem` | [mul_kstar_le_self](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/mul-kstar-le-self--f7f0c2c5c5427ee567791fed.md) | 180 | `result-track:f7f0c2c5c5427ee567791fed899cdd3b2b549a815c97e73f45e6ce1ec928b524` |
| 23 | `theorem` | [kstar_mul_le_self](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-mul-le-self--8d02bf308d27543ccebce55c.md) | 183 | `result-track:8d02bf308d27543ccebce55cd3cddc88164623efd8a6bb5acb0ec263c8cf7813` |
| 24 | `theorem` | [mul_kstar_le](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/mul-kstar-le--0f63cc36b029e0a7a28af023.md) | 186 | `result-track:0f63cc36b029e0a7a28af02384eacd5b65e31451187e9cebd5efd5d093930719` |
| 25 | `theorem` | [kstar_mul_le](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-mul-le--419fa706613d229fed7e4340.md) | 188 | `result-track:419fa706613d229fed7e4340957cdb812703bbb6f85301526bcaf00d7aa7a368` |
| 26 | `theorem` | [kstar_le_of_mul_le_left](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-le-of-mul-le-left--63d2219a3e6a3f2254498fd6.md) | 190 | `result-track:63d2219a3e6a3f2254498fd6fb964b2904dfde6882f200e990baf8f01a54cbce` |
| 27 | `theorem` | [kstar_le_of_mul_le_right](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-le-of-mul-le-right--015ee163c2fb15820ff16f2e.md) | 193 | `result-track:015ee163c2fb15820ff16f2e29b2e1b109ab176dbcc7cee2dba899930feb5c23` |
| 28 | `theorem` | [le_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/le-kstar--0933e7d6689d141da891aa8c.md) | 197 | `result-track:0933e7d6689d141da891aa8cf746d9389a9a0eb89c560b5432cd1fd824c60661` |
| 29 | `theorem` | [kstar_mono](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-mono--c78b7c6473d754118f3107ff.md) | 201 | `result-track:c78b7c6473d754118f3107ffcbfa088f2a64beb7e5b073a7d65efcfe9bef2780` |
| 30 | `theorem` | [kstar_eq_one](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-eq-one--ad9449ec430d99712eab5599.md) | 206 | `result-track:ad9449ec430d99712eab5599a0c1ead2c2cad937abde3834b50023caedce869c` |
| 31 | `lemma` | [kstar_zero](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-zero--62840cf2256a6b680b94d91c.md) | 210 | `result-track:62840cf2256a6b680b94d91c632fece77e7ff63f504d4c85027d4a35ea63ce29` |
| 32 | `theorem` | [kstar_one](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-one--9f8f34ddc1d8bfbc88337d06.md) | 213 | `result-track:9f8f34ddc1d8bfbc88337d06caaf5eb49e3815a7e93f68c849eab6dbdcdefb08` |
| 33 | `theorem` | [kstar_mul_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-mul-kstar--639bdd31474e2be6e09d1142.md) | 217 | `result-track:639bdd31474e2be6e09d1142b3da2e04e4f9623c28c3c82d50fe8c7bf40b8620` |
| 34 | `theorem` | [kstar_eq_self](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-eq-self--6adc7c7ea10e0817aefb2dd8.md) | 221 | `result-track:6adc7c7ea10e0817aefb2dd871b1b444fbe6652f6643ed791ac6a0ed9b3be99b` |
| 35 | `theorem` | [kstar_idem](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-idem--74353c04d23b88e630930a51.md) | 226 | `result-track:74353c04d23b88e630930a51b854159b2f44de1732b3fe5d77253de26eec53ec` |
| 36 | `theorem` | [pow_le_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/pow-le-kstar--3af745b1ad47ca351a8805cd.md) | 230 | `result-track:3af745b1ad47ca351a8805cd5ec9123c7483e18f11a917a799aeed52913b15fe` |
| 37 | `theorem` | [one_add_mul_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/one-add-mul-kstar--cbb8026be929c5a2d8eb92a3.md) | 234 | `result-track:cbb8026be929c5a2d8eb92a3d846cdb0940d84fe90a4a6c2175eb5133792e2be` |
| 38 | `theorem` | [one_add_kstar_mul](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/one-add-kstar-mul--6d7f95afba6fbe8e77598079.md) | 245 | `result-track:6d7f95afba6fbe8e775980798b42d5f1b7c9386344f5bbb1467fbbfb342d49d6` |
| 39 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instidemsemiring--cc6e7bec6afe6f97d32526ea.md) | 260 | `declaration-track:cc6e7bec6afe6f97d32526ea39ce005b49489799bd3ae73808ba397c116a4c17` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--e19ad6f9fe5a7ab610c13a58.md) | 263 | `declaration-track:e19ad6f9fe5a7ab610c13a586058feceec771a9c356a949a633c8df060a4a79f` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--394184456c1fe46095c3acf4.md) | 269 | `declaration-track:394184456c1fe46095c3acf4c9b200e62ebb1084e468ca5a2be66265f16e97c5` |
| 42 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-def--7ca7190316ddce5821da038e.md) | 277 | `result-track:7ca7190316ddce5821da038e374953829c4e5d11ae83bbde1c46e095aca95233` |
| 43 | `theorem` | [fst_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/fst-kstar--69c5d01c300963535e2a2858.md) | 281 | `result-track:69c5d01c300963535e2a285890b9cc50558cfd944a544b2ff65cc528a8f4842a` |
| 44 | `theorem` | [snd_kstar](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/snd-kstar--878701be23d73ef9913b6199.md) | 285 | `result-track:878701be23d73ef9913b6199c6041c9dee9ab82fdf0188e38b052ed8535b67f7` |
| 45 | `instance` | [instIdemSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instidemsemiring--7276ebb1b0bf04e9dff00700.md) | 292 | `declaration-track:7276ebb1b0bf04e9dff00700b60e51dc98c4ac1392aaba893b24de7ac64fca2f` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--9cdfaa61d7d967037ef50369.md) | 295 | `declaration-track:9cdfaa61d7d967037ef50369c50015f125bb8b4d919d8bf34da0d3be3db788ae` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/instance--90ec4bc9a0428196c37d057c.md) | 301 | `declaration-track:90ec4bc9a0428196c37d057cea634d72cc108ba269dd84794d89d2f3167c9976` |
| 48 | `theorem` | [kstar_def](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-def--55ad8bf1469716ca31739323.md) | 310 | `result-track:55ad8bf1469716ca31739323d0f6530eecc7005ca6e52410b7f211a16a3c66d3` |
| 49 | `theorem` | [kstar_apply](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kstar-apply--713385bcd20d138b07d28c3f.md) | 314 | `result-track:713385bcd20d138b07d28c3f4bad316157b5fd48eb7d47411cace4d2b031a3b7` |
| 50 | `abbrev` | [idemSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/idemsemiring--8c218722285453f57ad0313a.md) | 323 | `declaration-track:8c218722285453f57ad0313a430f0db3cd0aea2d13d840627b3bd1e8b74e4731` |
| 51 | `abbrev` | [idemCommSemiring](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/idemcommsemiring--d050903f47f535cc6834e219.md) | 338 | `declaration-track:d050903f47f535cc6834e2194dd66b8379d032f9072f6f432a8e822df098f1d7` |
| 52 | `abbrev` | [kleeneAlgebra](../../../../mathematics/Algebra/Kleene/Variant1c74035292c829013a3de6dca95e6e1ff206eecdd51bffcf0e4a07f106ee7a36.lean/declarations/kleenealgebra--036abb31ce4c92897d2712b2.md) | 351 | `declaration-track:036abb31ce4c92897d2712b29e88deb4d42841bdace7f4525c893d167a108bb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
