# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeleton.Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8553d22fde8ab8ad06ec3e4d5eba7a091f1b26a5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8553d22fde8ab8ad06ec3e4d5eba7a091f1b26a5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidOfSkeletalMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean/declarations/monoidofskeletalmonoidal--7a5e3bd1579b938ed685330e.md) | 38 | `declaration-track:7a5e3bd1579b938ed685330ebc518bce14668b353067119e9c8adcfeb87df67f` |
| 2 | `def` | [commMonoidOfSkeletalBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean/declarations/commmonoidofskeletalbraided--06f1bf5ee7f5f06455a0e149.md) | 47 | `declaration-track:06f1bf5ee7f5f06455a0e149f2543cb8b77519f3a581b75ac4d58c1291bcc9ee` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean/declarations/instance--09b8f2b0b1dbf3ebadaa103b.md) | 53 | `declaration-track:09b8f2b0b1dbf3ebadaa103b0433d925e39722f8844fb63b6944dcf46395e27b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Varianted59d92c0ec3de253e6e20595c91f62699bbfe4b1b1c9ca00b7d0dc30ae8829c.lean/declarations/instance--084a192d95856eef3887ad52.md) | 60 | `declaration-track:084a192d95856eef3887ad522a7035558a1a2074dda3aa032ace87b00c063d72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
