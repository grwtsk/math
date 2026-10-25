# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SlotMap.Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91e5353e55a4048373ec2679ff0fa1b89823e355",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91e5353e55a4048373ec2679ff0fa1b89823e355`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ContractElements.BitSquare` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlotEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/declarations/slotembedding--5b5a8bac7f90268aa029d5c0.md) | 7 | `declaration-track:5b5a8bac7f90268aa029d5c0c7c39e2426a7d6e82723ead97c8a33cf80ceecf4` |
| 2 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/declarations/encode-injective--31ec93f3d963a07feeb9db6a.md) | 15 | `result-track:31ec93f3d963a07feeb9db6a988461de040cc647f82e342b557b95e8468666b6` |
| 3 | `def` | [pad](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/declarations/pad--8538735a2717dbad25023df4.md) | 22 | `declaration-track:8538735a2717dbad25023df424fed4fe4e4eafeb0da72c5adb2045f087de3015` |
| 4 | `theorem` | [pad_on_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/declarations/pad-on-image--559886ad09bf061d96e8f1a2.md) | 30 | `result-track:559886ad09bf061d96e8f1a2f45503c4ec975fe355dcb5fd42e1d904714d06a2` |
| 5 | `theorem` | [pad_zero_of_row_unmapped](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/declarations/pad-zero-of-row-unmapped--56d5481e6c879d0c7591fd8c.md) | 37 | `result-track:56d5481e6c879d0c7591fd8c84d445a80ca9f4bc3bf32fe57f0d7b18a6fb430a` |
| 6 | `theorem` | [pad_zero_of_column_unmapped](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variant82a24b53cafbf7e1a98b73639132fa5ff705a40b8b711a862a491e33a2e5e975.lean/declarations/pad-zero-of-column-unmapped--b371e62e856aa9964039e2c3.md) | 45 | `result-track:b371e62e856aa9964039e2c325dfb44f66b0f049b5c0b9209c1a213f1e87f56d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
