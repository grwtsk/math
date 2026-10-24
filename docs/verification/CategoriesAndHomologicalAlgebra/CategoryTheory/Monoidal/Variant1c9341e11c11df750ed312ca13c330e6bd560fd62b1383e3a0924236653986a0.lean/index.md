# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c12aa30a4f755b4ec53d8156df4895be9a0634a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c12aa30a4f755b4ec53d8156df4895be9a0634a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.Coherence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonoidalInformationReceipt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt--b9aa26a90f8abc0afcefdc33.md) | 21 | `declaration-track:b9aa26a90f8abc0afcefdc334006ab501bf94ea9c4b8f0fe71ec673d9d7d85df` |
| 2 | `def` | [MonoidalInformationReceipt.accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt-accepted--cfeffb8b9e275a9233da7105.md) | 33 | `declaration-track:cfeffb8b9e275a9233da7105d6c355a2e30a8055aacd2eae6d66f398d1c522d5` |
| 3 | `def` | [MonoidalInformationReceipt.fastCheck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt-fastcheck--f5c3ac20b90e63c701b888a2.md) | 37 | `declaration-track:f5c3ac20b90e63c701b888a29eb5b8bb3b886f480c6984bcb8bc53c679a4e627` |
| 4 | `theorem` | [MonoidalInformationReceipt.no_tensor_equality_if_accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt-no-tensor-equality-if-accepted--8044ff1865005c38158a1b48.md) | 41 | `result-track:8044ff1865005c38158a1b483b287b28d12694b839da3fbb5e2f00f71759f8a9` |
| 5 | `def` | [MonoidalInformationReceipt.associatorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt-associatoriso--4e49ab00177ed6305fe543b5.md) | 49 | `declaration-track:4e49ab00177ed6305fe543b50b4e09c9e7c539b656f9766dbfdabb9dada7f6bd` |
| 6 | `theorem` | [MonoidalInformationReceipt.unit_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt-unit-coherence--a45d7c448a99ca12ca1936f2.md) | 57 | `result-track:a45d7c448a99ca12ca1936f2b0141d2bb59e48010e78ffdf42e317ebc11aecaf` |
| 7 | `theorem` | [MonoidalInformationReceipt.receipt_is_not_structure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant1c9341e11c11df750ed312ca13c330e6bd560fd62b1383e3a0924236653986a0.lean/declarations/monoidalinformationreceipt-receipt-is-not-structure--a2d83f1da2908e4b69236b6d.md) | 65 | `result-track:a2d83f1da2908e4b69236b6d3e677cc5fa80a48a071629cb4cfd5b0384d59d22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
