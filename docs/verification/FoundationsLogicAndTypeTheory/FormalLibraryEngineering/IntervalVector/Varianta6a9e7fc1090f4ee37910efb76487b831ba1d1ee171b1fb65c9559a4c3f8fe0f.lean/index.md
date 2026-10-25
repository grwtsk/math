# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalVector.Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5188efce7de78bc506024304846e3b471f3116b3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5188efce7de78bc506024304846e3b471f3116b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalVector` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relu](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/relu--e750473eb3ce196588398b04.md) | 69 | `declaration-track:e750473eb3ce196588398b04edd9d62674b49d98ebc0650d189857138603b8d8` |
| 2 | `theorem` | [mem_relu](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/mem-relu--d16a547868130edb758f66b5.md) | 77 | `result-track:d16a547868130edb758f66b5417f7d9fae61d86950baf063891ecd0fef13d35d` |
| 3 | `def` | [reluVector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/reluvector--62407b76aca70b90fb53aeb3.md) | 96 | `declaration-track:62407b76aca70b90fb53aeb3b42dc8b851a89f5b18fbbe34b271e85e6ecba66b` |
| 4 | `theorem` | [mem_reluVector_component](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/mem-reluvector-component--0e13888f0eea17005ae9708c.md) | 100 | `result-track:0e13888f0eea17005ae9708cb6e01bec6df198891eccf906f6aaf1c63f771c05` |
| 5 | `def` | [sigmoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/sigmoid--d88f4173f0ccd4841e9d9f7a.md) | 108 | `declaration-track:d88f4173f0ccd4841e9d9f7ab855dc5dd43b422593ff56aba1fae7362bbee33b` |
| 6 | `def` | [Real.sigmoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/real-sigmoid--a3a478bc220d8728c9f80ba7.md) | 114 | `declaration-track:a3a478bc220d8728c9f80ba7f30290e90ed4702e48f92cb62547b4d612f15c53` |
| 7 | `theorem` | [Real.sigmoid_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/real-sigmoid-pos--536dacfd4590f6816a2f0b54.md) | 117 | `result-track:536dacfd4590f6816a2f0b542bfa7a1404c0a40c7b2c2e9556ac05731337f390` |
| 8 | `theorem` | [Real.sigmoid_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/real-sigmoid-lt-one--0a239de16c67d2c4c41c80be.md) | 122 | `result-track:0a239de16c67d2c4c41c80be5ff5be926ce26b14912f40407e716f3407120665` |
| 9 | `theorem` | [mem_sigmoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/mem-sigmoid--0a6fdbc2c4bc544abe517bc2.md) | 128 | `result-track:0a6fdbc2c4bc544abe517bc272f5b2ab71f6d82ca915c07f56b3ce5240f89f9e` |
| 10 | `def` | [sigmoidVector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/declarations/sigmoidvector--b96751772c67458211cba7c4.md) | 135 | `declaration-track:b96751772c67458211cba7c412d5f084fbe8a4dc792df4483ce0a6f5cb50b182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
