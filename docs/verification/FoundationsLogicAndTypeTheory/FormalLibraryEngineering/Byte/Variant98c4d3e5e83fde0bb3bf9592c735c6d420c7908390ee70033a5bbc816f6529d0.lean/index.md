# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Byte.Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d77da775360e20aa71ea0570dd87e81adbf37da8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d77da775360e20aa71ea0570dd87e81adbf37da8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Byte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/declarations/byte--ab0eb09751e8ea054f22e6cf.md) | 26 | `declaration-track:ab0eb09751e8ea054f22e6cf63832c5f2f05d3852aabdf03ac60a562fb9396d7` |
| 2 | `def` | [toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/declarations/tonat--243293f4d80831a9f87029d0.md) | 30 | `declaration-track:243293f4d80831a9f87029d0008e5cacbb6d31c85d4e5125000086f6f36887ba` |
| 3 | `def` | [ofNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/declarations/ofnat--85d0f09f2ad684d063e1d119.md) | 32 | `declaration-track:85d0f09f2ad684d063e1d119e4c97c1e5206334fff300916b15424646a9cb3a2` |
| 4 | `structure` | [ByteCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/declarations/bytecodec--9a71cd6cc2f9ea93cdaf6f2a.md) | 35 | `declaration-track:9a71cd6cc2f9ea93cdaf6f2ad210303218e0fa8ae73e20bb53ef30536a5c5805` |
| 5 | `theorem` | [byteCodec_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/declarations/bytecodec-roundtrip--fedbc50b720076711c4c9241.md) | 40 | `result-track:fedbc50b720076711c4c924121605eee9b0103a0b30e7eb5a35a472aa6f94b13` |
| 6 | `def` | [msb0CodecTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Byte/Variant98c4d3e5e83fde0bb3bf9592c735c6d420c7908390ee70033a5bbc816f6529d0.lean/declarations/msb0codectarget--200eee9a88bf1eb75f93d3f7.md) | 46 | `declaration-track:200eee9a88bf1eb75f93d3f7b7e5a2cf770c8ef5c0fd2e5fdcff9d004bb61f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
