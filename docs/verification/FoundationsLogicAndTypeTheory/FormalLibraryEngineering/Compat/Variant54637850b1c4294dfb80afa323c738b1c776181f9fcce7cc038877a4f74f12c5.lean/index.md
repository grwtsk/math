# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Compat.Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c428ee876d36b561eae78551f1063f851143cf20",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c428ee876d36b561eae78551f1063f851143cf20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Attributes` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Widget.UserWidget` — import line 2; external provider; requires a separately pinned dependency.
- `ProofWidgets.Data.Json` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LazyEncodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/lazyencodable--db925ea723258b69125d8c80.md) | 23 | `declaration-track:db925ea723258b69125d8c80dbe4df09223ba03f228be348a85f1810de6ff54d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/instance--397f8f8471b06f069c21e7c5.md) | 25 | `declaration-track:397f8f8471b06f069c21e7c577598680da9e25434f09d397023abdfcbe953eb1` |
| 3 | `structure` | [ExprWithCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/exprwithctx--0dfa960376081ffbaec97e2a.md) | 30 | `declaration-track:0dfa960376081ffbaec97e2a687dfde68eed73dcc03a6776407ffed7d6536586` |
| 4 | `def` | [ExprWithCtx.runMetaM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/exprwithctx-runmetam--a61c93f2fd5ba5e6876e0add.md) | 36 | `declaration-track:a61c93f2fd5ba5e6876e0addf85ae9fedb27d1e1f33310421f19f987efbe9460` |
| 5 | `def` | [ExprWithCtx.save](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/exprwithctx-save--9e6f51a6b4d640a720e2d378.md) | 39 | `declaration-track:9e6f51a6b4d640a720e2d378eb88d506910685a21b68a8d64dfa17b8352aa162` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/elab--5e7aaf57714384882cffff01.md) | 50 | `declaration-track:5e7aaf57714384882cffff01dc70f849bc1539e6143af6ae8b19e10d0aa6fc20` |
| 7 | `def` | [widgetDefPostfix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/widgetdefpostfix--76763397351c69183f6259d1.md) | 57 | `declaration-track:76763397351c69183f6259d130bd41f7e518e6980ee3d9301c03fe2d34fb1056` |
| 8 | `structure` | [Module](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/module--b96858586db1898f3277a54b.md) | 63 | `declaration-track:b96858586db1898f3277a54b7a64ad0255456453e8b32ec2f6444e392c4c45b5` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/initialize--37594a1d6684b9110e9b2fc2.md) | 74 | `declaration-track:37594a1d6684b9110e9b2fc2cff66a6734a9d80ec96c60fbc9bcfa759de684ec` |
| 10 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/anonymous--59a964738c384b4a6e61635d.md) | 86 | `declaration-track:59a964738c384b4a6e61635d63d30c7455ee57b66f46392c258b301f44f4c3df` |
| 11 | `structure` | [PanelWidgetInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/panelwidgetinfo--74a74ba8a9f6ce548bfdda71.md) | 97 | `declaration-track:74a74ba8a9f6ce548bfdda71e07e485ffec5a2d550ef994fc90410bcdd226b51` |
| 12 | `structure` | [WidgetInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/widgetinstance--426fdb9ff1a7483193f2e11a.md) | 106 | `declaration-track:426fdb9ff1a7483193f2e11abd7851989b4a185b689bd0170979c8c8a5aeed0c` |
| 13 | `structure` | [PanelWidgetInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/panelwidgetinstance--af4b9681928eecefdddb8177.md) | 116 | `declaration-track:af4b9681928eecefdddb817707938b9f560aa6a12b2cd8f147666ecd55e4ba13` |
| 14 | `structure` | [GetPanelWidgetsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/getpanelwidgetsparams--9a6a864fc4a2400fc18b7b8e.md) | 121 | `declaration-track:9a6a864fc4a2400fc18b7b8eb0efd4f741d1813b7b80a0a0afb35db4357843a3` |
| 15 | `structure` | [GetPanelWidgetsResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/getpanelwidgetsresponse--a336133d2cd09c572b6557e9.md) | 125 | `declaration-track:a336133d2cd09c572b6557e926ec27922815cab31a6b41f0772b5189073a24e1` |
| 16 | `def` | [customInfosAt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/custominfosat--d2d601726413aea1366ad120.md) | 130 | `declaration-track:d2d601726413aea1366ad1203c96b2de213c39ff08c57c13361894a940e2eb51` |
| 17 | `def` | [getPanelWidgets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/getpanelwidgets--9b389dae08c4cc0c0b3f4fcf.md) | 145 | `declaration-track:9b389dae08c4cc0c0b3f4fcf0211c3bd948f64ba849970314bee709ef3e842f4` |
| 18 | `def` | [metaWidget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/metawidget--16267c954e330b53ed327930.md) | 166 | `declaration-track:16267c954e330b53ed327930689b8be0bc20d2cc27640908aef2c2c7a0703680` |
| 19 | `def` | [savePanelWidgetInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/declarations/savepanelwidgetinfo--9485250b8f87e5f43fc23f9d.md) | 174 | `declaration-track:9485250b8f87e5f43fc23f9d2eb28b0c138f123b141dadde89476e763a8c0a36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
