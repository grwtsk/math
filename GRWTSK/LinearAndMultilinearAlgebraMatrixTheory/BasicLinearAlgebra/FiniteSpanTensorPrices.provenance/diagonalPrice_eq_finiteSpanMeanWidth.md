# `diagonalPrice_eq_finiteSpanMeanWidth`

Declaration `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpanTensorPrices.diagonalPrice_eq_finiteSpanMeanWidth`.

Local attribution: GRWTSK contributors. The source paper and upstream Lean suppliers are by OpenAI. The upstream repository is Apache-2.0.

The local declaration is in `GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpanTensorPrices.lean` with source SHA-256 `f49d32f278cf8d8aac587243f415cea43517874fd8bd4d371baa8f2e0dc09ec5`. The local base inspected at the start of this continuation was `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`.

Upstream publication [Euclidean geometry in the asymptotic spectrum of tensors, November 24, 2026](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Euclidean-geometry-in-the-asymptotic-spectrum-of-tensors-November-24-2026/paper.pdf) and [formalization scope](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/379.md). The isolated environment uses Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The exact source supplier [`SpectralPlacementPrices.flatDiagonalLaw_chart`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/SpectralFlatLaw.lean#L100), Git blob `66a12acbb8417b7c6582c54b6ec1e72995d6a0b4`, retains a field, a CAT(0) target, an existing price system, synchronized convexity, convexity of the chart and isometry within the chart, and a nonempty finite site set contained in the chart.

For arbitrary-dimensional real inner-product domain, lift only the given sites into their finite-dimensional linear span. The chart pulled back along the inclusion is convex, and the target map composed with inclusion is isometric there. The image of the lifted sites is the exact original priced finset. The finite-dimensional source theorem now evaluates it using the finite-span Gaussian width. This is a local consequence returning to the original price. The manuscript's global compatible price system on arbitrary Hilbert spaces and its distance and homogeneity laws for arbitrary placements remain separate proof obligations.

The exact chart build was interrupted under host contention after an upstream dependency compiled. Compilation of this local declaration, transitive axiom audit, fresh kernel replay, and independent mathematical review are `NOT_RUN`. No upstream Comparator challenge exists for the chart. The isolated Mathlib-only transport check passed on the finite span, site-image return, Borel instance, singleton lift, and chart convex preimage ingredients. See [issue #1856](https://github.com/grwtsk/math/issues/1856).
