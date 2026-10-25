# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProtocolOverview.Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e40f5654486c9d8fb58c618c32b8a977cd5aeb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e40f5654486c9d8fb58c618c32b8a977cd5aeb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.FileWorker.WidgetRequests` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Widget.UserWidget` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProtocolExtensionKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/protocolextensionkind--e857b30df58a187516545ee1.md) | 29 | `declaration-track:e857b30df58a187516545ee19d10ad2eba227fff8b645fd85e9a7cc93860f648` |
| 2 | `structure` | [RequestOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/requestoverview--f841a4e8702deac13db70705.md) | 37 | `declaration-track:f841a4e8702deac13db70705d3b32df62bba233073be439c7b5c43a04c5c3c94` |
| 3 | `structure` | [RpcRequestOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/rpcrequestoverview--23fcebc4ec150d1d40ae2551.md) | 45 | `declaration-track:23fcebc4ec150d1d40ae255102b93783bfb04ef6ce3a740add85a11e4b1a6411` |
| 4 | `structure` | [NotificationOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/notificationoverview--484411ee5f77099979025f50.md) | 51 | `declaration-track:484411ee5f77099979025f505e3ea6a49789173ef55f9c813c229962112d3eee` |
| 5 | `inductive` | [MessageOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/messageoverview--c2d815dbcb21902244dee4ed.md) | 58 | `declaration-track:c2d815dbcb21902244dee4edf36222ed2acc43ea58879bc23d8fae86a6945a14` |
| 6 | `opaque` | [NestedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/nestedtype--560bc017ce274b4040b386dd.md) | 63 | `declaration-track:560bc017ce274b4040b386ddd27555296d1a6306a75044b11962d51717007813` |
| 7 | `def` | [protocolOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant428ae6944592712e7c4f54632c3f79bb36527cf601ae30a93b2bc8fbb76e3c41.lean/declarations/protocoloverview--c3de3fe465a365a259473be6.md) | 75 | `declaration-track:c3de3fe465a365a259473be622c766314bcd743838edf87fe6f5fc61772ba9a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
