# `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan.Plan.matrixTensor_decomposition`

Local attribution is grwtsk contributors. OpenAI authored the pinned Lean tensor source and the associated matrix exponent and Euclidean tensor geometry papers. The local bridge is MIT. The upstream source is Apache-2.0.

## Identity and statement

[FiniteBilinearPlanTensor.lean](../FiniteBilinearPlanTensor.lean) source blob `6c952ba4ad4028348b6b4e23b19536e6f7f2dcba`. Baseline GRWTSK `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`. Upstream `3344da59991ed94f9ba711217b29c1d760badfa6`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Over any field and for every natural choice of row, column, inner and rank dimensions, a finite plan satisfying its exact coefficient equation decomposes `matrixTensor F k j i` into its unchanged left and right factors and the third factors pulled back along `Prod.swap`. The row/column order of the output becomes column/row in the cyclic tensor. The proof compares each coefficient and is valid when dimensions are empty.

This is a local cross-model correspondence. It generalizes the output-index comparison in the first implication of the private square-specific `square_rank_iff` to supplied rectangular plan data. The original formats are recovered by the same swap, which is its own inverse. The decomposition is the exact coefficient premise of `formalCorrect_blockAlgorithm` and the local rectangular block gate comparison. It supplies neither a semantic runtime model outside arithmetic gates nor an asymptotic plan search procedure.

## Source references

- [FiniteBilinearMatrixPlan.lean](../FiniteBilinearMatrixPlan.lean), exact `Plan.Correct` equation and actual factors.
- [OAI SpectralBooks.Tensor](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/Tensor.lean), blob `18289cd19051ac69b710d330502c52b65d385615`, `matrixTensor`.
- [OAI ComplexMatrixTensor](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixMultiplication/Tensor/ComplexMatrixTensor.lean), blob `bcf7172031f8568bfb3990ce1ff368ca0d135565`, `Tensor.matrixCoefficients`.
- [OAI SquareRankModel](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/SquareRankModel.lean), blob `8dc111e7644c6a5c015091d1fb53332ee1762f05`, private `square_rank_iff`.

## Verification

Source comparison complete. Compilation, fresh kernel replay, transitive axiom audit and independent review are `NOT_RUN`. This local bridge has no upstream Comparator challenge.
