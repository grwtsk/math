# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Coeff.Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "961372eefc8a033c2e26d1b9c59f1a67e7191508",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `961372eefc8a033c2e26d1b9c59f1a67e7191508`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Laurent` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [charmatrix_apply_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charmatrix-apply-natdegree--15702334369383b69506b3ca.md) | 49 | `result-track:15702334369383b69506b3ca4aa418a42b026e73152ebb1a14281e19201cc5ae` |
| 2 | `theorem` | [charmatrix_apply_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charmatrix-apply-natdegree-le--a51c25c0a46cc89541e97a2f.md) | 54 | `result-track:a51c25c0a46cc89541e97a2f47f6ae4b286902aee841fbb7c29831dc1671d3f9` |
| 3 | `theorem` | [charpoly_sub_diagonal_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charpoly-sub-diagonal-degree-lt--04f56b8218751273abecb4d0.md) | 63 | `result-track:04f56b8218751273abecb4d073eda41919a51c1be9245ecaf37baa83dbb7331f` |
| 4 | `theorem` | [charpoly_coeff_eq_prod_coeff_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charpoly-coeff-eq-prod-coeff-of-le--d6e9c0ffc6ec7c6cec51ed6a.md) | 84 | `result-track:d6e9c0ffc6ec7c6cec51ed6ab2fa49803479e49579c23877d9189760f9ef6230` |
| 5 | `theorem` | [det_of_card_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/det-of-card-zero--a7fce651cd3583f4f4e23a45.md) | 93 | `result-track:a7fce651cd3583f4f4e23a454f2be099a0f9c7ad13101ac285ad1bec4e32a755` |
| 6 | `theorem` | [charpoly_degree_eq_dim](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charpoly-degree-eq-dim--e9811aa44534dd9fae3f8a0a.md) | 100 | `result-track:e9811aa44534dd9fae3f8a0a1c1e922a468d6bdc1a8bd40f1891d5e289d76a01` |
| 7 | `theorem` | [charpoly_natDegree_eq_dim](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charpoly-natdegree-eq-dim--e7fa3232038e1a8442b1e6dd.md) | 127 | `result-track:e7fa3232038e1a8442b1e6ddab91780436cfb7822238ebaca0a68937a2c1adac` |
| 8 | `theorem` | [charpoly_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/charpoly-monic--c96578c280f1bbb9c850d88e.md) | 132 | `result-track:c96578c280f1bbb9c850d88e117051bd1401a9733d6488ca7aa6f4644809a4cd` |
| 9 | `theorem` | [trace_eq_neg_charpoly_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/trace-eq-neg-charpoly-coeff--34bb09048e8617371606104f.md) | 154 | `result-track:34bb09048e8617371606104fc15d17e24fa287506ea4a54c4093b2b236b0f281` |
| 10 | `theorem` | [matPolyEquiv_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/matpolyequiv-eval--350bda16acec98f761e2adf7.md) | 162 | `result-track:350bda16acec98f761e2adf77a7c95b28083fb322a5f48ea976ce55ff5120887` |
| 11 | `theorem` | [eval_det](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/eval-det--6a3807ce8e697780eb9fd129.md) | 184 | `result-track:6a3807ce8e697780eb9fd1299683eae29c0f345a86204f337da45c4205cd12dd` |
| 12 | `theorem` | [det_eq_sign_charpoly_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/det-eq-sign-charpoly-coeff--84c6b192924bf6fd2ebe56d8.md) | 194 | `result-track:84c6b192924bf6fd2ebe56d83128e472e7a022b426579e07caca93fc76def360` |
| 13 | `theorem` | [matPolyEquiv_eq_x_pow_sub_c](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/matpolyequiv-eq-x-pow-sub-c--31e0afb587c494cec1399062.md) | 204 | `result-track:31e0afb587c494cec139906289d8afe9b1b54b6875ce1f57c4d2f2adabbbe464` |
| 14 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/aeval-eq-aeval-mod-charpoly--56ae6d8f7480ca66c008c168.md) | 228 | `result-track:56ae6d8f7480ca66c008c1680d28c5306bd557e7a079d5a658c198d7a32fc159` |
| 15 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/pow-eq-aeval-mod-charpoly--6698a1b27bbee754c81fc86c.md) | 236 | `result-track:6698a1b27bbee754c81fc86c9c975488798598087d0aa9a2545d098c36f8205f` |
| 16 | `theorem` | [coeff_charpoly_mem_ideal_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/coeff-charpoly-mem-ideal-pow--4847ad74b38cb247a1754b5e.md) | 244 | `result-track:4847ad74b38cb247a1754b5e3b5bf555676d5d199d731c9c341c9f2a4664819f` |
| 17 | `lemma` | [Matrix.reverse_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/declarations/matrix-reverse-charpoly--8a423bb75a289a6d28bd9508.md) | 275 | `result-track:8a423bb75a289a6d28bd9508a93f835a6645842730b9a6437764d22aaccfed06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
