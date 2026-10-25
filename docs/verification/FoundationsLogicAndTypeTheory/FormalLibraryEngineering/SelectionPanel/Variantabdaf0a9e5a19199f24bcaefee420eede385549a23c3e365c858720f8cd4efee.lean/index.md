# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectionPanel.Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "888b3b1012086076392c6566594e0ffde4e082b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `888b3b1012086076392c6566594e0ffde4e082b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.ExprLens` — import line 1; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Panel` — import line 2; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.SubExpr.GoalsLocation.saveExprWithCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/declarations/lean-subexpr-goalslocation-saveexprwithctx--b3a1c344f1993ad08114aab6.md) | 7 | `declaration-track:b3a1c344f1993ad08114aab6815274c2e47e43ab9cf4a88efa615fe89a50d7c4` |
| 2 | `structure` | [GoalsLocationsToExprsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/declarations/goalslocationstoexprsparams--182e2ebafea6990ae4dea564.md) | 27 | `declaration-track:182e2ebafea6990ae4dea564adc22a2afdf19900bc4ddaaf7c9c6af5bc3ca3ff` |
| 3 | `structure` | [GoalsLocationsToExprsResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/declarations/goalslocationstoexprsresponse--378f18d09c20e460e22faf61.md) | 32 | `declaration-track:378f18d09c20e460e22faf61adec7c7d73fb46df367c85a0467cfd3b841c1d0c` |
| 4 | `def` | [goalsLocationsToExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/declarations/goalslocationstoexprs--867e6c5bab5ad03f2a4c69aa.md) | 39 | `declaration-track:867e6c5bab5ad03f2a4c69aae030fc4a4937c177d342a025a74cb71660ac64d4` |
| 5 | `def` | [SelectionPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/declarations/selectionpanel--9c6b2e0cc1c4fba26102f4d6.md) | 52 | `declaration-track:9c6b2e0cc1c4fba26102f4d67baed9248f239d75cf37899e5c4967e3474eee61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
