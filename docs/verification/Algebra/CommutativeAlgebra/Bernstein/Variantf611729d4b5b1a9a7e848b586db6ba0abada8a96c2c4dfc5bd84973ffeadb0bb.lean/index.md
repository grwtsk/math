# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Bernstein.Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d7d4b877c0a378359735d69f42997f43d5b60e6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d7d4b877c0a378359735d69f42997f43d5b60e6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernsteinPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/bernsteinpolynomial--b6bd654f4d1565afa6565108.md) | 59 | `declaration-track:b6bd654f4d1565afa656510894a005dc41ebef96b8ded526fa254004d4b7b7e7` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/example--2f0e157b899a22ce1b32c710.md) | 62 | `declaration-track:2f0e157b899a22ce1b32c710270a086ad574633fedf0a0014ea41c2370ae7d37` |
| 3 | `theorem` | [eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/eq-zero-of-lt--78fe76c7920846bc5f2794cd.md) | 68 | `result-track:78fe76c7920846bc5f2794cddf2542eb1f052afe99b05693d99f3dee514c2a26` |
| 4 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/map--ec28e24f2a7a40e30cb2559f.md) | 76 | `result-track:ec28e24f2a7a40e30cb2559f80671c5fd914b729630fe71d562f67e160b32580` |
| 5 | `theorem` | [flip](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/flip--1ae34ae1db4327e635da0b71.md) | 81 | `result-track:1ae34ae1db4327e635da0b717a08bd4947b1f9bbca919d5fdf4f6acb21f4f5eb` |
| 6 | `theorem` | [flip'](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/flip--775650b50070cb618d2e074e.md) | 85 | `result-track:775650b50070cb618d2e074e01f1029d12945ac8e712f4e374892c55d8867099` |
| 7 | `theorem` | [eval_at_0](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/eval-at-0--4dc15e0995f5fa0dba766b57.md) | 89 | `result-track:4dc15e0995f5fa0dba766b57aeac8d8b3650017ec87645d6f457c4bd1c147cd9` |
| 8 | `theorem` | [eval_at_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/eval-at-1--1a79922fd14ed1c77643e380.md) | 95 | `result-track:1a79922fd14ed1c77643e3807977b3c1afb65a68a2a019589fc5e9f7bc73e9ed` |
| 9 | `theorem` | [derivative_succ_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/derivative-succ-aux--0e0d13366c0451b5631beecf.md) | 103 | `result-track:0e0d13366c0451b5631beecf0f3136f5451ebe6469284a0b5c177d7ffe506ffc` |
| 10 | `theorem` | [derivative_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/derivative-succ--d655c9d3fb85269f371ae9a4.md) | 134 | `result-track:d655c9d3fb85269f371ae9a43cc9f83252fd80e65115b836e24e6b3f697a22c3` |
| 11 | `theorem` | [derivative_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/derivative-zero--2fde1a574d4bc48bfb4cde90.md) | 140 | `result-track:2fde1a574d4bc48bfb4cde90e0ee4bb1aafe007c5e35724fdef6cd924cc1726e` |
| 12 | `theorem` | [iterate_derivative_at_0_eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-at-0-eq-zero-of-lt--b5f904d941d445c620d17df1.md) | 144 | `result-track:b5f904d941d445c620d17df17d507efc077f58fe21a05ab4cd40acfec8bb11e8` |
| 13 | `theorem` | [iterate_derivative_succ_at_0_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-succ-at-0-eq-zero--c3cc39fb74e3996f6406b9fb.md) | 162 | `result-track:c3cc39fb74e3996f6406b9fbd23078170854806fd9bf599d5d3f2b1f11d78802` |
| 14 | `theorem` | [iterate_derivative_at_0](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-at-0--ea666f174a2c5271dadc9882.md) | 169 | `result-track:ea666f174a2c5271dadc9882e8d47017908c27adea6b70cf9d5d94439102bfcc` |
| 15 | `theorem` | [iterate_derivative_at_0_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-at-0-ne-zero--38150941c6e63473fe3803c7.md) | 189 | `result-track:38150941c6e63473fe3803c76962bf2642a31ed17ef81d5aa41f876697a2a519` |
| 16 | `theorem` | [iterate_derivative_at_1_eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-at-1-eq-zero-of-lt--a7045dd355b9b859e4ac455e.md) | 206 | `result-track:a7045dd355b9b859e4ac455ef95f90b678bedef78215d212e6d126f7aeb88f53` |
| 17 | `theorem` | [iterate_derivative_at_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-at-1--dbc3587816612749646901af.md) | 213 | `result-track:dbc3587816612749646901afb37d9c21f55dbb4a64d1809820c1560248fa4475` |
| 18 | `theorem` | [iterate_derivative_at_1_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/iterate-derivative-at-1-ne-zero--4ab5bb8f6d529b6427c6fe70.md) | 224 | `result-track:4ab5bb8f6d529b6427c6fe70ab69c6043343d398c3d48e2247afac48256623eb` |
| 19 | `theorem` | [linearIndependent_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/linearindependent-aux--2de3ebd73283896c56fa4e40.md) | 232 | `result-track:2de3ebd73283896c56fa4e401d165a6802def516937aa8282acbba4e594c64e2` |
| 20 | `theorem` | [linearIndependent](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/linearindependent--a389e1e8b02a4d41876e531f.md) | 272 | `result-track:a389e1e8b02a4d41876e531f612aba268c15bd07c40ec22a689eee77b2c83dcb` |
| 21 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/sum--12895f0dbc6bb8a9e7ab26ba.md) | 276 | `result-track:12895f0dbc6bb8a9e7ab26ba6d4094f25ad0ae57b5f17af237d3f973d334d5dc` |
| 22 | `theorem` | [sum_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/sum-smul--b3cebd25c91186a7a61a65ad.md) | 287 | `result-track:b3cebd25c91186a7a61a65ad48463bd2d49d5f0a5f54898476dee758d2549d8d` |
| 23 | `theorem` | [sum_mul_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/sum-mul-smul--2932c4b7aa1a3f9ae66c1c91.md) | 323 | `result-track:2932c4b7aa1a3f9ae66c1c914b5e364271bd5f089b208f17470d57fc29af6702` |
| 24 | `theorem` | [variance](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/declarations/variance--e5b3f57f965556ffed041e39.md) | 368 | `result-track:e5b3f57f965556ffed041e392f481cb77e248f34df1d7420f438825e78acbdf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
