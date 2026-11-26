# Consequences for finite square tensors and gate counts

Local attribution: grwtsk contributors. The imported results come from OpenAI at `3344da59991ed94f9ba711217b29c1d760badfa6` under Apache-2.0. Local base `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c`.

The local namespace `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FormalMatrixMultiplication` composes three exact upstream results in `FormalMatrixMultiplication.lean`.

- `square_asymptoticRank_exact` rewrites the right-hand side of [`square_asymptoticRank_eq_rpow_formalOmega`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/SquareExponent.lean#L75) using the exact square exponent. The field and side length hypotheses stay in force.
- `square_geometricBorderRank_lower` substitutes that equality in [`asymptoticRank_le_geometricBorderRank`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/BorderComparison.lean#L59). The conclusion is the lower bound on geometric border rank of the actual multiplication tensor.
- `square_total_productQuotient_lower` applies [`rpow_formalOmega_le_tensorRank`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/FormalRecursion.lean#L95) over the algebraic closure and supplies the finite upper comparison from [`algebraicClosure_rank_le_twice_productQuotientCount`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/CircuitRankSpecialization.lean#L45). Both comparisons concern the same tensor. A natural ceiling follows from integrality of the gate count. The nonscalar gate count has a different inductive supplier and remains a separate obligation.

Use these results for circuit lower bounds and measured arithmetic-resource comparisons once the exact program supplies the count. Other resource coordinates require their own suppliers. Local elaboration, fresh replay, axiom audit, and independent mathematical review of these compositions are `NOT_RUN`.
