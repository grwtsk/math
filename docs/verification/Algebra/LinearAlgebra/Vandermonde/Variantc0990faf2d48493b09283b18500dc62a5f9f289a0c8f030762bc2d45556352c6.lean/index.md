# Verification target: GRWTSK.Algebra.LinearAlgebra.Vandermonde.Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1185a7bc609525b22a877b864f768aac307fad86",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1185a7bc609525b22a877b864f768aac307fad86`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/vandermonde--3c8ee098877830a33ad4e2ff.md) | 47 | `declaration-track:3c8ee098877830a33ad4e2ff61a566a86b261a6af0f175460839d7515d2f5672` |
| 2 | `theorem` | [vandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/vandermonde-apply--dd1d281edfb80fff0a7b3887.md) | 51 | `result-track:dd1d281edfb80fff0a7b3887d7a200b159c7f6a8d65278fc2420c65ddabcabb4` |
| 3 | `theorem` | [vandermonde_cons](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/vandermonde-cons--e6215881321be57f9a0fde93.md) | 56 | `result-track:e6215881321be57f9a0fde93b2cfd5997feb7f98c55989ccc1ce3791f02e547d` |
| 4 | `theorem` | [vandermonde_succ](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/vandermonde-succ--0ac8581bfa03599d0fb629d3.md) | 66 | `result-track:0ac8581bfa03599d0fb629d3bbeab395f533b9bc4cbd44b6da034e1f6ec14a6c` |
| 5 | `theorem` | [vandermonde_mul_vandermonde_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/vandermonde-mul-vandermonde-transpose--4d9d62e30174ea99f8453400.md) | 73 | `result-track:4d9d62e30174ea99f8453400087a4493fddb64683829e15c50ee266013226d63` |
| 6 | `theorem` | [vandermonde_transpose_mul_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/vandermonde-transpose-mul-vandermonde--e78118328f1a8006c9a9423c.md) | 78 | `result-track:e78118328f1a8006c9a9423c2e729cf08e6bc0289c28fc3cb657748f4d3f030d` |
| 7 | `theorem` | [det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/det-vandermonde--f5c3deabac4df5561d764867.md) | 83 | `result-track:f5c3deabac4df5561d764867bfb3530185cf8aa6350c4c86467824982b85f1cb` |
| 8 | `theorem` | [det_vandermonde_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/det-vandermonde-eq-zero-iff--4f9c0746f28aa225f323ded1.md) | 148 | `result-track:4f9c0746f28aa225f323ded14cffa32e0404cbb02604cad11563468467bffae4` |
| 9 | `theorem` | [det_vandermonde_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/det-vandermonde-ne-zero-iff--43d42bea3fb9e13a6b225511.md) | 159 | `result-track:43d42bea3fb9e13a6b2255117c328d83b153fc78cd38ed41640f3017c0e7bce0` |
| 10 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero--d5962348483bc5172d4ddbfc.md) | 165 | `result-track:d5962348483bc5172d4ddbfc1c21cbe01258843e697036c849b0ad247cc0508c` |
| 11 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero--436ecbd963191bc9e2a28d7e.md) | 171 | `result-track:436ecbd963191bc9e2a28d7e81924e593ebc0b6f97c89191a7c1b11c03f7c844` |
| 12 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variantc0990faf2d48493b09283b18500dc62a5f9f289a0c8f030762bc2d45556352c6.lean/declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero--892d71b3b200e9deab04bce2.md) | 179 | `result-track:892d71b3b200e9deab04bce29116eeef64675c4fcd5f5d46bd41eeededeecbf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
