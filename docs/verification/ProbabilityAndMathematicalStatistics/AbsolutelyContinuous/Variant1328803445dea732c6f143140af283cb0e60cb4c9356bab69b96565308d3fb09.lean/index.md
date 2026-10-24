# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.AbsolutelyContinuous.Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a94bff461d59a822153daad428e27f06c92d7b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a94bff461d59a822153daad428e27f06c92d7b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.RadonNikodym` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MutuallySingular.compProd_of_right](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/declarations/mutuallysingular-compprod-of-right--3758600d1a6b6a659526ab02.md) | 46 | `result-track:3758600d1a6b6a659526ab02da9b4c1f105826999a1452cd2802ae0c4f6f7851` |
| 2 | `lemma` | [MutuallySingular.compProd_of_right'](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/declarations/mutuallysingular-compprod-of-right--929efeabccd122c0acbbffe2.md) | 65 | `result-track:929efeabccd122c0acbbffe2b70261e76e4554224003e1f21ff9b2caac8d19f3` |
| 3 | `lemma` | [mutuallySingular_compProd_right_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/declarations/mutuallysingular-compprod-right-iff--c759756bbb3dc97707c1420d.md) | 70 | `result-track:c759756bbb3dc97707c1420d711eb6b0cfa7f8b005ed6f9309a25e1976e3d73f` |
| 4 | `lemma` | [AbsolutelyContinuous.kernel_of_compProd](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/declarations/absolutelycontinuous-kernel-of-compprod--2aa463d158b83399f4d63ebe.md) | 75 | `result-track:2aa463d158b83399f4d63ebe38e9a166d692388a5c6c7545d6ed58647ecbfadb` |
| 5 | `lemma` | [absolutelyContinuous_compProd_iff'](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/declarations/absolutelycontinuous-compprod-iff--1d947b958eae2d70783a31ff.md) | 86 | `result-track:1d947b958eae2d70783a31fff11e0c278dfacc57962a77cfe2058d49b57343e0` |
| 6 | `lemma` | [absolutelyContinuous_compProd_right_iff](../../../../mathematics/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/declarations/absolutelycontinuous-compprod-right-iff--ba8329a9d9da4c7dda1b461d.md) | 90 | `result-track:ba8329a9d9da4c7dda1b461d750b16abdfd27d451a2c42bb18c75eaf68801e35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
