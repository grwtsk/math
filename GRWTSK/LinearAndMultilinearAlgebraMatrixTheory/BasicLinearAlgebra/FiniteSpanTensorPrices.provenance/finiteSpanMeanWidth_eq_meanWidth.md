# `finiteSpanMeanWidth_eq_meanWidth`

Declaration `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpanTensorPrices.finiteSpanMeanWidth_eq_meanWidth`.

Local attribution: GRWTSK contributors. The source paper and upstream Lean suppliers are by OpenAI. The upstream repository is Apache-2.0.

The local declaration is in `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpanTensorPrices.lean` with source SHA-256 `f49d32f278cf8d8aac587243f415cea43517874fd8bd4d371baa8f2e0dc09ec5`. The local base inspected at the start of this continuation was `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`.

Upstream publication [Euclidean geometry in the asymptotic spectrum of tensors, November 24, 2026](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Euclidean-geometry-in-the-asymptotic-spectrum-of-tensors-November-24-2026/paper.pdf) and [formalization scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/379.md). The isolated environment uses Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

This local consequence inherits exactly the Gaussian mean-width normalization from [`OAI.LinearAlgebra.SpectralBooks.meanWidth`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/Width.lean#L71), Git blob `196373c6ab73bbe613c6ba9dcffee303cfb5b59f`. The source preservation law is [`meanWidth_linearIsometry`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/AngularWidth.lean#L156), Git blob `bb03f5ec88311e37b73874f06c88e2d1f2787f4d`.

Every finite site belongs to its linear span. The inclusion of that span is a linear isometry, and mapping the lifted finset along the inclusion recovers the exact original finset. Therefore the normalization and the scalar Gaussian width agree with those computed in a finite-dimensional ambient real inner-product space. The statement applies to the finite-span width used by the CAT(0) chart result.

The exact chart build was interrupted under host contention after an upstream dependency compiled. Compilation of this local declaration, transitive axiom audit, fresh kernel replay, and independent mathematical review are `NOT_RUN`. No upstream Comparator challenge exists for the chart. The isolated Mathlib-only transport check passed on the finite span, site-image return, Borel instance, singleton lift, and chart convex preimage ingredients. See [issue #1856](https://github.com/grwtsk/math/issues/1856).
