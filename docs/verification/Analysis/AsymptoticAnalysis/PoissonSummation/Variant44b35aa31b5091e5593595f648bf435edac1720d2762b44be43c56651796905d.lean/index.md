# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b517a17653a101a911342b9b256504e3330d53b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b517a17653a101a911342b9b256504e3330d53b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.PoissonSummation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rexp_neg_quadratic_isLittleO_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/rexp-neg-quadratic-islittleo-rpow-attop--e5a719a34a1703c3e6018637.md) | 42 | `result-track:e5a719a34a1703c3e601863729b542ca6a35758bd18235a991a0dc9a51e16e1e` |
| 2 | `lemma` | [cexp_neg_quadratic_isLittleO_rpow_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/cexp-neg-quadratic-islittleo-rpow-attop--b911f33bc6e2fddd1ea1933c.md) | 54 | `result-track:b911f33bc6e2fddd1ea1933c4bf4d2d287362146a10fae6b9279123b6d626512` |
| 3 | `lemma` | [cexp_neg_quadratic_isLittleO_abs_rpow_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/cexp-neg-quadratic-islittleo-abs-rpow-cocompact--ad2c4763dd745d0fe4ea2cd1.md) | 61 | `result-track:ad2c4763dd745d0fe4ea2cd18658b254eae968952188ea9f185dbc1e954958a0` |
| 4 | `theorem` | [tendsto_rpow_abs_mul_exp_neg_mul_sq_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/tendsto-rpow-abs-mul-exp-neg-mul-sq-cocompact--b48a145a4707333a3f20406a.md) | 74 | `result-track:b48a145a4707333a3f20406ac1ff5db243c38cd6b8f80aa2cf4129a6397d2a13` |
| 5 | `theorem` | [isLittleO_exp_neg_mul_sq_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/islittleo-exp-neg-mul-sq-cocompact--ad05739f7a88c1407012f829.md) | 84 | `result-track:ad05739f7a88c1407012f829421cbe49dd9151c40b9698174dbf66d1c4b3bc5e` |
| 6 | `theorem` | [Complex.tsum_exp_neg_quadratic](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/complex-tsum-exp-neg-quadratic--37ed4aed9350fcfa04a52973.md) | 92 | `result-track:37ed4aed9350fcfa04a5297358220646b349ee90e308ce913239e91a0b0be9a6` |
| 7 | `theorem` | [Complex.tsum_exp_neg_mul_int_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/complex-tsum-exp-neg-mul-int-sq--bed0df8d3ebcdc129a4db053.md) | 128 | `result-track:bed0df8d3ebcdc129a4db053f1ecccbd38017d209194f46c66fba7d03b7d1ba2` |
| 8 | `theorem` | [Real.tsum_exp_neg_mul_int_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant44b35aa31b5091e5593595f648bf435edac1720d2762b44be43c56651796905d.lean/declarations/real-tsum-exp-neg-mul-int-sq--a4a58768b5da8da854d7e869.md) | 133 | `result-track:a4a58768b5da8da854d7e86966748eb181ac85f4ef17e2254eeab271b2bc0282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
