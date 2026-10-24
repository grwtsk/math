# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Reflection.Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ab65dbfff5c7a1df4b1cfdf79cb2b8147c1030",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ab65dbfff5c7a1df4b1cfdf79cb2b8147c1030`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjRetractionAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/adjretractionaux--c9b4871ca4e6f00df3c1ad8c.md) | 49 | `declaration-track:c9b4871ca4e6f00df3c1ad8c2c427f121c32bfd9746e5d73c697d1f1c7d1514c` |
| 2 | `def` | [adjRetraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/adjretraction--46bb805b3d812c3c96ef43e3.md) | 57 | `declaration-track:46bb805b3d812c3c96ef43e3de315621596ff35d0412b12a383fc3e5aa1ca41c` |
| 3 | `lemma` | [adjRetraction_is_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/adjretraction-is-retraction--cba9e369ef1c9d155eec325f.md) | 62 | `result-track:cba9e369ef1c9d155eec325f715b49989a4d30ca400be6897174d5caf0531256` |
| 4 | `theorem` | [isIso_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/isiso-tfae--53d16b4d4429284bd0e2eede.md) | 92 | `result-track:53d16b4d4429284bd0e2eede5fb8e7219b03ea02bb4139b7d71806e45e504a39` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/instance--4eb21f22f81bd55272550367.md) | 207 | `declaration-track:4eb21f22f81bd55272550367c0408ebcf9f40f2f20cacfaad2104871edf4f34a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/instance--74785582a617f517e9f4e5e1.md) | 213 | `declaration-track:74785582a617f517e9f4e5e1022be4ed57a4b1d94b12d29a3a581ccd0f4b99a8` |
| 7 | `def` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/closed--a170bd9f552e2ee87a1bc71f.md) | 220 | `declaration-track:a170bd9f552e2ee87a1bc71f8be68634dccc45a75c053751c96a0428e33dd711` |
| 8 | `def` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantde483ae2d0101101c9e1111da0b046104e04660508b8f3dfbd0a49866af28046.lean/declarations/monoidalclosed--35160b75fa1238353d509a74.md) | 239 | `declaration-track:35160b75fa1238353d509a749c82b774dd9cb57d5926153ec01d06d3966e67ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
