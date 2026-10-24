# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Independence.Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f4815709644bfce5f7874e11686245d751c97c5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f4815709644bfce5f7874e11686245d751c97c5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ProjectiveSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/independent--642c345649c2970964637aaf.md) | 40 | `declaration-track:642c345649c2970964637aafff4d28857be215375d24acaa367c85cc5e0847c9` |
| 2 | `theorem` | [independent_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/independent-iff--9801c6503f2b7a693eb4d3d5.md) | 47 | `result-track:9801c6503f2b7a693eb4d3d5a95944f2d6d2a0106613cf2547a1aab013e7d76c` |
| 3 | `theorem` | [independent_iff_completeLattice_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/independent-iff-completelattice-independent--5c190254e171e9ba871dcf46.md) | 62 | `result-track:5c190254e171e9ba871dcf4632f1cea5995fb48307bb10b0e9a28217b4f3dc5b` |
| 4 | `inductive` | [Dependent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/dependent--e205f2ff880f27be78da0c4c.md) | 76 | `declaration-track:e205f2ff880f27be78da0c4c87a9c14abd338aa5f61d7e290c16af1f5c0c13ea` |
| 5 | `theorem` | [dependent_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/dependent-iff--b387d3bd25affe135e650c92.md) | 83 | `result-track:b387d3bd25affe135e650c9289a8f07f81bccebfb7199a22e12da6596c40ef83` |
| 6 | `theorem` | [dependent_iff_not_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/dependent-iff-not-independent--e3f3cabac8d65ab35e548814.md) | 97 | `result-track:e3f3cabac8d65ab35e548814ff0c797721d20ef60ded4ba4fbdbbe06b0b7e648` |
| 7 | `theorem` | [independent_iff_not_dependent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/independent-iff-not-dependent--45b608d8a24881799ac24db3.md) | 102 | `result-track:45b608d8a24881799ac24db3dd7c3c80958f0be939cd0ce685b3dcc746f5c9c0` |
| 8 | `theorem` | [dependent_pair_iff_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/dependent-pair-iff-eq--950de4c7e57ab209ea723f34.md) | 108 | `result-track:950de4c7e57ab209ea723f34c8f5bd5670fd3d4e208c1b8348cd87b657d387b4` |
| 9 | `theorem` | [independent_pair_iff_neq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant7699c008a20d5da355c85e9cce829425af5529f17559b3cbfc00ef17a8daf8e0.lean/declarations/independent-pair-iff-neq--090d304b1236430b11a2b448.md) | 118 | `result-track:090d304b1236430b11a2b4486b567d132b354f01e8f0c003bf442b007953940a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
