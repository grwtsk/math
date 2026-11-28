# Arithmetic tensor valuation: mathematical source record

Attribution: grwtsk contributors.

## Identity and consumer

- Repository: `grwtsk/math`.
- Path: `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ArithmeticTensorValuation.lean`.
- Namespace: `GRWTSK.LinearAndMultilinearAlgebra.ArithmeticTensorValuation`.
- Source SHA-256: `7d9fb346171f7228cdb45e9c35c3ec857d0f8d7e61c0898254d448b0b97bc27f`.
- Consumer: PGATN AT-005/AT-006; the explicit semantic morphism distinguishing tensor multiplication from its integer evaluation and the coordinate/weight transport law.

## Statements and hypotheses

`WordModule = Fin 128 → ℤ`. `positional` is the ℤ-linear map `x ↦ sum_i x_i 2^i`. `evaluate` is the actual canonical `TensorAlgebra.lift ℤ positional`, with target ℤ. For all module generators, it returns their positional value. For all tensor-algebra elements x,y, it preserves addition and multiplication. For every ℤ-algebra homomorphism g whose composition with the canonical generator inclusion equals `positional`, `evaluate_unique` proves `g=evaluate`.

For arbitrary finite types I,J, an equivalence σ:I≃J, and x,w:I→ℤ, `reindex_weighted_sum` states that transporting both arrays by σ⁻¹ preserves their finite pairing. The requirement to transport w is explicit.

## Complete analytical argument and comparison

Finite distributivity proves linearity of the positional map. The tensor algebra's universal property extends any module-linear map to a unique unital algebra homomorphism into an associative target algebra; applying it to the actual positional map yields `evaluate`. The generator equation, preservation of products/sums and uniqueness are exact applications of that canonical property, not axioms postulated for a new algebra. Reindexing is change of variables in a finite sum.

On a pure tensor the same map is explicitly the product of the positional values of its factors. Multilinearity makes this formula well-defined on the tensor product; linear extension handles finite sums and degrees. This gives the analytical comparison with the canonical universal-property construction.

The semantic map is not injective. Already the distinct module elements e₁ and 2e₀ have the same value; in the tensor algebra a degree-one generator valued 1 and the degree-zero unit also evaluate equally. Thus integer equality does not establish equal shape, equal grade, equal tensor or interchangeable persistent history. No global geometry, tensor rank bound, spectral property or RH consequence follows from this morphism.

## Canonical sources

Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `LinearAlgebra/TensorAlgebra/Basic.lean`, blob `57195a795e536d4bb7f250350380c6b506c9b09a`, especially `TensorAlgebra.lift`, `lift_ι_apply` and `lift_unique`; `LinearAlgebra/TensorAlgebra/Grading.lean`, blob `247275df168de36bf9982316799c0d238ec2866a`, `TensorAlgebra.gradedAlgebra`; and the canonical finite-sum reindexing API. The source imports the upstream algebra and its grading; it does not duplicate their constructions. No novelty or independent prior-art priority claim is made.

## Observed verification

On 2026-11-28, the exact source compiled at the canonical path with Lean 4.34.1, binary commit `5045d0056413266e57c625dcd7c365b10e377c52`, and the stated Mathlib pin. Transitive axiom auditing found only `propext`, `Classical.choice` and `Quot.sound`, with no placeholder. The five-module verification bundle passed `leanchecker --fresh`, exit 0.

Package verification manifest SHA-256: `8c47a3c1016ccd44d83cf53a881788f03141de41e731f31d913c89a876967b5f`. The replay uses Lean's kernel; no independently implemented kernel, Rust tensor refinement or analytic source realization is claimed. General canonical tensor-algebra mathematics is reused; this new consumer is scoped to its explicit positional semantics.
