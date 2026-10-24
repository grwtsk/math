# Verification target: GRWTSK.Algebra.GroupTheory.Dihedral.Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "524c7f52c59ccf380bc87cd60d219e56130142d1",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `524c7f52c59ccf380bc87cd60d219e56130142d1`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean.json)

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
| 1 | `inductive` | [DihedralGroup](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/dihedralgroup--826c1a82532de59df7e7e621.md) | 41 | `declaration-track:826c1a82532de59df7e7e6216ee0053ac527d2a4fe9d04922fdc00ee8e8c6941` |
| 2 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/mul--97e7642489582f4238f5cdee.md) | 53 | `declaration-track:97e7642489582f4238f5cdee9bc90a0f6fdc8267baee809c89ae7e7b3de70f66` |
| 3 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/one--1d2aaaa95f4a39b7fd3d7b32.md) | 62 | `declaration-track:1d2aaaa95f4a39b7fd3d7b323f621a676b6581645b12542779a592c19536e2a6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/instance--82afb7c4d70aed19195ccb0d.md) | 67 | `declaration-track:82afb7c4d70aed19195ccb0dc04dabfcf71499937484c06322ab15741b1ce0e3` |
| 5 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/inv--d3780e87a9d5f925ccb63a4e.md) | 73 | `declaration-track:d3780e87a9d5f925ccb63a4e9563ec5d7bee343dc0d4dbb4a6732fe846769b0e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/instance--ceec8ce10ad32eb282289bd9.md) | 81 | `declaration-track:ceec8ce10ad32eb282289bd9b38cf0e019c0af8823bee485ac3cab2e1a7d2ee4` |
| 7 | `theorem` | [r_mul_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-mul-r--509fe7b3be5609bb1fd68e02.md) | 100 | `result-track:509fe7b3be5609bb1fd68e0237c29ff55de718d23be3e562f9d9458971307b3f` |
| 8 | `theorem` | [r_mul_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-mul-sr--144d0620a8c447ef9d1d4a8a.md) | 104 | `result-track:144d0620a8c447ef9d1d4a8a4528f34848f1879a48bd571f7745fde2c7f4929d` |
| 9 | `theorem` | [sr_mul_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/sr-mul-r--bcc3950e734e6e80e676c75d.md) | 108 | `result-track:bcc3950e734e6e80e676c75d881c3ed31ab0ab3d03eef9e696b2f49b230c41e4` |
| 10 | `theorem` | [sr_mul_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/sr-mul-sr--6a60a1a26618f3adadeb4b8c.md) | 112 | `result-track:6a60a1a26618f3adadeb4b8c0cf286274b232e8f18a6233f2f62c32a71147fad` |
| 11 | `theorem` | [inv_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/inv-r--bea30de721827eed1b2120d1.md) | 116 | `result-track:bea30de721827eed1b2120d1c0163622a9c1ea3fb714a7c78651702a2aa95cde` |
| 12 | `theorem` | [inv_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/inv-sr--2a87b6e3d091e3dbd5053643.md) | 120 | `result-track:2a87b6e3d091e3dbd505364370a8c5f025993714e62f1a9c6533ab0603c65e0e` |
| 13 | `theorem` | [r_zero](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-zero--927a03b385f75b584521fc9e.md) | 124 | `result-track:927a03b385f75b584521fc9e4aa1ea85d8e59c6af4739987e02e8791491baab3` |
| 14 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/one-def--4687858938bcd622675a221e.md) | 127 | `result-track:4687858938bcd622675a221e89c4293a35c0da086168e06a773069332cd44d0c` |
| 15 | `theorem` | [r_pow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-pow--a7711571878de65e68942258.md) | 131 | `result-track:a7711571878de65e68942258030dc01e326e53d6c5d9c6427f17530db52a0f92` |
| 16 | `theorem` | [r_zpow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-zpow--81bc63a98ee98f966e6a1393.md) | 138 | `result-track:81bc63a98ee98f966e6a1393efd366019862c3fb06281b112d351452df7c4de9` |
| 17 | `def` | [equivSum](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/equivsum--2e64c5250aada2630be04abf.md) | 143 | `declaration-track:2e64c5250aada2630be04abfb25086421fbbbc28958735fa6d13e9b698785b1e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/instance--9bdb68394db818379729dde8.md) | 155 | `declaration-track:9bdb68394db818379729dde8c2d92d5b91ed5cf3f6232d6cfc05bc7c2fc23f4c` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/instance--fe5c828f2672b4b9ae905778.md) | 158 | `declaration-track:fe5c828f2672b4b9ae9057781982f53d7520f0393c1f531a8ab2e1aee346534e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/instance--e6797759b947bd03db0e5db7.md) | 161 | `declaration-track:e6797759b947bd03db0e5db75c17d266faf7dc6ae6b9a08ffe0c1eb1e1e026fb` |
| 21 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/card--d931cf99c842fe7a8435da85.md) | 166 | `result-track:d931cf99c842fe7a8435da85216bb402833173745a535120099a2be069f1e87f` |
| 22 | `theorem` | [nat_card](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/nat-card--1ff368bd7c28717ec6738eae.md) | 169 | `result-track:1ff368bd7c28717ec6738eae42c5981521acb4c355554ef873c30750dad23df4` |
| 23 | `theorem` | [r_one_pow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-one-pow--a7f59d2aae36ea02010c0dc4.md) | 174 | `result-track:a7f59d2aae36ea02010c0dc48b70f2034bbf3642890878a0adb540f69b5026de` |
| 24 | `theorem` | [r_one_zpow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-one-zpow--68d4a04747405f361b063ecd.md) | 177 | `result-track:68d4a04747405f361b063ecd3dfa595fa662bd26a1216b440d6278c46f9478c9` |
| 25 | `theorem` | [r_one_pow_n](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/r-one-pow-n--3095102d20942dba64043c91.md) | 180 | `result-track:3095102d20942dba64043c91efa93a98b167719b1aae3a9cb1c6ed61080455ca` |
| 26 | `theorem` | [sr_mul_self](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/sr-mul-self--1fe2eef8caa9322ecc97890a.md) | 183 | `result-track:1fe2eef8caa9322ecc97890a291c574ed7f9e38934d7d3c8a7d37e2e62174aa8` |
| 27 | `theorem` | [orderOf_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/orderof-sr--5f2b429476830b59640d1858.md) | 189 | `result-track:5f2b429476830b59640d18585cd241d58201718bf4e9885e87cccc0c94a1ced7` |
| 28 | `theorem` | [orderOf_r_one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/orderof-r-one--8952abd7766bb2f0b906d6b9.md) | 197 | `result-track:8952abd7766bb2f0b906d6b9f9c22eba67dc5a090471364969e1d946f3a3043e` |
| 29 | `theorem` | [orderOf_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/orderof-r--47a9ea09e6eb6c7aabdeb02a.md) | 215 | `result-track:47a9ea09e6eb6c7aabdeb02ad33a244f7290c9ec1f98aaf91d6f657020806fef` |
| 30 | `theorem` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/exponent--c9577739433fb4d8894b2c11.md) | 219 | `result-track:c9577739433fb4d8894b2c1134124ee495a9d2ab5a4da0d466ed68218b10356f` |
| 31 | `lemma` | [not_commutative](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/not-commutative--fe000e2745227f94a99442c1.md) | 236 | `result-track:fe000e2745227f94a99442c183ad08109164bdcd28de250e83518c86e8ba45b7` |
| 32 | `lemma` | [commutative_iff](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/commutative-iff--a738ec53b8257db88bbbbeb4.md) | 244 | `result-track:a738ec53b8257db88bbbbeb4a98d5881e6dd6c8ebf061f203f2f17730f904f66` |
| 33 | `lemma` | [not_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/not-iscyclic--558d18464ed5d2d6c6ac8be2.md) | 248 | `result-track:558d18464ed5d2d6c6ac8be266f8eeaacafe94dfc7ccd164d48254a12bb67555` |
| 34 | `lemma` | [isCyclic_iff](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/iscyclic-iff--67444d103e5a826e36ed5c4e.md) | 253 | `result-track:67444d103e5a826e36ed5c4e0ff6935cf97da39b0eec6a1c132dc26780eca6e5` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/instance--3743a46d07b6fc18100912ee.md) | 257 | `declaration-track:3743a46d07b6fc18100912eeae5c6774cae9677ff85c71c3fe16461e3d4fbacf` |
| 36 | `def` | [oddCommuteEquiv](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/oddcommuteequiv--656ee931a54598cfec13bd37.md) | 265 | `declaration-track:656ee931a54598cfec13bd37a850db64ffc8193bdaeeb7cb349cd998c64d2c70` |
| 37 | `lemma` | [card_commute_odd](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/card-commute-odd--fce7152cdad85a1bc4522486.md) | 300 | `result-track:fce7152cdad85a1bc452248663061e7075e85d8ca4654dc3d903cb5934f5681a` |
| 38 | `lemma` | [card_conjClasses_odd](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/card-conjclasses-odd--ee3326ff9a1c605c1015932b.md) | 306 | `result-track:ee3326ff9a1c605c1015932b96b833483573082d508385a2e2d5f773bbfba3ab` |
| 39 | `theorem` | [center_eq_bot_of_odd_ne_one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/center-eq-bot-of-odd-ne-one--f599c8c5cace25a7206c3f35.md) | 312 | `result-track:f599c8c5cace25a7206c3f35de920131e778ceb20087316c1333a67f46d20c60` |
| 40 | `theorem` | [center_eq_closure_of_even_ne_two](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/center-eq-closure-of-even-ne-two--0d06c72276973366ea002594.md) | 325 | `result-track:0d06c72276973366ea0025948bb830e636fc46c464624975042dcb2004624a34` |
| 41 | `theorem` | [center_eq_bot_of_zero](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Variant1552e37dd53c9b7b692fbc81bf03a99cc171114a8c9072e38a0e186391f329d3.lean/declarations/center-eq-bot-of-zero--2d7cb9db06217be499418d49.md) | 358 | `result-track:2d7cb9db06217be499418d4945aa5a5b26702831b87591e675fe8502aa0eb772` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
