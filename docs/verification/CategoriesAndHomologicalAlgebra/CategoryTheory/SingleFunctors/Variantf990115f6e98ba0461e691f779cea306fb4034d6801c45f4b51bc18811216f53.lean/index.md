# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleFunctors.Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "160ae4732c8dc10aefcf5eec95b5cdf663ba53f6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `160ae4732c8dc10aefcf5eec95b5cdf663ba53f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.SingleFunctors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [singleFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/singlefunctors--b68d877c982dddaf0209fcaf.md) | 44 | `declaration-track:b68d877c982dddaf0209fcaf0809d446fe7cd5bebb86b5395c88b8dac7b80256` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/instance--33fc89ae7c50d15b12d8be47.md) | 70 | `declaration-track:33fc89ae7c50d15b12d8be47b316024c0bc8abd9fc829967e4cc9f2d23d5afdf` |
| 3 | `abbrev` | [singleFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/singlefunctor--2b271d8997dd822da0a0190a.md) | 78 | `declaration-track:2b271d8997dd822da0a0190ae13a8ee45d665df8ac0e1ea6da80f7803610d6b8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/instance--be9feb8d9c3693c6f90f8760.md) | 80 | `declaration-track:be9feb8d9c3693c6f90f87601d8baef4637ebc42c161f855526b68f56e66cf2d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/instance--ce9e0d2cca8c02acaa3b93ec.md) | 83 | `declaration-track:ce9e0d2cca8c02acaa3b93ece1c185ad567527a74a53b941c8bda0c2ea156188` |
| 6 | `def` | [singleFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/singlefunctors--565befde256be1b4eeccfcfe.md) | 92 | `declaration-track:565befde256be1b4eeccfcfe24444b9b2c8d4190594d4546a0873a92425e1676` |
| 7 | `abbrev` | [singleFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/singlefunctor--450aab6f1f6bfd7b33af4531.md) | 97 | `declaration-track:450aab6f1f6bfd7b33af45318ca459dd48f1a2345395410274c5f2c736584b0f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/instance--fac3845040d416d4ab93a06f.md) | 101 | `declaration-track:fac3845040d416d4ab93a06fa7d9d31b314e77980c75d476cc47b881352dcc1c` |
| 9 | `def` | [singleFunctorsPostcompQuotientIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/singlefunctorspostcompquotientiso--04d776ba3165feb9bd67e96b.md) | 106 | `declaration-track:04d776ba3165feb9bd67e96b232cb87a98abf6a69cf2cf8ad45c1a848ddab4bc` |
| 10 | `def` | [singleFunctorPostcompQuotientIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantf990115f6e98ba0461e691f779cea306fb4034d6801c45f4b51bc18811216f53.lean/declarations/singlefunctorpostcompquotientiso--1e888ba5cc03886a7c22fe02.md) | 112 | `declaration-track:1e888ba5cc03886a7c22fe02d2ba89a1c4739c8564406f0d6205e9c758a028f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
