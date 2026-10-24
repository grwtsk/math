# Verification target: GRWTSK.Algebra.Field.Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aae2e523d2f97b63fa0f96b898b1391313926c95",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aae2e523d2f97b63fa0f96b898b1391313926c95`.

Source path: `GRWTSK/Algebra/Field/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Ordered.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos_of_inv_pos](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/pos-of-inv-pos--c1333704efb6b590d4b9a9ad.md) | 35 | `result-track:c1333704efb6b590d4b9a9ad59ee4f9e945b0da70c9489f76dbdef50589e50b7` |
| 2 | `theorem` | [inv_pos_iff](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/inv-pos-iff--fa02e044af253e50954c0a8f.md) | 44 | `result-track:fa02e044af253e50954c0a8fb4b8073b704c2879a7422f56132c7e6f681d143e` |
| 3 | `theorem` | [inv_neg_iff](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/inv-neg-iff--a5e8039ded4f96d8f523878a.md) | 51 | `result-track:a5e8039ded4f96d8f523878a8be658fe6da42536a4182c162f02f253402d5527` |
| 4 | `theorem` | [inv_nonneg_iff](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/inv-nonneg-iff--10aea01dab28c27c691a7a0b.md) | 56 | `result-track:10aea01dab28c27c691a7a0bb78d9c22f443accd0d0fd0a973e5d67d86ed723c` |
| 5 | `theorem` | [inv_nonpos_iff](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/inv-nonpos-iff--9053084ae89d54173fc83d7f.md) | 59 | `result-track:9053084ae89d54173fc83d7f2f00c3bbed9774f8522e44fb0fa44897c8d79104` |
| 6 | `theorem` | [mul_le_of_le_mul_inv](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-le-of-le-mul-inv--d4ee8a5f9537e1341f15a97e.md) | 64 | `result-track:d4ee8a5f9537e1341f15a97e84af58cdd36f6d0c078937c555cb5e8d23c84ed3` |
| 7 | `theorem` | [le_mul_inv_of_mul_le](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/le-mul-inv-of-mul-le--ae1f8a7b25e5802dbfe17073.md) | 68 | `result-track:ae1f8a7b25e5802dbfe1707328b2ff7bd8a94067d0fc14f3fdb78bdc908ee92b` |
| 8 | `theorem` | [le_mul_inv_iff_mul_le](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/le-mul-inv-iff-mul-le--21a657421008e415f60c2f3f.md) | 72 | `result-track:21a657421008e415f60c2f3feedbb6d0a0f8dc3d2c324bfd5a0f30a7bbe0e313` |
| 9 | `theorem` | [mul_inv_le_iff_le_mul](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-inv-le-iff-le-mul--ef079c2e6beacb4299d6b31e.md) | 75 | `result-track:ef079c2e6beacb4299d6b31e9ef211e028e6bd7fcba0b36ef093a348bdefabb0` |
| 10 | `theorem` | [mul_lt_of_lt_mul_inv](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-lt-of-lt-mul-inv--007ce0b072fb9f02c76aaa96.md) | 79 | `result-track:007ce0b072fb9f02c76aaa960b610abb1b99f41cd2a61e1562b953dd5edfe244` |
| 11 | `theorem` | [lt_mul_inv_of_mul_lt](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/lt-mul-inv-of-mul-lt--239f4fdf23f8e26a8ef2d30e.md) | 83 | `result-track:239f4fdf23f8e26a8ef2d30e1168276b03d029c42328b13f4d5395a1d6253a21` |
| 12 | `theorem` | [lt_mul_inv_iff_mul_lt](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/lt-mul-inv-iff-mul-lt--0fbf1747c87c42c133700cfe.md) | 87 | `result-track:0fbf1747c87c42c133700cfee6f73ca256cf06c8051394b1c01f4e6a1b17136b` |
| 13 | `theorem` | [mul_inv_lt_iff_lt_mul](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-inv-lt-iff-lt-mul--b2d88fd388c59fb5a40ec570.md) | 90 | `result-track:b2d88fd388c59fb5a40ec5704153f9f0b61e2e43d5e6bc5e2b3aa2de1cbd2875` |
| 14 | `theorem` | [le_mul_of_le_mul_inv](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/le-mul-of-le-mul-inv--4ab3ae231723aa29d752d791.md) | 93 | `result-track:4ab3ae231723aa29d752d7919b58f3f9ae32b7838ad68a07ee5a9d4aee074d61` |
| 15 | `theorem` | [mul_le_of_mul_inv_le](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-le-of-mul-inv-le--c4c4f73c28df654f3cbe798d.md) | 97 | `result-track:c4c4f73c28df654f3cbe798d045e46eb60fa70222db307ae4fbe796e7854804e` |
| 16 | `theorem` | [mul_inv_le_of_mul_le](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-inv-le-of-mul-le--cc55925040a005cdf46afe83.md) | 101 | `result-track:cc55925040a005cdf46afe83fcb6cde1bde85aced09f9d43a44b5dfc128f6e2d` |
| 17 | `theorem` | [le_mul_inv_of_le_mul](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/le-mul-inv-of-le-mul--36fb7957979b7cc214bf6910.md) | 105 | `result-track:36fb7957979b7cc214bf69106843f0d5b3243bd5c2f2c5da91ed6ea994c6223c` |
| 18 | `theorem` | [le_mul_inv_iff_le_mul_of_neg](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/le-mul-inv-iff-le-mul-of-neg--7bef2ef23636452a82428090.md) | 109 | `result-track:7bef2ef23636452a82428090207c07ca65b9b6378b4b3d1a8659a7f52a64fb26` |
| 19 | `theorem` | [mul_inv_le_iff_mul_le_of_neg](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-inv-le-iff-mul-le-of-neg--a5f767db691b80afafe1f455.md) | 112 | `result-track:a5f767db691b80afafe1f4558868bac69c44c0a98158bb57536592ec12072b6c` |
| 20 | `theorem` | [lt_mul_of_lt_mul_inv](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/lt-mul-of-lt-mul-inv--9d4affd1f300221bfb8b2a20.md) | 115 | `result-track:9d4affd1f300221bfb8b2a20e8424e5b6c519696a0fa197126f651fd2a5ea44f` |
| 21 | `theorem` | [mul_lt_of_mul_inv_lt](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-lt-of-mul-inv-lt--2d89d1af3914c5156fa1fd19.md) | 119 | `result-track:2d89d1af3914c5156fa1fd199492933401b28c68311c12cc8595f6fadcddc047` |
| 22 | `theorem` | [mul_inv_lt_of_mul_lt](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-inv-lt-of-mul-lt--8ae164c72fdb3e8172227cae.md) | 123 | `result-track:8ae164c72fdb3e8172227cae794bc0841b977ccc5cdf46032960677effaec68c` |
| 23 | `theorem` | [lt_mul_inv_of_lt_mul](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/lt-mul-inv-of-lt-mul--23f76e1722bf9f05cd6c203b.md) | 127 | `result-track:23f76e1722bf9f05cd6c203b8e4f33e38f5f26c3a2bc5066d1f70d47a5c3a103` |
| 24 | `theorem` | [lt_mul_inv_iff_lt_mul_of_neg](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/lt-mul-inv-iff-lt-mul-of-neg--89a737b4e7e7af7ea7172a74.md) | 131 | `result-track:89a737b4e7e7af7ea7172a743483d15339fdfb1b0fa39d9523319e21941f61fe` |
| 25 | `theorem` | [mul_inv_lt_iff_mul_lt_of_neg](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-inv-lt-iff-mul-lt-of-neg--45a41f65f9ba1cafc4259f85.md) | 134 | `result-track:45a41f65f9ba1cafc4259f8512695cff1fe659fed8e246044ad85687829a6931` |
| 26 | `theorem` | [mul_lt_mul_iff_of_pos_right](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-lt-mul-iff-of-pos-right--900ecac30fc754e1ed8a04ed.md) | 137 | `result-track:900ecac30fc754e1ed8a04ed43adde33b09ac13da62e8c50e23b2d15fafe9b0e` |
| 27 | `theorem` | [mul_lt_mul_iff_of_pos_left](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-lt-mul-iff-of-pos-left--91c4526a52bd81eb8ca938d0.md) | 145 | `result-track:91c4526a52bd81eb8ca938d07bd4bba3bff9b6afcca975bccf2ead40d4461e0d` |
| 28 | `theorem` | [mul_lt_mul_iff_of_neg_right](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-lt-mul-iff-of-neg-right--2847208d024dff1a5b0fedbc.md) | 153 | `result-track:2847208d024dff1a5b0fedbc7c7c18a9cd7d916301085fd50c85a93b2ee974ee` |
| 29 | `theorem` | [mul_lt_mul_iff_of_neg_left](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-lt-mul-iff-of-neg-left--24edd1f93598695149e8c4a9.md) | 161 | `result-track:24edd1f93598695149e8c4a942c2e91736f16bb8c17640466c3ac5399bc7acb5` |
| 30 | `theorem` | [mul_le_mul_iff_of_pos_right](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-le-mul-iff-of-pos-right--4cf5156fc6d654f5802d9cad.md) | 169 | `result-track:4cf5156fc6d654f5802d9cad7deda504a4ece8c544ae389067506c4599528e2b` |
| 31 | `theorem` | [mul_le_mul_iff_of_pos_left](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-le-mul-iff-of-pos-left--d660cb6a1106232d15e7411e.md) | 177 | `result-track:d660cb6a1106232d15e7411edce7bb50db894a44f846e245ef163c76c4749425` |
| 32 | `theorem` | [mul_le_mul_iff_of_neg_right](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-le-mul-iff-of-neg-right--3dd4b3dd9431016379aae8ca.md) | 185 | `result-track:3dd4b3dd9431016379aae8ca522a4a51c91a8254a7d88b7081c1effae71fdbd9` |
| 33 | `theorem` | [mul_le_mul_iff_of_neg_left](../../../../mathematics/Algebra/FieldTheory/Variant06c0804eb1ea3fbcb60a3289de6ba7958126f4ea599b73194d34fda87c09164a.lean/declarations/mul-le-mul-iff-of-neg-left--5a783e354d23c7c070bf8a1e.md) | 193 | `result-track:5a783e354d23c7c070bf8a1e9b2bd271b42be364defeb672e9ee36198988a65a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
