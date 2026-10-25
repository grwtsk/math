# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14def363fa6a67560dce6e7c3f11464bd5e6b003",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14def363fa6a67560dce6e7c3f11464bd5e6b003`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean.json)

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
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/declarations/iter--01b829285a13b7a6c5836bd7.md) | 28 | `declaration-track:01b829285a13b7a6c5836bd771483d49e8236e54da22f1599dd4bc2aa0cd8f49` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/declarations/keysiter--5feffa17482db17407db8aca.md) | 44 | `declaration-track:5feffa17482db17407db8aca9a42a4e8bf60f86226f817d51811a95d774f736d` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/declarations/valuesiter--c30943c45fb425f77707e2a7.md) | 59 | `declaration-track:c30943c45fb425f77707e2a75fb698d6e92ea316fe2cfbb0ec6b132e0cdeee8c` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/declarations/tolist-iter--d8b583ef340498bba240695e.md) | 64 | `result-track:d8b583ef340498bba240695ecd5e7b84d9c82e08e48fbca2d8ec4c5927e3c3e3` |
| 5 | `theorem` | [keysIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/declarations/keysiter-tolist--1da4b5b857a3382d47e24bb5.md) | 68 | `result-track:1da4b5b857a3382d47e24bb577a618901d064b7cc59bc0523ea160f503105f07` |
| 6 | `theorem` | [valuesIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6.lean/declarations/valuesiter-tolist--52d513dcad08509489de72e9.md) | 72 | `result-track:52d513dcad08509489de72e9cdfb934e7040313827dff8eab3ef60687c8c9fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
