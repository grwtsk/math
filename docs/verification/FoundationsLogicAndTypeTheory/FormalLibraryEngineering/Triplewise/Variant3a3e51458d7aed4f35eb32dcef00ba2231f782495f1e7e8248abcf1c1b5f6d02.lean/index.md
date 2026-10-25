# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Triplewise.Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95d7f2d45eabc6051a045f6bebae20b0f1302c13",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95d7f2d45eabc6051a045f6bebae20b0f1302c13`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Triplewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise--a9d8c56a708eb0d72c8b6db6.md) | 34 | `declaration-track:a9d8c56a708eb0d72c8b6db62e13bf6c96ef07cc7e03517ed2068f1cc2bd6e16` |
| 2 | `lemma` | [triplewise_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-cons--1748b6495157e9973b173807.md) | 42 | `result-track:1748b6495157e9973b173807256435d1f9a29222c3ff0cebaabf17f0de8a199d` |
| 3 | `lemma` | [triplewise_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-singleton--13c684236e4e9041794faec4.md) | 47 | `result-track:13c684236e4e9041794faec403e846dfbff01d3de839c3a345a59e3338640a84` |
| 4 | `lemma` | [triplewise_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-pair--fcbfd7057462e0463bd5144a.md) | 50 | `result-track:fcbfd7057462e0463bd5144aa3355ff764fc8ccf369a8591890fa0e498aa6835` |
| 5 | `lemma` | [triplewise_triple](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-triple--94a0003146fe4d6b3d0f0433.md) | 55 | `result-track:94a0003146fe4d6b3d0f043390e2975107cd0250a985d70c71a2540cc5098d1a` |
| 6 | `lemma` | [Triplewise.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-imp--7d4eaf4e42c652889dd3aafa.md) | 58 | `result-track:7d4eaf4e42c652889dd3aafab64767d23cd761f75431a53e6fe3a60e3e8340c3` |
| 7 | `lemma` | [triplewise_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-map--642621cbcdb4f6c5c50f8776.md) | 64 | `result-track:642621cbcdb4f6c5c50f8776247337ae380e888299d17797dafee73265a56ff3` |
| 8 | `lemma` | [Triplewise.of_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-of-map--de313c557cde01d775cbc939.md) | 70 | `result-track:de313c557cde01d775cbc9390f9e9cbcf9d37cefc226f409f855a88f0dc75e7c` |
| 9 | `lemma` | [Triplewise.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-map--7f7a6fd28cbdcd8291360fc5.md) | 76 | `result-track:7f7a6fd28cbdcd8291360fc5ca7faa1aba1b1f0ece7d0b18568befb9c39e1c32` |
| 10 | `lemma` | [triplewise_iff_getElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-iff-getelem--45c9433cf8f034e50b1fcf01.md) | 80 | `result-track:45c9433cf8f034e50b1fcf018ad43724b08d73f27a606fe8081209d2dbea0d6c` |
| 11 | `lemma` | [triplewise_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-append--5e5e0011806f46c7b664e28a.md) | 100 | `result-track:5e5e0011806f46c7b664e28af5961db9909baa6d1c0a7661457ebe01ceff71d6` |
| 12 | `lemma` | [triplewise_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Triplewise/Variant3a3e51458d7aed4f35eb32dcef00ba2231f782495f1e7e8248abcf1c1b5f6d02.lean/declarations/triplewise-reverse--92449159dd22e233995784d7.md) | 108 | `result-track:92449159dd22e233995784d7887dd31898b5dd6a90460e210ab4633f6e70d75c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
