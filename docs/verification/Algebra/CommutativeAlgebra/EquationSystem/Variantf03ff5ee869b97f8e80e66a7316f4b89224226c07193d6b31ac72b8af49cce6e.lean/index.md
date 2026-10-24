# Verification target: GRWTSK.Algebra.CommutativeAlgebra.EquationSystem.Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ce60b0f519a4899ab01d78abb23e050c91dbde",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ce60b0f519a4899ab01d78abb23e050c91dbde`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EquationSystem](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationsystem--8cfec99d7e8450209dcee519.md) | 25 | `declaration-track:8cfec99d7e8450209dcee5192e299f1be32242754353aae4a737a7c99538ae2b` |
| 2 | `def` | [EquationSystem.IsSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationsystem-issolution--32a4fdc39ba8dc2668dc782b.md) | 30 | `declaration-track:32a4fdc39ba8dc2668dc782bb425034b851a3442ea02476b402f9163fe7e4e43` |
| 3 | `abbrev` | [EquationSystem.SolutionSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationsystem-solutionspace--c39d9c01d6da66666a1f4c2e.md) | 38 | `declaration-track:c39d9c01d6da66666a1f4c2ee1bac4e5d11818c9fe034a12a01169daca452f4c` |
| 4 | `def` | [EquationSystem.SolutionSpace.coordinates](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationsystem-solutionspace-coordinates--9bd149b51780882329c2d266.md) | 44 | `declaration-track:9bd149b51780882329c2d26602a487baa1750abef56f7f41be490b3f88567c8e` |
| 5 | `def` | [EquationSystem.VanishesOn](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationsystem-vanisheson--9127cc3b633cca52f08a51ed.md) | 51 | `declaration-track:9127cc3b633cca52f08a51ed8f92e4faa601e02cb586ac51bcd2ad8b2ae05b47` |
| 6 | `theorem` | [EquationSystem.SolutionSpace.ext](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationsystem-solutionspace-ext--a203a9cf4795a25daf4d205e.md) | 59 | `result-track:a203a9cf4795a25daf4d205e6a721c12e55c641009abd33bd47f30659fe3243f` |
| 7 | `structure` | [EquationFamily](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationfamily--ac0666b4c581e03063ee67cf.md) | 75 | `declaration-track:ac0666b4c581e03063ee67cfe13f32a7ee66ba682ec54c44add49098756e1442` |
| 8 | `def` | [EquationFamily.transportSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/declarations/equationfamily-transportsolution--067c5842a831dfc272f7675f.md) | 87 | `declaration-track:067c5842a831dfc272f7675f9f14f95db29335a1259a622bfc84ee72724b581a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
