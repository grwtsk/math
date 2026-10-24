# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b36cd151cad213d7b37bf6df9240ada35bf93009",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b36cd151cad213d7b37bf6df9240ada35bf93009`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KleisliCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/kleislicat--ec7f3d0483b5b283cc77273f.md) | 39 | `declaration-track:ec7f3d0483b5b283cc77273f56185b897b3c6cccff7f6780e70f45166cfbb2f1` |
| 2 | `def` | [KleisliCat.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/kleislicat-mk--edf4d5c1cf575f9a6151537e.md) | 43 | `declaration-track:edf4d5c1cf575f9a6151537ec6365e4b872a5cd1053d8fc8eab8c76c629a01b5` |
| 3 | `instance` | [KleisliCat.categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/kleislicat-categorystruct--286a4526d24948193205304b.md) | 46 | `declaration-track:286a4526d24948193205304bdc8960ea0833b4578a019c40a5081e3cd5235083` |
| 4 | `instance` | [KleisliCat.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/kleislicat-category--7c6309eef30e1b4bac533f39.md) | 52 | `declaration-track:7c6309eef30e1b4bac533f39f7166cd7f9bb667769f3c2b3dad01ce399a0ec8d` |
| 5 | `theorem` | [KleisliCat.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/kleislicat-id-def--0338e65d918d4167b66d9aec.md) | 61 | `result-track:0338e65d918d4167b66d9aec5685bb858c7519c39f32e67ee85b62c45bfb312a` |
| 6 | `theorem` | [KleisliCat.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/kleislicat-comp-def--c2697c6a1cec67ce2e71daef.md) | 64 | `result-track:c2697c6a1cec67ce2e71daeffe5374e3998eaf6181281a74cb3e2b4880ca8224` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/instance--f0a742fb923c15259f2f8e53.md) | 68 | `declaration-track:f0a742fb923c15259f2f8e530206c040498d4dac136b264a6c6b9e268b9d0464` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/declarations/instance--cdf6d604119739908310ac7e.md) | 71 | `declaration-track:cdf6d604119739908310ac7e05781c492eab90d5f1d2d62befabe0d040603667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
