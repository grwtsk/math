# `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan.matrixTensor_rankAtMost_iff_exists_plan`

Local attribution is grwtsk contributors. OpenAI authored the pinned Lean tensor source. The local equivalence is MIT. The upstream source is Apache-2.0.

## Identity and statement

[FiniteBilinearPlanTensor.lean](../FiniteBilinearPlanTensor.lean) source blob `6c952ba4ad4028348b6b4e23b19536e6f7f2dcba`. Baseline GRWTSK `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`. Upstream `3344da59991ed94f9ba711217b29c1d760badfa6`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

In one direction, take all three factors of an exact rank-at-most witness, reindex the output coefficient by swapping row and column, and recover the plan's coefficient equation at every triple of inputs. In the other direction use the unchanged plan inputs and swap the outputs back. The equivalence preserves the field, rectangle dimensions and number of allowed rank summands, including degenerate dimensions.

This is the return from the spectral tensor witness to the finite plan representation. It consumes an exact decomposition. It supplies no method for producing an optimal decomposition.

## Source references

- [Plan.matrixTensor_decomposition](matrixTensor_decomposition.md), exact coefficient comparison in the forward plan-to-tensor direction.
- [OAI SquareRankModel](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/SquareRankModel.lean), blob `8dc111e7644c6a5c015091d1fb53332ee1762f05`, private `square_rank_iff`.
- [OAI SpectralBooks.Tensor](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/Tensor.lean), blob `18289cd19051ac69b710d330502c52b65d385615`, `matrixTensor` and exact rank model.

## Verification

Source comparison complete. Compilation, fresh kernel replay, transitive axiom audit and independent review are `NOT_RUN`. This local bridge has no upstream Comparator challenge.
