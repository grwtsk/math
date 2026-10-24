# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Indicator.Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d80f2a17b233c16cb76fcafd2ad9bdbe2a9bdae",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d80f2a17b233c16cb76fcafd2ad9bdbe2a9bdae`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [condExp_ae_eq_restrict_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/declarations/condexp-ae-eq-restrict-zero--a16876a8975ae4c09280a9ac.md) | 36 | `result-track:a16876a8975ae4c09280a9ac2ca890ffc1b7a4ff357efc1cebb2185235f6d359` |
| 2 | `theorem` | [condExp_indicator_aux](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/declarations/condexp-indicator-aux--6d41e8741a7de3c944573cc8.md) | 63 | `result-track:6d41e8741a7de3c944573cc82c41670488ef1f8910fbdcb8867ede653f1ce657` |
| 3 | `theorem` | [condExp_indicator](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/declarations/condexp-indicator--bd54bf954ffa236bc730706a.md) | 76 | `result-track:bd54bf954ffa236bc730706a6bd599c54092ac1a938d462fce1b7bd1fcfa8a94` |
| 4 | `theorem` | [condExp_restrict_ae_eq_restrict](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/declarations/condexp-restrict-ae-eq-restrict--99bf7428dd8e733c00ad6e2f.md) | 116 | `result-track:99bf7428dd8e733c00ad6e2f5c54284a9f960de9c1f3a37fcfeab3522b07d0f7` |
| 5 | `theorem` | [condExp_ae_eq_restrict_of_measurableSpace_eq_on](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/declarations/condexp-ae-eq-restrict-of-measurablespace-eq-on--161b941591be22a43f51b7f4.md) | 147 | `result-track:161b941591be22a43f51b7f4d479989447af9eaa62c559e4698053a6826b0ce2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
