# Verification target: GRWTSK.Algebra.GroupTheory.DivInvMonoid.Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44f325c63455b7c02d3240f442277cf4029161f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44f325c63455b7c02d3240f442277cf4029161f`.

Source path: `GRWTSK/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean.json)

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
| 1 | `def` | [zpowRec](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpowrec--78964b2f006aff1848bcde62.md) | 31 | `declaration-track:78964b2f006aff1848bcde627b2762cc7e7780bf8b8ce752e4b9d68276fb26d2` |
| 2 | `def` | [zsmulRec](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zsmulrec--c4009a2a51939e8832fedb5b.md) | 37 | `declaration-track:c4009a2a51939e8832fedb5b79d4d7496eb7cad6253d66007dbd7b56df9d045b` |
| 3 | `class` | [InvolutiveNeg](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/involutiveneg--cccf9db562810520080142e8.md) | 46 | `declaration-track:cccf9db562810520080142e8409b71300ab52d3c0b9c6ce09f9337980ada2055` |
| 4 | `class` | [InvolutiveInv](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/involutiveinv--223d9bd09f047ed31f33f25a.md) | 51 | `declaration-track:223d9bd09f047ed31f33f25a33bbb522afd7b6f72efe369f21b4309aaf9f7c13` |
| 5 | `theorem` | [inv_inv](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/inv-inv--3e5ca7a46b50448244dc1d05.md) | 57 | `result-track:3e5ca7a46b50448244dc1d05737496b6174fde0d0660d10d151289c2c4a04185` |
| 6 | `def` | [DivInvMonoid.div'](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/divinvmonoid-div--f5e49f6a15a384856f6b949b.md) | 101 | `declaration-track:f5e49f6a15a384856f6b949b6bd2d95cd52a148f87764a9c1b6c94271a3a2f94` |
| 7 | `class` | [ZSMul](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zsmul--2964f9e0042356ba8154f3f9.md) | 105 | `declaration-track:2964f9e0042356ba8154f3f9b69ffd8bc8ec06b1c98e25959d7aec510853c2df` |
| 8 | `class` | [ZPow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow--9d13ffca9f46815caf57a407.md) | 113 | `declaration-track:9d13ffca9f46815caf57a40717bc556e4fa6f4b780e8c4daa61af3e83237e2d0` |
| 9 | `instance` | [ZPow.toPow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-topow--2ef76ad3fed368fcc90bd7a1.md) | 118 | `declaration-track:2ef76ad3fed368fcc90bd7a1622557a38bfbdbf3548c7181aa33416b399fc989` |
| 10 | `instance` | [ZPow.ofPow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-ofpow--41084233c24bec084caf237c.md) | 122 | `declaration-track:41084233c24bec084caf237c10d5010b1e924936ca7994dfa711409131ca8857` |
| 11 | `class` | [DivInvMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/divinvmonoid--ff44a77736045557719d5b76.md) | 142 | `declaration-track:ff44a77736045557719d5b76c09f6ec7277fd022130dea6eef1e1bdc14db2cb5` |
| 12 | `def` | [SubNegMonoid.sub'](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/subnegmonoid-sub--fde97504bdf7e52bd93a759a.md) | 162 | `declaration-track:fde97504bdf7e52bd93a759a116e9f90e94ad7af83446c4a395e98f21546105f` |
| 13 | `class` | [SubNegMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/subnegmonoid--1ea4b66dab41975625ccbecf.md) | 183 | `declaration-track:1ea4b66dab41975625ccbecf49e15f1acc597c951be00c6f0ea49feecc590eeb` |
| 14 | `class` | [IsAddCyclic](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/isaddcyclic--e8e00c8b0bb8ba2c6dfd64a7.md) | 196 | `declaration-track:e8e00c8b0bb8ba2c6dfd64a710cf0e7466370bdaf7fd1e4e7d37779d422e041a` |
| 15 | `class` | [IsCyclic](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/iscyclic--ef27c28d9d1016c047f12829.md) | 201 | `declaration-track:ef27c28d9d1016c047f12829f0724cdc05aece91bf68a5961d0bc3c580e9562e` |
| 16 | `theorem` | [exists_zpow_surjective](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/exists-zpow-surjective--701f33e9b2f6d11743209440.md) | 205 | `result-track:701f33e9b2f6d11743209440c79be6e03efb2078d9b2b8ece3e6ded7ca99d22d` |
| 17 | `theorem` | [zpow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-eq-pow--745a860b2ab81893859d5c77.md) | 213 | `result-track:745a860b2ab81893859d5c77f251edbc23586d51126890106a129521e01f4dc8` |
| 18 | `theorem` | [zpow_zero](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-zero--18079a62742fe88fcec30f8a.md) | 217 | `result-track:18079a62742fe88fcec30f8a911db8213ad81d8194edbd3867f011b821dade48` |
| 19 | `theorem` | [zpow_natCast](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-natcast--96fccd210ffa7c3e300474b2.md) | 225 | `result-track:96fccd210ffa7c3e300474b209d7ccdf85c2eda8a6f4b25aa2213042c324ff10` |
| 20 | `lemma` | [zpow_ofNat](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-ofnat--ec3368b642578f3b65785ff1.md) | 236 | `result-track:ec3368b642578f3b65785ff12bf06f39917e4d54db0f1c626886da91631aa778` |
| 21 | `theorem` | [zpow_negSucc](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-negsucc--aa63b5ee2503fce50bef8d4b.md) | 239 | `result-track:aa63b5ee2503fce50bef8d4b2a028284041ef6470e5f855e81eab4da611af758` |
| 22 | `theorem` | [negSucc_zsmul](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/negsucc-zsmul--7e3ad7e8b4e06603254b2ce5.md) | 243 | `result-track:7e3ad7e8b4e06603254b2ce5a63ee8ddcf71a72278901287643bcb0877358b45` |
| 23 | `theorem` | [div_eq_mul_inv](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/div-eq-mul-inv--a3c84b4283179038c47aaeb0.md) | 256 | `result-track:a3c84b4283179038c47aaeb09be8ee36c198b46af3d407a8480365bd3df99f71` |
| 24 | `theorem` | [inv_eq_one_div](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/inv-eq-one-div--8de1cca493f37022ef74ddcb.md) | 262 | `result-track:8de1cca493f37022ef74ddcbc48f46915230e71123c615a8289514ae12934a20` |
| 25 | `theorem` | [mul_div_assoc](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/mul-div-assoc--1aabdf521e8624be929579fd.md) | 265 | `result-track:1aabdf521e8624be929579fd040c30ca1704c053e62ed3641c91cf271895ab09` |
| 26 | `theorem` | [one_div](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/one-div--f292aa177e6128ff06961159.md) | 269 | `result-track:f292aa177e6128ff06961159e0f761546484275438db162e36231ef63a683895` |
| 27 | `lemma` | [zpow_one](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-one--ff6c724e61f1426c8bf4edb6.md) | 273 | `result-track:ff6c724e61f1426c8bf4edb6c27f27569a743b9d2a5853758340633abca65a39` |
| 28 | `lemma` | [zpow_two](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-two--bc53c5a79f4601c725760a46.md) | 279 | `result-track:bc53c5a79f4601c725760a469e958b7d349e4ed586492dfad1c885c7d5dcd0cd` |
| 29 | `lemma` | [zpow_neg_one](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-neg-one--b1749970a8c3e24c3a663eb6.md) | 282 | `result-track:b1749970a8c3e24c3a663eb66ea5a6db4a53d6fa093d53bf1af46e3bc9b54afb` |
| 30 | `lemma` | [zpow_neg_coe_of_pos](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/zpow-neg-coe-of-pos--f584157fa98626bdb12f1e0b.md) | 286 | `result-track:f584157fa98626bdb12f1e0bdb025597e9d334be2f67e8e2d2db686bb8156fa2` |
| 31 | `class` | [NegZeroClass](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/negzeroclass--9379acbd1316510710210108.md) | 294 | `declaration-track:9379acbd13165107102101081c20c821fc4bcd4af72dcea23149a4dd0d151f2d` |
| 32 | `class` | [SubNegZeroMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/subnegzeromonoid--84544a15a695b6c38284207e.md) | 298 | `declaration-track:84544a15a695b6c38284207e128072438c916f511122dc0b53c02bc96903758e` |
| 33 | `class` | [InvOneClass](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/invoneclass--596021eed6c27bf64a096ea6.md) | 302 | `declaration-track:596021eed6c27bf64a096ea6dd4d98ba2b8383ae38a8e478df40848e5580dd36` |
| 34 | `class` | [DivInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/divinvonemonoid--2e0d376a84be7fd2a5b1a546.md) | 307 | `declaration-track:2e0d376a84be7fd2a5b1a546203fc6814dbb59a9ba27505c00d49686937915a6` |
| 35 | `theorem` | [inv_one](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/inv-one--737099219ea58a87b27f2545.md) | 312 | `result-track:737099219ea58a87b27f254592219efe508403da91c1119689cd2ec0550efcdf` |
| 36 | `class` | [SubtractionMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/subtractionmonoid--7a670ca0d88cf7b3535d027e.md) | 319 | `declaration-track:7a670ca0d88cf7b3535d027e134b9c68d87a6e9ccba8b74753fab96580ffb27c` |
| 37 | `class` | [DivisionMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/divisionmonoid--4745cd23dd695074ed2d0fc2.md) | 330 | `declaration-track:4745cd23dd695074ed2d0fc2928db22488f8b4365854d4cb9acdae26a16095a6` |
| 38 | `theorem` | [mul_inv_rev](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/mul-inv-rev--fc16946cf006a418adf6b505.md) | 341 | `result-track:fc16946cf006a418adf6b505997f6219258d824fee668826cce65e94f43826ac` |
| 39 | `theorem` | [inv_eq_of_mul_eq_one_right](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/inv-eq-of-mul-eq-one-right--fb844a8f2fe938e98fde95ab.md) | 345 | `result-track:fb844a8f2fe938e98fde95abd065483b998a697f7b4bb58be7cd90848519c2b9` |
| 40 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/inv-eq-of-mul-eq-one-left--65e76157b0b11e3cf2125e9d.md) | 349 | `result-track:65e76157b0b11e3cf2125e9dced9eb68bef4fc6cd8d029b526d8c31c9e3e8c5b` |
| 41 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/eq-inv-of-mul-eq-one-left--393420d51506ce6a0665c495.md) | 353 | `result-track:393420d51506ce6a0665c495b3f97fe786679b1589de11c1d850cff26c5a5003` |
| 42 | `class` | [SubtractionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/subtractioncommmonoid--2d1eaf8c92ae4fbf877cb166.md) | 359 | `declaration-track:2d1eaf8c92ae4fbf877cb166c25651443561b7080d19c78b56f2723fe0f5092e` |
| 43 | `class` | [DivisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/DivInvMonoid/Varianta03474a4a33fd5215a8ade23fc6a96ab5275d5ab292e9fc1c870012d2e2c3bd3.lean/declarations/divisioncommmonoid--695d55a633c29649ff3ec259.md) | 365 | `declaration-track:695d55a633c29649ff3ec259c25a73b2ba2cc315fc531415f57c1f02a4498d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
