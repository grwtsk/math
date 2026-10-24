# Verification target: GRWTSK.Algebra.GroupTheory.Ring.Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36e3f798543cc12c553d4bbf7edcea59bbd6c0ed",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36e3f798543cc12c553d4bbf7edcea59bbd6c0ed`.

Source path: `GRWTSK/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--143bc31a0d679e824a1972a9.md) | 38 | `declaration-track:143bc31a0d679e824a1972a96a113dbefbdb98305ee5a167bd72b7c5e3dab353` |
| 2 | `theorem` | [coe_add](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/coe-add--3a48cf9826924a9829fefa10.md) | 42 | `result-track:3a48cf9826924a9829fefa10278a1cc5059f3d99a4c4cbf2da6d12644bfa781d` |
| 3 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/addsemigroup--a267e01a30cc53aa0057f491.md) | 46 | `declaration-track:a267e01a30cc53aa0057f491498d179d02ffbf97e42fc4edd329d1fdb03ec77f` |
| 4 | `instance` | [addCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/addcommsemigroup--333564eb83c571eafc1de568.md) | 50 | `declaration-track:333564eb83c571eafc1de5684adc9c930a3a148afc523390e778e7ca75c5fc4c` |
| 5 | `instance` | [addLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/addleftcancelsemigroup--05ed07b6dd77e405b37d780d.md) | 55 | `declaration-track:05ed07b6dd77e405b37d780d6173c53d0ebe5f624ed4f82b142475ec45cf93aa` |
| 6 | `instance` | [addRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/addrightcancelsemigroup--cb4d92cf12234ac1e6be56b5.md) | 60 | `declaration-track:cb4d92cf12234ac1e6be56b56e28a1ce82d41f22566f0c4863ba733967037249` |
| 7 | `instance` | [covariantClass_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/covariantclass-add-lt--c0f8ebe75984d2f289a28691.md) | 65 | `declaration-track:c0f8ebe75984d2f289a2869148d12bba64993e85b0746371217dc144f0d0e71b` |
| 8 | `instance` | [covariantClass_swap_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/covariantclass-swap-add-lt--23e2b1a2d308f5d2c92cc600.md) | 70 | `declaration-track:23e2b1a2d308f5d2c92cc6008164e54f9349da3e7e1be992f60e11e5d1f483a0` |
| 9 | `instance` | [contravariantClass_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/contravariantclass-add-lt--43f7c503c0756710b32a17f1.md) | 75 | `declaration-track:43f7c503c0756710b32a17f16d2d9c82029b31be7d97960b98ed3b8a9bab3449` |
| 10 | `instance` | [contravariantClass_swap_add_lt](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/contravariantclass-swap-add-lt--79ecbf19befb45bc6a28db71.md) | 80 | `declaration-track:79ecbf19befb45bc6a28db711e1db354fffed1580e3c65f348ace33c18ee689c` |
| 11 | `instance` | [contravariantClass_add_le](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/contravariantclass-add-le--b6123ecbef865f54b88fbe4e.md) | 85 | `declaration-track:b6123ecbef865f54b88fbe4e9df0eef1d1bc37b6fc612ede99eb7e6509ad4281` |
| 12 | `instance` | [contravariantClass_swap_add_le](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/contravariantclass-swap-add-le--a8d146ab64d317e60918b883.md) | 90 | `declaration-track:a8d146ab64d317e60918b883b099d90331ed262555ec9caceaed92bb42c91fee` |
| 13 | `instance` | [covariantClass_add_le](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/covariantclass-add-le--9a7cd2cb07590e215573b3f2.md) | 97 | `declaration-track:9a7cd2cb07590e215573b3f2f57bda92348d93a4b39a6fc06c9a29f1c1c39fcf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--fbc888bbf3bb46162765697a.md) | 107 | `declaration-track:fbc888bbf3bb46162765697ad74ffb22a810618ad591f45440e0604c4ca1240a` |
| 15 | `theorem` | [val_mul](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/val-mul--ceec51e27937e81cd144c61a.md) | 111 | `result-track:ceec51e27937e81cd144c61a4cac7c1488fc042e68ce5ec9acce38061a46bf06` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--c71dd06718344ee9d1c9508c.md) | 115 | `declaration-track:c71dd06718344ee9d1c9508cb0729fa7dd41017cc2a4c67bc0b22fe8ae528033` |
| 17 | `theorem` | [val_pow](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/val-pow--54def8f71bb14cd45a5c8b7d.md) | 119 | `result-track:54def8f71bb14cd45a5c8b7de58874c6d74bdba588c00d2256bcb281ec8f5768` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--875414aacd50df808814a130.md) | 124 | `declaration-track:875414aacd50df808814a1305aed16cd87ea03886b0e2a592adf6a2eb2cbbdf8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--4a0cd0744eee2e4b6bd9effe.md) | 127 | `declaration-track:4a0cd0744eee2e4b6bd9effee4ebc6643eb4866472b03076b2aed195496b9a67` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--3c14aa74157963d81cead657.md) | 130 | `declaration-track:3c14aa74157963d81cead6579dfea5d67e4c4d9b6eaf055bcd324026ea88762f` |
| 21 | `theorem` | [val_one](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/val-one--3c4e7313c4ae4668d698bd8a.md) | 134 | `result-track:3c4e7313c4ae4668d698bd8a3a6183ece23ec17487d29da96ef78d677b1f7de9` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/instance--90d3e699fdb1af3019918ba0.md) | 138 | `declaration-track:90d3e699fdb1af3019918ba00e7337ab3399ac0242cb19617778381a18854844` |
| 23 | `instance` | [orderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/orderedcommmonoid--93fbf4965362c375fd078805.md) | 145 | `declaration-track:93fbf4965362c375fd078805d177bf308cb81b9a230c64c702a2087eae0d1f33` |
| 24 | `instance` | [linearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variantd6824c1e7c2bbfc9366ec1c5bb1e6489e74868b8a72690dcf2f924d27602e796.lean/declarations/linearorderedcancelcommmonoid--5a38e72f32a7d8c665b5908b.md) | 155 | `declaration-track:5a38e72f32a7d8c665b5908b6ca9857d019e7e48ff6a78d4a5e48f8c23441512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
