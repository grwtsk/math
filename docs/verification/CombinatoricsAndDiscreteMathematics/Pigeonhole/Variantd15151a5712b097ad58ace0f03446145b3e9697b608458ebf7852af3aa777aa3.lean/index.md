# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e07870d7af9dd7f4cd1128df7a966bbb142b496",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e07870d7af9dd7f4cd1128df7a966bbb142b496`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lt_sum_fiber_of_maps_to_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-sum-fiber-of-maps-to-of-nsmul-lt-sum--7448881efffd9081d633cd23.md) | 111 | `result-track:7448881efffd9081d633cd23f6c0e9896f99aec6b0185475ddb480bcd71a267a` |
| 2 | `theorem` | [exists_sum_fiber_lt_of_maps_to_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-sum-fiber-lt-of-maps-to-of-sum-lt-nsmul--b7ba537ad163c2b636c5e901.md) | 119 | `result-track:b7ba537ad163c2b636c5e901800e123ef73626e9de3b675d78317263894dccea` |
| 3 | `theorem` | [exists_lt_sum_fiber_of_sum_fiber_nonpos_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-sum-fiber-of-sum-fiber-nonpos-of-nsmul-lt-sum--51fc40308bafb843af37c94c.md) | 128 | `result-track:51fc40308bafb843af37c94cee64ae2e51f437b55de54f0f47f657e08209fbbc` |
| 4 | `theorem` | [exists_sum_fiber_lt_of_sum_fiber_nonneg_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-sum-fiber-lt-of-sum-fiber-nonneg-of-sum-lt-nsmul--10aa891ba729f5af045b3306.md) | 141 | `result-track:10aa891ba729f5af045b3306c0892ca6a69f0d65788f63cb14fdf41c6cd589e1` |
| 5 | `theorem` | [exists_le_sum_fiber_of_maps_to_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-sum-fiber-of-maps-to-of-nsmul-le-sum--b4c268ae870335903757ed5c.md) | 155 | `result-track:b4c268ae870335903757ed5cb8f66af9109b8412ceac963561ef5922d82ac9f0` |
| 6 | `theorem` | [exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-sum-fiber-le-of-maps-to-of-sum-le-nsmul--918ef01f872810f4f12b22eb.md) | 163 | `result-track:918ef01f872810f4f12b22ebce77a98f6c4b7b3a5a4e08c442e6b5fc01c3890f` |
| 7 | `theorem` | [exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-sum-fiber-of-sum-fiber-nonpos-of-nsmul-le-sum--8d601a9c8d7f490a17859517.md) | 172 | `result-track:8d601a9c8d7f490a17859517c58e492fd6fa1f407a46749dd9830cdc7ca5d10f` |
| 8 | `theorem` | [exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-sum-fiber-le-of-sum-fiber-nonneg-of-sum-le-nsmul--a2ef0cc6aa2db1e6dde232a3.md) | 186 | `result-track:a2ef0cc6aa2db1e6dde232a35513bac604ac1bcd1876845f63e18153127f8342` |
| 9 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card-of-maps-to--b6a9b1441300540f9257812d.md) | 215 | `result-track:b6a9b1441300540f9257812defd1cdef9517ef5f6e2dad5503ba1659ba82d2ac` |
| 10 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-card-fiber-of-mul-lt-card-of-maps-to--8ac0cda0d580243cca8549a2.md) | 227 | `result-track:8ac0cda0d580243cca8549a2dc249fbad653671fbdaf581d4013aafacce00fb3` |
| 11 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--7bad30908238ded1e41e783c.md) | 233 | `result-track:7bad30908238ded1e41e783c3a9f4400b577f19efcedef48680b75e93e069286` |
| 12 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--6a90a199b768ab124de1e774.md) | 247 | `result-track:6a90a199b768ab124de1e7743f8fb1ee6647b091adc0d55ea2aad75d08f3ff00` |
| 13 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-card-fiber-of-nsmul-le-card-of-maps-to--dc174161b284af4eb20e39ff.md) | 254 | `result-track:dc174161b284af4eb20e39ff3ef5620a16de212bc30a425939be79a6b6afffb7` |
| 14 | `theorem` | [exists_le_card_fiber_of_mul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-card-fiber-of-mul-le-card-of-maps-to--e0ae1fdac6508777703453a9.md) | 263 | `result-track:e0ae1fdac6508777703453a9db70aef8f08b049217965933eb1d6a3014a0451e` |
| 15 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--25d32600898a42d824aaec8d.md) | 271 | `result-track:25d32600898a42d824aaec8dfb5561201c706ac7811fe98444efe35643f4d0e7` |
| 16 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-le-of-card-le-mul--2c6dfe744355baab444a0b7f.md) | 282 | `result-track:2c6dfe744355baab444a0b7fc177c1fcec1804ae2dc6f7ef888d28822d0b65aa` |
| 17 | `theorem` | [exists_lt_sum_fiber_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-sum-fiber-of-nsmul-lt-sum--3905c8903ccc966a228f5ff4.md) | 309 | `result-track:3905c8903ccc966a228f5ff4555e79770b8c61c6e591871a6ffdcc8d8153127a` |
| 18 | `theorem` | [exists_le_sum_fiber_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-sum-fiber-of-nsmul-le-sum--874b4c9299c15dd5b8e711e1.md) | 318 | `result-track:874b4c9299c15dd5b8e711e10598f0af168865df28749c590add5b0af8f25b28` |
| 19 | `theorem` | [exists_sum_fiber_lt_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-sum-fiber-lt-of-sum-lt-nsmul--544112f44078b65e2e10e820.md) | 327 | `result-track:544112f44078b65e2e10e820f138da7fcf6304e2724c5a1d874997ecfc2d8c7f` |
| 20 | `theorem` | [exists_sum_fiber_le_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-sum-fiber-le-of-sum-le-nsmul--47bbb5077ee292d36d5539e3.md) | 335 | `result-track:47bbb5077ee292d36d5539e35a595ea0660f23e8d620b3074fbcd5c30b85b433` |
| 21 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card--c79d9e8326923483456686eb.md) | 346 | `result-track:c79d9e8326923483456686eb801cfef6a4cd72fcab97189074c031084b412809` |
| 22 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-card-fiber-of-mul-lt-card--36fa65cee6fec4d881e31ad2.md) | 359 | `result-track:36fa65cee6fec4d881e31ad24b59c39405b6aeb8d79d0c2c9cf8f92eb419d08d` |
| 23 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--958a929be975cd94bf2a6230.md) | 366 | `result-track:958a929be975cd94bf2a623087969f366e1681bb87200a117c999ca6b812f74c` |
| 24 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--3cbb1ead937e1052eac0098d.md) | 379 | `result-track:3cbb1ead937e1052eac0098dedd4f13573d6752b67bb3671d7561aa6a1cf8526` |
| 25 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-card-fiber-of-nsmul-le-card--db6a36eafe01a911394d4c09.md) | 387 | `result-track:db6a36eafe01a911394d4c09abc05b30c52d6bae9e68cda89578f545d775289a` |
| 26 | `theorem` | [exists_le_card_fiber_of_mul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-le-card-fiber-of-mul-le-card--047a71341fd62c72f8a837a9.md) | 397 | `result-track:047a71341fd62c72f8a837a9948c66ac6df7d78679600c0372ef4df4dd1d3636` |
| 27 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--65b17b6b164bdd701630a917.md) | 405 | `result-track:65b17b6b164bdd701630a91752771e9a5dc488c0f1ac9fb6f8fe5f1498e93234` |
| 28 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-card-fiber-le-of-card-le-mul--56dd6229ae469c6b5f9ffda5.md) | 414 | `result-track:56dd6229ae469c6b5f9ffda5285536407e663cf028dd3d423ef0a34135b43bb7` |
| 29 | `theorem` | [exists_lt_modEq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantd15151a5712b097ad58ace0f03446145b3e9697b608458ebf7852af3aa777aa3.lean/declarations/exists-lt-modeq-of-infinite--fb8a901dd7bd57b76fdb3e34.md) | 426 | `result-track:fb8a901dd7bd57b76fdb3e34726fde2481a92b296fad0a7711ce5246fba32364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
