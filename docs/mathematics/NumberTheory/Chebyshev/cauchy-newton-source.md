# Derived actual-zeta bounds for the Newton/canonical-tent route

Owner #194; local analytic supplier #134/#139; canonical consumer #261.
Prepared and reviewed against draft #274 at exact parent
`970b96a393b9539520adcf1dfd12088124ae9bf1`, tree
`8318a52f640c990313a6bab90fd840d960ac2731`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This is a source-only draft, not an accepted Lean development or qualified
numerical implementation. The prepared v0.17 mathematical declarations are retained;
publication does not constitute elaboration or acceptance. The classical Mellin/Cauchy/Newton mathematics is not
claimed as original. Every inherited proof and trust obligation remains.

## 1. Supply actual analytic information instead of another assumed curvature

The previous Newton criterion takes center zeta and derivative enclosures and a
whole-disk bound on the SECOND derivative. This increment derives that last bound
from the existing actual zeta source and implements a constructor that fills the
old `secondBound` field. Its new `CenterData` has no curvature field for a caller
to assert. The two center enclosures are still independently proved inputs.

The analytic source is already maintained in CriticalStripRealAxisMellin and
CriticalStripMellinBounds. On Re(s)>0, write

    I(s) = integral_1^infinity {t} t^(-s-1) dt,
    H(s) = s - s(s-1) I(s),
    |I(s)| <= 1/sigma when Re(s)>=sigma>0.

The maintained H is the residue-normalized zeta function, entire with value one
at the removed pole. For s!=1, H(s)=(s-1) zeta(s). Canceling this factor in an
EXACT identity, before estimating any norm, gives

    zeta(s) = s/(s-1) - s I(s).

Thus, on Re(s)>=sigma>0, |s-1|>=delta>0 and |s|<=B,

    |zeta(s)| <= B/delta + B/sigma = C.

This is a proved-in-source bound for the actual zeta function, not a finite
power sum assigned the name zeta. No value or curvature estimate is an input to
this theorem. Its acceptance still depends on the unelaborated inherited source.

## 2. A larger disk supplies one bound on every smaller-disk point

Let D(c,S) be a closed outer disk and R<S. Require

    0<sigma<=Re(c)-S,
    0<delta, Re(c)+S<=1-delta,
    |c|+S<=B.

These scalar inequalities imply the source-domain, pole-separation and magnitude
conditions on the ENTIRE outer disk, not just a collection of sample points.
Zeta is complex differentiable there because the pole is excluded.

For each z in D(c,R), D(z,S-R) is contained in D(c,S). Apply the pinned Mathlib
Cauchy derivative estimate to this translated disk. At derivative order k,

    |f^(k)(z)| <= k! C/(S-R)^k.

For actual zeta this gives

    sup_(z in D(c,R)) |zeta''(z)| <= 2 C/(S-R)^2.

Both the factorial TWO and the positive radius GAP are essential. The bound is
uniform in the smaller disk; applying a center-only Cauchy estimate at c would
not establish that result. No derivative is taken across a pole or a merely
sampled boundary. The quadratic f(z)=z^2 on the unit disk attains the factor two
at its center.

The present rational geometry is deliberately sufficient, not optimal: the outer
disk is restricted to the open critical strip using its real-coordinate margins.
At high imaginary height a less conservative pole-distance estimate is possible,
but is not implemented in this proposal.

## 3. A rational curvature constructor feeds the unchanged Newton theorem

For rational c,R,S define

    sigma=Re(c)-S, delta=1-Re(c)-S,
    B=|Re(c)|+|Im(c)|+S,
    L=2*(B/delta+B/sigma)/(S-R)^2.

Check 0<R<S, sigma>0 and delta>0. The source casts these exact rational quantities
into the preceding analytic theorem and derives the whole-disk curvature bound.
`newtonData` combines L with the supplied preconditioner, center value, center
first derivative and their error allowances. The old Newton test is reused:

    eta = mag(A*v)+mag(A)*e0,
    kappa = mag(1-A*d)+mag(A)*(e1+L*R),
    kappa<1, eta+kappa*R<=R.

The preconditioner and center errors are not recomputed by this increment; their
old meanings remain. `estimates_of_centers` supplies all three old analytic
estimates from only the two actual center enclosures, because L is now derived.
`exists_unique_point` calls the existing actual-zeta Newton theorem to obtain a
unique canonical point in the original inner disk, with analytic multiplicity
one. `familyEstimates_of_centers` supplies the same constructor at every existing
record index to the unchanged family consumer. The complete-height upper count
and all tent-evaluation checks remain separate and unchanged.

No data package certifying an actual numerical zeta zero is constructed. A
successful rational margin test alone still cannot validate invented center data.
The controls deliberately choose v=0,d=A=1 at c=1/2, R=1/1000000,S=1/4. The finite
test passes, but the maintained sourced negative-real-value theorem proves those
zero-error center estimates are FALSE. This prevents treating a passing Boolean
as an unconditional zero certificate even after curvature has been supplied.

## 4. A finite, source-identified route to the remaining two center estimates

The existing CriticalStripFinitePower owner supplies

    H_N(s)=(s-1)*sum_(k=1..N) k^(-s)+N^(1-s), N>=1,
    H(s)-H_N(s)=-s(s-1) I_tail,N(s),
    |I_tail,N(s)| <= N^(-sigma)/sigma.

The new `FinitePowerZetaJet.model` is exactly H_N(s)/(s-1), used only off the pole.
The source proves its equivalent form

    Z_N(s)=sum_(k=1..N) k^(-s)+N^(1-s)/(s-1),

and differentiability on the required domain. The sum excludes base zero. The
endpoint term is retained. Cancellation in the exact residual gives

    zeta(s)-Z_N(s)=-s I_tail,N(s),
    |zeta(s)-Z_N(s)| <= E_N=B*N^(-sigma)/sigma

throughout the admitted outer disk. This cancellation avoids needlessly dividing
the normalized error bound by another small pole-distance lower bound.

Both functions are holomorphic on the disk. Cauchy's first-derivative estimate
applied to their DIFFERENCE, using the uniform boundary error, now derives

    |zeta'(c)-Z_N'(c)| <= E_N/S.

This is not differentiation of a pointwise error inequality. Agreement at one
center does not bound the derivative: f(z)=17z agrees with zero at zero while
its derivative there is 17.

For separately proved finite model enclosures |Z_N(c)-v|<=nu0 and
|Z_N'(c)-d|<=nu1, `center_jet_errors` derives

    |zeta(c)-v| <= E_N+nu0,
    |zeta'(c)-d| <= E_N/S+nu1.

The Lean source targets `deriv (model N)` directly. By ordinary differentiation,
its finite evaluation formula is

    Z_N'(s)=-sum_(k=1..N) log(k)*k^(-s)
             -N^(1-s)*(log(N)/(s-1)+1/(s-1)^2).

This displayed explicit derivative formula is an explanatory deduction and was
independently checked in diagnostics; it is NOT a separate new Lean declaration.
The finite logarithm/power/complex-division arithmetic, its error propagation,
and rational pricing of N^(-sigma) still need their own refinement. No certified
finite evaluator for these different functions is inferred from the tent checker.

## 5. The remaining cost is now explicit

At c=1/2+14i and outer radius S=1/4, sigma=delta=1/4 and B=59/4. The source error
allowances are E_N=59*N^(-1/4) and E_N/S=236*N^(-1/4). Even N=2^40 gives exactly

    value allowance       59/1024,
    derivative allowance  59/256.

These are conservative UPPER ALLOWANCES, not measured actual errors, lower bounds
on accuracy or proof that another evaluator needs that many terms. They show why
brute-force use of this particular tail estimate is a poor next implementation
choice for small error budgets. Higher-order endpoint corrections or a sharper
sourced remainder should be developed before relying on enormous finite sums.
Refining floating precision cannot shrink an unchanged analytic truncation bound.

The curvature bound also worsens when sigma, delta or S-R approach zero. At
c=1/2, R=1/8,S=1/4 the exact L is 768; at c=1/2+14i it is 15104. These are derived
majorants, not estimates that the actual second derivatives are that large.

## 6. Source review, controls, and acceptance

The six Lean modules, isolated target and this companion are additive. Historical
files, source definitions, dependency pins, prior manifests and the public import
root are not edited. The new target additionally depends on the existing atlas
fractional-Mellin and finite-power source, including their full transitive trust
requirements; merely importing them does not accept their proof scripts.

Controls retain zero-gap rejection despite totalized rational division, both
outer strip boundaries, positive inner radius, the factorial two, the distinction
between center and disk information, and the separate false center-data case.
A concrete analytic specialization targets |zeta''|<=768 on D(1/2,1/8); it is not
a numerical grid certificate or a zero claim.

Independent Fraction diagnostics exercise finite geometry and analytic polynomial
models. Ordinary mpmath comparisons also use actual zeta values and derivatives,
but are not outward-rounded interval arithmetic or proofs of analytic uniformity.
They do not execute Lean, qualify generated code, or produce a zero inventory.
Scripts and reports remain outside the proposed pure-math files.

All new and inherited scripts require exact-head elaboration, repairs, complete
public-type/generated-instance reconciliation, full import/axiom review and
independent acceptance. No Lean/Lake invocation or held-worker action is requested.
The next local supplier is a useful, certified finite zeta/first-derivative
evaluator. The normalized complete count, global arithmetic source, divisor-tail
estimates and strict prime margins remain independent obligations. No actual zero
certificate, bounded line theorem, Legendre or RH conclusion is claimed here.
