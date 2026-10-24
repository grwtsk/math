# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearDisjoint.Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d436ab5ff8b485fdba8a25614cfebb3fd76b78c7",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d436ab5ff8b485fdba8a25614cfebb3fd76b78c7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Finiteness` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearDisjoint](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint--4ba99456f6964f511dd11848.md) | 157 | `declaration-track:4ba99456f6964f511dd11848f33fc0caed95b5ce83c38dca7f71d159863c0495` |
| 2 | `def` | [LinearDisjoint.mulMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-mulmap--3b82badb97bed53402892f50.md) | 164 | `declaration-track:3b82badb97bed53402892f500901c4d5bc911a950d1358a7f05eb7cb9128f381` |
| 3 | `theorem` | [LinearDisjoint.val_mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-val-mulmap-tmul--43851893aae9abb7c464e3c5.md) | 168 | `result-track:43851893aae9abb7c464e3c5001e1cd504044d7178b0cc2f3e3e61c910f6ff24` |
| 4 | `theorem` | [LinearDisjoint.of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-of-subsingleton--c2e32d9e5b7ba5e225b371d6.md) | 172 | `result-track:c2e32d9e5b7ba5e225b371d6084ff18a15f6d99cab1a4be45fc2bb7d4e8e5884` |
| 5 | `theorem` | [LinearDisjoint.of_subsingleton_top](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-of-subsingleton-top--9b6cafb99db74187a0582601.md) | 177 | `result-track:9b6cafb99db74187a0582601366dbf57e839358915d1d10b603ab71ad3e618db` |
| 6 | `theorem` | [linearDisjoint_op](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-op--d94204d6d1c23b6b8fc05fa8.md) | 181 | `result-track:d94204d6d1c23b6b8fc05fa859fe1fe24260e44aa2ff9bff6b6c72a2d96babef` |
| 7 | `theorem` | [LinearDisjoint.symm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-symm-of-commute--e3f07380512e7347a473294c.md) | 190 | `result-track:e3f07380512e7347a473294c53dd680e19e41329254d9d68ea84c71bda655947` |
| 8 | `theorem` | [linearDisjoint_comm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-comm-of-commute--14eec9b13ceedd89c0a07b37.md) | 196 | `result-track:14eec9b13ceedd89c0a07b37c30e70fc883b3371f22599a1e2cbbee17f648dad` |
| 9 | `theorem` | [map](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/map--9219a7c6853cfac0c1a1af1d.md) | 203 | `result-track:9219a7c6853cfac0c1a1af1dc58f75cadb33575029446e4657ae66b17195e71f` |
| 10 | `theorem` | [of_basis_left'](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-basis-left--dba22c653dc6c3eb4c1b4fc7.md) | 218 | `result-track:dba22c653dc6c3eb4c1b4fc709d0f88878333f14799cb32ebeeeca7f672fc154` |
| 11 | `theorem` | [of_basis_right'](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-basis-right--6c4e848a406584b2bd0e71e2.md) | 228 | `result-track:6c4e848a406584b2bd0e71e230753815940ea0a8986c2e029bc77b1fa10e5848` |
| 12 | `theorem` | [of_basis_mul'](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-basis-mul--495dd3d337a6260b27c06855.md) | 239 | `result-track:495dd3d337a6260b27c0685561e5cc9e1285a3139ee2922521505c91842cf22e` |
| 13 | `theorem` | [bot_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/bot-left--8b0bbf4b96674f5d0a820ac5.md) | 252 | `result-track:8b0bbf4b96674f5d0a820ac51e8b0c22943059e8db57fdcdb9b41b513879623b` |
| 14 | `theorem` | [bot_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/bot-right--1413a258d75b58afdaf84981.md) | 256 | `result-track:1413a258d75b58afdaf84981685ba08e85bb0da9dc14c35d02fd000ee98cd19f` |
| 15 | `theorem` | [one_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/one-left--49f483371b067332cbca5a8d.md) | 260 | `result-track:49f483371b067332cbca5a8d3d2e50eae3120c27637914e35ca3e6e3292f7062` |
| 16 | `theorem` | [one_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/one-right--f75c92c3cc0ab9e521f01866.md) | 265 | `result-track:f75c92c3cc0ab9e521f0186627857a9dd1bd5510e161a8d7a48e397d3eac8f0c` |
| 17 | `theorem` | [of_linearDisjoint_fg_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-lineardisjoint-fg-left--3b753d22e7d723bb14255be6.md) | 271 | `result-track:3b753d22e7d723bb14255be6e0c356d2e5d1b488fb72b1ea6134605c0772a0a0` |
| 18 | `theorem` | [of_linearDisjoint_fg_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-lineardisjoint-fg-right--8fc11e7d8083caf82ec24ac2.md) | 284 | `result-track:8fc11e7d8083caf82ec24ac20f5f9994607ec87ff2cf9cfb0e76f86f9bb2f4f0` |
| 19 | `theorem` | [of_linearDisjoint_fg](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-lineardisjoint-fg--bcf8dcbc1cc38536f4819690.md) | 297 | `result-track:bcf8dcbc1cc38536f481969053f5a5c4f6fb262d1ef45d8801d8bcae9ebc38ba` |
| 20 | `theorem` | [LinearDisjoint.symm](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-symm--757d86cf5b07d6b54de35ef6.md) | 314 | `result-track:757d86cf5b07d6b54de35ef640aa811123fce0a89ca2527122325718e62d5d29` |
| 21 | `theorem` | [linearDisjoint_comm](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/lineardisjoint-comm--44386a9542958a8f9e49502d.md) | 318 | `result-track:44386a9542958a8f9e49502d92e257b1d24724de6e8023af0c7d95acdd2a5b2b` |
| 22 | `theorem` | [linearIndependent_left_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/linearindependent-left-of-flat--aefab11390bd814e7a237e8d.md) | 336 | `result-track:aefab11390bd814e7a237e8dd3a81bca0d6efce93846a6b4c9704eee65028346` |
| 23 | `theorem` | [of_basis_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-basis-left--cfc1161e970cf8042b4b96c6.md) | 346 | `result-track:cfc1161e970cf8042b4b96c69694f94a2335322594abe16d877e67110cae6899` |
| 24 | `theorem` | [linearIndependent_right_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/linearindependent-right-of-flat--ed50ca33458f05c490732c69.md) | 357 | `result-track:ed50ca33458f05c490732c6934928adf28edc27bd7ec1bd98490352e9661e8f3` |
| 25 | `theorem` | [of_basis_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-basis-right--938800ecd68cee3625b26380.md) | 367 | `result-track:938800ecd68cee3625b2638077f8c4625b4942db182f5505cf0cf61dda749ca2` |
| 26 | `theorem` | [linearIndependent_mul_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/linearindependent-mul-of-flat-left--df40ebadb4658d9ebbc56e80.md) | 378 | `result-track:df40ebadb4658d9ebbc56e804e2d8d838a672f163c33beb4870c5d177bfcae1f` |
| 27 | `theorem` | [linearIndependent_mul_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/linearindependent-mul-of-flat-right--2e65f5fa48a00b0695046cc7.md) | 399 | `result-track:2e65f5fa48a00b0695046cc7442c0c69133b25ad87b9f5030911d8cd16f0e053` |
| 28 | `theorem` | [linearIndependent_mul_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/linearindependent-mul-of-flat--cfd59fb6d4e2712e7fe39d83.md) | 420 | `result-track:cfd59fb6d4e2712e7fe39d831ea65ed9cee9e989a8e36339783760e7d65a8a22` |
| 29 | `theorem` | [of_basis_mul](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-basis-mul--23d6fbafa11cf47708255133.md) | 431 | `result-track:23d6fbafa11cf4770825513328fbb60f8e5ad1f9b2e6d54336d7da68a4bdb000` |
| 30 | `theorem` | [of_le_left_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-le-left-of-flat--b46daa02ae1ae466048b7ed6.md) | 439 | `result-track:b46daa02ae1ae466048b7ed68293624fae44ff5d220f768f7aa43d794890cf2a` |
| 31 | `theorem` | [of_le_right_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-le-right-of-flat--25f6ec9581708ed1b50400ac.md) | 450 | `result-track:25f6ec9581708ed1b50400accd599e37ba01af1c49887829177582ab5b62a0fb` |
| 32 | `theorem` | [of_le_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-le-of-flat-right--21a37a6ebe4325e0a9a956aa.md) | 461 | `result-track:21a37a6ebe4325e0a9a956aa0f60dc835d5d1ab5cfcefb84c4450f3dc9ff7a89` |
| 33 | `theorem` | [of_le_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-le-of-flat-left--5004f65b76df4a56e44ee33a.md) | 468 | `result-track:5004f65b76df4a56e44ee33adf50742b353ab9790e47019a96e1ce3aea9c9127` |
| 34 | `theorem` | [of_left_le_one_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-left-le-one-of-flat--5bd9af46db5b182b532315d6.md) | 474 | `result-track:5bd9af46db5b182b532315d68b247c2c807efbc196c9c01daf8bfc18082efe99` |
| 35 | `theorem` | [of_right_le_one_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/of-right-le-one-of-flat--be999b32dbc1dc2b4d792fad.md) | 479 | `result-track:be999b32dbc1dc2b4d792fad781691f910e709b9a6dd03cf0d4e71563773ed02` |
| 36 | `theorem` | [not_linearIndependent_pair_of_commute_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/not-linearindependent-pair-of-commute-of-flat-left--60c4fc928bb6f8207c9d60dc.md) | 496 | `result-track:60c4fc928bb6f8207c9d60dc1a56768ed0dcb7ad34a2f902e6bfbc2656d7567b` |
| 37 | `theorem` | [not_linearIndependent_pair_of_commute_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/not-linearindependent-pair-of-commute-of-flat-right--885c595312cdeb331c21c48d.md) | 512 | `result-track:885c595312cdeb331c21c48d0a28cab0eae197382bb2e35c983fc2038eec72d7` |
| 38 | `theorem` | [not_linearIndependent_pair_of_commute_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/not-linearindependent-pair-of-commute-of-flat--a721c9ba1d9d876c18047713.md) | 528 | `result-track:a721c9ba1d9d876c180477139e3a25c10e16b4915e9b88d1c5403ce0f20f313d` |
| 39 | `theorem` | [rank_inf_le_one_of_commute_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-inf-le-one-of-commute-of-flat--9094d92f14fcb1188fb26b2d.md) | 538 | `result-track:9094d92f14fcb1188fb26b2d6fb20fd5af8a12c903659452caf6cf03698863d3` |
| 40 | `theorem` | [rank_inf_le_one_of_commute_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-inf-le-one-of-commute-of-flat-left--5d3d6318fde127f36ecd6d3f.md) | 558 | `result-track:5d3d6318fde127f36ecd6d3f2a3eb4eb3a82c2e5cf44b94b68b0b3c12e8280b2` |
| 41 | `theorem` | [rank_inf_le_one_of_commute_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-inf-le-one-of-commute-of-flat-right--7485088911b793b569a6aa21.md) | 564 | `result-track:7485088911b793b569a6aa214b7f29fdfc83f94d627df23131fe5498e8824057` |
| 42 | `theorem` | [rank_le_one_of_commute_of_flat_of_self](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-le-one-of-commute-of-flat-of-self--c82a42c27d9ba5d2f6583375.md) | 572 | `result-track:c82a42c27d9ba5d2f6583375935ad105566a48cd8c179f4017602d089834fac1` |
| 43 | `theorem` | [not_linearIndependent_pair_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/not-linearindependent-pair-of-flat-left--5cdc03e64c72ba1960b22cd8.md) | 605 | `result-track:5cdc03e64c72ba1960b22cd83139558b9a227e4af2da54794ae7acf97f5c47bb` |
| 44 | `theorem` | [not_linearIndependent_pair_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/not-linearindependent-pair-of-flat-right--2e9d4efb0071f504a75904da.md) | 611 | `result-track:2e9d4efb0071f504a75904daee007d2a2d5b2c5a84fb14bf484013c42b68d3db` |
| 45 | `theorem` | [not_linearIndependent_pair_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/not-linearindependent-pair-of-flat--ea14d7f4d81b43cea168d36f.md) | 617 | `result-track:ea14d7f4d81b43cea168d36f708086669e7de158eef495c5dfb56fbe3977872d` |
| 46 | `theorem` | [rank_inf_le_one_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-inf-le-one-of-flat--07c4425ee7fdb4782f9b0a03.md) | 625 | `result-track:07c4425ee7fdb4782f9b0a031f4e02b7325038c0a831fb83955949e3026e6bdf` |
| 47 | `theorem` | [rank_inf_le_one_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-inf-le-one-of-flat-left--267b89c39980dd28dc603ec3.md) | 631 | `result-track:267b89c39980dd28dc603ec37ae771e145a76bb5a6c129dcc450b118c1dad88d` |
| 48 | `theorem` | [rank_inf_le_one_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-inf-le-one-of-flat-right--6c5c8bbc14dcd70a3f6e973a.md) | 636 | `result-track:6c5c8bbc14dcd70a3f6e973ad2e8c92f29d356ee731400946af16b79b66e516e` |
| 49 | `theorem` | [rank_le_one_of_flat_of_self](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/declarations/rank-le-one-of-flat-of-self--1bd5affba856439316efbd69.md) | 643 | `result-track:1bd5affba856439316efbd696b2d30766283929f27404967dece8cacdc2c0e9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
