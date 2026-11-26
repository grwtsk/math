# `GRWTSK.LinearAlgebra.MatrixMultiplication.square_multiplicationCount_lower_bound`

Local attribution is grwtsk contributors. OpenAI authored the upstream mathematical and formalization sources. The local declaration is a consequence or compatibility theorem under the repository MIT license. The pinned upstream repository uses Apache-2.0.

## Source identity

The declaration is in [MatrixMultiplicationExponents.lean](../MatrixMultiplicationExponents.lean#L66) at Git blob `3bc926d7c093204eef36c6ec8ff77cd8f9f8842e`. It was prepared against GRWTSK `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c` and OpenAI `3344da59991ed94f9ba711217b29c1d760badfa6`. The environment uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The preceding complex surface [MatrixMultiplication.lean](../MatrixMultiplication.lean) uses the same arithmetic model at OpenAI `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The older and newer [main source](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Main.lean) has identical Git blob `7608542c58cf1d6e2955038e8b35f0a5fb127d0a`. The [prior model](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) and the [current model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) retain the same public definitions and equations. The source diff moves the gate cost and adds a compiler matcher alias.

## Mathematical correspondence

At a finite square order `n ≥ 2`, `rpow_formalOmega_le_tensorRank` bounds ordinary rank below by `n` raised to the formal exponent. `matrixTensor_rank_le_twice_multiplicationCount` bounds rank above by twice the multiplication gates of the particular formally correct program. The imported square equality sets the exponent to `9/4` over any field. No conversion from pointwise correctness on finite fields is used.

An exact finite arithmetic lower-bound supplier for any witnessed square program. The total scalar gate count dominates the multiplication-gate count. The bound is scoped to the upstream register machine.

## Upstream sources

- [`lean/OAI/LinearAlgebra/SpectralBooks/FormalRecursion.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/FormalRecursion.lean) at Git blob `05eb97729cdf88a1cc31fa569288458a3d22da55`.
- [`lean/OAI/LinearAlgebra/SpectralBooks/Circuit.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/Circuit.lean) at Git blob `7c2d5584ffa61dd484935be5d83e9751c1479b70`.
- [`lean/OAI/LinearAlgebra/SpectralBooks/ExactExponent.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/ExactExponent.lean) at Git blob `c0a1bc6519c86e87e9672b3cdf7b8e766acd3a37`.
- [`lean/ComparatorChallenges/MatrixExponent.json`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/MatrixExponent.json) at Git blob `49267c30c0d7acad2931cb79a4521f790caa10e8`.

The [family 107 scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/107.md) links the earlier papers and the November 24 matrix exponent manuscript. The [license](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/LICENSE) applies to the upstream source.

## Verification

Local compilation, fresh kernel replay, transitive axiom audit and upstream Comparator run are `NOT_RUN` for this record. A separate reviewer in this session checked the mathematical argument and upstream source correspondence without finding a mathematical mismatch. External review remains `NOT_RUN`.
