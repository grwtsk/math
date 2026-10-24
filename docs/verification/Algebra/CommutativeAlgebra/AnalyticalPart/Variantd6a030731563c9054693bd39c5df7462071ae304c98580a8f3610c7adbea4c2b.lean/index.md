# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AnalyticalPart.Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7ab8e09a35052e4146fb6fd858fb5284a2ef94",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7ab8e09a35052e4146fb6fd858fb5284a2ef94`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.SumIteratedDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_cexp_mul_sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/hasderivat-cexp-mul-sumideriv--f16a54e2cdbdb9a7ef3981f9.md) | 27 | `result-track:f16a54e2cdbdb9a7ef3981f9f023c838014fa97b7b6d23816c7d3227cc5b89be` |
| 2 | `theorem` | [integral_exp_mul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/integral-exp-mul-eval--126b2a3291a1e3682706c075.md) | 38 | `result-track:126b2a3291a1e3682706c0751dfd481069f9522c9f505c506217a7f11cf8c365` |
| 3 | `def` | [P](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/p--3f8cdcaff2fa056b38c08fee.md) | 52 | `declaration-track:3f8cdcaff2fa056b38c08feedf0501b15f6f6bc6ca58134e0f54901b8219149a` |
| 4 | `theorem` | [P_eq_integral_exp_mul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/p-eq-integral-exp-mul-eval--aceb8fd0ecc35de081feb63d.md) | 55 | `result-track:aceb8fd0ecc35de081feb63dc9d1a8ccae6ec1445322d06ce694638d96bc5c36` |
| 5 | `theorem` | [P_le_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/p-le-aux--e6557e0564cc0c828d2373c6.md) | 65 | `result-track:e6557e0564cc0c828d2373c6f91c9b62fda4e5824882c67e049af318318d81ea` |
| 6 | `theorem` | [P_le](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/p-le--d165b88552875e9ee00b1d45.md) | 92 | `result-track:d165b88552875e9ee00b1d45440baefd36ae95f17f7bbe2330d31b718cf55193` |
| 7 | `theorem` | [exp_polynomial_approx_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/exp-polynomial-approx-aux--5acd3d2707f36988be7aab1e.md) | 114 | `result-track:5acd3d2707f36988be7aab1ed0bfa5a607624eab8fad306451c34bdc64575713` |
| 8 | `theorem` | [exp_polynomial_approx](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/declarations/exp-polynomial-approx--0a3f0650c4219bf045a63257.md) | 156 | `result-track:0a3f0650c4219bf045a63257f5bc71bb77855d227f68023617d2c7c0813d230b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
