# `render_eq_renderViaPlan`

Local attribution: grwtsk contributors. Local base `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`.

`GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberBilinearPlan.render_eq_renderViaPlan` composes the existing affine renderer factorization with the actual finite bilinear matrix plan at local blob `75371b3ae6fa727c9ea620f8c4661001da21c92c`. It uses the exact `Rectangle.RankLE` coefficient format from OpenAI's Apache-2.0 matrix development at upstream `3344da59991ed94f9ba711217b29c1d760badfa6`. [Upstream rectangular model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixExponent/Rectangle/Model.lean#L41)

The certified plan produces the same rectangular product. Each harmonic summand agrees and the existing exact factorization returns the original rendered image. Empty index ranges follow the finite-sum laws. The result supplies a semantic return for a plan with actual coefficients and a correctness proof. Implementing a particular execution schedule and accounting for scalar operations, bit costs or storage are separate obligations.

The first local attempt reached the remaining concrete `Matrix.mul_apply` equality. The candidate now closes it by applying the exact matrix multiplication theorem after reindexing. The revised source is a candidate. Two bounded retries exited 124 before diagnostics, at 140 and 210 seconds. Fresh replay and axiom checks remain `NOT_RUN` for this source. [Issue #1856](https://github.com/grwtsk/math/issues/1856)
