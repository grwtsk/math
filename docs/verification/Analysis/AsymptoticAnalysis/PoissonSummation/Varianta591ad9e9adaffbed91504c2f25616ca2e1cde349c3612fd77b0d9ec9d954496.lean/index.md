# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83a248e8ac8228e59429f41d51b72a9b373575dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83a248e8ac8228e59429f41d51b72a9b373575dd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.PoissonSummation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rexp_neg_quadratic_isLittleO_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/rexp-neg-quadratic-islittleo-rpow-attop--a49a2a77874079dc5020ac16.md) | 34 | `result-track:a49a2a77874079dc5020ac169e2b6523af0763d12c81e28f8b46b8af8450f9f1` |
| 2 | `lemma` | [cexp_neg_quadratic_isLittleO_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/cexp-neg-quadratic-islittleo-rpow-attop--44f6f40295c4817b950471ed.md) | 46 | `result-track:44f6f40295c4817b950471edc73e07f54838d617eaa2c2086723306f8b1f6129` |
| 3 | `lemma` | [cexp_neg_quadratic_isLittleO_abs_rpow_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/cexp-neg-quadratic-islittleo-abs-rpow-cocompact--19e03325166c58d3492e5542.md) | 53 | `result-track:19e03325166c58d3492e554266ed4bc2a14b1b837a794d479cf03ac098134de0` |
| 4 | `theorem` | [tendsto_rpow_abs_mul_exp_neg_mul_sq_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/tendsto-rpow-abs-mul-exp-neg-mul-sq-cocompact--dd70fa8a47a4374c384be29d.md) | 66 | `result-track:dd70fa8a47a4374c384be29d0cba68a10c070d531ca7314e5a2ac6fa59d20969` |
| 5 | `theorem` | [isLittleO_exp_neg_mul_sq_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/islittleo-exp-neg-mul-sq-cocompact--7b140e1d91ae9ee21656b6d4.md) | 76 | `result-track:7b140e1d91ae9ee21656b6d419fe3e495df6dbb242179a13fc9e3aa95b6746e8` |
| 6 | `theorem` | [Complex.tsum_exp_neg_quadratic](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/complex-tsum-exp-neg-quadratic--a3a709d8a82ead39a027db33.md) | 84 | `result-track:a3a709d8a82ead39a027db33e90a7f4ae14ab190ff4636eec860ef9be2d854e0` |
| 7 | `theorem` | [Complex.tsum_exp_neg_mul_int_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/complex-tsum-exp-neg-mul-int-sq--0b2be65e90b2961f9cf49663.md) | 120 | `result-track:0b2be65e90b2961f9cf49663c7a8d036d4b87630d34bcb067c0254c85372b7b2` |
| 8 | `theorem` | [Real.tsum_exp_neg_mul_int_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Varianta591ad9e9adaffbed91504c2f25616ca2e1cde349c3612fd77b0d9ec9d954496.lean/declarations/real-tsum-exp-neg-mul-int-sq--69ff041bd5643809df8d097c.md) | 125 | `result-track:69ff041bd5643809df8d097ca6d9d648c2f7612528f4b15a5c008fa5b47d5660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
