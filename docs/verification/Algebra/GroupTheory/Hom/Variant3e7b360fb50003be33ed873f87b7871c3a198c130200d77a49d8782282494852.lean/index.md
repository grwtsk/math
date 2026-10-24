# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf55a776230ee3397e9cc3b6f9e90231b3b23f07",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf55a776230ee3397e9cc3b6f9e90231b3b23f07`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/of-map--4cbb6b466cf921cd7301de4d.md) | 41 | `result-track:4cbb6b466cf921cd7301de4df1cfa6c070d2af7c950c1c2be60244eb3e1fcdf9` |
| 2 | `lemma` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/of-injective--521f3fbd04665fbefeac5a16.md) | 44 | `result-track:521f3fbd04665fbefeac5a1612e0a6dc3f4f024d291fa285771d7f5a255d9b79` |
| 3 | `class` | [MonoidWithZeroHomClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/monoidwithzerohomclass--cfab03c219676d16c81aab44.md) | 56 | `declaration-track:cfab03c219676d16c81aab440226d4267bb3cea9ee5a25b701cc60984bbadd60` |
| 4 | `structure` | [MonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/monoidwithzerohom--32b8dce30f8c904e35121c12.md) | 69 | `declaration-track:32b8dce30f8c904e35121c12ed634bd76d397deed48ce99284d4052fd91985c9` |
| 5 | `def` | [MonoidWithZeroHomClass.toMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/monoidwithzerohomclass-tomonoidwithzerohom--9c1ac826d7460316d4e870a5.md) | 78 | `declaration-track:9c1ac826d7460316d4e870a583535ba4e2b79332f99cf3c49694a33f5754cf11` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/instance--a131a18b5c22fca7e40f16e1.md) | 83 | `declaration-track:a131a18b5c22fca7e40f16e19ec145e70d6fca128f350b96005f2b8d72841ec3` |
| 7 | `instance` | [funLike](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/funlike--f0b1ddb8f2ff977833f2bf23.md) | 91 | `declaration-track:f0b1ddb8f2ff977833f2bf23da373a608c0dda1f0265bdc1cfe58ca08df2d1b1` |
| 8 | `instance` | [monoidWithZeroHomClass](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/monoidwithzerohomclass--f16601c13be041ba8b0242d4.md) | 95 | `declaration-track:f16601c13be041ba8b0242d4d63e590a77047258019fbc206df22064de3c9b0a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/instance--0fc03c97342c8d8475e7455f.md) | 100 | `declaration-track:0fc03c97342c8d8475e7455fa0cc14369968ac72902c3b94b919281d1788bb32` |
| 10 | `lemma` | [coe_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coe-coe--1fb2a9cb189baa9ba3393ace.md) | 104 | `result-track:1fb2a9cb189baa9ba3393ace941dc04d53509974a14c6d9e9381578fafe59470` |
| 11 | `instance` | [coeToMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coetomonoidhom--f57d729e66ffd82599e9ad47.md) | 114 | `declaration-track:f57d729e66ffd82599e9ad47ada8f5d218e16803fd07b579f282c01208f06418` |
| 12 | `instance` | [coeToZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coetozerohom--4c97d565c3d484dad9ca0768.md) | 120 | `declaration-track:4c97d565c3d484dad9ca07686c71e5bdde36f27d506517e422e03e575d2815ad` |
| 13 | `lemma` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coe-mk--75ae128b6fdf6d7f8eb6bcb1.md) | 126 | `result-track:75ae128b6fdf6d7f8eb6bcb1d2d4aee5b1ab0b26acec87d96f40a4c0034ed772` |
| 14 | `lemma` | [toZeroHom_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/tozerohom-coe--d03579c0f16a3b128129bc5b.md) | 128 | `result-track:d03579c0f16a3b128129bc5baa3933c7f85b2ead377845a1a4dc517d3940e421` |
| 15 | `lemma` | [toMonoidHom_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/tomonoidhom-coe--0a527089e2c1bc0b7703957f.md) | 130 | `result-track:0a527089e2c1bc0b7703957f10a382290e21c4e56156efb975d4bda457e60a4a` |
| 16 | `lemma` | [ext](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/ext--b4bec075c836c57fbc7ab950.md) | 132 | `result-track:b4bec075c836c57fbc7ab95032721e6330924212187f56e586570960e3048e14` |
| 17 | `lemma` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/mk-coe--3a5e54a4ee8fe078316cc842.md) | 134 | `result-track:3a5e54a4ee8fe078316cc842b553d59645841ad9a6838d0352543c9c2c3984dd` |
| 18 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/copy--cd8dfbe6a8df541f6b88c087.md) | 140 | `declaration-track:cd8dfbe6a8df541f6b88c087734c836e512ce33c9bd54ff7a4d40dbcd7091aa6` |
| 19 | `lemma` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coe-copy--7b98895cec4787d027a2f1a7.md) | 144 | `result-track:7b98895cec4787d027a2f1a76059a5c8ad07e528cc1713621238ea4add925cb0` |
| 20 | `lemma` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/copy-eq--7f2f0fd8738dac6b245388f7.md) | 146 | `result-track:7f2f0fd8738dac6b245388f7bb5503122abae06d20f2704e8c93cc8a80f146d3` |
| 21 | `lemma` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/map-one--494269df37301483a499c879.md) | 148 | `result-track:494269df37301483a499c879a12ceac173755c54aaccd057ce482e1c9cdc7a01` |
| 22 | `lemma` | [map_zero](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/map-zero--c43cc924119d9d1d8873e0fb.md) | 150 | `result-track:c43cc924119d9d1d8873e0fba7416450ad2dc63cbac4745a7993add7a3a1086a` |
| 23 | `lemma` | [map_mul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/map-mul--38ce2ff682b5feabae448544.md) | 152 | `result-track:38ce2ff682b5feabae448544db4c25a9bcfe404989cc435307259627d088ce8f` |
| 24 | `theorem` | [map_ite_zero_one](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/map-ite-zero-one--8a43d53de51a72b08e6b2b9f.md) | 155 | `result-track:8a43d53de51a72b08e6b2b9ff0e26db2e9eefd83e7d874adba466ad062763738` |
| 25 | `theorem` | [map_ite_one_zero](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/map-ite-one-zero--ccce9ecde194ffd2fb04f897.md) | 161 | `result-track:ccce9ecde194ffd2fb04f8974f59fb0a9dcaa2c685daab532f041128d1fd7b06` |
| 26 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/id--a60c4df32e2752b4a44a94b5.md) | 168 | `declaration-track:a60c4df32e2752b4a44a94b521a224a5c24f84817950b1bbff1a3b9d314262d2` |
| 27 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/comp--6b583309fb7a52f08aa63aa5.md) | 175 | `declaration-track:6b583309fb7a52f08aa63aa58741c28056fc71aecfafc1bc661447fae11918d1` |
| 28 | `lemma` | [coe_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coe-comp--7162defe07e6d212768aa204.md) | 181 | `result-track:7162defe07e6d212768aa204d8d9fd851f28ebcc9ee609170521ad5259f23634` |
| 29 | `lemma` | [comp_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/comp-apply--269d1b4e6889fc59f75d05ec.md) | 183 | `result-track:269d1b4e6889fc59f75d05ec72d404c6f6c5f0820f6f01d3e22660ea0a33a017` |
| 30 | `lemma` | [comp_assoc](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/comp-assoc--d81d7a0ca5f75e1d91480cb1.md) | 185 | `result-track:d81d7a0ca5f75e1d91480cb1817616071743eb68a64e4f5181d549f1e6193cc7` |
| 31 | `lemma` | [cancel_right](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/cancel-right--6afaed3cdf29d7cfa5b6f30e.md) | 188 | `result-track:6afaed3cdf29d7cfa5b6f30e7ea11c46a8cb8c04afbd81b00cc3245c827f91bc` |
| 32 | `lemma` | [cancel_left](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/cancel-left--b33b8f5369a5d2eccb7f5e5a.md) | 192 | `result-track:b33b8f5369a5d2eccb7f5e5a49c4a98cb65115752f34fb7991588bc7e0e903c3` |
| 33 | `lemma` | [toMonoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/tomonoidhom-injective--be86f9f6fddf8823c62062d7.md) | 197 | `result-track:be86f9f6fddf8823c62062d7722a4bf1a30b235ae4c065ed453124167a6e51db` |
| 34 | `lemma` | [toZeroHom_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/tozerohom-injective--e2b12a4a1ed79405976b089a.md) | 200 | `result-track:e2b12a4a1ed79405976b089adefad7d0becbda932368198e0778cb05668b2158` |
| 35 | `lemma` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/comp-id--62c720cec4c1d515ca794b07.md) | 203 | `result-track:62c720cec4c1d515ca794b07cc4cd185f8172b33ce3f311f2210fc5ca93fe681` |
| 36 | `lemma` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/id-comp--ab7ff675ec8d8a716739cfd7.md) | 205 | `result-track:ab7ff675ec8d8a716739cfd776f0fad8167a88e5e2a17807b03a576a74238de2` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/instance--052054a04c44def16d5d4278.md) | 208 | `declaration-track:052054a04c44def16d5d4278a76c0520c0ab575baf76c6e8b6db4ae130b79d59` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/instance--026bdf60596172de0ce42907.md) | 212 | `declaration-track:026bdf60596172de0ce42907e17b8405332f2f7d174bfa0c57914947bea0c78a` |
| 39 | `def` | [powMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/powmonoidwithzerohom--ac7ef316f162ab6a2b9eb4b1.md) | 223 | `declaration-track:ac7ef316f162ab6a2b9eb4b1964002d1180ec3b6daae4edcf26cb533ef3ebe85` |
| 40 | `lemma` | [coe_powMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/coe-powmonoidwithzerohom--c8bb554bd69c34b12fef0eb2.md) | 226 | `result-track:c8bb554bd69c34b12fef0eb2de318d6bfd0c3b77462fb31cb6903c1ebaac9ee4` |
| 41 | `lemma` | [powMonoidWithZeroHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3e7b360fb50003be33ed873f87b7871c3a198c130200d77a49d8782282494852.lean/declarations/powmonoidwithzerohom-apply--06d41fb987525040a7c1d6f5.md) | 228 | `result-track:06d41fb987525040a7c1d6f5f7a87a86b99d817ff239a4c5e2252795ef0fc5f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
