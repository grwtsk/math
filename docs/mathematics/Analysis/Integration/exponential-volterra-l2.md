# Finite exponential Volterra L2 estimates

## Exact finite-interval statements

For real `σ`, a real-valued source `F`, and real time `t`, the source defines

$$
V_{\sigma,F}(t)=\int_0^t e^{-\sigma(t-u)}F(u)\,du.
$$

`exponentialVolterra_eq_damped_primitive` proves the exact factorization

$$
V_{\sigma,F}(t)=e^{-\sigma t}\int_0^t e^{\sigma u}F(u)\,du.
$$

The general energy theorem `sq_integral_le_of_damped_deriv` assumes
`σ > 0`, `T >= 0`, absolute continuity of `V` on the interval from zero to
`T`, `V 0 = 0`, the almost-everywhere differential equation

$$
V'(t)=F(t)-\sigma V(t),
$$

and interval integrability of `F(t)^2`. Under exactly those hypotheses it
proves

$$
\int_0^T V(t)^2\,dt\le
\frac{1}{\sigma^2}\int_0^T F(t)^2\,dt.
$$

`exponentialVolterra_sq_integral_le` specializes this result to
$V_{\sigma,F}$. Its source hypotheses are interval integrability of both `F`
and `F(t)^2` on the finite interval from zero to `T`, together with
`σ > 0` and `T >= 0`. No half-line integrability or limiting argument is
assumed.

## Proof boundary

The damped-primitive factorization supplies an absolutely continuous
representative satisfying the first-order equation. Squaring that equation,
completing a square, and integrating gives the factor `σ^(-2)`; nonnegativity
of the terminal square closes the estimate. Every integral in this argument
is over a finite interval.

The theorem is analytic and has no Möbius or zeta-function premise. Its
[logarithmic Mertens application](../../NumberTheory/Moebius/logarithmic-mertens-boundary.md)
adds a separate arithmetic hypothesis; that application is not part of the
Volterra estimate itself.

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Local work is MIT; Lean and Mathlib retain their upstream
authorship and licenses.

## Source and verification scope

[Source](../../../../GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean).
Status: **fresh-selected**. Verification receipt (artifact:gitblob:0555ad452e401cab084d76c3052bf7255a3e4ce3) ·
credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f).
The receipt covers the finite theorem and a separate consumer under the pinned
compiler with trust zero, fatal warnings, and an owned-declaration axiom audit.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean`](../../../../GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 4 |
| Theorem/lemma commands | 3 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
