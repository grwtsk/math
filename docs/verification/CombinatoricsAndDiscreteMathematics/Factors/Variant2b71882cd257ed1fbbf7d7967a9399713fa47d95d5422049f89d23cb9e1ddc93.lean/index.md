# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Factors.Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "534c281a3a50bd41215ba117d9f3eaab914e5349",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `534c281a3a50bd41215ba117d9f3eaab914e5349`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.OrderedMonoid` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/primemultiset--ceea4f8e09ae3905ba59015a.md) | 27 | `declaration-track:ceea4f8e09ae3905ba59015ae2f066309a612aff82633920046bed428ed260d6` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/instance--9337fa00a43686d31ef81d12.md) | 34 | `declaration-track:9337fa00a43686d31ef81d12dc32d24072f427a9d569aed85979d84a5ab49042` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/instance--49249795ddc7b14caee7be8f.md) | 37 | `declaration-track:49249795ddc7b14caee7be8f898253b948ce5cc221ffdc4610a21d0dd505d162` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/instance--e34dfed8c9ee2dbed5cd5075.md) | 40 | `declaration-track:e34dfed8c9ee2dbed5cd50751e3682f1b50e2780cdf8672f4c64000a0c9b5555` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/instance--6569a77bac01cd2a3bee7d87.md) | 43 | `declaration-track:6569a77bac01cd2a3bee7d87ef67064ba9efe03aad3ad2756251e3c37a19a145` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/instance--7ffc328019437ce671380c91.md) | 49 | `declaration-track:7ffc328019437ce671380c9156ce2522fc0b5eee6e374dcaa023e8e3e79dc98e` |
| 7 | `def` | [ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/ofprime--792f2275525fc2da91b7f213.md) | 52 | `declaration-track:792f2275525fc2da91b7f21353c9993ec9e4a008d07cbd2df849353b83e12022` |
| 8 | `theorem` | [card_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/card-ofprime--9d308da48b004cee8d1a378b.md) | 55 | `result-track:9d308da48b004cee8d1a378b25073648e477641b7bcbc3d7d2f166b3c8ecde40` |
| 9 | `def` | [toNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/tonatmultiset--a6a78bb5703dad9c513a36b9.md) | 66 | `declaration-track:a6a78bb5703dad9c513a36b9d4b27ec931d42cdcd4cd18a1b362f3bb15ec0eca` |
| 10 | `instance` | [coeNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coenat--74b0c321f7df25381a8cb856.md) | 68 | `declaration-track:74b0c321f7df25381a8cb856f13558e23ce3753ed77f43ec50e99354cc3e6503` |
| 11 | `def` | [coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coenatmonoidhom--043f05ef8d6eea7193809506.md) | 73 | `declaration-track:043f05ef8d6eea71938095063ba5d05a5e419c9494e25422d22350bc5cf160c6` |
| 12 | `theorem` | [coe_coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coe-coenatmonoidhom--347e91519528e6bd4f65f4c2.md) | 77 | `result-track:347e91519528e6bd4f65f4c29625ed539f8463a902b9a91f58f993bddf31d5e3` |
| 13 | `theorem` | [coeNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coenat-injective--068ea03a5d35d10d7c93d989.md) | 80 | `result-track:068ea03a5d35d10d7c93d9890a78547ce727ff27ac835a12fc8e31ee7540ba30` |
| 14 | `theorem` | [coeNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coenat-ofprime--368da504e54f2f04ec509410.md) | 83 | `result-track:368da504e54f2f04ec5094109aefe6e8722b3c840191980e20d90409d693bfba` |
| 15 | `theorem` | [coeNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coenat-prime--d8c6f7290ee70fe3d9ba2799.md) | 86 | `result-track:d8c6f7290ee70fe3d9ba2799a35c1f0919926afa88dbc0e392aec5046fe96c43` |
| 16 | `def` | [toPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/topnatmultiset--4c8bc93d49ed43e02ce1ca1e.md) | 91 | `declaration-track:4c8bc93d49ed43e02ce1ca1e40125e6375ef4ac6bcb1f2e3677b74db5764751b` |
| 17 | `instance` | [coePNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coepnat--197e105fadd50f43b6604986.md) | 93 | `declaration-track:197e105fadd50f43b660498607a6213f94dc5d83101fbe0642833a807e5a49dd` |
| 18 | `def` | [coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coepnatmonoidhom--e7812f69caf896ffe346e553.md) | 98 | `declaration-track:e7812f69caf896ffe346e55355a243ad7a890c9136ef11f0120fa99af2e8254a` |
| 19 | `theorem` | [coe_coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coe-coepnatmonoidhom--b2b05a188be2d1371df92460.md) | 102 | `result-track:b2b05a188be2d1371df9246034418d84e45d00d3569253dad31c48bbff1dac21` |
| 20 | `theorem` | [coePNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coepnat-injective--bbfbd7ff859ebec38d166f78.md) | 105 | `result-track:bbfbd7ff859ebec38d166f783cbbbf8ab3f99f88d9ad02b5e9ac69f25cd40e4a` |
| 21 | `theorem` | [coePNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coepnat-ofprime--1cd4af6974858e812ade18f6.md) | 108 | `result-track:1cd4af6974858e812ade18f6af43cef59188ae5d8204e5274f3fd07ad471c465` |
| 22 | `theorem` | [coePNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coepnat-prime--e2f0bff1d71933fb89538113.md) | 111 | `result-track:e2f0bff1d71933fb895381134dc6d43242abff5157cc355776cee9394468054c` |
| 23 | `instance` | [coeMultisetPNatNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coemultisetpnatnat--0f3ed6ba9a4ae34b404cc6e4.md) | 115 | `declaration-track:0f3ed6ba9a4ae34b404cc6e46762e0302edd8572fb9ebf8dcb691c05531cbae9` |
| 24 | `theorem` | [coePNat_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coepnat-nat--b804e50174e032110f8d53b0.md) | 118 | `result-track:b804e50174e032110f8d53b07c64647b9d40690553d40a4b8f4324868456a88c` |
| 25 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod--f73369d88696ac5dc0e39251.md) | 124 | `declaration-track:f73369d88696ac5dc0e392516e989c964b7e46ec3d0761feaa6ee793e603de9d` |
| 26 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coe-prod--7e04ad40503d1fc8dc94c126.md) | 127 | `result-track:7e04ad40503d1fc8dc94c126e251b303563226f348d08866fd44e849ccd359a4` |
| 27 | `theorem` | [prod_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-ofprime--5889feb3ea8381d289b38036.md) | 132 | `result-track:5889feb3ea8381d289b38036e169f96ba4c6cf8b8446c44a4b0013e6a0656912` |
| 28 | `def` | [ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/ofnatmultiset--60f2da72567a1dbd23277950.md) | 136 | `declaration-track:60f2da72567a1dbd23277950a14c0f6d469255b738d15ff72c990031dc9e60c9` |
| 29 | `theorem` | [to_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/to-ofnatmultiset--7560f5b4c91571815852af00.md) | 139 | `result-track:7560f5b4c91571815852af000d55ca333ec3e87ba455b49e39faefba1344274d` |
| 30 | `theorem` | [prod_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-ofnatmultiset--1be240711142a1bd91bf6e48.md) | 143 | `result-track:1be240711142a1bd91bf6e486781d9093eb6ad5c8e89f3f0443c2851825335c9` |
| 31 | `def` | [ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/ofpnatmultiset--8c2ef10a8c00b263c6937472.md) | 147 | `declaration-track:8c2ef10a8c00b263c6937472eb9a9ef74cda298478e347c5e25beb2a49854211` |
| 32 | `theorem` | [to_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/to-ofpnatmultiset--b0a1085e2d044f297ccb09bf.md) | 150 | `result-track:b0a1085e2d044f297ccb09bfd4d5b280250bfd7150168716bea2026476ca18b2` |
| 33 | `theorem` | [prod_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-ofpnatmultiset--5cb033e86c85b3199bd5669c.md) | 158 | `result-track:5cb033e86c85b3199bd5669c43e87264278e2d5ce1da71edb18977b47d249019` |
| 34 | `def` | [ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/ofnatlist--0051f9f68007a5b07491d51d.md) | 164 | `declaration-track:0051f9f68007a5b07491d51ddefecf6a067d7b145445b9265d8ac9f0c42757e0` |
| 35 | `theorem` | [prod_ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-ofnatlist--d1782c6007b9461da5e5e35d.md) | 167 | `result-track:d1782c6007b9461da5e5e35d4b01303aa12114020a3f86117b8ae4e7112c5149` |
| 36 | `def` | [ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/ofpnatlist--107fcb0e142c208261550b92.md) | 174 | `declaration-track:107fcb0e142c208261550b9279f7a70667fa24142014e02141ad5e86b3cc6453` |
| 37 | `theorem` | [prod_ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-ofpnatlist--494873e2f391cd174fede5c2.md) | 177 | `result-track:494873e2f391cd174fede5c296a3402b704ed2c746dba0468d99263e5e7274c2` |
| 38 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-zero--afd48762781a77be5e3ed6b0.md) | 184 | `result-track:afd48762781a77be5e3ed6b0774aaef125078932430cd7539da23d8e49204422` |
| 39 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-add--752ed59f8f70ae39b2336add.md) | 187 | `result-track:752ed59f8f70ae39b2336add3933d75eb3176fd0f4bb2d682e41ce249173b608` |
| 40 | `theorem` | [prod_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-smul--4062e2cbf8f4f3bd1e9b1198.md) | 192 | `result-track:4062e2cbf8f4f3bd1e9b11983f7a3a3e685ad79cd559de204c6781057415d288` |
| 41 | `def` | [factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset--7def7175df8fde6a98e7a123.md) | 202 | `declaration-track:7def7175df8fde6a98e7a1238292fbf877a6a2199eee4fd4373f51f2b4e4de3b` |
| 42 | `theorem` | [prod_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-factormultiset--be677501e16464ffd22f3b74.md) | 206 | `result-track:be677501e16464ffd22f3b7430856dddc905f95cc6f7b1ae141bb8d47d61ad1f` |
| 43 | `theorem` | [coeNat_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/coenat-factormultiset--fcb1c73946f68f130ebe7d1b.md) | 212 | `result-track:fcb1c73946f68f130ebe7d1bc9d394a4e7431c74626dcf012c1911425f724c21` |
| 44 | `theorem` | [factorMultiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-prod--dc28b2373f4e72e3bb3cd06d.md) | 222 | `result-track:dc28b2373f4e72e3bb3cd06db9f677fbc5ae2901bf2579da84378523a9d73b4c` |
| 45 | `def` | [factorMultisetEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultisetequiv--6e1c43e7b058936b55dd0daf.md) | 239 | `declaration-track:6e1c43e7b058936b55dd0daf293795a95e20243614c7df7d99cefcf871ce8721` |
| 46 | `theorem` | [factorMultiset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-one--8307749d458d37a11b9ccbcf.md) | 247 | `result-track:8307749d458d37a11b9ccbcfea3323edd6a77e7fe522c0acf1e47863b5a19de9` |
| 47 | `theorem` | [factorMultiset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-mul--9cfd01d518adf6440304ce0d.md) | 250 | `result-track:9cfd01d518adf6440304ce0d22c605e3924105b745fc8ccd7cff372c73f83b9b` |
| 48 | `theorem` | [factorMultiset_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-pow--15794c0c029b697d52997894.md) | 259 | `result-track:15794c0c029b697d529978949ada7185f8831736550d4d4c5de559d9143d8606` |
| 49 | `theorem` | [factorMultiset_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-ofprime--f1ea77c25ee3a5cc2a82bcdb.md) | 267 | `result-track:f1ea77c25ee3a5cc2a82bcdb2b685db04cf8b24c9b357d8f5201df8a382a7a10` |
| 50 | `theorem` | [factorMultiset_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-le-iff--cdc2e6ae570793eb115f0832.md) | 276 | `result-track:cdc2e6ae570793eb115f0832b8e2336f2a35d423556111c2df2fcfe9abcdf49e` |
| 51 | `theorem` | [factorMultiset_le_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-le-iff--ee5fb309ec8719636ab7d906.md) | 287 | `result-track:ee5fb309ec8719636ab7d90666ae518e7fe6ff9a4b3a5ebe6da914de364ca57d` |
| 52 | `theorem` | [prod_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-dvd-iff--9fcc5d7313cbd437b5fa8f9d.md) | 297 | `result-track:9fcc5d7313cbd437b5fa8f9da928839ebda8b72ed851b20be501ee2a401e480c` |
| 53 | `theorem` | [prod_dvd_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-dvd-iff--75676a6ebb06adaa400348a8.md) | 302 | `result-track:75676a6ebb06adaa400348a83bdae5340e51805a58f99836cfd366121712ad69` |
| 54 | `theorem` | [factorMultiset_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-gcd--2db41855b7b84a9093b6476c.md) | 313 | `result-track:2db41855b7b84a9093b6476c15594185e2d42bf8342d0e19aa51a1d6671cb2be` |
| 55 | `theorem` | [factorMultiset_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/factormultiset-lcm--d6d0f868130b91dac58f50f6.md) | 324 | `result-track:d6d0f868130b91dac58f50f6595670adac01469efddae75148cf57cba44af414` |
| 56 | `theorem` | [count_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/count-factormultiset--ed273559d4a9292225e7b3b4.md) | 337 | `result-track:ed273559d4a9292225e7b3b4d5a564c905da3d9464b6c2f0721ee424477fd082` |
| 57 | `theorem` | [prod_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-inf--bf694588646919d66ed47e9a.md) | 353 | `result-track:bf694588646919d66ed47e9a35d4d7910f8a35f85c2afe9f79d7d7385fc19a9a` |
| 58 | `theorem` | [prod_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant2b71882cd257ed1fbbf7d7967a9399713fa47d95d5422049f89d23cb9e1ddc93.lean/declarations/prod-sup--922eab4d233aaf34f0706b32.md) | 361 | `result-track:922eab4d233aaf34f0706b32203b1c604baccc2b9d8f6777452a91fea2d29bbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
