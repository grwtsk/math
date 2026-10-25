# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74675aeb4ad2b96cbed21f80d7bc92c8bb0a642d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74675aeb4ad2b96cbed21f80d7bc92c8bb0a642d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Direction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/direction--7a3f1c9908c7b1e5c02bcc31.md) | 40 | `declaration-track:7a3f1c9908c7b1e5c02bcc314e52ea184e2182e93ebe40eb561d41274c445f6e` |
| 2 | `abbrev` | [Direction.swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/direction-swap--8d6d601d304866101ca4cbd3.md) | 55 | `declaration-track:8d6d601d304866101ca4cbd38e6f508398d974537de86aea7d9cff2e056a15be` |
| 3 | `def` | [Message.Head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/message-head--17c64faebb0dada5f95a5186.md) | 63 | `declaration-track:17c64faebb0dada5f95a5186916a12375ef672c6fa06e8b928631c84fb7cb9d6` |
| 4 | `def` | [Message.Head.headers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/message-head-headers--a6bb3915b0c3dc735fa3a31f.md) | 70 | `declaration-track:a6bb3915b0c3dc735fa3a31f326a43546a9f0c37a9b12e259cfd19a1ad4f274a` |
| 5 | `def` | [Message.Head.setHeaders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/message-head-setheaders--fabec142323f22214543961b.md) | 78 | `declaration-track:fabec142323f22214543961b473020661e3ce3214020f4de890aa86eda9612be` |
| 6 | `def` | [Message.Head.version](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/message-head-version--7fefa8a147dcd487385a8305.md) | 86 | `declaration-track:7fefa8a147dcd487385a830506ca99d56df1aec2b79625452a13c3f13409cef6` |
| 7 | `def` | [Message.Head.getSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/message-head-getsize--699e79f082657f5a6669219f.md) | 94 | `declaration-track:699e79f082657f5a6669219f0ea2684b62fb71bece22753d51e8291eb25e5f66` |
| 8 | `def` | [Message.Head.shouldKeepAlive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/message-head-shouldkeepalive--f96750215e861e456cdbeddf.md) | 121 | `declaration-track:f96750215e861e456cdbeddff7ba60356f9d5e1eaff910465551a5a845a556c4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/instance--081f934f96b3f8c541d40bc7.md) | 140 | `declaration-track:081f934f96b3f8c541d40bc77de5c949d3e07ed14468dc088bb4bdf7b442d6a2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/instance--4acdd122922bf5853e062629.md) | 145 | `declaration-track:4acdd122922bf5853e06262932c00147097b1655f798245a2f3ac1389e93c414` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/declarations/instance--62d459934e9e93e684d49f66.md) | 150 | `declaration-track:62d459934e9e93e684d49f66f3fc6ffe77a337bb899236bc4fadc45f4b9fee38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
