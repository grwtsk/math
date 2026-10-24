# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cffb9196475c524a80947156c3f0c3e1a573633",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cffb9196475c524a80947156c3f0c3e1a573633`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftZigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/leftzigzag--a220ff83d8d7a657260acc36.md) | 71 | `declaration-track:a220ff83d8d7a657260acc36fed26c10e1998ed0337236c6a2870396cae3b3ee` |
| 2 | `def` | [rightZigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/rightzigzag--ab690465e0cfb9676636de2e.md) | 83 | `declaration-track:ab690465e0cfb9676636de2eea5fc23648ea8adb1e30047ca2b5c53643726c00` |
| 3 | `structure` | [Adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/adjunction--f15ec732c040ad2b991ac4c2.md) | 87 | `declaration-track:f15ec732c040ad2b991ac4c21b5b7e716e6e92c2dea13d91a4fcc13daacc6026` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/id--32766a56d094cdcb8f0202cc.md) | 106 | `declaration-track:32766a56d094cdcb8f0202cc7d4ce888853b82e5605aacfcb67df54c503a6ffe` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/instance--8c4b0160a43c94c31cf79206.md) | 112 | `declaration-track:8c4b0160a43c94c31cf79206c82a952696ba380a257a04db5637a2468725e465` |
| 6 | `def` | [leftZigzagIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/leftzigzagiso--f0060d48abbbfe57537e55ce.md) | 122 | `declaration-track:f0060d48abbbfe57537e55ce1fc76dff9915d65fef3b2cea65b2b6e3acd051e8` |
| 7 | `def` | [rightZigzagIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/rightzigzagiso--184a2c8889594f3564333172.md) | 126 | `declaration-track:184a2c8889594f35643331725d83e4f1c94e88460dfb250301788cfd587460c4` |
| 8 | `theorem` | [leftZigzagIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/leftzigzagiso-hom--bdd7510164004b230d3c0a80.md) | 132 | `result-track:bdd7510164004b230d3c0a80bb3abed0afc98132bc8da5a89e36c280ff374d1a` |
| 9 | `theorem` | [rightZigzagIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/rightzigzagiso-hom--8a87154fa6d354884e319327.md) | 136 | `result-track:8a87154fa6d354884e319327a53e93c1e69f2515c7aefe577de888665833868a` |
| 10 | `theorem` | [leftZigzagIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/leftzigzagiso-inv--dcc570761a41650edfa666b2.md) | 140 | `result-track:dcc570761a41650edfa666b22f615371f08f41410bd4b34641f813d962f0411d` |
| 11 | `theorem` | [rightZigzagIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/rightzigzagiso-inv--4bb1942095d84e04a965182c.md) | 144 | `result-track:4bb1942095d84e04a965182c76f69b9c07a5ded50c8431c9655343ad50ca9b1f` |
| 12 | `theorem` | [leftZigzagIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/leftzigzagiso-symm--26f8bf8c7a28828b25605c45.md) | 148 | `result-track:26f8bf8c7a28828b25605c45c35ec8bf7300e6e4672ad2ca8db9dee5c4428bb3` |
| 13 | `theorem` | [rightZigzagIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/rightzigzagiso-symm--8ff93d5a502d35b3136e5175.md) | 152 | `result-track:8ff93d5a502d35b3136e517544597990a69a0b1cd8d9725b479872fc7dce43ec` |
| 14 | `def` | [adjointifyCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/adjointifycounit--02f189951e5e518ea197ff10.md) | 156 | `declaration-track:02f189951e5e518ea197ff10f9174008471d052be13bbd4f68bcd3850c94c146` |
| 15 | `theorem` | [adjointifyCounit_left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/adjointifycounit-left-triangle--5d8af8bb9e0ecb1b86774993.md) | 159 | `result-track:5d8af8bb9e0ecb1b86774993e225beddf0679992820b7e336c7b42b19f87a3d8` |
| 16 | `structure` | [Equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/equivalence--4a2e8b5dc0d995c4491d63ad.md) | 177 | `declaration-track:4a2e8b5dc0d995c4491d63ad2aec279931cb96f7beada5ebbefe47bda4778136` |
| 17 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/id--8fd7ddd36e5627ac30a4ac45.md) | 194 | `declaration-track:8fd7ddd36e5627ac30a4ac4508ddabc94e7e690dffbafe5e881cfab27b76b208` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/instance--c78cb541d273087ead7f5b0d.md) | 196 | `declaration-track:c78cb541d273087ead7f5b0d95d2419c2752563749389f5f79057df8862b924a` |
| 19 | `def` | [mkOfAdjointifyCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/declarations/mkofadjointifycounit--4d9f0f14199d90af1342593a.md) | 199 | `declaration-track:4d9f0f14199d90af1342593a3bbb137fedee17a6458e23005d0c34a7ad0bf2ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
