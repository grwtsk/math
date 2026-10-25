# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d5e92cb82f81bad8be0b3fdf6a158c3b61ddfe",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d5e92cb82f81bad8be0b3fdf6a158c3b61ddfe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Widget.InteractiveCode` — import line 6; external provider; requires a separately pinned dependency.
- `ProofWidgets.Compat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Component](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/declarations/component--5d6a2984a8287926d4cc3004.md) | 34 | `declaration-track:5d6a2984a8287926d4cc3004acc590a982125cd160c1e8db3cc11572a229f526` |
| 2 | `structure` | [InteractiveCodeProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/declarations/interactivecodeprops--e0ea04a00494b02048d5a822.md) | 40 | `declaration-track:e0ea04a00494b02048d5a822e2a905d6f4b820643d1d36e1582d336c4855f497` |
| 3 | `def` | [InteractiveCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/declarations/interactivecode--e726d9a15f49703b0cc9ae33.md) | 50 | `declaration-track:e726d9a15f49703b0cc9ae339e1328beeffd1ee076d8112ed0b582f7d9f9450a` |
| 4 | `structure` | [InteractiveExprProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/declarations/interactiveexprprops--7329d7289310a8653b90d574.md) | 58 | `declaration-track:7329d7289310a8653b90d57436481c8e1237d87b9f31bb411803d19b5a59a137` |
| 5 | `def` | [ppExprTagged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/declarations/ppexprtagged--8efbd4b299d036cceb4ffe70.md) | 64 | `declaration-track:8efbd4b299d036cceb4ffe70d439357d65ab280dd6c97f2c694ab85cc3603dc0` |
| 6 | `def` | [InteractiveExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant26eab6949a14e93549ab8630712f202da6672a09561133956300dff51ff8f38e.lean/declarations/interactiveexpr--b1bd9aeb7a62b1b38a906e0c.md) | 75 | `declaration-track:b1bd9aeb7a62b1b38a906e0cb6fcf8edcdab760d9f6860ee8be610f585f297ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
