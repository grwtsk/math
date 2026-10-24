# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2824bde0ade660297a47e2375cc22282a2a8ed0e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2824bde0ade660297a47e2375cc22282a2a8ed0e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/declarations/monoidallinear--2d18de8fb5ed57a4b9ac2106.md) | 38 | `declaration-track:2d18de8fb5ed57a4b9ac21066e9f77fe57500b127f79b798cc0b3cfdfc574045` |
| 2 | `instance` | [tensorLeft_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/declarations/tensorleft-linear--a646546de6573bf8b4205213.md) | 49 | `declaration-track:a646546de6573bf8b42052139cff41958bdbe6eb74c528329c932cb35aaa531c` |
| 3 | `instance` | [tensorRight_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/declarations/tensorright-linear--d313a85e94a32630e154bb46.md) | 51 | `declaration-track:d313a85e94a32630e154bb46ab1a3802dde4c9e3ab085ffc50c0450233976d27` |
| 4 | `instance` | [tensoringLeft_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/declarations/tensoringleft-linear--b9ef314ab5c32f23367ee275.md) | 53 | `declaration-track:b9ef314ab5c32f23367ee275ad918f51a4c293ebd744dd15af1f29a3139bfee2` |
| 5 | `instance` | [tensoringRight_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/declarations/tensoringright-linear--e8d1258ec201d11f7ed81b95.md) | 55 | `declaration-track:e8d1258ec201d11f7ed81b9553f0524370a234fad7a175738493397e7e604b6d` |
| 6 | `theorem` | [monoidalLinearOfFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc306341e2c21b1ee98839ce97a09c10ff2633712fe14e22bbadcb7abe66bb816.lean/declarations/monoidallinearoffaithful--d9a0fcfbcf757ecca5004b5b.md) | 59 | `result-track:d9a0fcfbcf757ecca5004b5bd126c1b031a74e086adbc2b8826389ce72ca3fcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
