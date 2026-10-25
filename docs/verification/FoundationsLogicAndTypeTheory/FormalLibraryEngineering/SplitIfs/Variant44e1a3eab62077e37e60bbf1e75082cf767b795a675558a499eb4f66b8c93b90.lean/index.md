# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitIfs.Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "931c54c6b1fcc06595fb8ec58f6e760b814b611c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `931c54c6b1fcc06595fb8ec58f6e760b814b611c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitPosition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/splitposition--1df1b45db1fde9ba58e8aafb.md) | 20 | `declaration-track:1df1b45db1fde9ba58e8aafb2978e6243adc9682defae1667e326d9fd6b4cdee` |
| 2 | `def` | [getSplitCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/getsplitcandidates--88769d9db19ccfe04dd3c49b.md) | 26 | `declaration-track:88769d9db19ccfe04dd3c49b1c419d5669bc620df7de337de308d8389b172994` |
| 3 | `def` | [findIfCondAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/findifcondat--1a230260ee8992c38a9c1803.md) | 45 | `declaration-track:1a230260ee8992c38a9c180344b1051609f5462dc7c179a7e7663b62d1c47c3a` |
| 4 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/discharge--423f5ccd0835f5b960900bbf.md) | 55 | `declaration-track:423f5ccd0835f5b960900bbf66f456144164d9eddd23b68b47b9c156deb55598` |
| 5 | `def` | [reduceIfsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/reduceifsat--781df1313e8aa07881e92987.md) | 65 | `declaration-track:781df1313e8aa07881e92987c12b6fd84be6175b2733c113390d3d142f81633c` |
| 6 | `def` | [splitIf1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/splitif1--26e65f092c17f98cdbac7c4b.md) | 76 | `declaration-track:26e65f092c17f98cdbac7c4b04d151d426577a66bcb738e03ef2ff37884c82b8` |
| 7 | `def` | [getNextName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/getnextname--7d9e1e7c867f1da4a1727ad0.md) | 84 | `declaration-track:7d9e1e7c867f1da4a1727ad07f7f2add61e8515100dd348acb8daf689c3a3a7c` |
| 8 | `def` | [valueKnown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/valueknown--1a987297bd82c801ae20bb38.md) | 94 | `declaration-track:1a987297bd82c801ae20bb38aa86f3346260572c433bc1e95ba9c0d317292089` |
| 9 | `def` | [splitIfsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/splitifscore--367d1266750f3bae6bae3208.md) | 103 | `declaration-track:367d1266750f3bae6bae32083b7264bcb5e462769a3ada412efb8c1121199f6d` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/syntax--e4487720159a858606452816.md) | 131 | `declaration-track:e4487720159a858606452816f28ef178c4818e78cc8b705fa2ef8fdb46ccc0cd` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant44e1a3eab62077e37e60bbf1e75082cf767b795a675558a499eb4f66b8c93b90.lean/declarations/elab-rules--1d3603d23a485e4d62150853.md) | 133 | `declaration-track:1d3603d23a485e4d62150853418f9663abe6f6b43dcf514982966f7b5f394f9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
