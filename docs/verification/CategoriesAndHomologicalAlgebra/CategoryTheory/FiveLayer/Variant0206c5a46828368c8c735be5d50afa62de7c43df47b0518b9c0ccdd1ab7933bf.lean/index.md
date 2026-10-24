# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiveLayer.Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a7f2784b51bb2d8b803553e1fff7aacc5cb77db",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a7f2784b51bb2d8b803553e1fff7aacc5cb77db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.GeometricMorphism` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KnowledgeSheafCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/knowledgesheafcategory--1b535a016237196f26b76b39.md) | 20 | `declaration-track:1b535a016237196f26b76b39b093e132ea173d4a5b3c03812aa8cc5f1d6436bc` |
| 2 | `structure` | [ThinkSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/thinksystem--e381a6f7d2ff4d7df5a909aa.md) | 25 | `declaration-track:e381a6f7d2ff4d7df5a909aa8d4baceff166570f2a3b41b08b743455d0ad5c4b` |
| 3 | `def` | [ThinkSystem.logicToWisdom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/thinksystem-logictowisdom--2f6a589225ccf4736acbd8d5.md) | 49 | `declaration-track:2f6a589225ccf4736acbd8d52bc3ec23529325591a419026f834d8a4366d0851` |
| 4 | `theorem` | [logic_to_wisdom_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/logic-to-wisdom-equivalence--69e86bf3da2b5de4bd18e2fb.md) | 67 | `result-track:69e86bf3da2b5de4bd18e2fb8d8d3f944b703508a1930d5d7d20bb525780cff0` |
| 5 | `theorem` | [ThinkSystem.logicToWisdom_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/thinksystem-logictowisdom-isequivalence--97018ecb3082338ff29cc1c5.md) | 88 | `result-track:97018ecb3082338ff29cc1c584b287772529c2243c221a4f1b8cdd922e35847b` |
| 6 | `theorem` | [ThinkSystem.inverseImage_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/thinksystem-inverseimage-preservesfinitelimits--7aca585c956d4437c6cfd981.md) | 107 | `result-track:7aca585c956d4437c6cfd981993c7a0ebc84f25982ba2865d8427aa324ae5ca0` |
| 7 | `structure` | [NativeTopography](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/nativetopography--35ada88fb63c6a41c7869b68.md) | 121 | `declaration-track:35ada88fb63c6a41c7869b6810a3091dfe4986e76ce5126f5df69031d100d4bc` |
| 8 | `def` | [NativeTopography.accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/nativetopography-accepted--e8078815ec1843cdec1a57f0.md) | 138 | `declaration-track:e8078815ec1843cdec1a57f09d1596aef25e1aa27c00a758687fef205a002978` |
| 9 | `theorem` | [NativeTopography.logic_to_wisdom_is_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/nativetopography-logic-to-wisdom-is-equivalence--8e2a8bb06b57574f215a872f.md) | 149 | `result-track:8e2a8bb06b57574f215a872f2c4058064a4ae1737e200d79395c44619b15ac07` |
| 10 | `theorem` | [NativeTopography.no_classical_or_float_omega_if_accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiveLayer/Variant0206c5a46828368c8c735be5d50afa62de7c43df47b0518b9c0ccdd1ab7933bf.lean/declarations/nativetopography-no-classical-or-float-omega-if-accepted--782d351e50a543395cfd5b47.md) | 162 | `result-track:782d351e50a543395cfd5b477e9ebb6e010de02fe9eed2e43a0120864db46c4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
