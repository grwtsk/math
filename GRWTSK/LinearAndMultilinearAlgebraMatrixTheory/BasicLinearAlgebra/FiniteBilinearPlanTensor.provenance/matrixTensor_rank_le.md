# `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan.Plan.matrixTensor_rank_le`

Local attribution is grwtsk contributors. OpenAI authored the pinned Lean tensor source. The local implication is MIT. The upstream source is Apache-2.0.

## Identity and statement

[FiniteBilinearPlanTensor.lean](../FiniteBilinearPlanTensor.lean) source blob `6c952ba4ad4028348b6b4e23b19536e6f7f2dcba`. Baseline GRWTSK `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`. Upstream `3344da59991ed94f9ba711217b29c1d760badfa6`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Over an arbitrary field, the three coefficient tables of a correct finite rectangular plan witness exact arithmetic tensor rank at most its rank index `r`. `Plan.matrixTensor_decomposition` provides the exact cyclic matrix tensor identity. The kernel step applies `tensorRank_le_of_rankAtMost` using the original two input factors and the reindexed output factor. The result gives an upper bound from a supplied plan, without a least-rank claim or a runtime claim.

## Source references

- [Plan.matrixTensor_decomposition](matrixTensor_decomposition.md), exact coefficient comparison and unchanged hypotheses.
- [OAI SpectralBooks.Tensor](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/Tensor.lean), blob `18289cd19051ac69b710d330502c52b65d385615`, `tensorRank_le_of_rankAtMost`.

## Verification

Source comparison complete. Compilation, fresh kernel replay, transitive axiom audit and independent review are `NOT_RUN`. This local bridge has no upstream Comparator challenge.
