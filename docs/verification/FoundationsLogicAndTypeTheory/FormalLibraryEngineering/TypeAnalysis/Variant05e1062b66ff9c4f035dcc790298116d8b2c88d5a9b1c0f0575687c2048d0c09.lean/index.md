# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeAnalysis.Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea4897356e4a3757b6ff8284364176eedcc78261",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea4897356e4a3757b6ff8284364176eedcc78261`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isSupportedMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/declarations/issupportedmatch--43f02ba6e246d31f270999d7.md) | 34 | `declaration-track:43f02ba6e246d31f270999d70e48ba02010eb2bc85083ffddd9d57ce3402e4f2` |
| 2 | `def` | [builtinTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/declarations/builtintypes--ef6fd9b8927cced3330a2dda.md) | 122 | `declaration-track:ef6fd9b8927cced3330a2dda000b2baed91cce3e328de9f10860db7ce85e87a9` |
| 3 | `def` | [isBuiltIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/declarations/isbuiltin--a30332cc822acdb519b55e20.md) | 128 | `declaration-track:a30332cc822acdb519b55e202d6927dd3f0ab6ac0a80ac94dfe0ec105af0d80b` |
| 4 | `def` | [addDefaultTypeAnalysisLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/declarations/adddefaulttypeanalysislemmas--50e342087d6fcb10d1e67209.md) | 130 | `declaration-track:50e342087d6fcb10d1e6720933612368a9d78253cb080026a2dddf778ba05d6a` |
| 5 | `def` | [typeAnalysisPass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant05e1062b66ff9c4f035dcc790298116d8b2c88d5a9b1c0f0575687c2048d0c09.lean/declarations/typeanalysispass--d2abaf1382fc7a731b7ef7ea.md) | 143 | `declaration-track:d2abaf1382fc7a731b7ef7ea4fd2a1d628ba258d3173d13250fc63923f362264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
