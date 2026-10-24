# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SumIteratedDerivative.Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "358fb3f718b2e9b291881b22e0ba166d78dd0759",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `358fb3f718b2e9b291881b22e0ba166d78dd0759`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv--e8cc60a06ae7bd6c87c12d7d.md) | 66 | `declaration-track:e8cc60a06ae7bd6c87c12d7d2c57c2ff6bdbb61d9fb0912808e4b1a53923e29c` |
| 2 | `theorem` | [sumIDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-apply--2f8dc35b414e26e6d5346a53.md) | 69 | `result-track:2f8dc35b414e26e6d5346a53ddc2ac1c9848bacea3520eda224c3015cac15cb5` |
| 3 | `theorem` | [sumIDeriv_apply_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-apply-of-lt--2cd153f0450c550a3bc638cc.md) | 74 | `result-track:2cd153f0450c550a3bc638cc32c1031f8af6e52349358f23a73a6bfd2955c460` |
| 4 | `theorem` | [sumIDeriv_apply_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-apply-of-le--bfbd1a3012c5f7bc73f6e74e.md) | 79 | `result-track:bfbd1a3012c5f7bc73f6e74ef55026bd69d5c4b62eaa4177445696c22d5397a9` |
| 5 | `theorem` | [sumIDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-c--7024692087dffafe75df9589.md) | 85 | `result-track:7024692087dffafe75df958947822432e0d2305f6755be8ea37e106091a389a6` |
| 6 | `theorem` | [sumIDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-x--54feedfc0e1fd8fcabe1c30c.md) | 89 | `result-track:54feedfc0e1fd8fcabe1c30c6b0390ac14e310a650df4eda199e155688e6336b` |
| 7 | `theorem` | [sumIDeriv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-map--2f6bba83825d98f4d5c0f0ab.md) | 94 | `result-track:2f6bba83825d98f4d5c0f0ab44da9a063b1868db130cd9003e378a7ac166612b` |
| 8 | `theorem` | [sumIDeriv_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-derivative--d8e0729880e2244dd161156c.md) | 101 | `result-track:d8e0729880e2244dd161156cfeca51011a452e17b8fe413048839f370addfd52` |
| 9 | `theorem` | [sumIDeriv_eq_self_add](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/sumideriv-eq-self-add--bb8a9ad32f9cdf097040a9b7.md) | 106 | `result-track:bb8a9ad32f9cdf097040a9b708f2e1902485d87b9d0873808e7af77859a92a96` |
| 10 | `theorem` | [exists_iterate_derivative_eq_factorial_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/exists-iterate-derivative-eq-factorial-smul--0a89f4c1546debd766b48788.md) | 112 | `result-track:0a89f4c1546debd766b48788a4fea1582c23175e4966230a1f1da1824ca496c7` |
| 11 | `theorem` | [aeval_iterate_derivative_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/aeval-iterate-derivative-of-lt--ca64ad3f341b3e3d0e3a81f9.md) | 127 | `result-track:ca64ad3f341b3e3d0e3a81f9d02b28a6e4253986f7ba1b69c2a3dafa7d92a237` |
| 12 | `theorem` | [aeval_iterate_derivative_self](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/aeval-iterate-derivative-self--511873c61429cc70e4545573.md) | 139 | `result-track:511873c61429cc70e454557386aac6f372a4c3aadf04bccd71b19467ff19480e` |
| 13 | `theorem` | [aeval_iterate_derivative_of_ge](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/aeval-iterate-derivative-of-ge--2f3ec32c0cb388716c403473.md) | 160 | `result-track:2f3ec32c0cb388716c4034732868321f3c0f3ea3a33775a04f03a5a0776b1e10` |
| 14 | `theorem` | [aeval_sumIDeriv_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/aeval-sumideriv-eq-eval--a4c7649bd13a20703fcf2a0d.md) | 169 | `result-track:a4c7649bd13a20703fcf2a0dea1d32f3aac1ce74ccbc859da90907f8b70d59d5` |
| 15 | `theorem` | [aeval_sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/aeval-sumideriv--98b9ac3a7c764ad4fb9be713.md) | 173 | `result-track:98b9ac3a7c764ad4fb9be713a90dbd09c15ce8de872b29d8ee48350763a31728` |
| 16 | `theorem` | [aeval_sumIDeriv_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/aeval-sumideriv-of-pos--c4b28196d36bd02f2da62267.md) | 200 | `result-track:c4b28196d36bd02f2da6226733affa7ff25e00b7d4fdd3b3f374d30cfc929cd9` |
| 17 | `theorem` | [eval_sumIDeriv_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5ad6bbb7653a8d4d33486266f0cfcdb5454914fc60975d3e8f0d92accebf3901.lean/declarations/eval-sumideriv-of-pos--e45bfd1eb889ed14e41386af.md) | 261 | `result-track:e45bfd1eb889ed14e41386af9055a726fa60695918f1e0b4670ce07e516bacd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
