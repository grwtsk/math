# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d354ed3bbd4686ff922ab9a5da574a61f3fc0067",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d354ed3bbd4686ff922ab9a5da574a61f3fc0067`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [messageToString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/messagetostring--07f5523212bfbec30d7c11de.md) | 46 | `declaration-track:07f5523212bfbec30d7c11dec058437fcddb2aff80692ee6a1c5ebc1441443b8` |
| 2 | `inductive` | [FilterSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/filterspec--f4e8a837b85ee68958b40d29.md) | 70 | `declaration-track:f4e8a837b85ee68958b40d29c5971fffff78dea0dd3a1ba82c8015c85186c0b0` |
| 3 | `inductive` | [WhitespaceMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/whitespacemode--eb5c23a2d9e008ff5cc0407e.md) | 79 | `declaration-track:eb5c23a2d9e008ff5cc0407e9ea013728a9aac2a021266e840637e323322be72` |
| 4 | `inductive` | [MessageOrdering](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/messageordering--13bb28cd46ef9b48d27a642b.md) | 88 | `declaration-track:13bb28cd46ef9b48d27a642b88fe86071ad098739507ec3a7bcdb923eda51c86` |
| 5 | `structure` | [GuardMsgsSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/guardmsgsspec--fb6c0330ddddff4e613f7406.md) | 96 | `declaration-track:fb6c0330ddddff4e613f740660cc00abb4920cdf384c6926b41b15e5bf84ea1f` |
| 6 | `def` | [parseGuardMsgsFilterAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/parseguardmsgsfilteraction--faad0c867fde6657f1ae2749.md) | 108 | `declaration-track:faad0c867fde6657f1ae2749fd19840e132ce6170ac8b57a61713f96f4da6dd0` |
| 7 | `def` | [parseGuardMsgsFilterSeverity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/parseguardmsgsfilterseverity--0bfbea05ff9e00eb77fc692b.md) | 119 | `declaration-track:0bfbea05ff9e00eb77fc692b74b24d97bbf17a15e23a92a079af09173ef1d270` |
| 8 | `def` | [parseGuardMsgsSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/parseguardmsgsspec--2a753a8627585b58f1bb8419.md) | 130 | `declaration-track:2a753a8627585b58f1bb841912a7c7d4fc1cf32eb2ef359966355d4d0dd8adce` |
| 9 | `structure` | [GuardMsgFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/guardmsgfailure--688061455a3ef962edf8323c.md) | 163 | `declaration-track:688061455a3ef962edf8323c62c423e6dc3129b8109b17ce47365ea923d4b136` |
| 10 | `def` | [revealTrailingWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/revealtrailingwhitespace--d80bae019fa4b559dee03bac.md) | 173 | `declaration-track:d80bae019fa4b559dee03bace311696c46dd9da75927f7abb40cb9cff076963c` |
| 11 | `def` | [removeTrailingWhitespaceMarker](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/removetrailingwhitespacemarker--33db101e9e6133ec35ee52c9.md) | 179 | `declaration-track:33db101e9e6133ec35ee52c93543cb35f00c4eb4b9c379ff4e4475cf87caeae8` |
| 12 | `def` | [WhitespaceMode.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/whitespacemode-apply--12fbe26310b8d92e8f654d97.md) | 185 | `declaration-track:12fbe26310b8d92e8f654d979a0aab282893b2eb0514943aa5fb57f6857dcad4` |
| 13 | `def` | [MessageOrdering.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/messageordering-apply--255bfeb4007faabfb6302a9f.md) | 194 | `declaration-track:255bfeb4007faabfb6302a9fcb758c7e53ec016df1ceea8a5bbf1d2ce509f8c0` |
| 14 | `def` | [runAndCollectMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/runandcollectmessages--fc48d5210b37c1d0ed0e56cf.md) | 204 | `declaration-track:fc48d5210b37c1d0ed0e56cf4c513e526bca3941ba034b6358197eed5007fd0b` |
| 15 | `def` | [elabGuardMsgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/elabguardmsgs--6fadeca4b267675d1e4c86ca.md) | 216 | `declaration-track:6fadeca4b267675d1e4c86ca0c0d7e7fce0040722f81a656ac618b5e40a9fce1` |
| 16 | `def` | [guardMsgsCodeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/guardmsgscodeaction--f567186270151d6cbae9f7dc.md) | 263 | `declaration-track:f567186270151d6cbae9f7dc50579fb6e62c185351f31a5db41de8b9cb75aba0` |
| 17 | `def` | [elabGuardPanic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/declarations/elabguardpanic--e6f5de35a9ff3f6a9e9296bb.md) | 295 | `declaration-track:e6f5de35a9ff3f6a9e9296bb123acdb6a27e9adf3842f14b9405e1b0df8bc5f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
