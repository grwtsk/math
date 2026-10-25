# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec84ce7cb160a9b37529610d7e87f472e1fdd9b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec84ce7cb160a9b37529610d7e87f472e1fdd9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Combinators.FilterMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/declarations/iter--33757ffc40d5375f12f5a56d.md) | 31 | `declaration-track:33757ffc40d5375f12f5a56df37e1c092753dd79628c0b45f2e4e56dad51a558` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/declarations/keysiter--6e5554f2ad0e4e631d7640e6.md) | 46 | `declaration-track:6e5554f2ad0e4e631d7640e6c2f6b06573c57b25fbbde542230d754cfe972230` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/declarations/valuesiter--7c48a51625ab1bcfb2c768c0.md) | 61 | `declaration-track:7c48a51625ab1bcfb2c768c0ee987854398518ba2469a66546f1a3b3959e9b31` |
| 4 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/declarations/iter--1892bb2f7cdc8109c4d19d01.md) | 69 | `declaration-track:1892bb2f7cdc8109c4d19d01648fee677b49d5625d809628fceaabbc317d44e4` |
| 5 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/declarations/keysiter--0c1f49069cbd033a3213c999.md) | 73 | `declaration-track:0c1f49069cbd033a3213c99978bd42076fae0cae1c3b6238a888a0489e096596` |
| 6 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantace5f2f6a9490daa4c6ce3e51baf2bda3af9a5bdb22a4aadabe6032f51ed99fc.lean/declarations/valuesiter--61004b37d4d497b9f5cd0d84.md) | 77 | `declaration-track:61004b37d4d497b9f5cd0d84edd3053f218e2f20cfc83f905efbac1948f22c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
