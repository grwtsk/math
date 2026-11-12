# CompactExponentialIntegral

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6811991396.
Inspection base `d29f7681352f5847c4aac3391e2f9b9d325c32fc`; complete root tree `d8ba89f60d52fe2aac63a7ef81e27559b15094e6`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review,
repository-wide verification and arithmetic certification: NOT_RUN. Imported
candidates retain their own statuses and known failures. These proof bodies are
not accepted formal proofs. Lean/Lake, a local repository checkout and verified
local canonical skill checkouts were absent. The required proof-automation skill
returned 404 at Noe main `110b11fe23553f5a4fdb5d67063d3b471cdeb805`; dependent execution stopped.
No proof runner, workflow, scheduler or cross-chat operation was dispatched.
Ordinary source authoring/publication is separate. Text, hashes and readback do
not establish parsing, elaboration or the transitive axiom closure.

Maintained source: [../CompactExponentialIntegral.lean](../CompactExponentialIntegral.lean).
156 lines; 8342 UTF-8 bytes; 8 theorem bodies.
Git blob `17d421e1e72bdafd29840f62055a2b0a8f2b765b`; SHA-256 `03e14db07779c5e3f253d67b9519d113b9f173d9c32e5564ee4f31f1a04ed3c8`.

## Exact mathematical argument

Let A>=0, f:R->C integrable for Lebesgue measure, and f(t)=0 when |t|>A.
No smoothness or pointwise continuity is required. Work with the LITERAL
exponential integral E(z)=integral f(t)*exp(z*t) dt. No new transform definition
or normalization is introduced. The fixed plus-sign Fourier integral is E(i*z).

For every natural n, |t^n*f(t)|<=A^n*|f(t)|. The multiplier is continuous,
so this proves measurable and genuinely integrable moments, including n=0.
The existing supported-Fourier integrability theorem at frequency -i*z gives
integrability of the exponential integrand, because i*(-i*z)=z.

Fix ANY z0 in C and use the SAME unit ball |z-z0|<1 for all t. On the support,

    |z| <= |z0|+1,
    Re(z)*t <= |Re(z)|*|t| <= A*(|z0|+1),
    |f(t)*t*exp(z*t)| <= A*exp(A*(|z0|+1))*|f(t)|.

Off the support both sides vanish. The right side is integrable, independent
of z within the ball, and the pointwise parameter derivative is exactly
f(t)*t*exp(z*t). Measurability of the integrands and derivative follows from
measurability of f and continuity of the other factors. Integrability at the
center is supplied before applying the pinned dominated-differentiation theorem.
This proves E'(z0)=integral f(t)*t*exp(z0*t) dt at EVERY complex z0.

Apply the same argument to t^n*f(t), whose support and L1 integrability were
proved, to obtain

    d/dz integral t^n*f(t)*exp(z*t) dt
      = integral t^(n+1)*f(t)*exp(z*t) dt.

Induction then identifies EVERY iterated complex derivative of E with its
moment integral. Differentiability on all of C gives entire analyticity.
Composition with z -> i*z returns to the unchanged plus-sign Fourier convention.

## Consumers and falsification boundaries

WeilContourWeight supplies the ORIGINAL SourcePrimeCorrelation.correlation,
proves its L1 property and doubled support, and applies this theorem to the
shifted parameter s-1/2. No arbitrary entire interpolation surrogate is used.
The source-specific residual bridge is the contour explicit formula, not more
regularity assumed in a structure.

A=0 is allowed: support lies in a null singleton and the integral and derivatives
vanish, even if f(0) is assigned a nonzero value. At n=0 the factor t^0 is 1,
including at t=0. The derivative majorant is uniform in t AND the nearby
parameter; a pointwise radius depending on t would not justify the integral
interchange. Dropping compact support is invalid without a substitute exponential
moment condition: f(t)=1/(1+t^2) is L1 but exp(t)*f(t) is not. Real-axis Fourier
regularity alone is not entire regularity. These are written hostile checks,
not independent review or new checked counterexample declarations.

Dated prior-art comparison: 2026-11-11. The argument is classical differentiation
under an integral, adapted to the exact repository convention. It is a local
consequence of pinned Mathlib, not a claimed direct formalization of a supplied
paper theorem or a novelty claim. Focused searches are incomplete and do not
establish absence elsewhere. No frontier claim, ontology or taxonomy ID is added.

## Pinned primary inputs and source dependencies

Patrick Massot, [Mathlib/Analysis/Calculus/ParametricIntegral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ParametricIntegral.lean), `hasDerivAt_integral_of_dominated_loc_of_deriv_le`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `c7937b328d3ab054a967d37f82132612a3ce83e6`. Apache-2.0. Pinned primary implementation.

grwtsk contributors, [GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean), `integrable_fourier_integrand`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `d7a7d75aea20705cdc037695c07f073e84399a76`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

## Declaration map

- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.integrable_moment`: [integrable_moment.md](integrable_moment.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.integrable_exp_integrand`: [integrable_exp_integrand.md](integrable_exp_integrand.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.norm_parameter_derivative_le`: [norm_parameter_derivative_le.md](norm_parameter_derivative_le.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.hasDerivAt_integral_exp`: [hasDerivAt_integral_exp.md](hasDerivAt_integral_exp.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.hasDerivAt_integral_exp_moment`: [hasDerivAt_integral_exp_moment.md](hasDerivAt_integral_exp_moment.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.iterated_deriv_integral_exp`: [iterated_deriv_integral_exp.md](iterated_deriv_integral_exp.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.analyticOnNhd_integral_exp`: [analyticOnNhd_integral_exp.md](analyticOnNhd_integral_exp.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral.analyticOnNhd_fourier_integral`: [analyticOnNhd_fourier_integral.md](analyticOnNhd_fourier_integral.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801 and the
unchanged pins above. This proposed command has NOT been executed:

```sh
lake build GRWTSK.IntegralTransformsOperationalCalculus.CompactExponentialIntegral
```

Then query the transitive axioms of each declaration and perform fresh kernel
replay and statement-correspondence review. All remain NOT_RUN. No root import,
dependency pin, workflow, policy or protection change is included. Ordinary source
text/hash/diff/publication-readback evidence is recorded separately in math#1801.
