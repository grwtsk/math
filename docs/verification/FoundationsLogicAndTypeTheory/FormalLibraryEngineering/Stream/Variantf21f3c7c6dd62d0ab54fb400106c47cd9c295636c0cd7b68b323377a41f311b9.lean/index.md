# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7be55fd53e6b602fbaa5ece55653a243182ef8a8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7be55fd53e6b602fbaa5ece55653a243182ef8a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean.json)

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
| 1 | `def` | [drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/drop--6bbedb4cb68b530214947bf2.md) | 21 | `declaration-track:6bbedb4cb68b530214947bf21f344bfd5470e7ae689ae183d23f2eee6a83f1f4` |
| 2 | `def` | [take](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/take--e0fc1f1edc2bab337a4bd94d.md) | 29 | `declaration-track:e0fc1f1edc2bab337a4bd94da81f600c8c0beeaa8d31fa9fce95531d928ab286` |
| 3 | `theorem` | [fst_take_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/fst-take-zero--fceca884f2273274d0fef079.md) | 38 | `result-track:fceca884f2273274d0fef0799476f33c8e1b1f3e672ac90c1d4425a2a43177d0` |
| 4 | `theorem` | [fst_take_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/fst-take-succ--db15c27f3360db5348e25416.md) | 41 | `result-track:db15c27f3360db5348e25416b4f12bfaa7c8e81f95f83f6a67aac8399c67c39f` |
| 5 | `theorem` | [snd_take_eq_drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/snd-take-eq-drop--953bcf944fc1720cbc98d858.md) | 47 | `result-track:953bcf944fc1720cbc98d8587351996d6ca7b269d3dbed9872c9b2ad85e59aeb` |
| 6 | `def` | [takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/taketr--42c7205ed873d8e785dbd11f.md) | 56 | `declaration-track:42c7205ed873d8e785dbd11f9e952678f2bad14deae7aff492194de40c09e6da` |
| 7 | `theorem` | [fst_takeTR_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/fst-taketr-loop--fe7dd10689b3dd8920d80c4e.md) | 66 | `result-track:fe7dd10689b3dd8920d80c4eb595706015d42149f436940d1c96595754f9a2af` |
| 8 | `theorem` | [fst_takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/fst-taketr--6fff4d4d25b4999e2cbae51a.md) | 72 | `result-track:6fff4d4d25b4999e2cbae51a542bee7d7aa922e1cd0bd3a90c4506cb1df236a1` |
| 9 | `theorem` | [snd_takeTR_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/snd-taketr-loop--35c818c419f7b2f98f021e19.md) | 75 | `result-track:35c818c419f7b2f98f021e190d2789de757bcededfa6c185070b8d9cd4543df2` |
| 10 | `theorem` | [snd_takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/snd-taketr--7452566151cb89068a56c9f6.md) | 81 | `result-track:7452566151cb89068a56c9f6c8a42650aff897cf98a43fe7220b76a531bbef25` |
| 11 | `theorem` | [take_eq_takeTR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/take-eq-taketr--af0e4c4c2cc5ed6f43f98e74.md) | 84 | `result-track:af0e4c4c2cc5ed6f43f98e74817ea7812ab600d46645b7755f031562ba366213` |
| 12 | `theorem` | [List.stream_drop_eq_drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/list-stream-drop-eq-drop--3213f38b91604db89bb269ff.md) | 89 | `result-track:3213f38b91604db89bb269ff8dd1432289fb5c31da04efbe8515f888410eafd0` |
| 13 | `theorem` | [List.stream_take_eq_take_drop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variantf21f3c7c6dd62d0ab54fb400106c47cd9c295636c0cd7b68b323377a41f311b9.lean/declarations/list-stream-take-eq-take-drop--02b31a842bd41691b3730e37.md) | 97 | `result-track:02b31a842bd41691b3730e37b33dd143fbeda87286dad3f72962ebcd75995bfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
