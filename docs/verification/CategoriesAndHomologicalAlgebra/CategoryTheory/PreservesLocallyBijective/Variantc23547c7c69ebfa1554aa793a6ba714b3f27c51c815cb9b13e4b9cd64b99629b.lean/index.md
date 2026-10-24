# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLocallyBijective.Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24434b41bb5c17200a7fb7bb3844051d892eec32",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24434b41bb5c17200a7fb7bb3844051d892eec32`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocallyInjective_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/declarations/islocallyinjective-whisker--7cb6917b8a34e021063365f4.md) | 31 | `result-track:7cb6917b8a34e021063365f4a850b23f40c3f7055ef6945488d1bf4074676dd1` |
| 2 | `lemma` | [isLocallyInjective_of_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/declarations/islocallyinjective-of-whisker--464ac5e22dfa0f415bde2433.md) | 35 | `result-track:464ac5e22dfa0f415bde243356af05610b0312d0f4f239edf6375d7c43a748ff` |
| 3 | `lemma` | [isLocallyInjective_whisker_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/declarations/islocallyinjective-whisker-iff--18953ef4456a56e1a565d185.md) | 51 | `result-track:18953ef4456a56e1a565d185f072fc29d9f60dd2fdae6cb03f503b65bee21496` |
| 4 | `lemma` | [isLocallySurjective_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/declarations/islocallysurjective-whisker--b7c1ad492b9bf032ff2e5f69.md) | 56 | `result-track:b7c1ad492b9bf032ff2e5f69bad56e408fcd48f50d5a39aa96996288ffe78e57` |
| 5 | `lemma` | [isLocallySurjective_of_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/declarations/islocallysurjective-of-whisker--54713da72c85c3b6e0c75d25.md) | 60 | `result-track:54713da72c85c3b6e0c75d25d076134ef2552f5a79e1b9cfc4c1e2e94dd780f7` |
| 6 | `lemma` | [isLocallySurjective_whisker_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variantc23547c7c69ebfa1554aa793a6ba714b3f27c51c815cb9b13e4b9cd64b99629b.lean/declarations/islocallysurjective-whisker-iff--9ab60438dde06bc5a6795fbb.md) | 74 | `result-track:9ab60438dde06bc5a6795fbbda7bf3cadc68664eb3f761c5941face0afffcf0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
