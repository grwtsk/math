# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectPanelUtils.Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca983060fbfa6aef660842fa7578b342588a275",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca983060fbfa6aef660842fa7578b342588a275`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.ExprLens` — import line 6; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.MakeEditLink` — import line 7; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.OfRpcMethod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Widget.SelectInsertParamsClass` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getGoalLocations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/declarations/getgoallocations--2e8944de2202c1e1945fe169.md) | 24 | `declaration-track:2e8944de2202c1e1945fe1697319a62f0014b644cc61064e5d15d75acd682ef4` |
| 2 | `def` | [insertMetaVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/declarations/insertmetavar--06508824c9384896fa1e9680.md) | 32 | `declaration-track:06508824c9384896fa1e968002060e8373b560b33286e449eec4281c68ca5715` |
| 3 | `def` | [String.renameMetaVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/declarations/string-renamemetavar--cb9095ce7167cf51254188cc.md) | 36 | `declaration-track:cb9095ce7167cf51254188cc93349b56845dcf53d675db306300d855c44f7f52` |
| 4 | `structure` | [SelectInsertParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/declarations/selectinsertparams--49ee7d96c17483546dca8199.md) | 45 | `declaration-track:49ee7d96c17483546dca8199049814365e1e9e6ad4f13caa7f33d6ed4509f911` |
| 5 | `def` | [mkSelectionPanelRPC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectPanelUtils/Variant4aa2c9f5dca46836c884f349322aeea303adc81e77f706bfc3697444fecbcae4.lean/declarations/mkselectionpanelrpc--d01b01360d1b58e23ca59e65.md) | 75 | `declaration-track:d01b01360d1b58e23ca59e652dda915ce4140199d1f6770bf61d7f4218801f82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
