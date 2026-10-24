# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Bernstein.Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbddcfd110d10c01ba93454f9c9d39361a6c0d43",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbddcfd110d10c01ba93454f9c9d39361a6c0d43`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernsteinPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/bernsteinpolynomial--8dc46167c8d89a70c3b3e82a.md) | 51 | `declaration-track:8dc46167c8d89a70c3b3e82af543c687a187ae8ed7545b4c9d0495c2958e82cd` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/example--35553c27e511fd80f47035d9.md) | 54 | `declaration-track:35553c27e511fd80f47035d9962438775b77c2102fa5679a41520baaa7258d79` |
| 3 | `theorem` | [eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/eq-zero-of-lt--64036c0d41c70d3bd260e6c2.md) | 60 | `result-track:64036c0d41c70d3bd260e6c22c2c71bb64aba028206b12d2902f88293bc25aca` |
| 4 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/map--0b6911fa4c622ddb75990a9e.md) | 68 | `result-track:0b6911fa4c622ddb75990a9e04132fe65eef1c6345f45bf95583473ecb27304e` |
| 5 | `theorem` | [flip](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/flip--65f4e9dcd3391c20766cd8e8.md) | 73 | `result-track:65f4e9dcd3391c20766cd8e867320487e7e2dfffba5f630098db6ee8e7762bc0` |
| 6 | `theorem` | [flip'](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/flip--fe8936a674a808dd52df6b8a.md) | 77 | `result-track:fe8936a674a808dd52df6b8ac08b0df00534b53d2cef14c0d451de779ca69ad5` |
| 7 | `theorem` | [eval_at_0](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/eval-at-0--2fa5eec3268ad3f645914c42.md) | 81 | `result-track:2fa5eec3268ad3f645914c42ac148b9e56f8f7370780bc7c3a922a7011837d18` |
| 8 | `theorem` | [eval_at_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/eval-at-1--708ddc8f106434f52441f343.md) | 87 | `result-track:708ddc8f106434f52441f343b6f30dd983bc36d2f837e78453f54938e5033512` |
| 9 | `theorem` | [derivative_succ_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/derivative-succ-aux--fad63820a0ab0771b55f61ee.md) | 95 | `result-track:fad63820a0ab0771b55f61ee305fd85eaefdfd8a1bdd39d503d2b9ad7d5f59e1` |
| 10 | `theorem` | [derivative_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/derivative-succ--37131caaf034cd629d208b15.md) | 126 | `result-track:37131caaf034cd629d208b15a2ea8ad8c01f7e9c49b2ea9124253c9718335b60` |
| 11 | `theorem` | [derivative_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/derivative-zero--6828d62c0ffe3fb992db9eaa.md) | 132 | `result-track:6828d62c0ffe3fb992db9eaa6da2a8023a42ef1a6f735fb9660ff1fbdf9aa5ba` |
| 12 | `theorem` | [iterate_derivative_at_0_eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-at-0-eq-zero-of-lt--e9ab6f2ee374a28608dc1faa.md) | 136 | `result-track:e9ab6f2ee374a28608dc1faabc144bb49c3f6a40f13648a67c486c835fcf8b25` |
| 13 | `theorem` | [iterate_derivative_succ_at_0_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-succ-at-0-eq-zero--3243e1fa55f07ff0ff95ee9a.md) | 154 | `result-track:3243e1fa55f07ff0ff95ee9a7a3f882d34392a836f2ebc43653baa2d9502d4d2` |
| 14 | `theorem` | [iterate_derivative_at_0](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-at-0--f1024a32559cbf49b634dc67.md) | 161 | `result-track:f1024a32559cbf49b634dc67b9f4d45232c34ff3186918e011677c1dfc6ed97b` |
| 15 | `theorem` | [iterate_derivative_at_0_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-at-0-ne-zero--dbe31dea35acaf974ba62aed.md) | 181 | `result-track:dbe31dea35acaf974ba62aed8adeef8c8edb0f9c4a23f3301edfb9e6bda6193c` |
| 16 | `theorem` | [iterate_derivative_at_1_eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-at-1-eq-zero-of-lt--2beae41712700015dc4c61de.md) | 198 | `result-track:2beae41712700015dc4c61de43bad027f9675f1fea0443c340acbd35e605d2b4` |
| 17 | `theorem` | [iterate_derivative_at_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-at-1--16b2d65628b5bcb70a3a4eab.md) | 205 | `result-track:16b2d65628b5bcb70a3a4eab185e79a16379fc82a92e8275034543b15d551cab` |
| 18 | `theorem` | [iterate_derivative_at_1_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/iterate-derivative-at-1-ne-zero--dde941bf16a5e75cbb59ff3e.md) | 216 | `result-track:dde941bf16a5e75cbb59ff3e190bcf66500df5d28e4058048d99610fbb636a24` |
| 19 | `theorem` | [linearIndependent_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/linearindependent-aux--7f31739f5c5dffcbd5f40458.md) | 224 | `result-track:7f31739f5c5dffcbd5f404585b4a9a9d2346e5c6c5d3e05f8948af42d56fbc2f` |
| 20 | `theorem` | [linearIndependent](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/linearindependent--a92155b383b159ebefa67048.md) | 264 | `result-track:a92155b383b159ebefa670483cb8b35b7bc77f12030fd207cae6b08ccd236e6c` |
| 21 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/sum--18a72d471a94318919bdce27.md) | 268 | `result-track:18a72d471a94318919bdce273461f3099bd3c82aa3ec66e72ec203471e476f35` |
| 22 | `theorem` | [sum_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/sum-smul--a7235bcfdfa58fd7e3264a13.md) | 279 | `result-track:a7235bcfdfa58fd7e3264a13fe01f07c89225bcc5f3490234f4cf8d6a4bc3cc3` |
| 23 | `theorem` | [sum_mul_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/sum-mul-smul--84b0b6c32f85c52a86a271b2.md) | 315 | `result-track:84b0b6c32f85c52a86a271b276f58e99e88e5f78871ce4f72631e457bcc2b851` |
| 24 | `theorem` | [variance](../../../../../mathematics/Algebra/CommutativeAlgebra/Bernstein/Variantb64415c5a8d6a107fa99a89e86a361995a1e5aadc1b44e00268ad10b96255d0b.lean/declarations/variance--c6a533ae8a613565362d66c5.md) | 360 | `result-track:c6a533ae8a613565362d66c5573e7056a0d7fb4dbe29f159c8d7cf2f0592a3ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
