# Verification target: GRWTSK.InformationTheory.Huffman.Tree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af50e9445a35ab06b4f42bc9b0991a39289c5c2b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/Tree.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af50e9445a35ab06b4f42bc9b0991a39289c5c2b`.

Source path: `GRWTSK/InformationTheory/Huffman/Tree.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/Tree.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Tree](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree--d76ade6c15f01ae256986b49.md) | 13 | `declaration-track:d76ade6c15f01ae256986b495bb1b1a1e542084dd6a0a31f77e6b687aa6da4a4` |
| 2 | `def` | [Tree.symbols](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-symbols--3d8f1aee24a2f79c5bcca251.md) | 18 | `declaration-track:3d8f1aee24a2f79c5bcca251867d7e998b142549bd84fce912f8d5388caa868d` |
| 3 | `def` | [Tree.path](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-path--32a29e33e75a069fca2bbe4b.md) | 22 | `declaration-track:32a29e33e75a069fca2bbe4bc712219d3efde7e5f979c48f9a3b5e0bcc129690` |
| 4 | `def` | [Tree.readPath](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-readpath--60550c41692731f4a253053d.md) | 29 | `declaration-track:60550c41692731f4a253053d68f85d2f68ca7143273272280a0844e7d7a88235` |
| 5 | `theorem` | [Tree.path_exists](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-path-exists--0af272c81f57a95cad45bb9d.md) | 35 | `result-track:0af272c81f57a95cad45bb9deaff5be941cbd30eda8f5a092ac9b50f7eff7b49` |
| 6 | `theorem` | [Tree.readPath_path](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-readpath-path--faef06d0c32fece8d7601311.md) | 57 | `result-track:faef06d0c32fece8d76013117b1ef427528817e3cb188f2052fdef4384b7539a` |
| 7 | `def` | [Tree.word](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-word--09a073095d744e7fc7141bf6.md) | 86 | `declaration-track:09a073095d744e7fc7141bf6495c26672b0304a82d70e8e89f66ff18e0303a61` |
| 8 | `def` | [Tree.readWord](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-readword--9faee52cbdecc3623ecee949.md) | 91 | `declaration-track:9faee52cbdecc3623ecee9490bebfc7ec68d71bea8dfbb35cb68d3e7a76add28` |
| 9 | `theorem` | [Tree.word_exists](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-word-exists--e946c977c73ca0337810cb59.md) | 99 | `result-track:e946c977c73ca0337810cb596a09e7456d980ce7074777246660befcc4b27ad6` |
| 10 | `theorem` | [Tree.readWord_word](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Tree.lean/declarations/tree-readword-word--285f96db4889e4df6c1e00b6.md) | 108 | `result-track:285f96db4889e4df6c1e00b6a4f93bb7101ab87595a4370d8461beabb19bfec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
