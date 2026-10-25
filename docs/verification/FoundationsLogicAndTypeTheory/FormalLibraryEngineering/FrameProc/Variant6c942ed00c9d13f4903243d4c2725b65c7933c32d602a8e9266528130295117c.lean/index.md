# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrameProc.Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1891bff71de4cfb6c9c0f0a18b91a82ff6f9c59a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1891bff71de4cfb6c9c0f0a18b91a82ff6f9c59a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Internal.Do.Order.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [VCGen.FrameInferenceProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/vcgen-frameinferenceproc--3a4bcc2da33418fa68191f8a.md) | 30 | `declaration-track:3a4bcc2da33418fa68191f8af1becb7a95ee76d07d315fc5983dc100f20e60bd` |
| 2 | `structure` | [VCGen.LatticeOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/vcgen-latticeop--470fc1818ad4453a4a483a89.md) | 37 | `declaration-track:470fc1818ad4453a4a483a893293f5996c70d5fecb5ea5cc38cbe4fd2be16576` |
| 3 | `structure` | [VCGen.FrameProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/vcgen-frameproc--fa54c229ea9cfbd6e369b9b4.md) | 53 | `declaration-track:fa54c229ea9cfbd6e369b9b41c716d9ac27e1fd160d6c85dbdec063c6cd07369` |
| 4 | `structure` | [VCGen.FrameProcs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/vcgen-frameprocs--7d6508d7754171c249ec7eaa.md) | 72 | `declaration-track:7d6508d7754171c249ec7eaa52ff5eef1656dffb898739d56cf33bd3963fcac6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/instance--2ed29fd04b305eaf6e976655.md) | 76 | `declaration-track:2ed29fd04b305eaf6e976655f6989d5f03e5cad76760838a21887a100062f6bb` |
| 6 | `def` | [VCGen.FrameProcs.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/vcgen-frameprocs-insert--194b61b7257cad36e45f0ff9.md) | 78 | `declaration-track:194b61b7257cad36e45f0ff9a48b73210c6fe0966b1fc2721d2f5d55668cf399` |
| 7 | `def` | [VCGen.meetFrameProc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FrameProc/Variant6c942ed00c9d13f4903243d4c2725b65c7933c32d602a8e9266528130295117c.lean/declarations/vcgen-meetframeproc--700b74dcabb71ff30c5208de.md) | 85 | `declaration-track:700b74dcabb71ff30c5208de2a12c27c6db04e970a96bb3b98182f995f7b8acd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
