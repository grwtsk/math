# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinallySmall.Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "423a3ea36691f36e934d2842eaa662888addaa89",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `423a3ea36691f36e934d2842eaa662888addaa89`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FinallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall--7554064d0a93bdb1289b963c.md) | 46 | `declaration-track:7554064d0a93bdb1289b963c9a715e16f3a11d797272dc36d38200ffae06f146` |
| 2 | `theorem` | [FinallySmall.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-mk--45ceb70436d6b26c22d31d8f.md) | 51 | `result-track:45ceb70436d6b26c22d31d8fb8f7e7be34b8940deaa35ab2c7a861138e8537e7` |
| 3 | `def` | [FinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finalmodel--445d777d4ef0578ed24794e4.md) | 56 | `declaration-track:445d777d4ef0578ed24794e41f6f806700138e180dafc1bb5f6a3d28a63a6e77` |
| 4 | `instance` | [smallCategoryFinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/smallcategoryfinalmodel--aa15f0c9615dd89d07bde77a.md) | 59 | `declaration-track:aa15f0c9615dd89d07bde77ac6af40ebf29c9cf6da9b54a4a1faf50243aa6134` |
| 5 | `def` | [fromFinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/fromfinalmodel--8dade13a19d76c26734b253f.md) | 64 | `declaration-track:8dade13a19d76c26734b253fa44b6c2e0c8f4089663b2db6ee65dabf891be56b` |
| 6 | `instance` | [final_fromFinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/final-fromfinalmodel--fb70de336bcd46f6dc7ddd6a.md) | 68 | `declaration-track:fb70de336bcd46f6dc7ddd6a39a28aabf49cd015aac4d62479fea9cceb0cc415` |
| 7 | `theorem` | [finallySmall_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-of-essentiallysmall--3a9cceed48945086e3f953a0.md) | 72 | `result-track:3a9cceed48945086e3f953a0173d47f8cb1a0ea43fe692cea63a0f80ec375173` |
| 8 | `theorem` | [finallySmall_of_final_of_finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-of-final-of-finallysmall--3aadcc34687d9c1cdb884218.md) | 78 | `result-track:3aadcc34687d9c1cdb884218d571ca8268388562d5b4d36f951ed7cdff990e14` |
| 9 | `theorem` | [finallySmall_of_final_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-of-final-of-essentiallysmall--5ac262899339645b552df70c.md) | 83 | `result-track:5ac262899339645b552df70cc7bf23212c43c2946ee56085d4e3585c4d3fafbe` |
| 10 | `class` | [InitiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall--cd91a6b32945cf7abbe12dab.md) | 95 | `declaration-track:cd91a6b32945cf7abbe12dab6f49b87ff14ac1157552c6d6f31062cbe229d8ab` |
| 11 | `theorem` | [InitiallySmall.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-mk--c5e50b0e1f7fea21a59f55cb.md) | 100 | `result-track:c5e50b0e1f7fea21a59f55cb926f9d127e7a754b61cd6901ec656bfee088a04b` |
| 12 | `def` | [InitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initialmodel--0fea958495fba6f9c6453f1d.md) | 105 | `declaration-track:0fea958495fba6f9c6453f1d15d9f8f30c21c5b25f96d9451ad1d42fce1cd058` |
| 13 | `instance` | [smallCategoryInitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/smallcategoryinitialmodel--6e7c0076e3875a1db093cb78.md) | 108 | `declaration-track:6e7c0076e3875a1db093cb78227bfb0bfeeea857ab3c8f8a541968a70de0f334` |
| 14 | `def` | [fromInitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/frominitialmodel--8f74a0a497448fe9300b0b8a.md) | 113 | `declaration-track:8f74a0a497448fe9300b0b8a343f8bc97f3e9a82e657e68e52a6547d792e73b3` |
| 15 | `instance` | [initial_fromInitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initial-frominitialmodel--17736672b71c1a4dd4d29e4f.md) | 117 | `declaration-track:17736672b71c1a4dd4d29e4faa61d733e2ea1ecc1810bdab0a75bc8b436e1e71` |
| 16 | `theorem` | [initiallySmall_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-of-essentiallysmall--de34e1b307531c7a2ed4bef3.md) | 121 | `result-track:de34e1b307531c7a2ed4bef357ad026e1c14b7ba9fed04285881b22adc4b3e9d` |
| 17 | `theorem` | [initiallySmall_of_initial_of_initiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-of-initial-of-initiallysmall--1295767626b94f8d538b58f0.md) | 127 | `result-track:1295767626b94f8d538b58f0f1242a8301e2db47dd418d058066112294576eaf` |
| 18 | `theorem` | [initiallySmall_of_initial_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-of-initial-of-essentiallysmall--10781a044dc517b783411565.md) | 132 | `result-track:10781a044dc517b7834115658613f2cc023aca43cb331c24ca556456912d5cb1` |
| 19 | `theorem` | [FinallySmall.exists_small_weakly_terminal_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-exists-small-weakly-terminal-set--c9b96da19a66dd09225a732e.md) | 144 | `result-track:c9b96da19a66dd09225a732e1de35e1ecb504abc29b76b8dcc278c3224c0960f` |
| 20 | `theorem` | [finallySmall_of_small_weakly_terminal_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-of-small-weakly-terminal-set--008ca216f1daeca539a9abbd.md) | 151 | `result-track:008ca216f1daeca539a9abbd4725c06ae145cc3f983baec5cf5298b9364ce93e` |
| 21 | `theorem` | [finallySmall_iff_exists_small_weakly_terminal_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/finallysmall-iff-exists-small-weakly-terminal-set--bf7063ff55e1d03a1d89eeba.md) | 159 | `result-track:bf7063ff55e1d03a1d89eebaacf1680828c6f4a23e5037f1efed476335c48797` |
| 22 | `theorem` | [InitiallySmall.exists_small_weakly_initial_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-exists-small-weakly-initial-set--32d4b4909a8e447bd8075bc8.md) | 172 | `result-track:32d4b4909a8e447bd8075bc864be32d4b0868b1f0c28cfa24faeae0c8eaf59d3` |
| 23 | `theorem` | [initiallySmall_of_small_weakly_initial_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-of-small-weakly-initial-set--7daa6088ed6ebc4ba2ff3ebf.md) | 179 | `result-track:7daa6088ed6ebc4ba2ff3ebf925b3d012214a7f1e189e5f62100cb3761d9ff73` |
| 24 | `theorem` | [initiallySmall_iff_exists_small_weakly_initial_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/initiallysmall-iff-exists-small-weakly-initial-set--f6f0e319a863ccbcfac4d4b6.md) | 187 | `result-track:f6f0e319a863ccbcfac4d4b617de601ba72fba1b75db50744ddddd760be05732` |
| 25 | `theorem` | [hasColimitsOfShape_of_finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/hascolimitsofshape-of-finallysmall--39be9348128f7cca70fe9a27.md) | 197 | `result-track:39be9348128f7cca70fe9a278b53ad9ce01670369e1e501ac85dd6f5b1e6f066` |
| 26 | `theorem` | [hasLimitsOfShape_of_initiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variant2b9ffa1bbaa7403bbfaa3234f43c2ca07e6530b5893269e1ebf53b5fd4188351.lean/declarations/haslimitsofshape-of-initiallysmall--9f5169e65e1bd91775d46fcd.md) | 201 | `result-track:9f5169e65e1bd91775d46fcd1d565310fa0d8af87672d48a328b514abd75c8bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
