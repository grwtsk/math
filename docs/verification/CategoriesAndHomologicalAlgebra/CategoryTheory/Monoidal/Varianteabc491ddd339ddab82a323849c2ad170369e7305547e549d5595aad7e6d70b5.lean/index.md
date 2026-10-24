# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bba9a64636be8721402459e5e33dba3de95f418e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bba9a64636be8721402459e5e33dba3de95f418e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.Coherence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonoidalInformationReceipt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt--327c053fcfeed4eb45479416.md) | 13 | `declaration-track:327c053fcfeed4eb454794166e31c125d3d7ad4e3614f41fcb8073b7a99d6bb9` |
| 2 | `def` | [MonoidalInformationReceipt.accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt-accepted--a17720c57929a83636ed089d.md) | 25 | `declaration-track:a17720c57929a83636ed089d629d662284a90d3617801c76bf1d3c8bd6bac2e8` |
| 3 | `def` | [MonoidalInformationReceipt.fastCheck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt-fastcheck--4e6c6dcc215a1698f2bd8710.md) | 29 | `declaration-track:4e6c6dcc215a1698f2bd87108d630cd3c5c2dbb5567b9d4440cbff8bd848d614` |
| 4 | `theorem` | [MonoidalInformationReceipt.no_tensor_equality_if_accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt-no-tensor-equality-if-accepted--3a9bc1c70ce0faa3660f3a2c.md) | 33 | `result-track:3a9bc1c70ce0faa3660f3a2c8e83fff9f0fcf65433312239bb06f5412f59d876` |
| 5 | `def` | [MonoidalInformationReceipt.associatorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt-associatoriso--915b5d5a42bb162c89984544.md) | 41 | `declaration-track:915b5d5a42bb162c89984544d25ef0a6f257a0552aa24cb1736b520822e401d9` |
| 6 | `theorem` | [MonoidalInformationReceipt.unit_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt-unit-coherence--f227e27a9ba26c9e8575bada.md) | 49 | `result-track:f227e27a9ba26c9e8575badabc0a00d63c528edd3a2737209fb5c934932ebdbf` |
| 7 | `theorem` | [MonoidalInformationReceipt.receipt_is_not_structure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteabc491ddd339ddab82a323849c2ad170369e7305547e549d5595aad7e6d70b5.lean/declarations/monoidalinformationreceipt-receipt-is-not-structure--36d4d8a9e846da20185804a5.md) | 57 | `result-track:36d4d8a9e846da20185804a517089697be8136676e9ecff8031e57fab82eb485` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
