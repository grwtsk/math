# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProtocolOverview.Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd3587f89804c5c05e49b9b7432514066266322",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd3587f89804c5c05e49b9b7432514066266322`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.FileWorker.WidgetRequests` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Widget.UserWidget` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProtocolExtensionKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/protocolextensionkind--1ce7f280c7765eadc5625c30.md) | 21 | `declaration-track:1ce7f280c7765eadc5625c30312449643c688a127fa4372ecf8e9eedcd33870c` |
| 2 | `structure` | [RequestOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/requestoverview--6ffbe7eb1c221610623325a0.md) | 29 | `declaration-track:6ffbe7eb1c221610623325a060cc303c4925104920ed2af53657da45cdf7242a` |
| 3 | `structure` | [RpcRequestOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/rpcrequestoverview--409b76a16129ca0628a8cc43.md) | 37 | `declaration-track:409b76a16129ca0628a8cc434be8df2ed089c6e6fc004f2a4318bca2012fdc26` |
| 4 | `structure` | [NotificationOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/notificationoverview--f7640410579fd9bf5b4bd867.md) | 43 | `declaration-track:f7640410579fd9bf5b4bd867df2c3baffe703d18c4d3c17b47d5df17dab9b61c` |
| 5 | `inductive` | [MessageOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/messageoverview--3f30ac26ed46f18a0cd790df.md) | 50 | `declaration-track:3f30ac26ed46f18a0cd790dff2ccd884fdf09955591da5f4387f67559a61f866` |
| 6 | `opaque` | [NestedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/nestedtype--6d20900c33e79cd4489a3aed.md) | 55 | `declaration-track:6d20900c33e79cd4489a3aed175f72b873d32cc891e1bf825bcc9f8e35573261` |
| 7 | `def` | [protocolOverview](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProtocolOverview/Variant85ab75ae2c553d92e240c587f0cc9d772ba25dbbf269fff305425ed8244e62aa.lean/declarations/protocoloverview--38d0a646bc5eb72b4ffa8c49.md) | 67 | `declaration-track:38d0a646bc5eb72b4ffa8c49d0db7b14273d2fec3a2354ce27b3ce3e8ea493ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
