# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acc495b497d98896f4b3d95d53919d863928ef72",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acc495b497d98896f4b3d95d53919d863928ef72`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean.json)

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
| 1 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/isorderedmonoid--116f7b50fb005b58bcba1721.md) | 32 | `declaration-track:116f7b50fb005b58bcba172182e43a4cbd2596edb28b21040f6bb7c37f538ca3` |
| 2 | `instance` | [existsMulOfLe](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/existsmulofle--7830477d0a853633b7ab5a89.md) | 38 | `declaration-track:7830477d0a853633b7ab5a8986549dd5c87510663165f2dfc711fb1a33e87b42` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/instance--1fdfd5eae7fbc574916205a8.md) | 48 | `declaration-track:1fdfd5eae7fbc574916205a86a77b34f6a30389055812e8aa3182991aff99866` |
| 4 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/isorderedcancelmonoid--38c5fcd560592c46b5d41d0c.md) | 56 | `declaration-track:38c5fcd560592c46b5d41d0c9a61ceecbe56ff20fb3e96b823e63ee08f63560e` |
| 5 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/isorderedring--a56ede287b41f7cb56d7ea39.md) | 61 | `declaration-track:a56ede287b41f7cb56d7ea39ee105b0f5c521ca2f77e0da7fe9d312f64c3cf0d` |
| 6 | `theorem` | [one_le_const_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/one-le-const-of-one-le--755c0be9a57102c57501f602.md) | 75 | `result-track:755c0be9a57102c57501f6024f70a34a5596d566b265529662148d1a80ef63ca` |
| 7 | `theorem` | [const_le_one_of_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/const-le-one-of-le-one--393c4b8cc11a8c994bf9f2c4.md) | 78 | `result-track:393c4b8cc11a8c994bf9f2c431b4416049cedcb5ce0cb609e8fa8385bf7f73aa` |
| 8 | `theorem` | [one_le_const](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/one-le-const--c1c7428615d8b408c69f746a.md) | 83 | `result-track:c1c7428615d8b408c69f746ad358d08f8fdf0a6c6ccf272096ba85c8d6dab575` |
| 9 | `theorem` | [one_lt_const](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/one-lt-const--82ca233dc939939bf15b46a5.md) | 87 | `result-track:82ca233dc939939bf15b46a5d786f0d40edc20beaeb5baeb1480b93b2f6a4fce` |
| 10 | `theorem` | [const_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/const-le-one--fd504ba695acfcc63b6bdc07.md) | 91 | `result-track:fd504ba695acfcc63b6bdc0758ccd7f4da8fec4c0fca0ba990392398b3a75f1c` |
| 11 | `theorem` | [const_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/const-lt-one--d25297a59853d0005bf2ff06.md) | 95 | `result-track:d25297a59853d0005bf2ff062909b62e74af556f73802c9ce836942821423e73` |
| 12 | `lemma` | [one_le_extend](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/one-le-extend--7bd35fefae974aa62b564dd5.md) | 103 | `result-track:7bd35fefae974aa62b564dd522cf316fb9601fc2269735824ebf8e2901a23935` |
| 13 | `lemma` | [extend_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/extend-le-one--ee623a78e400525bf02b89cf.md) | 106 | `result-track:ee623a78e400525bf02b89cfe6e4941841764ab583040445aa7d83a6fec4b333` |
| 14 | `lemma` | [mulSingle_le_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/mulsingle-le-mulsingle--5d7b81b0afeee030b56f2dab.md) | 117 | `result-track:5d7b81b0afeee030b56f2dab2c7f8bf28f633217f519ea251937adf428f5c761` |
| 15 | `lemma` | [one_le_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/one-le-mulsingle--2e9879d627bcfe1182932735.md) | 121 | `result-track:2e9879d627bcfe118293273593f19aa3421dd7ac02bf22d05abcadd0e1306ef0` |
| 16 | `lemma` | [one_lt_mulSingle](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/one-lt-mulsingle--1acade63e05b6e11855d297d.md) | 124 | `result-track:1acade63e05b6e11855d297d113666d469645e453c5219dcf2d15434f46b65e5` |
| 17 | `lemma` | [mulSingle_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean/declarations/mulsingle-le-one--97399c7a185c738fab8535f0.md) | 127 | `result-track:97399c7a185c738fab8535f03973f077d91b7661397448a8a2b93c1e565653ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
