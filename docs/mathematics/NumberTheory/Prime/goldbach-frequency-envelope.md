# Goldbach frequency envelopes and the cost of uniform arc maxima

Human research direction: grwtsk contributors.
Mathematical analysis and source drafting assistance: OpenAI ChatGPT.

Parent: issue #259 under #257; PR #382 at
`d235062d6a2061c5d170c3acc5651285cd4b9554`, tree
`d60a74667b3a58cd394a15e283b3fc7e1f13cadb`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This is a refinement of the
transfer from supplied prime-prefix bounds. It supplies no prime-distribution
rate, model-major lower bound, signed minor bound, or Goldbach proof.

## 1. The specific loss being removed

PR #382 bounds every prefix discrepancy and evaluates its Abel loss at the
outer edge of an arc. PR #379 then bounds the exact and model amplitudes by
`Theta_N` and `X=N+1`, and multiplies by the coarse measure bound `6*rho`.
Those steps are valid upper bounds but discard known frequency dependence.

This continuation keeps the same prefix supplier. For each denominator put

\[
b_q=\sum_{r<q,(q,r)=1} B(N,q,r),\qquad
t_q=\sum_{r<q,(q,r)>1}\theta(N;q,r),\qquad H=\Theta_N+X.
\]

The actual frequency-dependent discrepancy budget is

\[
D_q(\beta)=b_q\{1+N|1-e(\beta)|\}+t_q.
\]

The implementation defines this by a finite residue sum, retaining each
`B(N,q,r)` and each exact non-reduced mass. It does not assume a bound for a
prime-containing residue from a theorem that only applies to reduced residues.
In particular the `log 2` contribution remains present.

## 2. Residual estimate retaining the model amplitude

Let `M=A_q(a)V_N(beta)`, and let `D_actual=S-M`. The inherited factorization
gives, with unit-modulus target phases retained,

\[
R=D_{\rm actual}(2M+D_{\rm actual})e(-Na/q)e(-N\beta).
\]

Consequently a supplied `|D_actual|<=D_q(beta)` yields

\[
|R|\le D_q(\beta)\{2|A_q(a)||V_N(\beta)|+D_q(\beta)\}.
\]

The squared discrepancy is indispensable: `M=0,D_actual=1` leaves residual
one, whereas a bound retaining only `2|M||D_actual|` would be zero. A vanishing
Ramanujan coefficient does not make the prime sum or residual vanish.

The earlier estimate also remains available at each frequency:
`|R|<=D_q(beta)*H`. Let `U_q` be PR #382's uniform residue total on the arc.
The new envelope, evaluated in the source's original frequency coordinate, is

\[
P_{a,q}(x)=\min\bigl(U_qH,\ D_q(\beta)H,
 D_q(\beta)[2|A_q(a)||V_N(\beta)|+D_q(\beta)]\bigr),
\quad\beta=x-a/q.
\]

Each member of the minimum separately bounds the residual on the clipped arc.
The frequency terms are periodic, so wrapped components retain the same small
chord and model amplitude without replacing a central offset near one by its
large absolute value.

The new per-arc budget is the integral of this explicit envelope over the
actual clipped set. Its integrand uses the supplied prefix bounds, finite
non-reduced mass, and finite model; it is not defined using the unknown
Goldbach residual norm. Its continuity proves integrability on the clipped
unit domain. The residual norm is bounded by this integral using the ordinary
integral norm inequality.

## 3. Monotonic improvement at source level

The outer cap gives `P<=U_q*H`. Therefore

\[
\int_{\mathfrak M(a,q)}P_{a,q}
 \le U_qH\,\operatorname{meas}(\mathfrak M(a,q))
 \le U_qH\,6Q/[qX].
\]

The source supplies this per-arc comparison and its finite sum over all
indexed arcs. Thus the new budget never exceeds PR #382's budget under the
same prefix supplier. No numerical experiment is needed for that conditional
mathematical comparison. The Lean scripts expressing it remain unexecuted.

No exact two-radius measure theorem or change-of-variables theorem is hidden
in the implementation: it integrates on the inherited clipped set directly.
The coefficient/evaluation work in parallel PR #381 remains separate and is
not imported or duplicated here.

## 4. Quantitative consequences of retaining the amplitude

The following is a written analytic derivation, not a new Lean theorem in
this increment. For reduced `a/q`, elementary Mobius inclusion-exclusion gives

\[
\sum_{(r,q)=1}e(ar/q)
=\sum_{d\mid q}\mu(d)\sum_{s<q/d}e(as/(q/d))=\mu(q).
\]

The inner geometric sum is zero unless `q/d` divides `a`; coprimality forces
`d=q`. Thus `|A_q(a)|=|mu(q)|/phi(q)`. This exact finite identity concerns the
model coefficient, not the discrepancy or prime distribution.

The finite geometric sum also gives, for `0<|beta|<=1/2`,

\[
|V_N(\beta)|\le\min\left(X,\frac1{2|\beta|}\right),
\]

using `|sin(pi*beta)|>=2|beta|`. At zero use `|V_N(0)|=X`.
In scaled coordinates `t=X|beta|`, let

\[
R_q=Q/q,\quad u(t)=\min(1,1/(2t)),\quad
d_q=b_q+t_q,\quad f_q=2\pi(N/X)b_q,
\]

with `u(0)=1`. Then `D_q(beta)<=d_q+f_q*t` on a centered arc. Under the
separation scale, the clipped pieces combine by periodicity into its centered
window. Integrating the uncapped model-amplitude envelope gives the explicit
upper bound

\[
4|A_q(a)|[d_q I_0(R_q)+f_q I_1(R_q)]
+\frac2X\left[d_q^2R_q+d_qf_qR_q^2+\frac{f_q^2R_q^3}{3}\right],
\]

where, since every indexed `q<=Q` has `R_q>=1`,

\[
I_0(R)=\frac{1+\log(2R)}2,\qquad I_1(R)=\frac R2-\frac18.
\]

These follow by splitting at `t=1/2`. This formula supplies a route to
explicit integration bounds without treating ordinary quadrature as proof.
Its change of variables, geometric-sum estimate, Ramanujan evaluation, and
closed integral evaluation remain written derivations in this increment.

If every reduced residue has `B(N,q,r)<=b`, then `b_q<=phi(q)*b`, while
`t_q<=log q`. Summing the displayed bound over reduced numerators and
denominators gives

\[
\mathcal E_{\rm maj}
\ll bQ^2+Q\log^2(2Q)
+\frac{b^2Q^4+bQ^3\log(2Q)+Q^2\log^2(2Q)}{X}.
\]

For example use `I_0(R)<=R`, `I_1(R)<=R/2`, `phi(q)<=q`, and
`sum_(q<=Q) 1/q<=1+log Q`. The linear prime-discrepancy term loses one fewer
power of Q than the previous uniform envelope. The squared-discrepancy term
must be paid as well; omitting it would give a false improvement.

A sufficient asymptotic regime for a linear main allowance is
`b*Q^2=o(N)` and `Q*log(2Q)^2=o(N)`. For polylogarithmic
`Q=floor(log(N)^b0)` and prefix bounds `C*N/log(N)^A`, the reduced part is
small when `A>2*b0`, versus `A>3*b0` for the previous coarse transfer.
This is a sufficient regime for the stated estimates, not a necessary
Goldbach threshold. It supplies neither the prefix estimate nor constants
and a cutoff for a strict terminal inequality.

## 5. Finite feasibility evaluation and its limits

To compare with PR #382, one can use the same observed maxima of every actual
reduced prefix for `0<=k<=N`, the same non-reduced correction, and the same
finite model-major value. In the scaled variable the new envelope contains
the exact quantities

\[
|1-e(\beta)|=2|\sin(\pi t/X)|,\qquad
|V_N(\beta)|=X\left|\frac{\operatorname{sinc}(t)}{\operatorname{sinc}(t/X)}\right|.
\]

Here `sinc(t) = sin(pi*t)/(pi*t)` is the normalized sinc function, with
`sinc(0)=1`; this convention is specific to the displayed formula.

Finite diagnostic values are reported with the PR, outside this static
mathematical target. A ratio below one is only a sampled major-budget margin.
It is not certified quadrature, an independently certified model lower bound,
a universal prefix supplier, or payment of the complete signed minor term.
No finite Goldbach exception coverage is claimed from these computations.

## 6. Universal endpoint and remaining work

The terminal theorem keeps the original geometric scale, all reduced-prefix
hypotheses, model-major lower bound, signed minor norm bound, and strict
combined inequality. Its tail wrapper quantifies over every even `N>2` above
one fixed cutoff. Finite coverage below that cutoff stays separate.

Next analytic work is to establish a quantitative prefix supplier with
explicit constants/cutoff and to certify the model comparison/integrated
envelope where needed. The complete signed minor estimate remains a separate
universal obligation. Exact-head Lean elaboration and all inherited trust
checks are still pending; no build, external replay, merge, or Goldbach proof
is authorized or represented. PR #345 is outside this work.
