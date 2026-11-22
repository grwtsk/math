# Exact intermediate Gm observation identity and certified adaptive precision

**Consumer:** [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850), typed intermediate Alpöge Gm supplier,
with [#1828](https://github.com/grwtsk/math/issues/1828) and Weil signed readout
[#1819](https://github.com/grwtsk/math/issues/1819).  
**Local Lean source candidate:** [PrimeJacobiGmAdaptiveCertificate.lean](PrimeJacobiGmAdaptiveCertificate.lean).  
**Canonical local data:** \`PrimeJacobiGmArithmeticReturn.lean\` (blob
\`58f73c23c615bf7192e6934f2a5d9bd6e48454d7\`),
\`WeilFinitePrimeObservations.lean\` (blob
\`a1d3a6350d9bf3a66bdebee6977962c2545e2d9b\`).
Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
**Upstream comparison only:** Alpöge mirror
\`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\`,
\`Formalism/StatementFL.lean\` blob
\`dc044005eb5db4e1c2a600cc70c8d8974c1aa8c9\`,
\`.../ExplicitFormulaErrorOfHostConditions.lean\` blob
\`ed60b4b997cd4703713660b185b9e43fd95559a1\`,
and \`.../CoreGm.lean\` blob
\`3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d\`.
The upstream environment is a different Lean/Mathlib revision;
no incompatible RH or final theorem is imported into math root.

## A. Exact signed source error identity

Fix a finite family of **actual nontrivial Dirichlet characters**
\(\chi_i\) with actual conductors, and original real family weights
\(w_i\). The original analytic corrections
\(xL'(1,\chi_i)/L(1,\chi_i)\) must be **identical on both sides**;
they do not come from an approximate coefficient table.

Let \(\lambda(n)=\Lambda(n)\) be the true von Mangoldt sequence
and \(\widetilde\lambda(n)\) any supplied observation.
Write \(a_x(n)=x/n-1\) and define the exact real
character-phase multiplier

\[
C(n)=1+\sum_i w_i\operatorname{Re}\chi_i(n).
\]

The local \`sourceGm\` and \`observedGm\` definitions use the
same centered zeta term and the same genuine analytic corrections.

**Theorem 1 (literal Gm error equality).** For every \(x\ge1\)
(and indeed every real x using the identical \`Finset.Icc\` convention),

\[
\boxed{
\widetilde G_m(x)-G_m(x)
=\sum_{1\le n\le\lfloor x\rfloor}
  \bigl(\widetilde\lambda(n)-\Lambda(n)\bigr)
  \left(\frac xn-1\right) C(n).
}
\]

**Proof:** subtract the observed and true definitions of Gz and each
GchiC. The \(x\log x\), Euler constant and every genuine
\(xL'/L(1,\chi)\) term cancel identically. For each fixed character,
finite sum linearity and the real projection give
\(\operatorname{Re}(\widetilde\lambda-\lambda)\chi=
(\widetilde\lambda-\lambda)\operatorname{Re}\chi\).
Switch the two **finite** sums over n and i. The zeta base contributes
the 1 in C(n), and the character terms contribute the weighted real
parts. This is equality, not an asymptotic approximation. \(\square\)

The source proof candidates are named
\`character_log_derivative_cancels\`,
\`character_head_delta_real\`, \`zeta_head_delta\` and
\`observedGm_delta_eq_signedPrimeObservationDelta\`.
All are **NOT_RUN** in Lean.

## B. Certified all-character finite error budget

Every actual Dirichlet character satisfies \(|\chi_i(n)|\le1\),
including \(\chi_i(n)=0\) at ramified primes.
Hence \(|\operatorname{Re}\chi_i(n)|\le1\) and

\[
|C(n)|\le W:=1+\sum_i|w_i|.
\]

If \(|\widetilde\lambda(n)-\Lambda(n)|\le\varepsilon_n\)
on the original closed cutoff, then

\[
\boxed{
|\widetilde G_m(x)-G_m(x)|
\le
\sum_{1\le n\le\lfloor x\rfloor}
  \varepsilon_n\left|\frac xn-1\right||C(n)|.
}
\]

For a single uniform nonnegative error \(\varepsilon\),
this simplifies to

\[
\boxed{
|\widetilde G_m(x)-G_m(x)|
\le W\varepsilon\,S(x),\qquad
S(x)=\sum_{1\le n\le\lfloor x\rfloor}
       \left|\frac xn-1\right|.
}
\tag{1}
\]

This retains full source phases until the prescribed
**real projection**, rather than discarding their signs earlier.
It uses the original finite character family and analytical
\(L'/L\) corrections. \`PrimeJacobiGmAdaptiveCertificate.lean\`
contains the corresponding source candidates.

For \(x\ge1\), the finite sum has nonnegative terms.
Pinned Mathlib \`Mathlib/NumberTheory/Harmonic/Bounds.lean\`
contains \`harmonic_eq_sum_Icc\` and
\`harmonic_floor_le_one_add_log\`. They imply

\[
S(x)\le xH_{\lfloor x\rfloor}
\le x(1+\log x).
\tag{2}
\]

Equations (1)–(2) are an **a priori finite arithmetic certificate**,
not Alpöge's source-side one-sided \`CoreGm\` theorem.
The harmonic return and original typed equality need their
own Lean replay.

## C. Adaptive-precision theorem, genuinely RH-independent

The accompanying [WeilAdaptivePrimeLogObservations.lean](WeilAdaptivePrimeLogObservations.lean)
uses the **actual prime-power predicate and least prime factor**,
not a fitted zero or a fixed square-root enclosure.
For a rational b-term dyadic logarithm approximation,

\[
\left|\widetilde\Lambda_b(n)-\Lambda(n)\right|
\le
\mathbf1_{n\ {\rm prime\ power}}\,
(\operatorname{logScale}(\minFac n)+1)\,2^{-b}.
\tag{3}
\]

Combining (3) with the *exact* phase budget gives

\[
\boxed{
|\widetilde G_{m,b}(x)-G_m(x)|
\le 2^{-b}\,C_\Lambda(x)
}
\tag{4}
\]
where

\[
C_\Lambda(x):=
\sum_{\substack{1\le n\le\lfloor x\rfloor\\
n\ {\rm prime\ power}}}
(\operatorname{logScale}(\minFac n)+1)
\left(\frac xn-1\right)|C(n)|.
\]

This is a finite explicitly computable **rational** number for
every rational cutoff \(x\ge1\) and rational character real
phases/weights; for arbitrary real x the original finite sum
still defines a real number. The true logarithms never enter
\(C_\Lambda(x)\).

**Precision existence.** At any fixed x≥1 and any positive
allowed arithmetic margin \(M(x)>0\), choose b sufficiently
large that \(2^{-b}C_\Lambda(x)\le M(x)\); such a natural b exists
because \(C_\Lambda(x)\) is finite. Thus the arithmetic
observation error can be made smaller than any
**positive margin**, independently of RH.

If an original analytic supplier proves
\(G_m(x)\le x^\theta\) and \(\theta'>\theta\) at x>1,
then choosing
\[
M(x)\le x^{\theta'}-x^\theta
\]
makes \(\widetilde G_{m,b}(x)\le x^{\theta'}\).
This does **NOT** prove the source estimate. To transport it to
Alpöge's actual \`CoreGm\`, use the separately pinned
[isolated native typed adapter](../../../docs/adaptations/environments/alpoge-gm-native/Bridge.lean)
with the original **EAtH and CoreAtH** witnesses, not the
earlier abstract Prop stand-ins.

## D. Why fixed precision cannot establish all-scale bounds

For x≥1, a *uniform coefficient uncertainty* \(\varepsilon>0\)
over every n≤x permits an adversarial same-signed source
error
\[
\varepsilon\sum_{n\le x}\left(\frac xn-1\right)
=\varepsilon\bigl(xH_{\lfloor x\rfloor}-\lfloor x\rfloor\bigr),
\]
which is asymptotically \(\varepsilon x\log x\).
This exceeds \(x^\theta\) for every fixed \(\theta<1\)
at sufficiently large x. **This is a limitation of a
uniform interval certificate**, not a claim that the
actual computed \(\widetilde\Lambda_b\) has that worst-case
error or that a signed character family lacks cancellations.

The project's fixed \`WeilFinitePrimeObservations\` module
uses 24-term logarithm and finite-precision square roots;
to certify arbitrarily large one-sided power bounds
**through an absolute error budget alone**, its precision
must be allowed to grow. The adaptive log source solves
that particular finite coefficient bottleneck, while the
genuine analytic \`EAtH/CoreAtH\` inequalities remain open.

## E. Verification and remaining dependency

The source-independent standard-library checker
[scripts/verify_adaptive_prime_log_gm.py](../../../scripts/verify_adaptive_prime_log_gm.py),
blob \`8b7040fabdfdb0783c638a542094b6d8e21717f4\`,
passed **144** exact rational log enclosures, **711** prime-power
log enclosures, and five full finite signed-character phase
budgets at cutoffs 16, 81, 256, 625, 1296, using the
quadratic character modulo 4 and the real part of an
order-four character modulo 5. Its hostile fixed-error
interval check passed at \(x=2^{128}\); the check is
not a statement about a specific computed log error.
All truth enclosures use explicit rational power-series
remainder bounds, **not floating-point log values**.

This module has **nine Lean theorem proof candidates**, all NOT_RUN.
Lean root compilation, transitive axiom audit and fresh kernel replay
are **NOT_RUN**. The original native Alpöge environment uses
Lean v4.33.1; no Alpöge final theorem or GRH result is imported.
Global novelty remains unassessed: the sum rearrangement and
error propagation are classical, while the source-specific
certified Jacobi-to-character path is new to this project.
