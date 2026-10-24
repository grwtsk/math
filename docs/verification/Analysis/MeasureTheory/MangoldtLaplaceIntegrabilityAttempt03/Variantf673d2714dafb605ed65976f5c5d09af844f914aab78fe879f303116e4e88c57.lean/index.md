# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt03.Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81ee3e398079a8b2f776f1be0c83d3099eedfa50",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81ee3e398079a8b2f776f1be0c83d3099eedfa50`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/mangoldtlogprefix-measurable--720ce71260f1e8ca07cf9881.md) | 18 | `result-track:720ce71260f1e8ca07cf988136611cfee0278f95f0a6e06da2faf70166770ae3` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/mangoldtlogerror-measurable--4c9f286760055a8898ca14b6.md) | 22 | `result-track:4c9f286760055a8898ca14b63a74086d063e7b04fb7e71b435f9013248caac3f` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/centeredmangoldterror-measurable--489fa73a774f94d694c7ddc5.md) | 26 | `result-track:489fa73a774f94d694c7ddc59d8bb4cd8bbace6c849558e50f28853565de8d1a` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/centeredmangoldterror-bound--56fe1fcca2cee1e17cba48cb.md) | 31 | `result-track:56fe1fcca2cee1e17cba48cb81c7098f462545e88d0288d8ccb350440b6ef2d2` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/centeredmangoldterror-laplace-integrable--931d721bf5e5133244c477b5.md) | 37 | `result-track:931d721bf5e5133244c477b5f108f7dd0dfd3fe7ef8b71c1178d7fdf0f8e6d86` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/mangoldtlogerror-laplace-integrable--47dc1cfab0b6fdffd952255c.md) | 59 | `result-track:47dc1cfab0b6fdffd952255c7e213bfe95cd04a31dc90200e26e2038c5a52ea4` |
| 7 | `theorem` | [linear_exponential_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/linear-exponential-integrable--09cc30b0018fc05052efd171.md) | 71 | `result-track:09cc30b0018fc05052efd17145d23b17e419f071385decbc73d1da04feb222e3` |
| 8 | `theorem` | [linear_complex_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/linear-complex-laplace-integrable--ab6ed3e2cd092c5061752218.md) | 78 | `result-track:ab6ed3e2cd092c5061752218119ad7720dd5be09354a6f0dc5330b4a4774df2d` |
| 9 | `theorem` | [mangoldtLogPrefix_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/mangoldtlogprefix-laplace-integrable--33fc923b984b893af295bf92.md) | 92 | `result-track:33fc923b984b893af295bf922fff57261adee19145f33dbe33b4e91780e0060d` |
| 10 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt03/Variantf673d2714dafb605ed65976f5c5d09af844f914aab78fe879f303116e4e88c57.lean/declarations/centeredmangoldterror-below-first-atom--59f6c8a5db23b121463a6bd4.md) | 102 | `result-track:59f6c8a5db23b121463a6bd4100f87e494feaefc770f9f573fe145ab74225c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
