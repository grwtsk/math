# Ideas and Lean formalizations by taxonomy

First source-inspection pass, recorded 2026-10-23. Code baseline: `e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400`. Four proposed connections across two distinct unpublished PDF versions. This is a partial map, not a review of the complete collection.

Interpretations below are assistant proposals. They do not assert what grwtsk contributors understood, when an idea was understood, or historical influence on code. Owner statements and understanding dates remain null. Source inspection is not a compilation or kernel audit. Attribution clarification remains tracked in [issue #254](https://github.com/grwtsk/math/issues/254).

## Analysis / Heat flow

### heat: analogy-only

Paper: **Bourbaki: A Canonical Spectral Determinant and Equivalence Formulation of the Riemann Hypothesis**, filename v0.99.98. [PDF page 64](/Users/local/Desktop/MathematicsLibrary/NumberTheory/e600bc97e764--spectral_determinant_RH_equivalence_v0.99.98.pdf#page=64); physical PDF pages 64, 65, Lemma 2.18; heat-semigroup claims.

Asset SHA-256: `e600bc97e764ff03a2ba2d47755a4e92dc7ea864a33fcb4fab79009a9453c3f3`.

Paper idea: The manuscript uses exp(−t Lsym²) and claims trace-class heat smoothing for a compact trace-class operator.

Proposed interpretation: The scalar exponential mode obeys a semigroup law. This is a finite-mode fragment, not a construction of the manuscript operator.

Code: [`modeHeat_add`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean#L54-L62), lines 54–62. Git blob `0b4a9f940f2ec1ac1cfd6cd21e22c5b2a92ef7e9`.

Required paper hypotheses: Infinite-dimensional weighted L² space; claimed compact self-adjoint trace-class Lsym.

Uncertainty and missing bridges:

- No weighted Hilbert-space operator, trace-class heat theorem, or xi identification is supplied by this declaration.
- Blocking manuscript issue: page 64 says nonzero eigenvalues accumulate at zero, yet sums exp(−t μ_n²). For infinitely many eigenvalues these terms tend to one, so this displayed sum diverges. It later asserts incompatible eigenvalue growth. Requires operator/normalization correction, not a formal bridge.

## Analysis / Spectral determinants

### determinant: analogy-only

Paper: **Bourbaki: A Canonical Spectral Determinant and Equivalence Formulation of the Riemann Hypothesis**, filename v0.99.98. [PDF page 206](/Users/local/Desktop/MathematicsLibrary/NumberTheory/e600bc97e764--spectral_determinant_RH_equivalence_v0.99.98.pdf#page=206); physical PDF pages 206, Appendix H; Fredholm and Carleman Determinants.

Asset SHA-256: `e600bc97e764ff03a2ba2d47755a4e92dc7ea864a33fcb4fab79009a9453c3f3`.

Paper idea: The manuscript writes det(I−λT) as a product over eigenvalues and relates operator determinants to xi.

Proposed interpretation: A finite rational determinant has the same I−parameter·transfer shape.

Code: [`FiniteFredholmBridge.determinant`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/Spectral/Sheaf/RationalMomentFredholmBridge.lean#L127-L134), lines 127–134. Git blob `ab0a7854f9941fa0378d30ef19dcbcd13a22844d`.

Required paper hypotheses: Trace-class complex operator and a separately justified choice of regularization/normalization.

Uncertainty and missing bridges:

- Code is finite dimensional over ℚ; manuscript is infinite dimensional over ℂ.
- No trace-ideal convergence, regularization comparison, analytic continuation, or determinant–xi identity follows.
- Different determinant conventions within the manuscript need reconciliation before identifying a target.

## Analysis / Error bounds

### budget: conditional-correspondence

Paper: **From Theta Averages to a Positive Xi Determinant: Uniform positive models, gauge-invariant obstructions, and a formal-source status atlas**, Version 3.1. [PDF page 30](/Users/local/Desktop/MathematicsLibrary/ReviewQueue/1da080c60c76--Theta_Correlations_Formal_Source_Atlas_v3_1_prerelease.pdf#page=30); physical PDF pages 30, §14.2, equation (14.3); printed page 27.

Asset SHA-256: `1da080c60c761d9f72d0eca9c33d4c9daea0f3bf9239f7d5b75220542a647b86`.

Paper idea: Preconditioned source error must retain arithmetic tails, gluing, weights, overlap and discarded-label errors.

Proposed interpretation: A supplied complete signed discrepancy decomposition is bounded by the sum of independently supplied component bounds.

Code: [`reconstruction_error_bound`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/Analysis/ErrorBounds/ScrewSpectralReconstruction.lean#L36-L65), lines 36–65. Git blob `967215531015cb5ad57c4458b5cc7c7b29df00c0`.

Required paper hypotheses: An actual source comparison and all estimates at every rank; admissible correction radius.

Uncertainty and missing bridges:

- The code needs an exact five-term decomposition and five norm estimates; none is obtained from a citation.
- No supplied instantiation identifies the consumer with J_R⁻¹ or matches its five channels to (14.3).
- No decay exponent, all-rank bound, or correction-radius inequality is established here.

## Number theory / Zeta positivity

### positive-limit: conditional-correspondence

Paper: **From Theta Averages to a Positive Xi Determinant: Uniform positive models, gauge-invariant obstructions, and a formal-source status atlas**, Version 3.1. [PDF page 20](/Users/local/Desktop/MathematicsLibrary/ReviewQueue/1da080c60c76--Theta_Correlations_Formal_Source_Atlas_v3_1_prerelease.pdf#page=20); physical PDF pages 20, 29, 30, Conjecture 10.2; Conjecture 14.1; §14.1 equation (14.2).

Asset SHA-256: `1da080c60c761d9f72d0eca9c33d4c9daea0f3bf9239f7d5b75220542a647b86`.

Paper idea: Compatible positive models must match the actual arithmetic source at all orders; finite success does not close RH.

Proposed interpretation: The Lean endpoint requires a positive approximating family and an independently proved positivity equivalence for the same target form.

Code: [`riemannHypothesis_of_positiveGramLimit`](https://github.com/grwtsk/math/blob/e2a00f851c6efb07e9c5c2f5c1e69d5c2d521400/GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean#L187-L194), lines 187–194. Git blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`.

Required paper hypotheses: All-orders compatibility, actual-source normalization, and an exact RH criterion.

Uncertainty and missing bridges:

- Paper trace-power/determinant convergence is not the code’s polarized real-form comparison. A translation remains unconstructed.
- WeilCriterionForZeta includes an actual proof of positivity iff RH; strings or paper claims cannot fill that field.
- The actual arithmetic approximants, all-orders error limits, and matching test space/normalization are unresolved.
