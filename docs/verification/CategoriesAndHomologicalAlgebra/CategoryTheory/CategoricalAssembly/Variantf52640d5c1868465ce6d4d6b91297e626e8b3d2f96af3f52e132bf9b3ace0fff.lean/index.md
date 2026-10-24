# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2cb18e19c67719a07f776cd5c0e045a2fb06b31",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2cb18e19c67719a07f776cd5c0e045a2fb06b31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWitnessComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/inversewitnesscomparison--d0730b99a9d44aeab31ffd1c.md) | 36 | `declaration-track:d0730b99a9d44aeab31ffd1ca0498930cfed44bb9ab601db2889b5f8e94538a2` |
| 2 | `def` | [assemble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/assemble--073ccc4506503de5e74ce46a.md) | 46 | `declaration-track:073ccc4506503de5e74ce46a6365f9c2a40515f1873cbec98dd26ec920002b8c` |
| 3 | `theorem` | [assemble_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/assemble-functor--c533d468fc5e8ce7e5eede70.md) | 51 | `result-track:c533d468fc5e8ce7e5eede7009216e7f6003a3ade7a283424c8251fe7c339a87` |
| 4 | `theorem` | [assemble_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/assemble-inverse--638f130ded5de26de1425709.md) | 55 | `result-track:638f130ded5de26de142570964d9ecbd88e1cd7e5557db3ff4d3a9bf9a751bb4` |
| 5 | `abbrev` | [Sector](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/sector--26d4c4ce0501d8301e23eb05.md) | 60 | `declaration-track:26d4c4ce0501d8301e23eb05fd94cf84d7a93a9df3001fb8d2816a15b83703a9` |
| 6 | `def` | [quarterTurn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/quarterturn--2f72ab7f4f215597d4b0e91b.md) | 62 | `declaration-track:2f72ab7f4f215597d4b0e91b3a4f635b509d72ad77654b25b12b38c1a4eba04c` |
| 7 | `theorem` | [quarterTurn_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/quarterturn-square--af174876573ceb14360a3a88.md) | 68 | `result-track:af174876573ceb14360a3a8834be92cead8c2f8cc1e6d1def07f4aa1c322a793` |
| 8 | `theorem` | [quarterTurn_fourth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/quarterturn-fourth--25c96002543b0101bd7cc110.md) | 73 | `result-track:25c96002543b0101bd7cc1106a39f706583fa3827947f82ea59e9825946ecbcc` |
| 9 | `theorem` | [quarterTurn_square_not_identity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/quarterturn-square-not-identity--3682185ef2e31be9d40d269a.md) | 78 | `result-track:3682185ef2e31be9d40d269add48f44f2c25f3ecae7f37dcb212f49097f9c4d4` |
| 10 | `def` | [sectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/sectorequivalence--2f9d1c7007fb30ceaf560427.md) | 83 | `declaration-track:2f9d1c7007fb30ceaf560427f302218856b88bffe3d0579a8cbf30531bdd326a` |
| 11 | `def` | [assembledSectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variantf52640d5c1868465ce6d4d6b91297e626e8b3d2f96af3f52e132bf9b3ace0fff.lean/declarations/assembledsectorequivalence--d3299595b553c7f3776d58ed.md) | 87 | `declaration-track:d3299595b553c7f3776d58ed8b7f23e7d90a0a9a2e799e602f15c93173e297bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
