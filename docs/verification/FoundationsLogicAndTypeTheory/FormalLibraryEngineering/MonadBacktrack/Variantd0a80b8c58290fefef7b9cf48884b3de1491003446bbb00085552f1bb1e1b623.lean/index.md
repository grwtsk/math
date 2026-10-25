# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadBacktrack.Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "643b9b888a766ae4b76ebc3c8cc570b73b896423",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `643b9b888a766ae4b76ebc3c8cc570b73b896423`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean.json)

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
| 1 | `class` | [MonadBacktrack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/monadbacktrack--92ff618e11c91c022d1895fe.md) | 18 | `declaration-track:92ff618e11c91c022d1895feef70aa5cfd73a717b8e9428a8d494409c8eeb203` |
| 2 | `def` | [commitWhenSome?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/commitwhensome--07cd1b164ad9d27dedda01ea.md) | 27 | `declaration-track:07cd1b164ad9d27dedda01ea07a8b3f668e7f4e58150f09b77be8bac068eecf0` |
| 3 | `def` | [commitWhenSomeNoEx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/commitwhensomenoex--30d3ddff6b44681c1f0f3bb0.md) | 44 | `declaration-track:30d3ddff6b44681c1f0f3bb000c95713240325da42bff7e8849ca5d3079b45a4` |
| 4 | `def` | [commitWhen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/commitwhen--e08fc499c1581d512b2a09bb.md) | 50 | `declaration-track:e08fc499c1581d512b2a09bb40d732a968f8ed85b7464f501c0d5805433c1ba6` |
| 5 | `def` | [commitIfNoEx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/commitifnoex--e3fe45ee8b469a0fd5b5a725.md) | 62 | `declaration-track:e3fe45ee8b469a0fd5b5a72564caa913f03766c902314630626d827a00c2d998` |
| 6 | `def` | [withoutModifyingState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/withoutmodifyingstate--0509d75fee68fc2e259530f5.md) | 70 | `declaration-track:0509d75fee68fc2e259530f53177f43994bab857dcfcc1277af9bbff4982084e` |
| 7 | `def` | [observing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/observing--78f38a8d4223eea87cba97c1.md) | 77 | `declaration-track:78f38a8d4223eea87cba97c10b7b1a05320dd61567c06d47c18da1709db427fd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variantd0a80b8c58290fefef7b9cf48884b3de1491003446bbb00085552f1bb1e1b623.lean/declarations/instance--01164d029e47c13eda67bfcc.md) | 85 | `declaration-track:01164d029e47c13eda67bfcc1a29e2b4ef98eeead5f95dc143e09a85fd9c47eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
