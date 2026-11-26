# `GRWTSK.LinearAlgebra.MatrixMultiplication.rectangularBlock_strict_gate_improvement`

Local attribution is grwtsk contributors. OpenAI authored the upstream mathematical and formalization sources. The local declaration is a consequence or compatibility theorem under the repository MIT license. The pinned upstream repository uses Apache-2.0.

## Source identity

The declaration is in [RectangularBlockDominance.lean](../RectangularBlockDominance.lean#L25) at Git blob `fb0264a8efdfb5bb2d14f9e9584b9593044616f8`. It was prepared against GRWTSK `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c` and OpenAI `3344da59991ed94f9ba711217b29c1d760badfa6`. The environment uses Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The preceding complex surface [MatrixMultiplication.lean](../MatrixMultiplication.lean) uses the same arithmetic model at OpenAI `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The older and newer [main source](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Main.lean) has identical Git blob `7608542c58cf1d6e2955038e8b35f0a5fb127d0a`. The [prior model](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) and the [current model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Model.lean) retain the same public definitions and equations. The source diff moves the gate cost and adds a compiler matcher alias.

## Mathematical correspondence

The replacement is the actual `Arithmetic.RecursiveBlock.algorithm` from a supplied exact tensor decomposition and a formally correct block routine. `formalCorrect_blockAlgorithm` yields formal correctness of the constructed program. Both this correctness and the incumbent correctness give the same product on every matrix pair. The exact `algorithm_cost` adds the `r` block calls and twice `r` times the sum of all three matrix areas. Strictness follows by composing the supplied inequality with the incumbent lower bound.

A finite gate-count comparison for contraction-planning consumers. The certificate covers this pair and this arithmetic gate coordinate. The incumbent lower bound and the witness decomposition must be supplied. Storage, tape motion, bit complexity, timing and complete-frontier coverage require separate evidence.

## Upstream sources

- [`lean/OAI/LinearAlgebra/SpectralBooks/FormalBlockStep.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/FormalBlockStep.lean) at Git blob `c68bfb3c7a7e34852464ada879fe162293efb9df`.
- [`lean/OAI/LinearAlgebra/MatrixMultiplication/Arithmetic/RecursiveBlockPrograms.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Arithmetic/RecursiveBlockPrograms.lean) at Git blob `83b9951e2df241790f86903faf09e3fe7061eafd`.
- [`lean/OAI/LinearAlgebra/SpectralBooks/FormalCircuit.lean`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/FormalCircuit.lean) at Git blob `2c1cbb1d5aa19d6929a523381b4191671dec12a9`.

The [family 107 scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/107.md) links the earlier papers and the November 24 matrix exponent manuscript. The [license](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/LICENSE) applies to the upstream source.

## Verification

Local compilation, fresh kernel replay, transitive axiom audit and upstream Comparator run are `NOT_RUN` for this record. A separate reviewer in this session checked the mathematical argument and upstream source correspondence without finding a mathematical mismatch. External review remains `NOT_RUN`.
