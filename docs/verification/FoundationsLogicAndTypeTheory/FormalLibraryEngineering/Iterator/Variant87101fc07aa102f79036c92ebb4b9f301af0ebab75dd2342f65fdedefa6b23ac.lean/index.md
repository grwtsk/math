# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27c13bb0f69ade507a62a1defcc4982466202d95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27c13bb0f69ade507a62a1defcc4982466202d95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/declarations/iter--7713b33fcc2afbe1e762ff99.md) | 30 | `declaration-track:7713b33fcc2afbe1e762ff99f9c9480fa1c445369c2874156254f54a4193c153` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/declarations/keysiter--0411c9a69e97514572911ff8.md) | 46 | `declaration-track:0411c9a69e97514572911ff8c2c5e173bcf0c7b37d5d6db587e56aa0ef19667f` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/declarations/valuesiter--ec0762cfef73d70d8a6d8813.md) | 62 | `declaration-track:ec0762cfef73d70d8a6d88137ea83eab6454e26c8ad8ad94d8d2c9033375fb9a` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/declarations/tolist-iter--6cecc256cb8e7c516073b5b4.md) | 67 | `result-track:6cecc256cb8e7c516073b5b4c1710fd627181ed5e3855319b4657526d0baf0df` |
| 5 | `theorem` | [keysIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/declarations/keysiter-tolist--2bd85b57cb48e4d7226a12ec.md) | 73 | `result-track:2bd85b57cb48e4d7226a12ec6db618aaeb7628dbdc3f8f6bc005619c5e8381bf` |
| 6 | `theorem` | [valuesIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac.lean/declarations/valuesiter-tolist--a819ffeba8d5651f152b2b0b.md) | 79 | `result-track:a819ffeba8d5651f152b2b0b4d8374a763cafcfce56a2fa7f6d5a54105e7b20a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
