# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Depth.Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49acf54cc1693425e31abffa69aa52677a6d0017",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49acf54cc1693425e31abffa69aa52677a6d0017`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean.json)

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
| 1 | `def` | [depth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/depth--7a4fd9446da575583cda23df.md) | 32 | `declaration-track:7a4fd9446da575583cda23df3543b8950ba9688817d7fa85f04f60cfbf5f8170` |
| 2 | `theorem` | [size_lt_depth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/size-lt-depth--355d00b220e83c9d0bead959.md) | 36 | `result-track:355d00b220e83c9d0bead959737a264a3d841cfeb50a58519f892a6478b6547c` |
| 3 | `def` | [depthLB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/depthlb--bf386e49ed088c16689f9784.md) | 49 | `declaration-track:bf386e49ed088c16689f9784f61b926c499577a55c24a49c1f29fe014afba08e` |
| 4 | `theorem` | [depthLB_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/depthlb-le--8ccd62a617fa4d184c953d49.md) | 53 | `result-track:8ccd62a617fa4d184c953d49eae8efd6e1fa7d0c03c07ef02687fc231726b9f0` |
| 5 | `def` | [depthUB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/depthub--295bf6fd46721b31eb58e094.md) | 61 | `declaration-track:295bf6fd46721b31eb58e094840194e304ccb067d5de2943bbcf4f1518cd761f` |
| 6 | `theorem` | [depthUB_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/depthub-le--95fcb1ccf53101b9fe90cdb1.md) | 65 | `result-track:95fcb1ccf53101b9fe90cdb1aa4ddaacd2141fd75bdb1ad7ee8de92f0aba1554` |
| 7 | `theorem` | [depthUB_le_two_depthLB](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/depthub-le-two-depthlb--e3e1d250a978f0b11dd37f3e.md) | 69 | `result-track:e3e1d250a978f0b11dd37f3e50c6f2f8d09a5da7c0aa23d144d224ee96c44b5c` |
| 8 | `theorem` | [Balanced.depth_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/balanced-depth-le--9f9f3891910163ce3e84bad2.md) | 73 | `result-track:9f9f3891910163ce3e84bad28853db563230a174fb6c5d2dfca1d37f0dffd7a3` |
| 9 | `theorem` | [Balanced.le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/balanced-le-size--81a6f63cbe0d4b378ee5821f.md) | 79 | `result-track:81a6f63cbe0d4b378ee5821f88ef1ff76a9939a46d761f993008178623dea2b6` |
| 10 | `theorem` | [Balanced.depth_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/balanced-depth-bound--193d789dd25d7ed90540b301.md) | 89 | `result-track:193d789dd25d7ed90540b3017597e95fd62ef6a22e79baaf1191e273de0ec055` |
| 11 | `theorem` | [WF.depth_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Depth/Variantb84f73f120e4b048d3742ccc162920bb5119de4081d4ebb0530f786a2d0fc24b.lean/declarations/wf-depth-bound--c07abc8263a06a0ffa45eee4.md) | 97 | `result-track:c07abc8263a06a0ffa45eee41c235a83b123b24598eb36c561b14737d0ecd44d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
