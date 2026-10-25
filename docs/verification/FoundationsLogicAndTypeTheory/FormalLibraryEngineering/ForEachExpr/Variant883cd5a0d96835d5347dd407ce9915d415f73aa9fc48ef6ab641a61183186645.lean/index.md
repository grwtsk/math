# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForEachExpr.Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7b122754019f5a29c19b51e99cee99cf37a0df0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7b122754019f5a29c19b51e99cee99cf37a0df0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [visitLambda](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/visitlambda--4834fe77f415fd764d8caec0.md) | 27 | `declaration-track:4834fe77f415fd764d8caec0b5a846097c54c5cf39921836534bfd66cd8c1a04` |
| 2 | `def` | [visitForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/visitforall--bd10011e699f279290d61d60.md) | 38 | `declaration-track:bd10011e699f279290d61d6060ada5efe0e04adf7771862db5161d21d5338029` |
| 3 | `def` | [visitLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/visitlet--32345678a0511556aaaabf68.md) | 49 | `declaration-track:32345678a0511556aaaabf68169a60622590d54d62f2a45095d4210ff4643aa1` |
| 4 | `def` | [forEachExpr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/foreachexpr--38ee14b01dc8a708b65eeb67.md) | 64 | `declaration-track:38ee14b01dc8a708b65eeb6712b87fd3c7257f0e133912817a676aab51abeb29` |
| 5 | `def` | [forEachExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/foreachexpr--57f14ed8957c8c3d65baf5e0.md) | 84 | `declaration-track:57f14ed8957c8c3d65baf5e0ccacabc949a5ed26c6045fb002b65e22737c4841` |
| 6 | `def` | [shouldInferBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/shouldinferbindername--8aa9b4da72dcdedfdc3732c3.md) | 90 | `declaration-track:8aa9b4da72dcdedfdc3732c380536ba8be225fe604b8dffd78870bda3e160771` |
| 7 | `def` | [setMVarUserNamesAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/setmvarusernamesat--7d1d981a97b65837838522b8.md) | 102 | `declaration-track:7d1d981a97b65837838522b88e11b1ecee1af060c40d576bb2530b103ef66fa0` |
| 8 | `def` | [resetMVarUserNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/resetmvarusernames--6a8bd4ce03cc88d9c8487055.md) | 124 | `declaration-track:6a8bd4ce03cc88d9c84870554a6ac88d9a55939d03e7467818e902504d08300e` |
| 9 | `def` | [mkForallFVars'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant883cd5a0d96835d5347dd407ce9915d415f73aa9fc48ef6ab641a61183186645.lean/declarations/mkforallfvars--7eb18f65ccfb66e696f1efeb.md) | 135 | `declaration-track:7eb18f65ccfb66e696f1efeb2f6fe8502d89c40ce5ed623bedc9ab8564385913` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
