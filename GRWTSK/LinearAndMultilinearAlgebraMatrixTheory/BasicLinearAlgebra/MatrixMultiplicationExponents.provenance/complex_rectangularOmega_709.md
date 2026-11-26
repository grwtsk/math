# `GRWTSK.LinearAlgebra.MatrixMultiplication.complex_rectangularOmega_709`

Local attribution is grwtsk contributors. OpenAI authored the upstream mathematical and formalization sources. The local declaration is a consequence or compatibility theorem under the repository MIT license. The pinned upstream repository uses Apache-2.0.

## Source identity

The declaration is in [MatrixMultiplicationExponents.lean](../MatrixMultiplicationExponents.lean#L59) at Git blob `3bc926d7c093204eef36c6ec8ff77cd8f9f8842e`. It was prepared against GRWTSK `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c` and OpenAI `3344da59991ed94f9ba711217b29c1d760badfa6`. The environment uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The preceding complex surface [MatrixMultiplication.lean](../MatrixMultiplication.lean) uses the same arithmetic model at OpenAI `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The older and newer [main source](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Main.lean) has identical Git blob `7608542c58cf1d6e2955038e8b35f0a5fb127d0a`. The [prior model](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) and the [current model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) retain the same public definitions and equations. The source diff moves the gate cost and adds a compiler matcher alias.

## Mathematical correspondence

Instantiate upstream `OAI.LinearAlgebra.SpectralBooks.rectangular_exponent` at the complex field and weights `(709/1000,1,1)` via the model equality. Sorting gives `x=y=1`, `z=709/1000` and the positive correction `(209/500)² / (4 × 709/1000)`. Exact rational arithmetic gives `1461681/709000 < 523/250`.

This identifies the exact value in the target convention of the existing 0.709 complex multiplication upper bound. It supplies no finite-size runtime or implementation crossover.

## Upstream sources

- [`lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) at Git blob `83cfee2a25dbc9bbe931239e964be997c9aae0ee`.
- [`lean/OAI/LinearAlgebra/SpectralBooks/ArithmeticExponent.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/ArithmeticExponent.lean) at Git blob `26654b95dd543d632bb0e4eb0f912ee5c0d588a9`.
- [`lean/OAI/LinearAlgebra/SpectralBooks/ExactExponent.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/ExactExponent.lean) at Git blob `c0a1bc6519c86e87e9672b3cdf7b8e766acd3a37`.
- [`lean/ComparatorChallenges/MatrixExponent.json`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/ComparatorChallenges/MatrixExponent.json) at Git blob `49267c30c0d7acad2931cb79a4521f790caa10e8`.

The [family 107 scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/107.md) links the earlier papers and the November 24 matrix exponent manuscript. The [license](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/LICENSE) applies to the upstream source.

## Verification

Local compilation, fresh kernel replay, transitive axiom audit and upstream Comparator run are `NOT_RUN` for this record. A separate reviewer in this session checked the mathematical argument and upstream source correspondence without finding a mathematical mismatch. External review remains `NOT_RUN`.
