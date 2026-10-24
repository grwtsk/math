# Verification target: GRWTSK.Algebra.Equiv.Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba3fbe3cfee5592cb944acf07a6be4af07ce8ca",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba3fbe3cfee5592cb944acf07a6be4af07ce8ca`.

Source path: `GRWTSK/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/bialgequiv--f09f795b547235039358970a.md) | 39 | `declaration-track:f09f795b547235039358970a11ba25d5eae86d24f6a3265da73e959313556cba` |
| 2 | `class` | [BialgEquivClass](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/bialgequivclass--218dda537e2edf62fab4f6b1.md) | 51 | `declaration-track:218dda537e2edf62fab4f6b1f26bb366c53429b475bf5348ac1138b8e1a813a4` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/instance--c378c4e59e1f3badfbe49fc7.md) | 62 | `declaration-track:c378c4e59e1f3badfbe49fc7b8629e98b92fe4aeb0adcfa04d3f79e8fd4e421a` |
| 4 | `def` | [toBialgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tobialgequiv--30aaca703fe968c1d4e3325c.md) | 72 | `declaration-track:30aaca703fe968c1d4e3325c2ea58afd225800b6f625f5f08b0e6985b7a235ff` |
| 5 | `instance` | [instCoeToBialgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/instcoetobialgequiv--a474b55b8daee58ad45be4f4.md) | 76 | `declaration-track:a474b55b8daee58ad45be4f4b84d45b066fba22b43c50c252187c2905b9f628d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/instance--b6aa2e791b2d8fbbe6abed3d.md) | 79 | `declaration-track:b6aa2e791b2d8fbbe6abed3d176ecacdc56ae8391e1b1916a4293aef66c91218` |
| 7 | `def` | [toBialgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tobialghom--a1ed82ca247dc53e7964b209.md) | 96 | `declaration-track:a1ed82ca247dc53e7964b209989f99f2335ba00b0482051b4f3dc27cc5a81c05` |
| 8 | `def` | [toAlgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/toalgequiv--1f6c598218a414d1f1dd1b45.md) | 102 | `declaration-track:1f6c598218a414d1f1dd1b45a13f6324f41d0dd84834f25d3c4069c3ba4a3824` |
| 9 | `def` | [toEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/toequiv--71858de32e14a2964bcea9c0.md) | 109 | `declaration-track:71858de32e14a2964bcea9c092cb06b3e606e718e30cfafd42043c883cbc2d66` |
| 10 | `theorem` | [toEquiv_injective](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/toequiv-injective--6930c725034975f151d5c09c.md) | 111 | `result-track:6930c725034975f151d5c09c12219c4639fd4dd335a080985667c55d008d6910` |
| 11 | `theorem` | [toEquiv_inj](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/toequiv-inj--737110577729a2da0123c87d.md) | 116 | `result-track:737110577729a2da0123c87d45bc77ff4c766304289d78d8186e1b848bfbe685` |
| 12 | `theorem` | [toBialgHom_injective](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tobialghom-injective--b8e7de0ed99b530ea1e5d2c7.md) | 119 | `result-track:b8e7de0ed99b530ea1e5d2c7f9b1a1dfa65dfdad88a5b90e31c901023b945233` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/instance--d3a311a8ab0a3259f06b28dd.md) | 122 | `declaration-track:d3a311a8ab0a3259f06b28dd09f0b9213afb91751443b17095e22bc17c9adde5` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/instance--c5d1df9fe5fa4ca5ed43255e.md) | 129 | `declaration-track:c5d1df9fe5fa4ca5ed43255e7f2d9880e2b8ea7fb05ba4104de59f0020c34bcc` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/instance--2fc7b675a3ad34d15513d15e.md) | 133 | `declaration-track:2fc7b675a3ad34d15513d15e8a7d071f490690e5e6fa9d869cb401f2f5704d67` |
| 16 | `theorem` | [toBialgHom_inj](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tobialghom-inj--e313cd933c6574aa29012828.md) | 141 | `result-track:e313cd933c6574aa29012828667b3bb9677f63b7f974a502f228500878ed6bd7` |
| 17 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-mk--397dafc520193b1acdebf5c5.md) | 145 | `result-track:397dafc520193b1acdebf5c5fcdceca1b0e9cabc14553aea47c40e76d0c95d32` |
| 18 | `theorem` | [coe_coe](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-coe--0e85687c239e5bdf143f611b.md) | 158 | `result-track:0e85687c239e5bdf143f611b824f5d776091f97cb738879927f8bf654f1843d2` |
| 19 | `theorem` | [toCoalgEquiv_eq_coe](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tocoalgequiv-eq-coe--852b8696d42a488ff481e91b.md) | 162 | `result-track:852b8696d42a488ff481e91bdb380a363729ebc397c6f85e767273f64dddfe27` |
| 20 | `theorem` | [toBialgHom_eq_coe](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tobialghom-eq-coe--943d9f7633ff25b74153a8e2.md) | 166 | `result-track:943d9f7633ff25b74153a8e2d2bc9e6ddd262c028dc3c2445178cf7a28b8796d` |
| 21 | `theorem` | [toAlgEquiv_eq_coe](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/toalgequiv-eq-coe--47b456685c9995ad6e1cd5c6.md) | 170 | `result-track:47b456685c9995ad6e1cd5c6d70c4a7271b1273699c65cdfa959acb9571572f3` |
| 22 | `theorem` | [coe_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-tocoalgequiv--c683a6cf322be934ac8d0789.md) | 174 | `result-track:c683a6cf322be934ac8d07891c9a2e901f712345c3798a8ed442198798b1f164` |
| 23 | `theorem` | [coe_toBialgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-tobialghom--130359620a251fc92774b389.md) | 178 | `result-track:130359620a251fc92774b389a2bb43b32915ffeef1d0978caa17ceae64da53aa` |
| 24 | `theorem` | [coe_toAlgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-toalgequiv--812ffec09636ded302e95c4d.md) | 182 | `result-track:812ffec09636ded302e95c4dac21aa1a49b60fa767d2d025a881ab84e1462fb3` |
| 25 | `theorem` | [toCoalgEquiv_toCoalgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tocoalgequiv-tocoalghom--8c43aebb0f9c4139068edb01.md) | 185 | `result-track:8c43aebb0f9c4139068edb01c4281375c28282105fa8d3b64cff49abba17332a` |
| 26 | `theorem` | [toBialgHom_toAlgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/tobialghom-toalghom--86af4330a2d8a543d55443e2.md) | 188 | `result-track:86af4330a2d8a543d55443e2f04c03c3dea4f44a33ce4e45d0c0399929d595d4` |
| 27 | `theorem` | [ext](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/ext--bf08eb926e5c2e45d36344e8.md) | 195 | `result-track:bf08eb926e5c2e45d36344e817e12b02f83c716db7d8cd10c0983b8a936c0433` |
| 28 | `theorem` | [congr_arg](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/congr-arg--1323b4cce3455a67eb10cbed.md) | 198 | `result-track:1323b4cce3455a67eb10cbed0983f1af4fcdda9465a4b74f2620ff8c2645bf0a` |
| 29 | `theorem` | [congr_fun](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/congr-fun--456df23cb14fa47b98219dca.md) | 201 | `result-track:456df23cb14fa47b98219dca9affa08764c0a759440d9c463ae9803155f9c4b9` |
| 30 | `def` | [Simps.apply](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/simps-apply--901207b136026f3bc5246fb5.md) | 207 | `declaration-track:901207b136026f3bc5246fb54abfb86d2e2d69b4ce6af3d28766252b712fc268` |
| 31 | `def` | [Simps.symm_apply](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/simps-symm-apply--2d0a17a6472a2edfb97a254a.md) | 213 | `declaration-track:2d0a17a6472a2edfb97a254a3b4df2d77145e3cc48d0a48cf4b034452d5c3e8f` |
| 32 | `def` | [refl](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/refl--cae919547b4d8a2e71f50216.md) | 224 | `declaration-track:cae919547b4d8a2e71f502169a32b83593c281d7ebb77e7b6b9a12f1419baa7c` |
| 33 | `theorem` | [refl_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/refl-tocoalgequiv--cd2ec60cd678be0128e04f80.md) | 228 | `result-track:cd2ec60cd678be0128e04f80c3985959f45342a7c8653f5075e2144b279f6989` |
| 34 | `theorem` | [refl_toBialgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/refl-tobialghom--03114726b7fb2f458c1b50c3.md) | 231 | `result-track:03114726b7fb2f458c1b50c3c9fff2b27f2871eafc09ac42fae2e11e96f71c90` |
| 35 | `def` | [symm](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/symm--1e28eff5e46e0810591aadf0.md) | 236 | `declaration-track:1e28eff5e46e0810591aadf086299304ab9dc14dad0e76b011649e8accfe4369` |
| 36 | `theorem` | [symm_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/symm-tocoalgequiv--72f0bb51787036eec9eb8cc7.md) | 240 | `result-track:72f0bb51787036eec9eb8cc7c381100bba976c6ea044a9f059b027d50841c91e` |
| 37 | `theorem` | [invFun_eq_symm](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/invfun-eq-symm--69d610a9fe03c1732a8d4a36.md) | 243 | `result-track:69d610a9fe03c1732a8d4a3631a81b404cb15a4ad08770ed18ab277d222bcf8f` |
| 38 | `theorem` | [coe_toEquiv_symm](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-toequiv-symm--ecd116681ef0ff0f21d3373a.md) | 247 | `result-track:ecd116681ef0ff0f21d3373a6f0ddab62fa49d5f1f315804b4861843d3564d5b` |
| 39 | `def` | [trans](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/trans--5af20fe2460fa17cebdfc013.md) | 254 | `declaration-track:5af20fe2460fa17cebdfc013f57f19ec3ad6fc40799ffbcfd45662c1723d664e` |
| 40 | `theorem` | [trans_toCoalgEquiv](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/trans-tocoalgequiv--e18020c2eda48b8a8d45e0c7.md) | 258 | `result-track:e18020c2eda48b8a8d45e0c7294631b1b3e394068df8eb1375f28df3de073228` |
| 41 | `theorem` | [trans_toBialgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/trans-tobialghom--bd43bb506d6cb2b1a42c6319.md) | 262 | `result-track:bd43bb506d6cb2b1a42c63195a78c251ee04dc40b37e6d7ea8b3506bba27d8d6` |
| 42 | `theorem` | [coe_toEquiv_trans](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-toequiv-trans--05dc5b2d6c668f967e8908d1.md) | 266 | `result-track:05dc5b2d6c668f967e8908d173acc24d1aebdd16a3a66752a8b27f19aa200607` |
| 43 | `def` | [ofBialgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/ofbialghom--94d8997cd1ce1f8c42459b30.md) | 270 | `declaration-track:94d8997cd1ce1f8c42459b30806c359b4e87dedc934fce81a97c049bfad9f238` |
| 44 | `theorem` | [coe_ofBialgHom](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-ofbialghom--fd21e34e8f7ffac426eef6ab.md) | 279 | `result-track:fd21e34e8f7ffac426eef6abc34227fa2c21c0f82cd0b91ee28ac90032889989` |
| 45 | `theorem` | [ofBialgHom_symm](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/ofbialghom-symm--583cd866afeb4bcafa21d10c.md) | 283 | `result-track:583cd866afeb4bcafa21d10c92c62141af5e151f575f3e34c55f68661f2a6e1c` |
| 46 | `def` | [ofBijective](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/ofbijective--c2fcade6912a0a0b840a3de1.md) | 291 | `declaration-track:c2fcade6912a0a0b840a3de128641ac33a3bca11c83f82ffb3a1132a131cb16d` |
| 47 | `theorem` | [coe_ofBijective](../../../../mathematics/Algebra/Equiv/Variantbde46f944ece2c0fffcdca21451288cde22690b0ff6c980f9cf2b6707b58bbe1.lean/declarations/coe-ofbijective--110486e52ec0a81a83d7bb21.md) | 297 | `result-track:110486e52ec0a81a83d7bb21517ded1744a5d4cac831d3cb0de86a0db1097180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
