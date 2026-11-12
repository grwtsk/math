# WeilContourWeight

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

Maintained source: [../WeilContourWeight.lean](../WeilContourWeight.lean).
219 lines; 12528 UTF-8 bytes; 12 theorem bodies.
Git blob `aa53350b401764c081a0559833d7f840a5ecc847`; SHA-256 `d777f87e2d1090aa369dd05884fb8b64d6bbda3385e3873c79bb0499deb1c732`.

## Exact source and analytical argument

Use the EXISTING correlation C_f(r)=integral conj(f(t))*f(t+r) dt and the fixed
Fourier convention F_f(z)=integral f(t)*exp(i*z*t) dt. The contour weight is the
literal integral

    W_f(s)=integral C_f(r)*exp((s-1/2)*r) dr.

No global definition, admissibility predicate, arithmetic form or RH target is
replaced. Generic regularity requires only A>=0, f integrable and f=0 outside
[-A,A]. Decay and vertical-line integrability use the ORIGINAL Admissible f
(compact C-infinity) and tsupport(f) subset [-A,A].

If |r|>2A, both f(t) and f(t+r) cannot be nonzero: otherwise
|r|=|(t+r)-t|<=|t+r|+|t|<=2A. Thus the correlation integrand is identically zero,
and C_f(r)=0 on BOTH support tails. The existing integrable-convolution theorem
at Fourier frequency zero supplies C_f in L1. For generic L1 inputs inner
integrability is only needed almost everywhere; the existing smooth application
supplies every inner integral on the canonical test domain.

The new compact exponential-integral theorem now supplies

    W_f'(s)=integral r*C_f(r)*exp((s-1/2)*r) dr,
    W_f entire.

Support and L1 have been derived BEFORE applying dominated differentiation.
The factor i*spectralCoordinate(s)=s-1/2 proves exact equality to the existing
correlation Fourier transform. Its existing factorization gives

    W_f(s)=F_f(z_s)*conj(F_f(conj(z_s))), z_s=-i*(s-1/2).

This is not an off-axis modulus square. No projection of s to its ordinate is
used. Analyticity is obtained from the literal integral, not incorrectly from
an anti-holomorphic absolute-square expression.

For canonical admissible f and ANY natural k, the prior every-order Fourier
bound yields

    |W_f(s)| <= p_k(f)^2 *
      (exp(A*|Re(s)-1/2|)/(1+|s-1/2|)^k)^2,
    p_k(f)=2^k*(integral |f| + integral |deriv^[k] f|).

Since |Im(s)|<=|s-1/2|, for EVERY R and s with |Re(s)-1/2|<=R,

    |W_f(s)| <= p_k(f)^2 * (exp(A*R)/(1+|Im(s)|)^k)^2.

Nonnegative A permits enlargement of the numerator; the denominator is strictly
positive, including height zero. The inequality is uniform throughout each
fixed strip and holds for both height signs. It does not say the constant is
uniform as the support, test or strip varies.

On the line s=sigma+i*t take k=1 and R=|sigma-1/2|. Set

    K=p_1(f)^2*exp(A*|sigma-1/2|)^2
      =p_1(f)^2*exp(2*A*|sigma-1/2|).

The elementary comparison 1+t^2 <= (1+|t|)^2 gives

    |W_f(sigma+i*t)| <= K/(1+t^2) for EVERY real t.

Entire regularity supplies measurability of the line restriction. The pinned
Cauchy-density theorem proves that the majorant is integrable and has integral
K*pi. Therefore the source statement proves BOTH genuine vertical-line
integrability and the complete norm budget

    integral |W_f(sigma+i*t)| dt <= K*pi.

No finite height cutoff or numerical quadrature enters this result.

Finally, the actual entire weight discharges ContinuousAt W at each original
indexed Dirichlet zero in the existing local logarithmic-coefficient theorem:

    (s-rho)*W_f(s)*(completedLFunction chi)'/completedLFunction chi
      -> m_chi(rho)*W_f(rho).

Its original multiplicity and full complex rho are retained. For conductor-one
completed zeta, the same weight gives coefficients -W_f(0) and -W_f(1).
Both remain present; neither pole-neutral condition is imposed. Direct
substitution gives W_f(0)=integral C_f(r)*exp(-r/2) dr and
W_f(1)=integral C_f(r)*exp(r/2) dr. The existing zeta_pole_correlation identifies
their sum with the two opposite-moment CROSS products. Its result is reused,
not duplicated or silently replaced by positive squares.

## Scope, hostile checks and first remaining premise

This is an analytic contour-weight supplier, NOT the full explicit formula.
Integrability of W_f on a line DOES NOT imply integrability of
W_f*(Lambda_chi'/Lambda_chi) there: a logarithmic derivative can have singularities
on the line or grow without a proved bound. The principal next obligation is an
actual-source zero-avoiding contour/edge estimate and the finite contour identity,
followed by prime-power and gamma/conductor/dual-character integral evaluation.
Every such hypothesis remains open; none is hidden in a new structure.

Check boundaries: A=0; f=0; k=0 in the pointwise decay theorem (which ALONE gives
no vertical integrability); t=0 with denominator 1; arbitrary sigma; both signs
of t; repeated and central source zeros; both completed-zeta poles; W_f(a)=0;
complex-valued f. The entire function exp(-s^2) illustrates why mere entireness
cannot justify arbitrary contour-edge limits. More specifically, even rapid
decay of W alone does not control its product with a function with poles on the
integration path. Fixed-test decay is not varying-test interpolation-cost/tail
control. No lower sign bound, RH/GRH conclusion or imprimitive GRH transfer.

RP-OC-01 receives actual transform regularity and fixed-strip decay; RP-OC-02
receives the contour-weight and local-source applications. A receives provenance,
not axiom/replay admission. B's zero-count/tail results are unchanged. RP-OC-03--10,
C--F and all four higher-realization extensions are untouched. No program is
complete without the required checks and remaining source-return obligations.

Dated prior-art comparison: 2026-11-11. These are classical compact-transform and
Cauchy-majorant arguments, not claimed novel results. Existing local correlation,
decay and logarithmic-residue candidates are composed, not independently
re-proved or retroactively verified. Pinned primary Mathlib source, not latest
search snippets, fixes API correspondence. Searches are incomplete. Novelty
UNASSESSED; no new frontier claim ID or taxonomy/ontology migration.

## Pinned primary inputs and source dependencies

Patrick Massot, [Mathlib/Analysis/Calculus/ParametricIntegral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ParametricIntegral.lean), `hasDerivAt_integral_of_dominated_loc_of_deriv_le`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `c7937b328d3ab054a967d37f82132612a3ce83e6`. Apache-2.0. Pinned primary implementation.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean), `integrable_inv_one_add_sq; integral_univ_inv_one_add_sq`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c`. Apache-2.0. Pinned primary implementation.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean), `integrable_correlation_fourier_integrand; fourier_correlation_eq_reflected_product; zeta_pole_correlation`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `8b2afb9be022253be047c4e47cbd42d51134dee1`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationDecay.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationDecay.lean), `norm_fourier_correlation_le_decay`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `2f6fad1e0a7011c751ffd2d366cd72c30f636d83`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLogarithmicResidues.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLogarithmicResidues.lean), `completedLFunction_weighted_logDeriv_at_zero; completedZeta_weighted_logDeriv_at_zero; completedZeta_weighted_logDeriv_at_one`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `030b82615f57a78889166f708867ded84fae96d0`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

## Declaration map

- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_eq_zero_of_abs_gt`: [correlation_eq_zero_of_abs_gt.md](correlation_eq_zero_of_abs_gt.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.integrable_correlation_of_supported`: [integrable_correlation_of_supported.md](integrable_correlation_of_supported.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.hasDerivAt_correlation_contour_weight`: [hasDerivAt_correlation_contour_weight.md](hasDerivAt_correlation_contour_weight.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.analyticOnNhd_correlation_contour_weight`: [analyticOnNhd_correlation_contour_weight.md](analyticOnNhd_correlation_contour_weight.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_contour_weight_eq_fourier`: [correlation_contour_weight_eq_fourier.md](correlation_contour_weight_eq_fourier.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_contour_weight_eq_reflected_product`: [correlation_contour_weight_eq_reflected_product.md](correlation_contour_weight_eq_reflected_product.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.norm_correlation_contour_weight_le_decay`: [norm_correlation_contour_weight_le_decay.md](norm_correlation_contour_weight_le_decay.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.norm_correlation_contour_weight_le_strip`: [norm_correlation_contour_weight_le_strip.md](norm_correlation_contour_weight_le_strip.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.norm_correlation_contour_weight_vertical_le`: [norm_correlation_contour_weight_vertical_le.md](norm_correlation_contour_weight_vertical_le.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.integrable_correlation_contour_weight_vertical`: [integrable_correlation_contour_weight_vertical.md](integrable_correlation_contour_weight_vertical.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completedLFunction_correlation_weight_at_zero`: [completedLFunction_correlation_weight_at_zero.md](completedLFunction_correlation_weight_at_zero.md).
- `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completedZeta_correlation_weight_at_poles`: [completedZeta_correlation_weight_at_poles.md](completedZeta_correlation_weight_at_poles.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801 and the
unchanged pins above. This proposed command has NOT been executed:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilContourWeight
```

Then query the transitive axioms of each declaration and perform fresh kernel
replay and statement-correspondence review. All remain NOT_RUN. No root import,
dependency pin, workflow, policy or protection change is included. Ordinary source
text/hash/diff/publication-readback evidence is recorded separately in math#1801.
