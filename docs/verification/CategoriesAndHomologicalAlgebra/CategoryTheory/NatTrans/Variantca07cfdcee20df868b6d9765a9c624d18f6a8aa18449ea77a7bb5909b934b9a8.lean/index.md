# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTrans.Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8dec3ef974afc582564d68a7a0af1393d9927e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8dec3ef974afc582564d68a7a0af1393d9927e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/nattrans--25412743783e093f435e9d14.md) | 56 | `declaration-track:25412743783e093f435e9d143fceabd1d758336e521370254000242bff12aeda` |
| 2 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/congr-app--850df5e37b4454c364b6dec1.md) | 71 | `result-track:850df5e37b4454c364b6dec1ac7e0ca54459447988f1ac2b46b8836805b8e38c` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/id--568d79c4e816737f53c1de6c.md) | 78 | `declaration-track:568d79c4e816737f53c1de6cda045948d3352fe706abe353d38337f849d9f4e4` |
| 4 | `theorem` | [id_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/id-app--23af5e38a8a0c833b1784e79.md) | 82 | `result-track:23af5e38a8a0c833b1784e793ae8a3e9f74553f0c682d55b56b8c1e8482368d8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/instance--2e28c4846f57231337e427d5.md) | 85 | `declaration-track:2e28c4846f57231337e427d527a84afb0629a837e53c01a114928bfb070525d1` |
| 6 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/vcomp--5fdd34aa95e9143514bcbac4.md) | 96 | `declaration-track:5fdd34aa95e9143514bcbac4fec21e0e97bfbfa2f74a84b30c38b93357a76d3a` |
| 7 | `theorem` | [vcomp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/vcomp-app--805f2818caf25c2b938753d4.md) | 102 | `result-track:805f2818caf25c2b938753d4c9df9b9432b73ef4ce86e755e75a7d757898c48b` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantca07cfdcee20df868b6d9765a9c624d18f6a8aa18449ea77a7bb5909b934b9a8.lean/declarations/example--211e1e05d105aa1c213150dd.md) | 118 | `declaration-track:211e1e05d105aa1c213150dd182500a1efe0af214c20fc4b691be50c77be7bb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
