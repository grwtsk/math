# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Chebyshev.Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "890b6d2746be78d3ac469619934dd7f2c6324afe",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `890b6d2746be78d3ac469619934dd7f2c6324afe`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Exponential` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeval_T](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/aeval-t--a6bf89da16fc7658e0911f54.md) | 37 | `result-track:a6bf89da16fc7658e0911f548731b95101112e1d1a11781e67728ec7f6aa2cc0` |
| 2 | `theorem` | [aeval_U](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/aeval-u--aa6e5ae1e11b709ff257addb.md) | 42 | `result-track:aa6e5ae1e11b709ff257addbaca7d5dfa2ba14826f9c0360e26905f19e94194b` |
| 3 | `theorem` | [algebraMap_eval_T](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/algebramap-eval-t--74f7f15ce777d15cc2e80c31.md) | 47 | `result-track:74f7f15ce777d15cc2e80c31c65ced454bbc29266f80740e90177067cfab0212` |
| 4 | `theorem` | [algebraMap_eval_U](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/algebramap-eval-u--f1e9a0d6b6fdeeaca2942ed9.md) | 53 | `result-track:f1e9a0d6b6fdeeaca2942ed9a4696d936b34c631d4e087e9f2777476a9bfae14` |
| 5 | `theorem` | [complex_ofReal_eval_T](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/complex-ofreal-eval-t--bf7f3e12f07094e7a1bd6087.md) | 60 | `result-track:bf7f3e12f07094e7a1bd6087c2b52d5201f9f81b559868b446a505c70cf704e6` |
| 6 | `theorem` | [complex_ofReal_eval_U](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/complex-ofreal-eval-u--5883136beab01a4c6271b9f5.md) | 66 | `result-track:5883136beab01a4c6271b9f531c6b51eebabbd0fd20413b03daabca7b86422df` |
| 7 | `theorem` | [T_complex_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/t-complex-cos--aa47d816da97d8aab2dd06a5.md) | 82 | `result-track:aa47d816da97d8aab2dd06a528835416b6b9b4af56267794a42825dd2724c782` |
| 8 | `theorem` | [U_complex_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/u-complex-cos--0b6cf6f268734f0108010430.md) | 99 | `result-track:0b6cf6f268734f0108010430f7d041c27af5e3127e17407dcd58fe94a2e95970` |
| 9 | `theorem` | [T_real_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/t-real-cos--281dc3f855797e6233d7e1f0.md) | 124 | `result-track:281dc3f855797e6233d7e1f0554465f9cedffbe54e9cc89615aea02071582df1` |
| 10 | `theorem` | [U_real_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant5736b0ef746e32452bed2505a1feed65e005705be5c13a50e76276858e9665fa.lean/declarations/u-real-cos--b48388b5383dc25103bc7bb3.md) | 130 | `result-track:b48388b5383dc25103bc7bb3d6f9f1eee8d408d6dbb4b67041861124002e806d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
