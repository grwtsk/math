# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quantization.Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a8a236e177287a3a85bb7627423b9906897b363",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a8a236e177287a3a85bb7627423b9906897b363`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SampleCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/samplecfg--0c0ae777184955de43d67a35.md) | 20 | `declaration-track:0c0ae777184955de43d67a35f92949e9261c7311f7814ab449010272ac326f8a` |
| 2 | `def` | [sampleRows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/samplerows--bf80e52352cebd2d74059525.md) | 27 | `declaration-track:bf80e52352cebd2d74059525b2988254312100b137ec6024e358b24df3df8e46` |
| 3 | `def` | [sampleCols](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/samplecols--afbf853fc74454d8046ffbcf.md) | 29 | `declaration-track:afbf853fc74454d8046ffbcf74df79dbc90b3e1d3b540536a86101b1458470a9` |
| 4 | `def` | [sampleEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/sampleencode--e8f8de88d8c9f00549367565.md) | 32 | `declaration-track:e8f8de88d8c9f0054936756575796a5369ee98da8af5ad90a74d003382c138a6` |
| 5 | `def` | [sampleQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/sampleq--4623c4465060f28b964882e9.md) | 38 | `declaration-track:4623c4465060f28b964882e91e4c697aeb16a22c0cef19a0eb4f2209b885b342` |
| 6 | `def` | [sampleEncodeArrayBacked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/sampleencodearraybacked--eea17612bc237a8d75788156.md) | 43 | `declaration-track:eea17612bc237a8d75788156176b7200edc0036a051b835fdffe94e391da229b` |
| 7 | `def` | [sampleArrayBackedQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/samplearraybackedq--c9def1ffca53dadcc3f0ae03.md) | 49 | `declaration-track:c9def1ffca53dadcc3f0ae03fca1fe78ba8ec9de0a2a64107db297cfa342988c` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--5d8ab7135214d4f7cdddde63.md) | 53 | `declaration-track:5d8ab7135214d4f7cdddde63a2a340e1a5519450c6a111160eb677954166b256` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--6deccab9750c67ae8c7ca7b3.md) | 57 | `declaration-track:6deccab9750c67ae8c7ca7b3aaee316e1860ad70a92383113c93e81d52f02a42` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--65d22f03a2c4fad532931df0.md) | 67 | `declaration-track:65d22f03a2c4fad532931df017d9b39cac33e696decb39bb135b53fb14b96bcc` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--718f523f8b8f6017edfd41a2.md) | 71 | `declaration-track:718f523f8b8f6017edfd41a2999d67b143ed33fd2b480d5bbea8afea8f88be5b` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--a04eea2ab89d236d90a5ad3d.md) | 76 | `declaration-track:a04eea2ab89d236d90a5ad3d7182fe052f1a26bc609f2fadf62c8b0233de88d7` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--71b6afc870c9ac87b2a67677.md) | 81 | `declaration-track:71b6afc870c9ac87b2a676777dad1bb39890549ba5699b48fb88cf88f658c332` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variantbfdc217dd81a86efa14ba7c3ccaec211a147e82d490e9e8dd4a2d11565539d4f.lean/declarations/example--3d3db56512a093e4a37cea1f.md) | 87 | `declaration-track:3d3db56512a093e4a37cea1fded3e9a85547dc6801e020151b3217728dbf95f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
