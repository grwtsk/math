# `GRWTSK.LinearAlgebra.MatrixMultiplication.formalCorrect_iff_correct`

Local attribution is grwtsk contributors. OpenAI authored the upstream mathematical and formalization sources. The local declaration is a consequence or compatibility theorem under the repository MIT license. The pinned upstream repository uses Apache-2.0.

## Source identity

The declaration is in [MatrixMultiplicationSemantics.lean](../MatrixMultiplicationSemantics.lean#L46) at Git blob `1479df6e64664ff9550a74a3b55bbb16a5c53bb0`. It was prepared against GRWTSK `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c` and OpenAI `3344da59991ed94f9ba711217b29c1d760badfa6`. The environment uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The preceding complex surface [MatrixMultiplication.lean](../MatrixMultiplication.lean) uses the same arithmetic model at OpenAI `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The older and newer [main source](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Main.lean) has identical Git blob `7608542c58cf1d6e2955038e8b35f0a5fb127d0a`. The [prior model](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) and the [current model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) retain the same public definitions and equations. The source diff moves the gate cost and adds a compiler matcher alias.

## Mathematical correspondence

For the converse, an arbitrary assignment on the disjoint union of left and right matrix positions is equivalent to a pair of matrices. Pointwise correctness therefore gives equality of the two multivariate polynomial evaluations on all assignments. Mathlib `MvPolynomial.funext` then applies through `[Infinite F]`. Both sides quantify over the same program and keep its exact gate count.

This discharges the semantic obligation for the legacy complex bounds. Over `ZMod 2`, adding the polynomial `X² − X` of one input to the scalar product preserves its pointwise output and changes its formal polynomial, so the infinite-field hypothesis matters.

## Upstream sources

- [`lean/OAI/LinearAlgebra/SpectralBooks/FormalCircuit.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/FormalCircuit.lean) at Git blob `2c1cbb1d5aa19d6929a523381b4191671dec12a9`.
- [`lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) at Git blob `83cfee2a25dbc9bbe931239e964be997c9aae0ee`.

The [family 107 scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/107.md) links the earlier papers and the November 24 matrix exponent manuscript. The [license](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/LICENSE) applies to the upstream source.

## Verification

Local compilation, fresh kernel replay, transitive axiom audit and upstream Comparator run are `NOT_RUN` for this record. A separate reviewer in this session checked the mathematical argument and upstream source correspondence without finding a mathematical mismatch. External review remains `NOT_RUN`.
