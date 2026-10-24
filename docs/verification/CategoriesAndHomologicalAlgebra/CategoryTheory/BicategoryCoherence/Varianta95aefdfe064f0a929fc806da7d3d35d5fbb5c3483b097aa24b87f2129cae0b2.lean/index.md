# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BicategoryCoherence.Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7b4520bcf5ed6a832dc49759ae51a442cf65128",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7b4520bcf5ed6a832dc49759ae51a442cf65128`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Coherence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoricalComp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom--d303cc1e01841885697fd035.md) | 43 | `declaration-track:d303cc1e01841885697fd035ec71ca809caf4e25e86650421c34956ff7150ebe` |
| 2 | `instance` | [liftHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthomid--57f71cff758c3d2639fc6e0d.md) | 48 | `declaration-track:57f71cff758c3d2639fc6e0d9a81586affaaec35c34584ec4c4b0fee90c4882c` |
| 3 | `instance` | [liftHomComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthomcomp--1aa087794502cd7e9a2e867d.md) | 50 | `declaration-track:1aa087794502cd7e9a2e867d6b15b2629e828daf2d59519a49575415cbcda5db` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/instance--818e6de78855660f7f1e5477.md) | 53 | `declaration-track:818e6de78855660f7f1e5477b4c7e8e22253b0063587ebeb68e05784213b1057` |
| 5 | `class` | [LiftHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom--b71b6e960059da3239c49f78.md) | 56 | `declaration-track:b71b6e960059da3239c49f78b6e42632683994cc6d3628da3c2bc1288926dc7b` |
| 6 | `instance` | [liftHom₂Id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-id--bf188d28f2492e7bea3028d4.md) | 61 | `declaration-track:bf188d28f2492e7bea3028d4f7f3ad98d2c1f4cb476bd8bf6a81f5378f02ac7c` |
| 7 | `instance` | [liftHom₂LeftUnitorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-leftunitorhom--f3768d6fe2b047d64f1cbc0b.md) | 64 | `declaration-track:f3768d6fe2b047d64f1cbc0b2f368080d982cc789661eabc20800ae4e7e6391b` |
| 8 | `instance` | [liftHom₂LeftUnitorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-leftunitorinv--19b6d23d95016698a5fe7ad4.md) | 67 | `declaration-track:19b6d23d95016698a5fe7ad4f0a1810d99e849491b7c8182696006e3630bae66` |
| 9 | `instance` | [liftHom₂RightUnitorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-rightunitorhom--be724af9c1700cf04ad8ef68.md) | 70 | `declaration-track:be724af9c1700cf04ad8ef68691a6462e911d04e46668c15825989ce59760acd` |
| 10 | `instance` | [liftHom₂RightUnitorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-rightunitorinv--536413d07ae812548cecc75d.md) | 73 | `declaration-track:536413d07ae812548cecc75d1d09bef230bdc331df30665829b496d8f8ff5e87` |
| 11 | `instance` | [liftHom₂AssociatorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-associatorhom--8f4ca611d8da9ce416422115.md) | 76 | `declaration-track:8f4ca611d8da9ce4164221155152a18ba84d83531ed0a07b71cd24c15dc65054` |
| 12 | `instance` | [liftHom₂AssociatorInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-associatorinv--7b78b1f1497b6dd0a71d4bb3.md) | 80 | `declaration-track:7b78b1f1497b6dd0a71d4bb32da42adf429793e5c44df5d43d921269c0a0801f` |
| 13 | `instance` | [liftHom₂Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-comp--6f6e0a22755827f65be5abb8.md) | 84 | `declaration-track:6f6e0a22755827f65be5abb865cc0868f8aba0b55b4a3a333a87841f53619328` |
| 14 | `instance` | [liftHom₂WhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-whiskerleft--70adada5f798f96b19581cc1.md) | 88 | `declaration-track:70adada5f798f96b19581cc1b8c6186f957f1125519cd0a6cf14b95b0540f4c5` |
| 15 | `instance` | [liftHom₂WhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/lifthom-whiskerright--35f9c4b5ea254d36f396abef.md) | 92 | `declaration-track:35f9c4b5ea254d36f396abef39dfc1e152471a4cfa0a1d5c620c23759beb1383` |
| 16 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/exception--e63d60663061f124cf1c3a78.md) | 99 | `declaration-track:e63d60663061f124cf1c3a788d73ded70ab639fcc7babbe62a02228a58148e96` |
| 17 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/exception--45650f7eb8d8502b5b2c45c4.md) | 103 | `declaration-track:45650f7eb8d8502b5b2c45c4f8475c9f6bd18438bccb81bda92db4ed22fe9937` |
| 18 | `def` | [mkLiftMap₂LiftExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/mkliftmap-liftexpr--f64cd59a46d6a7d542b9df9d.md) | 114 | `declaration-track:f64cd59a46d6a7d542b9df9df085d2d873241db8077450c6d9b1bfa25f2d39d6` |
| 19 | `def` | [bicategory_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/bicategory-coherence--440722cffcc337eafd93c4f2.md) | 120 | `declaration-track:440722cffcc337eafd93c4f241267d6f590cfc72d78b1deb30bbe44892e429b1` |
| 20 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/elab--ac8a216f898a8e7cdfce0d24.md) | 140 | `declaration-track:ac8a216f898a8e7cdfce0d241ada63b17df04af572e08132f67f2108e2849272` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/syntax--84d016f5307dba04b834ef3a.md) | 147 | `declaration-track:84d016f5307dba04b834ef3abd9a93c2f771f13656788f6d04fadd5aeee97baa` |
| 22 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/elab-rules--ab17518228a1b5b68ade4d22.md) | 150 | `declaration-track:ab17518228a1b5b68ade4d22d2b2fe09e4d27bccd96603e8ee9e60c3ad82afc2` |
| 23 | `theorem` | [assoc_liftHom₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/declarations/assoc-lifthom--fa1c47aa5ddf2152de33472b.md) | 168 | `result-track:fa1c47aa5ddf2152de33472b27126785b9762ee626ea801c9062a26a65db4005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
