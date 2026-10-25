# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntToBitVec.Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6ae3158ac2657b8c6e89a774941f8a4dd81a5cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6ae3158ac2657b8c6e89a774941f8a4dd81a5cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean.json)

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
| 1 | `structure` | [SizeState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/declarations/sizestate--a5c01a8893f5f479060a1c7a.md) | 28 | `declaration-track:a5c01a8893f5f479060a1c7a00eb0376392fa1dac5ffe3e60ce9db576767c3ec` |
| 2 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/declarations/m--7f0df69ada63b34bb44c4917.md) | 39 | `declaration-track:7f0df69ada63b34bb44c4917c877cf9129815871cb798bcc11716eb5a17f3306` |
| 3 | `def` | [addSizeTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/declarations/addsizeterm--8db89c06eee78d797cec6ac9.md) | 44 | `declaration-track:8db89c06eee78d797cec6ac99d3770fb2348c503ccf213f3475f12c6c9ac2e25` |
| 4 | `def` | [addSizeHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/declarations/addsizehyp--ba33602d8ab608e9f54f1e19.md) | 48 | `declaration-track:ba33602d8ab608e9f54f1e19f4e21b363376cb468821d9b8c4c308b6fc18fbd6` |
| 5 | `def` | [intToBitVecPass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantd7c70027ec9f8928499eaf9438255bb96b839c086e851030b7e18fd8fa9655ed.lean/declarations/inttobitvecpass--f328dbfa690058cfb0d71007.md) | 53 | `declaration-track:f328dbfa690058cfb0d7100704afc3f4812d2adf0134beb11c708f1eda4ea592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
