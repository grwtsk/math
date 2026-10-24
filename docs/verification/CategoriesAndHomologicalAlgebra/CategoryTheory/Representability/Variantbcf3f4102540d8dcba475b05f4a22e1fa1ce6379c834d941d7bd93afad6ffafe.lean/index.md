# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Representability.Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dc41f4382fd00c7238f48a537644bb88b925bd2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dc41f4382fd00c7238f48a537644bb88b925bd2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean.json)

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
| 1 | `def` | [glueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/gluedata--52ec5f5bffabd028a982caa8.md) | 68 | `declaration-track:52ec5f5bffabd028a982caa8f6af342bf9c2de73c7e66ad146728e6ab8b79a32` |
| 2 | `def` | [toGlued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/toglued--5b778fc2fb01f2c921cb784a.md) | 87 | `declaration-track:5b778fc2fb01f2c921cb784a140d2bf45a2939bb55f4435e17ffb852fd5a0072` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/instance--77964f2c04d399dc96b472eb.md) | 91 | `declaration-track:77964f2c04d399dc96b472eb7230b8d70ab6d51f7ae7fe3e0a8fc4b2b566c76d` |
| 4 | `def` | [yonedaGluedToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/yonedagluedtosheaf--80aeb1701858d43342dc0d29.md) | 97 | `declaration-track:80aeb1701858d43342dc0d297eb91936e3829318e5c29d9a6cecad10ddc7582d` |
| 5 | `lemma` | [yoneda_toGlued_yonedaGluedToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/yoneda-toglued-yonedagluedtosheaf--665e831f58804430c59107d6.md) | 112 | `result-track:665e831f58804430c59107d6d0396720a5e3fc23f3375a7f24d51e409d705806` |
| 6 | `lemma` | [yonedaGluedToSheaf_app_toGlued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/yonedagluedtosheaf-app-toglued--16e264f44f2217b90d4c25f5.md) | 121 | `result-track:16e264f44f2217b90d4c25f59deaf85b9402b0a639ed026657f9f1610f63524a` |
| 7 | `lemma` | [yonedaGluedToSheaf_app_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/yonedagluedtosheaf-app-comp--b5c78bcddcc2f92886b95944.md) | 128 | `result-track:b5c78bcddcc2f92886b959443220a6b6937e21c69f5d4b9b454c9435c23f4eff` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/instance--fce8565c5d9d724c0b7ebb9b.md) | 133 | `declaration-track:fce8565c5d9d724c0b7ebb9b6da93ec08e36683eceb60a0d66e2a086d3e9c642` |
| 9 | `lemma` | [comp_toGlued_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/comp-toglued-eq--b5d5436f0e318768121f1fc7.md) | 141 | `result-track:b5d5436f0e318768121f1fc757e74b3d23bcb05cfe598273457ea10ad06205d1` |
| 10 | `lemma` | [glueData_openCover_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/gluedata-opencover-map--1b69ad43727b8a38604b779e.md) | 150 | `result-track:1b69ad43727b8a38604b779e75c6eb1e927824d6b9959f4830962364a74c5923` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/instance--6843a87583075b01be7129de.md) | 154 | `declaration-track:6843a87583075b01be7129deebfc0feb2b16e0a1e286fa8d648c27aa840d4ccd` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/instance--31c3b9f0b564809fd08fcd18.md) | 172 | `declaration-track:31c3b9f0b564809fd08fcd181fe996fc0a1ea418a56a1896e10dce9b0c6c97c6` |
| 13 | `def` | [yonedaIsoSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/yonedaisosheaf--b17b8f088143e96233be323a.md) | 179 | `declaration-track:b17b8f088143e96233be323a9f3d6892e33ac449e66974037a2c78660c83092e` |
| 14 | `def` | [representableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/representableby--5f386d2fc0d1ff0b06b1cc39.md) | 193 | `declaration-track:5f386d2fc0d1ff0b06b1cc39c8d18da7304f77ff498992db39a2fdfac61f222b` |
| 15 | `theorem` | [isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/declarations/isrepresentable--e678c8fc2af8d20bba797e5d.md) | 208 | `result-track:e678c8fc2af8d20bba797e5d658857cb6e271f56e787fe0332c965cf7ae03714` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
