# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Independence.Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c25621c655d4defe5b169c81ac288b58cd0c4039",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c25621c655d4defe5b169c81ac288b58cd0c4039`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/independent--50835be1d414e7fe6531ff01.md) | 39 | `declaration-track:50835be1d414e7fe6531ff01939fe3053de08de2290789e179d161ee3f91d35b` |
| 2 | `theorem` | [independent_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/independent-iff--b3d5799a21a2d7ae6fc39cdd.md) | 45 | `result-track:b3d5799a21a2d7ae6fc39cddc33eb72b83b22a2f8ea88bb5c1c2d72f32cfa947` |
| 3 | `theorem` | [independent_iff_iSupIndep](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/independent-iff-isupindep--9a35fb322efce9ac069d3c42.md) | 59 | `result-track:9a35fb322efce9ac069d3c42cc316bc9b1edcb5a20bc95e277f552fa1df4dc61` |
| 4 | `inductive` | [Dependent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/dependent--28e140894294466843b7b5ae.md) | 74 | `declaration-track:28e140894294466843b7b5aeba9c86d8c92c17d99c3ac21ec6cbdcf643a9453d` |
| 5 | `theorem` | [dependent_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/dependent-iff--05cbbb9a0d6f2f758c561853.md) | 80 | `result-track:05cbbb9a0d6f2f758c56185339852be924d53011e91bdd8b2f5551d89bafebd7` |
| 6 | `theorem` | [dependent_iff_not_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/dependent-iff-not-independent--d2c406b66032171bf58e92e8.md) | 93 | `result-track:d2c406b66032171bf58e92e8f45c903f69bfdcf62ed3b940f66d1f1a2723d9b7` |
| 7 | `theorem` | [independent_iff_not_dependent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/independent-iff-not-dependent--0e097024caaba6ec814d9a3a.md) | 97 | `result-track:0e097024caaba6ec814d9a3ae342b776e86880e52b31108c5d2a656974ddfe0b` |
| 8 | `theorem` | [dependent_pair_iff_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/dependent-pair-iff-eq--992bd4c7a30c97ab3233a33e.md) | 102 | `result-track:992bd4c7a30c97ab3233a33e75b54f1015757533d26a0a56a43f4495c75eb678` |
| 9 | `theorem` | [independent_pair_iff_ne](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant5f1b7291d5fee8699c5a7c12082131b1c149cdac3edbcdbd391cfcf9f6b5a8d7.lean/declarations/independent-pair-iff-ne--551282c5f178a03da26aa1e7.md) | 111 | `result-track:551282c5f178a03da26aa1e7d5db66827433a98451b7bef544488d5bb9a4dbd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
