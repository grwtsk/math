# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2466b158c6cb3260fdcd2f9c6df630c14d0115cb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2466b158c6cb3260fdcd2f9c6df630c14d0115cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Flat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Continuous` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LeftExact` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/sheafpullback--fc6e2b9d6389320fb896a7c5.md) | 51 | `declaration-track:fc6e2b9d6389320fb896a7c5494c7f5bcb9445192a562e64506690b029351b20` |
| 2 | `def` | [sheafAdjunctionContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/sheafadjunctioncontinuous--57f71c297a02f01beda2300a.md) | 55 | `declaration-track:57f71c297a02f01beda2300aaa61017e6ce323f7df67c98be177412540ab156f` |
| 3 | `def` | [sheafPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/sheafpullback--0734176fe843aab59d6daf66.md) | 66 | `declaration-track:0734176fe843aab59d6daf664499255165a3cce4b90bdbf5cdb8f7e45d363c3e` |
| 4 | `def` | [sheafAdjunctionContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/sheafadjunctioncontinuous--8eecc8725581f7f82169b355.md) | 71 | `declaration-track:8eecc8725581f7f82169b355e0b1989e8a8fedea543359594401b97679450360` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/instance--0f1ef880b7c92d9aa50f934e.md) | 76 | `declaration-track:0f1ef880b7c92d9aa50f934ee238e19bc315c6f4d6c13991f5e3f5b10cb7ff6a` |
| 6 | `def` | [sheafPullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/sheafpullbackiso--00b617ee69bc1523439dd205.md) | 81 | `declaration-track:00b617ee69bc1523439dd205b0a7c10596be0384d197d2098a5842bd80d02e3e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/instance--dde615aa34fd2dbdf7fcdf85.md) | 89 | `declaration-track:dde615aa34fd2dbdf7fcdf85bdf65d65b54edf7ac33b2d273bea47edb2920f73` |
| 8 | `instance` | [preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/preservesfinitelimits--0ebb3a8dae9b751199ca88b5.md) | 94 | `declaration-track:0ebb3a8dae9b751199ca88b549c2022526125d8a28d07ecedc5e314cb3a8a1d5` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/example--d81a3253912f0f16fa79a94b.md) | 113 | `declaration-track:d81a3253912f0f16fa79a94be7de7eb6b0da7ec63a8b2633d25e9ad6835a7011` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9a44f4a120302c3bf30854a135a145034f73ff371c2b7896652949cc538448cc.lean/declarations/instance--18bc873e043d23d329677dfa.md) | 116 | `declaration-track:18bc873e043d23d329677dfad3dbba3a192436a36fda878bce75fdddaaa20236` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
