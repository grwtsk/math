# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89d495f196bce6dada1c8c16774e8a37b7aaccc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89d495f196bce6dada1c8c16774e8a37b7aaccc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Log2` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.BasicAux` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UInt8.log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/declarations/uint8-log2--01dce367bdc81c3faa3676cd.md) | 38 | `declaration-track:01dce367bdc81c3faa3676cdfe17de38a25cdb715013530c7642444064d66942` |
| 2 | `def` | [UInt16.log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/declarations/uint16-log2--f4d5f748e702bcb900c92f29.md) | 55 | `declaration-track:f4d5f748e702bcb900c92f2990d9aee3de09c3c905f9de1af05eb8c9eca7c512` |
| 3 | `def` | [UInt32.log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/declarations/uint32-log2--437055bc9883de00133dd642.md) | 72 | `declaration-track:437055bc9883de00133dd64289e7124c4fbd682a0d4c1de19457d5346bca833e` |
| 4 | `def` | [UInt64.log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/declarations/uint64-log2--919314a7f365fea1644d314f.md) | 89 | `declaration-track:919314a7f365fea1644d314fea9929affd010a8786697e56fd9c7cf9a0ea5318` |
| 5 | `def` | [USize.log2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log2/Variant05e83186944223ae839a1bbe867489265a6cdd93612d3ee1c29f215a3edc421d.lean/declarations/usize-log2--c28e5a67aab75b6aecdd7447.md) | 106 | `declaration-track:c28e5a67aab75b6aecdd744788d25dc3a8a3a0fe17606d5ced20c1e1c4568b76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
