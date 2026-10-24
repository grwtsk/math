# Verification target: GRWTSK.Algebra.LinearAlgebra.Conjugation.Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1aaee186269d438cba3899594793e425039170",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1aaee186269d438cba3899594793e425039170`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposites` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute--ed67335dc915be9088235c10.md) | 47 | `declaration-track:ed67335dc915be9088235c10d4fb021c9e187c9f5b89591cb54637cb0541e317` |
| 2 | `theorem` | [involute_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute--a8facd3485901a131cae2de6.md) | 52 | `result-track:a8facd3485901a131cae2de663b4ae46e847e697aa4f72b889c7ddea97f5b805` |
| 3 | `theorem` | [involute_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-comp-involute--3018e5782d1edaa5dae9122b.md) | 57 | `result-track:3018e5782d1edaa5dae9122bda442d8f768676b475ed0bc2d9b66f65b332fbbc` |
| 4 | `theorem` | [involute_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-involutive--f3dd5846bcb7ac8c87a662c5.md) | 61 | `result-track:f3dd5846bcb7ac8c87a662c566a2171df77890b2c75b305d3a030b6d920976d2` |
| 5 | `theorem` | [involute_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-involute--7f122c4a17ad2d903fe5fa65.md) | 66 | `result-track:7f122c4a17ad2d903fe5fa65c6306ed4d2ab55b5655cc79aa7449d774a0d0644` |
| 6 | `def` | [involuteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involuteequiv--2acff8526e376ceccc402801.md) | 72 | `declaration-track:2acff8526e376ceccc40280137e44329431cbfeca76f76a8d9228f7304d6fa3b` |
| 7 | `def` | [reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse--993aa1adcacfaf8e99ea90f7.md) | 85 | `declaration-track:993aa1adcacfaf8e99ea90f751caf15b009f2816d76f9b432676644f33677aee` |
| 8 | `theorem` | [reverse_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse--1170365426e840e5d08826ea.md) | 93 | `result-track:1170365426e840e5d08826eab4ebcef7d16fdb83cc22ee69352ba03aeef2f0a4` |
| 9 | `theorem` | [reverse.commutes](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-commutes--4961a6a27b751cbaa3c8553e.md) | 97 | `result-track:4961a6a27b751cbaa3c8553e99b6a73bda5f55a83f74a691c54272607fbd7ab8` |
| 10 | `theorem` | [reverse.map_one](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-map-one--2f0d5c10c40c765431a0afbb.md) | 102 | `result-track:2f0d5c10c40c765431a0afbbaf3ad8009eaab8dbc065c2f5828852f9fbbd766c` |
| 11 | `theorem` | [reverse.map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-map-mul--eb28e9f6cc613f952f004267.md) | 107 | `result-track:eb28e9f6cc613f952f004267c28d24d344d5c96c04f15a8ca55587cc845b2598` |
| 12 | `theorem` | [reverse_comp_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-comp-reverse--8d7177a562a001835e06b98e.md) | 114 | `result-track:8d7177a562a001835e06b98e5616e2cfde81439b2735faa4258ef825ad700199` |
| 13 | `theorem` | [reverse_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-involutive--5bbee334869cfa015f93cc38.md) | 127 | `result-track:5bbee334869cfa015f93cc384f32f1c3125aa46ff255926277be022a718e87ce` |
| 14 | `theorem` | [reverse_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-reverse--6ead4e7a4908c6b5b8a218e3.md) | 132 | `result-track:6ead4e7a4908c6b5b8a218e3d69ee1b8837375ba395ca5b88a95e941141aa459` |
| 15 | `def` | [reverseEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverseequiv--8c5c406f268f9a129fd33322.md) | 138 | `declaration-track:8c5c406f268f9a129fd333227f8ac21c9a0e98c66f78ca29995dd6898dd76d4a` |
| 16 | `theorem` | [reverse_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-comp-involute--973f87d847bbb4b98a19f07f.md) | 142 | `result-track:973f87d847bbb4b98a19f07fade8f4e13ea58bf3efff2f6cbbccd4d84feb35fb` |
| 17 | `theorem` | [reverse_involute_commute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-involute-commute--125a204d6275fdadfe04fd62.md) | 156 | `result-track:125a204d6275fdadfe04fd6277a71d1a33ab2a664ceffd785ebd639f84f87166` |
| 18 | `theorem` | [reverse_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-involute--a0ae544638864440562220bb.md) | 160 | `result-track:a0ae544638864440562220bb6ba91ec33ce7cd73f899ea42872a708b68de895a` |
| 19 | `theorem` | [reverse_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-prod-map--973fb68bcf19bd700d8f6948.md) | 176 | `result-track:973fb68bcf19bd700d8f694871a174a970d487a4c38429f96ce8a9d4f3d5ccd4` |
| 20 | `theorem` | [involute_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-prod-map--87717b6e8ddee9dcc731c691.md) | 185 | `result-track:87717b6e8ddee9dcc731c691da6dafbdc4c159804522d2e0d1ace53a9fe24438` |
| 21 | `theorem` | [submodule_map_involute_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/submodule-map-involute-eq-comap--1fb463c9caae65a6ea634f07.md) | 204 | `result-track:1fb463c9caae65a6ea634f07309457f1d624a0d0fe0c0e401eb5687acc8b763c` |
| 22 | `theorem` | [ι_range_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/range-map-involute--a8a46a746ae682c1af351b93.md) | 211 | `result-track:a8a46a746ae682c1af351b9361065326073384fb2b9eaba4496bc382b407c27b` |
| 23 | `theorem` | [ι_range_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/range-comap-involute--3af46303eb06156842dc12b8.md) | 218 | `result-track:3af46303eb06156842dc12b8733b4ca0abdd378d7926f630e06ef55c8cfb4bcf` |
| 24 | `theorem` | [evenOdd_map_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/evenodd-map-involute--847c0327376e734485077329.md) | 225 | `result-track:847c0327376e734485077329ebb2e93d1ce104a29050a6524f081c1da1193787` |
| 25 | `theorem` | [evenOdd_comap_involute](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/evenodd-comap-involute--d8a5f32817196bccd9b20dec.md) | 232 | `result-track:d8a5f32817196bccd9b20decbc090582914598c6a56e883bc0bb7d616c1e40ac` |
| 26 | `theorem` | [submodule_map_reverse_eq_comap](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/submodule-map-reverse-eq-comap--998ef3c97ae5a0efd334cfdd.md) | 242 | `result-track:998ef3c97ae5a0efd334cfdd007b43259c74afe7745436b9d01bd0e9410c82d2` |
| 27 | `theorem` | [ι_range_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/range-map-reverse--5d1b7df16e4c8aadab83a4d7.md) | 249 | `result-track:5d1b7df16e4c8aadab83a4d71060548ad44b108866eccef7a56d16054cb72583` |
| 28 | `theorem` | [ι_range_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/range-comap-reverse--55c960d85ea928a634e55393.md) | 257 | `result-track:55c960d85ea928a634e55393afb9300e4e4c919bb9cfcb260bc117b47d7a8983` |
| 29 | `theorem` | [submodule_map_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/submodule-map-mul-reverse--c6210f5e58e168fc4f1fa2c2.md) | 264 | `result-track:c6210f5e58e168fc4f1fa2c23003a128701efea6fd7c82566d306459d6f9845b` |
| 30 | `theorem` | [submodule_comap_mul_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/submodule-comap-mul-reverse--145f18dd1383f4e8976e36df.md) | 271 | `result-track:145f18dd1383f4e8976e36dfdee73d823163f3f76f1f678eab41134d757a963b` |
| 31 | `theorem` | [submodule_map_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/submodule-map-pow-reverse--57cd26450c4ae649f870ce43.md) | 279 | `result-track:57cd26450c4ae649f870ce433ef4a2c211b02465fef32041d91aabccda017aa0` |
| 32 | `theorem` | [submodule_comap_pow_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/submodule-comap-pow-reverse--e7cb17d97bda52eb93a55569.md) | 285 | `result-track:e7cb17d97bda52eb93a5556985a0f7b5760965d7ed8e6ae3a95ea689755e16d6` |
| 33 | `theorem` | [evenOdd_map_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/evenodd-map-reverse--8d7891843375ad9f991d63d9.md) | 292 | `result-track:8d7891843375ad9f991d63d97c617d9c912f8e195db19da48205c8e72fbb8278` |
| 34 | `theorem` | [evenOdd_comap_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/evenodd-comap-reverse--49b4703720025c3e35c0606e.md) | 298 | `result-track:49b4703720025c3e35c0606e3c0d113e3830bfd794dc4e589662a3a27a2d5623` |
| 35 | `theorem` | [involute_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-mem-evenodd-iff--0b6d28d322b724f4f3b01abf.md) | 306 | `result-track:0b6d28d322b724f4f3b01abf163667346978910367b2d1487f6c72fe558f1295` |
| 36 | `theorem` | [reverse_mem_evenOdd_iff](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/reverse-mem-evenodd-iff--e5f74d33675595741b5172e8.md) | 312 | `result-track:e5f74d33675595741b5172e8c3e66811f145d80dde03391a6851818c8a20f038` |
| 37 | `theorem` | [involute_eq_of_mem_even](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-eq-of-mem-even--929a89acc68ea34e732be0c3.md) | 327 | `result-track:929a89acc68ea34e732be0c3197d2999d20aed5c97430c870ea7f7c3832ec99a` |
| 38 | `theorem` | [involute_eq_of_mem_odd](../../../../../mathematics/Algebra/LinearAlgebra/Conjugation/Variant889f26602ee31ca1e60df57efa4cdbbc7ca25eac08ee99273edfd5ffc07550b9.lean/declarations/involute-eq-of-mem-odd--dfbc0e221d017742e3ec307c.md) | 335 | `result-track:dfbc0e221d017742e3ec307cd2610ce8c2d3c5466b2ec9bd5810fd4b00fabf66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
