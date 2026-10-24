# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e4632a7ed623e0a6c14e33f6239dcb6b2252b5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e4632a7ed623e0a6c14e33f6239dcb6b2252b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConnectedComponents` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typeToCatObjectsAdjHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/declarations/typetocatobjectsadjhomequiv--092f0535fbc16a3d2788a279.md) | 29 | `declaration-track:092f0535fbc16a3d2788a27978a01931b1c1b0dc517308ec783a6b17ea3038e4` |
| 2 | `def` | [typeToCatObjectsAdjCounitApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/declarations/typetocatobjectsadjcounitapp--935a338064d0c8521efab9bc.md) | 37 | `declaration-track:935a338064d0c8521efab9bca9a5bb3ea4329f390fae3e124ff293abd06f9553` |
| 3 | `def` | [typeToCatObjectsAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/declarations/typetocatobjectsadj--f3e32971a5ce47fc9fce2f7f.md) | 42 | `declaration-track:f3e32971a5ce47fc9fce2f7f1cecbf6cb6e86ab4c5be62affef09f51567e4d37` |
| 4 | `def` | [connectedComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/declarations/connectedcomponents--5c7ce38ead5aaad73469344c.md) | 54 | `declaration-track:5c7ce38ead5aaad73469344c1bc30c725a2e810d0a1ab81dd52d14bb6be7d5ad` |
| 5 | `def` | [connectedComponentsTypeToCatAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant95a35245eff0509c7c1e4799f6aa7a1e54501e236e9e4e0a3bc36089ec9d1a26.lean/declarations/connectedcomponentstypetocatadj--42585f37e55a0b61cf828cce.md) | 61 | `declaration-track:42585f37e55a0b61cf828cce5c9f7a8a938e240477de3fbd2cf3e229c365384f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
