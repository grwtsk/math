# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Poisson.Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "562e8e30e8de3fc293cd138d548b74b7cacbf8a0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `562e8e30e8de3fc293cd138d548b74b7cacbf8a0`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poissonPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/poissonpmfreal--e975456e2b30ebbd6c38c147.md) | 42 | `declaration-track:e975456e2b30ebbd6c38c147239489f18fd1c0483df2b1869e63da042653398c` |
| 2 | `lemma` | [poissonPMFRealSum](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/poissonpmfrealsum--984fed497287a0f73a449974.md) | 44 | `result-track:984fed497287a0f73a449974f8507b7ee37f3050b11023bcff6c0bde1f7f1d64` |
| 3 | `lemma` | [poissonPMFReal_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/poissonpmfreal-pos--388b423c1f7f4cde78f20c77.md) | 57 | `result-track:388b423c1f7f4cde78f20c777c1a54a4160e26fbec6e85da119981bb8a5457b5` |
| 4 | `lemma` | [poissonPMFReal_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/poissonpmfreal-nonneg--0a481af93b8d84fb11ee199e.md) | 61 | `result-track:0a481af93b8d84fb11ee199e3c4cfb66aaa86872d3a414a2f9afd34cbb0ab529` |
| 5 | `def` | [poissonPMF](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/poissonpmf--3ce6202b53e66cc490929cf4.md) | 67 | `declaration-track:3ce6202b53e66cc490929cf4586a4e4bcffbc8653aef5236b7649ea5287fcc2a` |
| 6 | `lemma` | [measurable_poissonPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/measurable-poissonpmfreal--3b6c07c2415307361dd9aff0.md) | 75 | `result-track:3b6c07c2415307361dd9aff010760c8287dfaedeeea8f66e02c9b59922e7a21f` |
| 7 | `lemma` | [stronglyMeasurable_poissonPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/stronglymeasurable-poissonpmfreal--38ff4026fcf93ee4effbcbe1.md) | 78 | `result-track:38ff4026fcf93ee4effbcbe15dfbef1b5b36ad951a17ce1238106dd91d105714` |
| 8 | `def` | [poissonMeasure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/poissonmeasure--6b17e0c2e69f5daaab6b45a0.md) | 85 | `declaration-track:6b17e0c2e69f5daaab6b45a05abf86fcf104e8542917e5f6ecca5d912cd5a0a4` |
| 9 | `instance` | [isProbabilityMeasurePoisson](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variante8b271e2aa07c7e431e65f4465360d6176e0787c7136b3106b3cbbfe14378e79.lean/declarations/isprobabilitymeasurepoisson--aea4e7dac61ef2f79f68c50e.md) | 87 | `declaration-track:aea4e7dac61ef2f79f68c50ec6fda0ef5ac683b7e45ad6b9dff8c45e0bbe0d05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
