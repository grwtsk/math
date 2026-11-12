# norm_seed_sum_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.CompactConvolutionWeilWitness.norm_seed_sum_le`
in [CompactConvolutionWeilWitness.lean](../CompactConvolutionWeilWitness.lean).
Candidate Git blob `7e9b0c0d64f791b55ee0db43165b7fb208607d54`, SHA-256 `5197cb7d633c88ce3a6f37395a93122cd84cf0901fe2e19bc5943efe39d21d77`.
Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Source: grwtsk contributors, *Compact convolution witnesses for the full primitive
Weil form*, version 1 (2026-11-11), Section 5, the finite-dimensional estimate in (17).
Revision `daa8c88b644cf40ada77e76739d84f749068ffde`, blob `8d0cf2b78101cd29a5785fcd8016408cb65bbdd5`,
SHA-256 `005ad4cb446b3e72a92b63ebe70c0ca6439fb83b250c117f976a34accd316e45`.
[Exact source edition](https://github.com/grwtsk/math/blob/daa8c88b644cf40ada77e76739d84f749068ffde/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompactConvolutionWeilWitness.md).

The local finite Cauchy–Schwarz consequence starts with an arbitrary complex
coefficient vector, a nonnegative radial weight, and a separate pointwise seed
bound for each index. The triangle inequality bounds the complex sum by the sum
of products of norms. Factor out the common weight and apply
`Real.sum_mul_le_sqrt_mul_sqrt` to the coefficient norms and the seed costs.
The consumer is `pairing_bounds_of_compact_samples`, which uses this inequality
at both members of a conjugate pair. The physical-space integration-by-parts
proof of the seed bounds in (8) remains a supplier. Finite interpolation values
alone would leave this pointwise bound unjustified.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801).
Elaboration, fresh kernel replay, transitive axiom audit, independent analytical
review, and executable arithmetic certification: **NOT_RUN**.
Source candidate. Originality unassessed.
