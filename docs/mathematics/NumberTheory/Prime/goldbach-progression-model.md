# Goldbach progression model and residue-discrepancy boundary

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**

Issue: `grwtsk/math#259`
Parent program: `grwtsk/math#257`
Stacked source: draft PR #372 at
`d912d3aa06529ceca26294ffc8bb736c2a8d252b`

This note records the next exact layer after the rational-center residue
decomposition. It introduces a canonical finite arithmetic-progression model,
defines every omitted term as an exact discrepancy, and transfers supplied
residue bounds to an integrated rational-arc error budget.

It does not prove a prime number theorem in progressions or any Goldbach
estimate.

## 1. Exact residue source

The inherited finite residue-class sum is

\[
S_{N;q,r}(\beta)
=
\sum_{\substack{0\le n\le N\\n\bmod q=r}}
1_{\mathbb P}(n)\log n\,e(n\beta).
\]

All sums are finite. The weight remains supported on actual primes, and the
endpoint \(N\) is included.

## 2. Canonical progression main term

Define the complete finite integer kernel

\[
V_N(\beta)=\sum_{0\le n\le N}e(n\beta).
\]

For one residue class, the declared progression main term is

\[
M_{N;q,r}(\beta)
=
1_{(r,q)=1}\,\frac{1}{\varphi(q)}V_N(\beta).
\]

The exact discrepancy is not discarded:

\[
\Delta_{N;q,r}(\beta)
=
S_{N;q,r}(\beta)-M_{N;q,r}(\beta).
\]

Therefore

\[
S_{N;q,r}(\beta)
=
M_{N;q,r}(\beta)+\Delta_{N;q,r}(\beta)
\]

is an identity, not an asymptotic statement.

For prime-only logarithmic weights, prime powers and every finite endpoint
effect are automatically retained inside \(\Delta\). No von Mangoldt
replacement is silently made.

## 3. Finite Ramanujan coefficient

At the reduced center \(a/q\), let

\[
\omega_{a,q}(r)=e(ar/q).
\]

The finite coprime phase sum and its normalization are

\[
c_q(a)=
\sum_{\substack{0\le r<q\\(r,q)=1}}\omega_{a,q}(r),
\qquad
A_q(a)=\frac{c_q(a)}{\varphi(q)}.
\]

The canonical centered exponential model is

\[
\mathcal M_{N;a,q}(\beta)=A_q(a)V_N(\beta).
\]

The inherited exact residue reconstruction becomes

\[
S_N(a/q+\beta)
=
\mathcal M_{N;a,q}(\beta)
+
\mathcal D_{N;a,q}(\beta),
\]

where

\[
\mathcal D_{N;a,q}(\beta)
=
\sum_{r=0}^{q-1}
\omega_{a,q}(r)\Delta_{N;q,r}(\beta).
\]

This is again exact finite algebra.

For \(q>0\), each phase has norm one and there are exactly
\(\varphi(q)\) reduced residues. Hence

\[
|A_q(a)|\le 1,
\qquad
|V_N(\beta)|\le N+1.
\]

No closed formula for \(c_q(a)\) is needed at this layer.

## 4. Quadratic circle residual

The canonical circle model preserves the inherited negative target phase:

\[
\mathcal C_{N;a,q}(\beta)
=
\mathcal M_{N;a,q}(\beta)^2
e(-Na/q)e(-N\beta).
\]

Let \(\mathcal S_{N;a,q}\) denote the exact residue-reconstructed exponential
kernel. The exact circle residual factors as

\[
\begin{aligned}
\mathcal R_{N;a,q}(\beta)
&=
\bigl(\mathcal S_{N;a,q}(\beta)^2
-
\mathcal M_{N;a,q}(\beta)^2\bigr)
e(-Na/q)e(-N\beta) \\
&=
\mathcal D_{N;a,q}(\beta)
\bigl(
\mathcal S_{N;a,q}(\beta)
+
\mathcal M_{N;a,q}(\beta)
\bigr)
e(-Na/q)e(-N\beta).
\end{aligned}
\]

Consequently,

\[
|\mathcal R_{N;a,q}(\beta)|
\le
|\mathcal D_{N;a,q}(\beta)|
\left(
|\mathcal S_{N;a,q}(\beta)|
+
|\mathcal M_{N;a,q}(\beta)|
\right).
\]

If supplied residue budgets satisfy

\[
|\Delta_{N;q,r}(\beta)|\le E_{q,r},
\]

then no cancellation is assumed:

\[
|\mathcal D_{N;a,q}(\beta)|
\le
\sum_{r=0}^{q-1}E_{q,r}.
\]

The source also supplies the elementary bounds

\[
|\mathcal S_{N;a,q}(\beta)|
\le
\Theta_N,
\qquad
|\mathcal M_{N;a,q}(\beta)|
\le N+1,
\]

where

\[
\Theta_N=\sum_{0\le n\le N}1_{\mathbb P}(n)\log n.
\]

Thus

\[
|\mathcal R_{N;a,q}(\beta)|
\le
\left(\sum_{r<q}E_{q,r}\right)
\left(\Theta_N+N+1\right).
\]

Every \(E_{q,r}\) remains an external analytic obligation.

## 5. Coarse clipped-arc measure

The declared raw arc has three closed lifts, each of radius

\[
\rho_{Q,N}(q)=\frac{Q}{q(N+1)}.
\]

Subadditivity gives the coarse bound

\[
\operatorname{meas}(\text{raw arc})
\le 6\rho_{Q,N}(q).
\]

Clipping to \((0,1]\) cannot increase measure, so the same bound applies to the
individual clipped arc.

The factor six is deliberately coarse. It neither assumes lift disjointness
inside one periodized arc nor claims an optimal measure estimate.

## 6. Integrated arc budget

For one indexed arc \((a,q)\), define

\[
E^{\mathrm{pt}}_{a,q}
=
\left(\sum_{r<q}E_{a,q,r}\right)
\left(\Theta_N+N+1\right),
\]

and

\[
E^{\mathrm{arc}}_{a,q}
=
E^{\mathrm{pt}}_{a,q}\,
6\rho_{Q,N}(q).
\]

A uniform residue-discrepancy bound over every point of that clipped arc gives

\[
\left\|
I^{\mathrm{exact}}_{a,q}
-
I^{\mathrm{model}}_{a,q}
\right\|
\le
E^{\mathrm{arc}}_{a,q}.
\]

The finite rational major contribution then has the exact decomposition

\[
\sum_{(a,q)\in\mathcal I_Q} I^{\mathrm{exact}}_{a,q}
=
\sum_{(a,q)\in\mathcal I_Q} I^{\mathrm{model}}_{a,q}
+
\sum_{(a,q)\in\mathcal I_Q} R_{a,q}.
\]

The residual sum is controlled only by the triangle inequality.

## 7. Terminal condition

Under the inherited geometric condition

\[
2Q^2<N+1,
\]

suppose

\[
L
\le
\operatorname{Re}
\sum_{(a,q)\in\mathcal I_Q}
I^{\mathrm{model}}_{a,q},
\]

\[
\|I_{\mathrm{minor}}(Q,N)\|
\le
E_{\mathrm{minor}},
\]

and every uniform residue estimate required above is supplied. The exact count
consumer requires the strict margin

\[
\sum_{(a,q)\in\mathcal I_Q}
E^{\mathrm{arc}}_{a,q}
+
E_{\mathrm{minor}}
<
L.
\]

Only then does the source reduce to positivity of the inherited exact
`goldbachCount`.

The local-factor comparison keeps the rational-arc cutoff and finite local
product cutoff independent. Its model-to-main error, all residue-derived arc
errors, and the minor error are each charged exactly once.

## 8. Hostile controls

The source retains the following failures.

- Non-coprime residues receive zero canonical main term, but their exact
  prime-log sums need not vanish.
- At \(N=2,q=2,r=0,\beta=0\), the discrepancy equals \(\log 2\). A zero error
  budget is therefore invalid even in a tiny finite case.
- The six-radius measure bound may exceed one and is not presented as sharp.
- Exact model-plus-residual bookkeeping can coexist with
  `goldbachCount 2 = 0`.
- Equality of the total error and model lower bound cannot pass the strict
  terminal criterion.

## 9. Remaining mathematical obligations

The packet does not supply:

1. a uniform estimate for every
   \(\Delta_{N;q,r}(\beta)\) on the declared rational arcs;
2. evaluation of the finite model major sum as a singular integral times the
   truncated local product;
3. convergence, a quantitative tail, or a uniform lower bound for any infinite
   singular series;
4. a complete signed minor-arc norm estimate;
5. one strict margin for every sufficiently large admissible even \(N\);
6. complete finite verification below that analytic cutoff.

The packet also has no Lean/Lake execution receipt, kernel audit, transitive
axiom/native audit, external replay acceptance, merge, deployment, or
execution authority.
