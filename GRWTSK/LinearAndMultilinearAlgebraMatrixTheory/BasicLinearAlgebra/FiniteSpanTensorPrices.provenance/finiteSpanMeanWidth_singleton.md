# `finiteSpanMeanWidth_singleton`

Declaration `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpanTensorPrices.finiteSpanMeanWidth_singleton`.

Local attribution: GRWTSK contributors. The source paper and upstream Lean suppliers are by OpenAI. The upstream repository is Apache-2.0.

The local declaration is in `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpanTensorPrices.lean` with source SHA-256 `f49d32f278cf8d8aac587243f415cea43517874fd8bd4d371baa8f2e0dc09ec5`. The local base inspected at the start of this continuation was `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`.

Upstream publication [Euclidean geometry in the asymptotic spectrum of tensors, November 24, 2026](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Euclidean-geometry-in-the-asymptotic-spectrum-of-tensors-November-24-2026/paper.pdf) and [formalization scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/379.md). The isolated environment uses Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The source supplier [`meanWidth_pair`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/TriangleWidth.lean#L81), Git blob `d3b106218f74e4b6f9edfeb4fda839f7b8bbb7da`, identifies the Gaussian width of a two-entry finset with intersite distance. Repeating the same site makes the finset a singleton and the distance zero. The span lift has exactly one element. This proof gives the boundary case of `finiteSpanMeanWidth` even when the site is zero and the span is zero-dimensional.

The exact chart build was interrupted under host contention after an upstream dependency compiled. Compilation of this local declaration, transitive axiom audit, fresh kernel replay, and independent mathematical review are `NOT_RUN`. No upstream Comparator challenge exists for the chart. The isolated Mathlib-only transport check passed on the finite span, site-image return, Borel instance, singleton lift, and chart convex preimage ingredients. See [issue #1856](https://github.com/grwtsk/math/issues/1856).
