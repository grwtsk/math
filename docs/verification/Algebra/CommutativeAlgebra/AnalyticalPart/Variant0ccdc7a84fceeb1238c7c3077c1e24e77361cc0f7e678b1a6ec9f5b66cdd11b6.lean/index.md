# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AnalyticalPart.Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b11f9b099cbf989f55b4cc46a74e50a51e4238f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b11f9b099cbf989f55b4cc46a74e50a51e4238f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.SumIteratedDerivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_cexp_mul_sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/hasderivat-cexp-mul-sumideriv--c9c72f292979895d43aacc65.md) | 35 | `result-track:c9c72f292979895d43aacc650143d034dcc2d1d7298c63a77697b32bbe6d2b4a` |
| 2 | `theorem` | [integral_exp_mul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/integral-exp-mul-eval--1e640a881d9929966cadc803.md) | 46 | `result-track:1e640a881d9929966cadc803ad55cb41acb2d058a584ce3b411612ab284b0241` |
| 3 | `def` | [P](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/p--182fe6ec9da9511c69b28eda.md) | 60 | `declaration-track:182fe6ec9da9511c69b28eda0fdbb460f9a5b5d7b37568b261a7050443b8eb77` |
| 4 | `theorem` | [P_eq_integral_exp_mul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/p-eq-integral-exp-mul-eval--a888187c4dd708d9007f5341.md) | 63 | `result-track:a888187c4dd708d9007f5341695763475b79dbee2f1c470a0438162c8968b029` |
| 5 | `theorem` | [P_le_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/p-le-aux--1b55b7db84e3a68751bcce23.md) | 73 | `result-track:1b55b7db84e3a68751bcce23f5bcc54c244e6797e41d08adeb482d8252e35bfc` |
| 6 | `theorem` | [P_le](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/p-le--46b04de103b916f6a2f2de59.md) | 100 | `result-track:46b04de103b916f6a2f2de59718bbff254e28fbb2e43c3694f06a696afd4e462` |
| 7 | `theorem` | [exp_polynomial_approx_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/exp-polynomial-approx-aux--f7fcbad1b9004e395578a192.md) | 122 | `result-track:f7fcbad1b9004e395578a1929e113ee80827a45054892ac9d48277a3ecafa70c` |
| 8 | `theorem` | [exp_polynomial_approx](../../../../../mathematics/Algebra/CommutativeAlgebra/AnalyticalPart/Variant0ccdc7a84fceeb1238c7c3077c1e24e77361cc0f7e678b1a6ec9f5b66cdd11b6.lean/declarations/exp-polynomial-approx--18480cb7caee512d6a708c22.md) | 164 | `result-track:18480cb7caee512d6a708c223520870c230e75b874075fa02aa0406b0017c7c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
