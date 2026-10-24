# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KleisliCat.Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349c164261f78a8cb225f177b59b4a2edd75a8aa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349c164261f78a8cb225f177b59b4a2edd75a8aa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean.json)

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
| 1 | `def` | [KleisliCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/kleislicat--9db7a15a61b39c9bce7337af.md) | 42 | `declaration-track:9db7a15a61b39c9bce7337afefbdaa788b6a8b396491080945b36132d76d892b` |
| 2 | `def` | [KleisliCat.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/kleislicat-mk--e7134198cc53b69f945083b8.md) | 47 | `declaration-track:e7134198cc53b69f945083b83dd04252a611d77dead8938f0e4478cb2a9e74f4` |
| 3 | `instance` | [KleisliCat.categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/kleislicat-categorystruct--8a5c6186ddb9568644e2535d.md) | 51 | `declaration-track:8a5c6186ddb9568644e2535ddd169041b5f23dd1ae3213f6d818aa65be82e14f` |
| 4 | `instance` | [KleisliCat.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/kleislicat-category--35c01bc18964b77700f34a58.md) | 58 | `declaration-track:35c01bc18964b77700f34a58f2ebed0f84d26bba763ec6e0f08551bd4055bfd9` |
| 5 | `theorem` | [KleisliCat.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/kleislicat-id-def--fcc6daa03f1a24cb9995ce2b.md) | 67 | `result-track:fcc6daa03f1a24cb9995ce2bc7a5cddf896f51f69b20d366b9717162ea711b6c` |
| 6 | `theorem` | [KleisliCat.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/kleislicat-comp-def--1b52ca5bb1252342734de818.md) | 71 | `result-track:1b52ca5bb1252342734de818a8196ef84b31927b3b4c48c977394e8911bb452d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/instance--dda327e0281562e6973d2fec.md) | 76 | `declaration-track:dda327e0281562e6973d2fec44f4ec1585a3b2a8f51e09aa7986f80296d52876` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantb7a5ae9af15ca08f5a62e67380ec7f4cea9720d6f22a88f391aa450d3835f2ed.lean/declarations/instance--d33ce755b41b48e3841797d6.md) | 79 | `declaration-track:d33ce755b41b48e3841797d6e622b509028e3baa64e686ae738cec13be96702e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
