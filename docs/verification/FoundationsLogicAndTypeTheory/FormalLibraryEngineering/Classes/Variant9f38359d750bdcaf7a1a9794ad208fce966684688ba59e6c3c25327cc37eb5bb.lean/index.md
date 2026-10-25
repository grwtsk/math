# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classes.Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2de289f53415ef8f8bd53fb80d9e52a3e02bd257",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2de289f53415ef8f8bd53fb80d9e52a3e02bd257`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean.json)

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
| 1 | `class` | [IsPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/ispreorder--eee3dee5cee46a78e026847a.md) | 62 | `declaration-track:eee3dee5cee46a78e026847a19b702559e29bf056926132921425ff996c3fb86` |
| 2 | `class` | [IsPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/ispartialorder--ce3da1401a31485a6674a509.md) | 71 | `declaration-track:ce3da1401a31485a6674a5093756adc5ddfd6c5ede439f53a6d33a7e7fc8c01d` |
| 3 | `class` | [IsLinearPreorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/islinearpreorder--63c10ef822decc7859680c94.md) | 79 | `declaration-track:63c10ef822decc7859680c94ab97d5fe3f547f283db294fb8b21a7f5790ad9aa` |
| 4 | `class` | [IsLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/islinearorder--3b4e4a71dd3aa55d8604f4bd.md) | 87 | `declaration-track:3b4e4a71dd3aa55d8604f4bd03fbc3c4b9607effc8008c3ccdceeb1e30d8b6a9` |
| 5 | `class` | [LawfulOrderLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulorderlt--fff2161662e2085d8352114c.md) | 102 | `declaration-track:fff2161662e2085d8352114c9e951c7aa13bc1a8799b02ea6ffed08abe582e78` |
| 6 | `class` | [LawfulOrderBEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulorderbeq--be9a4fbbddd0da05b2f9b52b.md) | 109 | `declaration-track:be9a4fbbddd0da05b2f9b52b0940793e923150f4d43dae35c73614dbee9d9b3c` |
| 7 | `class` | [MinEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/mineqor--6ad93826ac0f8fe805f32690.md) | 119 | `declaration-track:6ad93826ac0f8fe805f3269073c5beb12b5e459f4255aed7fbc6ac5383456e53` |
| 8 | `theorem` | [MinEqOr.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/mineqor-elim--83408f214856288a20d93139.md) | 126 | `result-track:83408f214856288a20d931397a62bae087c05c01a116edf72507b0034200e638` |
| 9 | `class` | [LawfulOrderInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulorderinf--2b6d16a7c5c91aa7d35efff6.md) | 136 | `declaration-track:2b6d16a7c5c91aa7d35efff61024b2e52a542679a980bfeca076c053ceefcf11` |
| 10 | `class` | [LawfulOrderMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulordermin--8f53b1f9fa196f6239709b0b.md) | 147 | `declaration-track:8f53b1f9fa196f6239709b0b885f088c35347ce39b934202dc36f915280f5cb7` |
| 11 | `class` | [LawfulOrderLeftLeaningMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulorderleftleaningmin--71355095e4cc231928ded7ab.md) | 152 | `declaration-track:71355095e4cc231928ded7ab2b2f4b7510d7fa01604ec07ef1193d6d12124c85` |
| 12 | `class` | [MaxEqOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/maxeqor--7c46923421c31802bd90e2d6.md) | 163 | `declaration-track:7c46923421c31802bd90e2d68e57fa871379d27fdc777ceb8de8da74666a24c4` |
| 13 | `theorem` | [MaxEqOr.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/maxeqor-elim--8a801550b4eb8d113a721022.md) | 170 | `result-track:8a801550b4eb8d113a721022c29c9461fc9aed9e07da3324947379a3eb493ea6` |
| 14 | `class` | [LawfulOrderSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulordersup--1018e5b9f26a98b75b34e0c9.md) | 180 | `declaration-track:1018e5b9f26a98b75b34e0c9fa01b807a2872c84c2b3372ff17a74ad352d2c52` |
| 15 | `class` | [LawfulOrderMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulordermax--8fb2af1725c3aca9374fe4b6.md) | 191 | `declaration-track:8fb2af1725c3aca9374fe4b6e222e13e630b065f4dd81f1c7803fb898cc15d03` |
| 16 | `class` | [LawfulOrderLeftLeaningMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classes/Variant9f38359d750bdcaf7a1a9794ad208fce966684688ba59e6c3c25327cc37eb5bb.lean/declarations/lawfulorderleftleaningmax--4b2d172dd5271bd2a731edb9.md) | 196 | `declaration-track:4b2d172dd5271bd2a731edb9378d87127d0b2690e716836453802178f393cbb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
