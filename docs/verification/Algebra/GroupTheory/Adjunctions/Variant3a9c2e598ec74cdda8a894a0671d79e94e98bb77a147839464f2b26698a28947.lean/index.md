# Verification target: GRWTSK.Algebra.GroupTheory.Adjunctions.Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b60721f1c7d4e5871d0fcd43e9b82b6ba6fd8bd",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b60721f1c7d4e5871d0fcd43e9b82b6ba6fd8bd`.

Source path: `GRWTSK/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeAbelianGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/free--cc7877e4f02bac58a49f2983.md) | 59 | `declaration-track:cc7877e4f02bac58a49f29835e1bc697695438a7cf519eef8321e026b8fdf30d` |
| 2 | `theorem` | [free_obj_coe](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/free-obj-coe--0c0f6dbbb6b68be44942452e.md) | 67 | `result-track:0c0f6dbbb6b68be44942452ebf595aebe2f741041ec7ac05e35e1f9be6440424` |
| 3 | `theorem` | [free_map_coe](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/free-map-coe--a4dd7881550b1a7a0e580b9a.md) | 72 | `result-track:a4dd7881550b1a7a0e580b9a838dbc069578eef8038a6443cb721f2285c2c30c` |
| 4 | `def` | [adj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/adj--835cb56451495736d4dc7c46.md) | 79 | `declaration-track:835cb56451495736d4dc7c4661c14d9257e998081f6f7ea9bcd3c4231f572d34` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/instance--fa0c132262b4473e75632330.md) | 90 | `declaration-track:fa0c132262b4473e756323301a41638cb949d14fc83da63e9bd10a45258a1ff4` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/example--cac1d79a455f197b48fa307c.md) | 99 | `declaration-track:cac1d79a455f197b48fa307c0b261ba11a03c2bc40fd4fcd18d70d07042b0e3b` |
| 7 | `def` | [free](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/free--ce14c8b143f46b5df4fc7a3e.md) | 109 | `declaration-track:ce14c8b143f46b5df4fc7a3e577dfd01002a97b445f511921e45e3e88e9cf5e7` |
| 8 | `def` | [adj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/adj--bf3d404c3faeb433ca86f356.md) | 120 | `declaration-track:bf3d404c3faeb433ca86f356ddabbb3aabef91db54a98ae5efc094cfb8115aa6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/instance--e7112457d062cadddc635b92.md) | 134 | `declaration-track:e7112457d062cadddc635b9240fd9063bdd2335bef3790b7205cfe993402cd53` |
| 10 | `def` | [abelianize](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/abelianize--2bd668c62074e842829ec153.md) | 143 | `declaration-track:2bd668c62074e842829ec153c7c9ee9fdc27c0db40db982055c43390d568b675` |
| 11 | `def` | [abelianizeAdj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/abelianizeadj--15f32569d174032aaff5c2c3.md) | 161 | `declaration-track:15f32569d174032aaff5c2c3bea55ab9642a35a40c4748e8a259e34e158096ed` |
| 12 | `def` | [MonCat.units](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/moncat-units--ef4db592e8cee9894172f53e.md) | 179 | `declaration-track:ef4db592e8cee9894172f53e79243cc121f15e571722032e3021a5960ca596fe` |
| 13 | `def` | [GroupCat.forget₂MonAdj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/groupcat-forget-monadj--9c3496ddacf646f6b897f3e2.md) | 187 | `declaration-track:9c3496ddacf646f6b897f3e23b2e872e56fabd9375229aa28c8caae4ca91a87a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/instance--e77ad2683ec5bfc254fec73a.md) | 203 | `declaration-track:e77ad2683ec5bfc254fec73a62fefa9718e8df278eaaaf7c011eb6f07c9799e3` |
| 15 | `def` | [CommMonCat.units](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/commmoncat-units--1a2fff96b8c95d5c5b5298e7.md) | 208 | `declaration-track:1a2fff96b8c95d5c5b5298e7d1482bd0d2580c15cad15b79708b8555df573e15` |
| 16 | `def` | [CommGroupCat.forget₂CommMonAdj](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/commgroupcat-forget-commmonadj--48d993f48f37b31767cbd790.md) | 216 | `declaration-track:48d993f48f37b31767cbd7900f6cae8800e1f330a668082e89d1fdd547241a7c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Adjunctions/Variant3a9c2e598ec74cdda8a894a0671d79e94e98bb77a147839464f2b26698a28947.lean/declarations/instance--67ab9ab5f3fd62cf5fd6f30d.md) | 232 | `declaration-track:67ab9ab5f3fd62cf5fd6f30d8b244fcfb8ffb0046072a5b71770b30d58c4d47c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
