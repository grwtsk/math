# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "252a3ae8d64fb066d2026f2515502030871db24a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `252a3ae8d64fb066d2026f2515502030871db24a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/minpoly--dfd1fb67997946969cb821ce.md) | 37 | `declaration-track:dfd1fb67997946969cb821ce29eb14c223295bba22229e9411047e895fc0ab53` |
| 2 | `theorem` | [monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/monic--bd4e83d70a0df9b5eac11b05.md) | 52 | `result-track:bd4e83d70a0df9b5eac11b05fe2be9245e35cdd7ae43b6eb1f284464cd211bb9` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/ne-zero--dc8e8956ab288aae6b6f1101.md) | 59 | `result-track:dc8e8956ab288aae6b6f11017f6936d9b9a52432e0a5f48f7c0c66c78c3ed1c1` |
| 4 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/eq-zero--6d6723d531dbe28f21454c10.md) | 63 | `result-track:6d6723d531dbe28f21454c100f38a68a21fcce682b65fb7bf5ba4ecb155bb5c9` |
| 5 | `theorem` | [minpoly_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/minpoly-alghom--a41e3acaf605640c63ed37c1.md) | 67 | `result-track:a41e3acaf605640c63ed37c1d77f66d2d0cee06e0ec12aa644a9cb5784640731` |
| 6 | `theorem` | [minpoly_algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/minpoly-algequiv--511d4fc93b0fae72c1cd9d9d.md) | 74 | `result-track:511d4fc93b0fae72c1cd9d9d2334cd0acb1748ff71e674d28c247ec4589a4884` |
| 7 | `theorem` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/aeval--7c5920415c34f6238a4166aa.md) | 82 | `result-track:7c5920415c34f6238a4166aaf288090d10fe7be22e0abd74e16de844b2eba34e` |
| 8 | `theorem` | [ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/ne-one--2812a5686a7cdbe5f05b335d.md) | 92 | `result-track:2812a5686a7cdbe5f05b335d49b1c1e67a2185bf7aff5a3e3b097453307092b2` |
| 9 | `theorem` | [map_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/map-ne-one--f8a5358e62f0b21e15e8da40.md) | 98 | `result-track:f8a5358e62f0b21e15e8da402aa1505f5621cc343d08db216a98f03c0ca89205` |
| 10 | `theorem` | [not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/not-isunit--6f2399bb723a5932c41f7e39.md) | 107 | `result-track:6f2399bb723a5932c41f7e3989b324e5e0c58c4aa9ff4cedab8c00e886b058a7` |
| 11 | `theorem` | [mem_range_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/mem-range-of-degree-eq-one--211ef1e61377fdbcf38cab35.md) | 115 | `result-track:211ef1e61377fdbcf38cab35beaca3bd08690f91970acf4faa25416a2d1067ff` |
| 12 | `theorem` | [min](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/min--27d220b2edc70080901e7b43.md) | 129 | `result-track:27d220b2edc70080901e7b432236ac37d50d18bdf6010d97c087be60a42c7b4f` |
| 13 | `theorem` | [unique'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/unique--fcc77d6b00e66d2986e5e35b.md) | 136 | `result-track:fcc77d6b00e66d2986e5e35bae42144343504084b027d8acef56a81bc102fcba` |
| 14 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/subsingleton--9518bb5380583928394f2cee.md) | 162 | `result-track:9518bb5380583928394f2cee4a5ea3c60954abfc3b7942b848d7fd052cc294ca` |
| 15 | `theorem` | [natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/natdegree-pos--c4e1f0deac96f71087eb11e1.md) | 184 | `result-track:c4e1f0deac96f71087eb11e1a1ba49972b9d3423c6142913b0583096cd543953` |
| 16 | `theorem` | [degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/degree-pos--e43e6e202fba97c25333d29a.md) | 195 | `result-track:e43e6e202fba97c25333d29a45797b2ffe27e531d7e344ef1547beac20fdd815` |
| 17 | `theorem` | [eq_X_sub_C_of_algebraMap_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/eq-x-sub-c-of-algebramap-inj--9431d2c88d3b28dd28595685.md) | 201 | `result-track:9431d2c88d3b28dd28595685b3d5ea15a7a7165389f1aef77730457b0cd5a5d5` |
| 18 | `theorem` | [aeval_ne_zero_of_dvdNotUnit_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/aeval-ne-zero-of-dvdnotunit-minpoly--a14ccd0eb7bb26079f74d307.md) | 223 | `result-track:a14ccd0eb7bb26079f74d307326b1adac130368094aa94807df8a855a2cd51f8` |
| 19 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/declarations/irreducible--4c3e99ed37608c92c59cd874.md) | 240 | `result-track:4c3e99ed37608c92c59cd87424bd8103b7bb3d6654a11cda68a002f932012478` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
