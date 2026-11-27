# `render_eq_renderViaPlan`

Local attribution: grwtsk contributors. Local base `1f0dd586be640ebe72642977bba7acd0e1aeb7c3`.

`GRWTSK.ComputerScience.AlgorithmsInComputerScience.AffineFiberBilinearPlan.render_eq_renderViaPlan` composes the existing affine renderer factorization with the actual finite bilinear matrix plan at local blob `75371b3ae6fa727c9ea620f8c4661001da21c92c`. It uses the exact `Rectangle.RankLE` coefficient format from OpenAI's Apache-2.0 matrix development at upstream `3344da59991ed94f9ba711217b29c1d760badfa6`. [Upstream rectangular model](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/MatrixExponent/Rectangle/Model.lean#L41)

The certified plan produces the same rectangular product. Each harmonic summand agrees and the existing exact factorization returns the original rendered image. Empty index ranges follow the finite-sum laws. The result supplies a semantic return for a plan with actual coefficients and a correctness proof. Implementing a particular execution schedule and accounting for scalar operations, bit costs or storage are separate obligations.

The corrected source blob `2e190bcc291742c3c991d659196a5dfe505c9256` compiled at trust zero with warnings as errors under Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The expanded pointwise statement and both transitive axiom queries passed. The two declarations use only `propext`, `Classical.choice`, and `Quot.sound`. [Fresh replay and verification record](https://github.com/grwtsk/math/issues/1856)
