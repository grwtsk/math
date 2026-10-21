# Goldbach periodized common singular windows

Status: `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: `#259`  
Parent program: `#257`  
Stacked parent: draft PR `#381`, exact head `497aa56fe7544c710f9f2115d7af5eeabc4214a4`

This packet advances only the exact geometry and change-of-variables layer of
the finite Goldbach progression model. It does not execute Lean, evaluate a
singular integral, estimate primes in arithmetic progressions, bound the minor
arcs, cover a finite exceptional range, or prove Goldbach.

## 1. Inherited source

The inherited stack already supplies:

- the exact ordered Goldbach count;
- the prime-only logarithmic mass and its positivity bridge;
- finite and continuous additive Fourier identities;
- prime-modulus local factors and finite cutoff products;
- a measurable rational major/minor partition;
- reduced rational centers with three period lifts;
- a sufficient pairwise-disjointness scale;
- exact residue-class reconstruction;
- a canonical progression model with explicit residue discrepancies;
- pointwise and integrated transfer of supplied discrepancy bounds;
- arithmetic/singular-kernel factorization;
- prime-denominator coefficients and the exact identity
  `1 + C_p(N) = sigma_p(N)`.

The remaining geometric gap in that stack is that the clipped singular
integral was still written separately for every numerator.

## 2. Offset circle and metric window

For an indexed reduced center

\[
c_{a,q}=\frac aq,\qquad 0\le c_{a,q}<1,
\]

the exact local coordinate is

\[
\beta_{a,q}(x)=x-c_{a,q}.
\]

The new source regards this local coordinate as a point of the unit additive
circle:

\[
\overline{\beta}_{a,q}(x)
  =(\beta_{a,q}(x):\mathbf R/\mathbf Z).
\]

The inherited radius is

\[
\rho_{Q,N}(q)=\frac{Q}{q(N+1)}.
\]

The intrinsic circle window is the closed metric ball

\[
W_{Q,N}(q)
  =\overline B_{\mathbf R/\mathbf Z}(0,\rho_{Q,N}(q)).
\]

The exact integration-domain pullback is

\[
(0,1]\cap\overline{\beta}_{a,q}^{-1}(W_{Q,N}(q)).
\]

## 3. Why the three real lifts are exact

For \(x\in(0,1]\) and an indexed center \(c_{a,q}\in[0,1)\),

\[
-1 < x-c_{a,q}\le 1.
\]

The nearest integer to this offset is therefore one of

\[
-1,\quad 0,\quad 1.
\]

Mathlib's unit-circle norm formula gives

\[
\left\|(\beta:\mathbf R/\mathbf Z)\right\|
=
|\beta-\operatorname{round}(\beta)|.
\]

Thus circle-window membership is equivalent to membership in one of the three
real closed intervals centered at

\[
c_{a,q}-1,\qquad c_{a,q},\qquad c_{a,q}+1.
\]

Consequently the packet identifies the inherited clipped real arc exactly:

\[
\operatorname{ClippedArc}_{Q,N}(a,q)
=
(0,1]\cap
\overline{\beta}_{a,q}^{-1}(W_{Q,N}(q)).
\]

This identity needs no small-radius hypothesis. For a large radius the circle
ball saturates, and the overlapping three-lift real union represents that
saturation correctly.

## 4. Intrinsic finite singular kernel

The inherited real kernel is

\[
K_N(\beta)
=
V_N(\beta)^2e(-N\beta),
\qquad
V_N(\beta)=\sum_{0\le n\le N}e(n\beta).
\]

Every frequency is integral, so the kernel descends to `AddCircle 1`:

\[
\overline K_N(z)
=
\left(\sum_{0\le n\le N}e_n(z)\right)^2e_{-N}(z).
\]

The pullback is exact:

\[
K_N(\beta)=\overline K_N(\beta\bmod1).
\]

The packet also records literal one-periodicity of the real kernel.

## 5. Periodized change of variables

Define the numerator-independent circle singular integral

\[
J^\circ_{Q,N}(q)
=
\int_{W_{Q,N}(q)}\overline K_N(z)\,dz.
\]

The map

\[
x\longmapsto (x-c_{a,q})\bmod1
\]

takes the fundamental interval \((0,1]\) to the unit additive circle. The
source uses:

- translation of interval integrals;
- the measure-preserving quotient map from a real fundamental interval to
  `AddCircle 1`;
- the exact clipped-arc/circle-window preimage identity;
- measurable indicators.

The resulting exact theorem is

\[
J_{Q,N}(a,q)
=
J^\circ_{Q,N}(q)
\]

for every indexed pair \((a,q)\), where \(J_{Q,N}(a,q)\) is the inherited
clipped singular integral. The right side depends on the denominator and the
cutoff data, but not on the numerator.

No pairwise-disjointness premise is required for this one-arc identity.

## 6. Safe symmetric real window

The conventional real symmetric window is

\[
J^{\mathrm{sym}}_{Q,N}(q)
=
\int_{-\rho_{Q,N}(q)}^{\rho_{Q,N}(q)}
K_N(\beta)\,d\beta.
\]

This expression must not replace the circle window for arbitrary radius. When

\[
\rho_{Q,N}(q)<\frac12,
\]

the centered fundamental interval
\((-\tfrac12,\tfrac12]\) meets the circle-ball preimage in exactly

\[
[-\rho_{Q,N}(q),\rho_{Q,N}(q)].
\]

The packet therefore proves the conditional identity

\[
J^\circ_{Q,N}(q)
=
J^{\mathrm{sym}}_{Q,N}(q).
\]

The inherited scale

\[
2Q^2<N+1
\]

implies this half-period bound for every positive indexed denominator
\(q\le Q\). Hence, in the same regime already used for pairwise-disjoint major
arcs,

\[
J_{Q,N}(a,q)
=
J^{\mathrm{sym}}_{Q,N}(q).
\]

## 7. Large-radius hostile control

At

\[
Q=1,\qquad N=0,\qquad q=1,
\]

the radius is \(1\). The unit-circle window is the whole circle, and the
zero-target finite singular kernel is the constant one function. Therefore

\[
J^\circ_{1,0}(1)=1.
\]

The naive real symmetric interval is \([-1,1]\), so

\[
J^{\mathrm{sym}}_{1,0}(1)=2.
\]

This concrete control prevents the unconditional replacement of a periodized
circle window by a real interval that counts multiple periods.

## 8. Exact major-sum rewrites

The inherited factored progression major sum is

\[
\mathcal M_{Q,N}
=
\sum_{(a,q)\in\mathcal I_Q}
B_{N;q}(a)\,J_{Q,N}(a,q).
\]

The packet defines the intrinsic common-window form

\[
\mathcal M^\circ_{Q,N}
=
\sum_{(a,q)\in\mathcal I_Q}
B_{N;q}(a)\,J^\circ_{Q,N}(q)
\]

and proves

\[
\mathcal M_{Q,N}=\mathcal M^\circ_{Q,N}
\]

without a small-radius premise.

Under \(2Q^2<N+1\), it also defines

\[
\mathcal M^{\mathrm{sym}}_{Q,N}
=
\sum_{(a,q)\in\mathcal I_Q}
B_{N;q}(a)\,J^{\mathrm{sym}}_{Q,N}(q)
\]

and proves

\[
\mathcal M_{Q,N}=\mathcal M^{\mathrm{sym}}_{Q,N}.
\]

## 9. Denominator-block collapse

For one positive admitted denominator \(q\le Q\), the inherited block is

\[
\mathcal B_{Q,N}(q)
=
\sum_{\substack{0\le a<q\\(a,q)=1}}
B_{N;q}(a)\,J_{Q,N}(a,q).
\]

The common-window theorem now discharges the formerly explicit premise:

\[
\mathcal B_{Q,N}(q)
=
C_q(N)\,J^\circ_{Q,N}(q),
\]

where

\[
C_q(N)
=
\sum_{\substack{0\le a<q\\(a,q)=1}}B_{N;q}(a).
\]

Under the safe global scale,

\[
\mathcal B_{Q,N}(q)
=
C_q(N)\,J^{\mathrm{sym}}_{Q,N}(q).
\]

This is still a finite denominator identity. It is not an Euler-product
identity and does not evaluate \(J^{\mathrm{sym}}_{Q,N}(q)\).

## 10. Terminal consumers

The inherited strict consumers are restated with either the intrinsic
circle-window major sum or the symmetric-window major sum.

A count conclusion still requires:

1. the inherited separation condition;
2. a lower bound for the real part of the complete finite model major sum;
3. uniform bounds for every finite prime-log progression discrepancy at every
   point of every clipped arc;
4. a complete signed minor-arc norm bound;
5. for the local-main form, a separate model-to-local-main error;
6. one strict combined margin.

No residual cancellation is inserted. Every supplied error is charged once.

## 11. Hostile boundaries retained

The source controls retain all of the following:

- the common circle-window identity does not require a small radius;
- the symmetric real replacement does require the half-period condition;
- equality at the scale boundary is rejected because the premise is strict;
- two different reduced numerators at denominator three have the same
  singular integral in a concrete safe case;
- the denominator-three block collapses exactly in that case;
- common-window bookkeeping can coexist with `goldbachCount 2 = 0`.

## 12. What this packet does not supply

The following remain open obligations:

- exact-head Lean elaboration and source repair;
- exact declaration-type reconciliation;
- complete transitive import, axiom, and native-dependency audit;
- hostile Lean replay and external acceptance;
- explicit evaluation or lower bounding of the finite symmetric singular
  integral;
- a finite denominator-sum comparison with the truncated local main scale,
  including a declared finite-tail error;
- uniform source-bound estimates for every finite prime-log progression
  discrepancy on the declared arcs;
- a complete signed minor-arc norm bound;
- a strict every-even margin above one fixed cutoff;
- complete finite coverage below that cutoff.

The packet makes no claim of a new prime-distribution estimate, a prime number
theorem in progressions, an infinite singular-series theorem, a finite
exception result, or strong Goldbach.
