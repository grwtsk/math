# Goldbach finite singular evaluation

Status: `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: `grwtsk/math#259`  
Parent program: `grwtsk/math#257`  
Stacked base: draft PR #387 at
`10319d9b2f2912fc8ad44330be60e1339c2a7c7c`

This packet advances only the exact finite singular-window layer. It does not
supply a prime-distribution estimate, a denominator-tail estimate, a minor-arc
bound, finite exception coverage, or a proof of strong Goldbach.

## 1. Inherited common window

The inherited finite integer kernel is

\[
V_N(\beta)=\sum_{0\le n\le N}e(n\beta),
\qquad e(t)=e^{2\pi i t},
\]

and the inherited finite singular kernel is

\[
K_N(\beta)=V_N(\beta)^2e(-N\beta).
\]

PR #387 proves that, under

\[
2Q^2<N+1,
\]

every indexed clipped rational arc at denominator \(q\) has the same symmetric
real singular integral

\[
J_{Q,N}(q)
 =
 \int_{-\rho_{Q,N}(q)}^{\rho_{Q,N}(q)}
 K_N(\beta)\,d\beta,
\qquad
\rho_{Q,N}(q)=\frac{Q}{q(N+1)}.
\]

The present packet evaluates this finite integral without changing the
inherited normalization.

## 2. Complete ordered-pair source

Expanding the square gives

\[
K_N(\beta)
 =
 \sum_{0\le u,v\le N}
 e\bigl((u+v-N)\beta\bigr).
\]

The source records the complete box

\[
\mathcal B_N=\{(u,v):0\le u,v\le N\}
\]

and the exact integer frequency

\[
m_N(u,v)=u+v-N.
\]

No unordered-pair quotient is taken. The box contains

\[
|\mathcal B_N|=(N+1)^2
\]

ordered pairs.

The zero-frequency source is exactly the natural antidiagonal

\[
\mathcal D_N=\{(u,v):u+v=N\}.
\]

It has cardinality \(N+1\). The complement

\[
\mathcal O_N=\mathcal B_N\setminus\mathcal D_N
\]

contains exactly \(N(N+1)\) nonzero-frequency ordered pairs.

Therefore

\[
K_N(\beta)
 =
 (N+1)
 +
 \sum_{(u,v)\in\mathcal O_N}
 e\bigl(m_N(u,v)\beta\bigr).
\]

This is the finite triangular Fourier spectrum before equal frequencies are
grouped by multiplicity.

## 3. Exact character-window integral

For a real radius \(r\) and integer frequency \(m\), define

\[
W_r(m)=\int_{-r}^{r} e(m\beta)\,d\beta.
\]

The source separates the zero frequency:

\[
W_r(0)=2r.
\]

For \(m\ne0\), change of variables in the canonical `AddCircle 1`
normalization gives

\[
W_r(m)
 =
 \frac{2\sin(2\pi mr)}{2\pi m}
 =
 \frac{\sin(2\pi mr)}{\pi m}.
\]

The value is real and even in \(m\):

\[
W_r(-m)=W_r(m).
\]

The formal source retains the unsimplified two-over-two form as the primary
definition and proves the usual sine-quotient form for nonzero frequencies.
This keeps the zero-frequency branch total and avoids division by zero.

## 4. Exact finite singular evaluation

At \(r=\rho_{Q,N}(q)\),

\[
J_{Q,N}(q)
 =
 \sum_{(u,v)\in\mathcal B_N}W_r(m_N(u,v)).
\]

The diagonal contribution is explicit:

\[
M_{Q,N}(q)
 =
 2\rho_{Q,N}(q)(N+1).
\]

For every positive denominator, this simplifies exactly to

\[
M_{Q,N}(q)=\frac{2Q}{q}.
\]

The complete finite oscillatory correction is

\[
R_{Q,N}(q)
 =
 \sum_{(u,v)\in\mathcal O_N}
 W_{\rho_{Q,N}(q)}(m_N(u,v)).
\]

Thus

\[
J_{Q,N}(q)=M_{Q,N}(q)+R_{Q,N}(q).
\]

Every term on the right is an exact finite real expression involving only
integer frequencies, the declared rational radius, \(\pi\), and sine. No
asymptotic replacement or infinite series is introduced.

## 5. Complete finite oscillatory budget

The source defines the no-cancellation budget

\[
E_{Q,N}(q)
 =
 \sum_{(u,v)\in\mathcal O_N}
 \left|W_{\rho_{Q,N}(q)}(m_N(u,v))\right|.
\]

The triangle inequality gives

\[
|R_{Q,N}(q)|\le E_{Q,N}(q).
\]

Consequently,

\[
M_{Q,N}(q)-E_{Q,N}(q)
 \le
 \operatorname{Re}J_{Q,N}(q).
\]

A strict finite certificate

\[
E_{Q,N}(q)<M_{Q,N}(q)
\]

therefore proves positivity of this one symmetric singular integral. This
packet does not claim that the inequality holds uniformly in any major-arc
regime. The budget is deliberately complete and assumes no cancellation.

## 6. Progression-major decomposition

The inherited arithmetic coefficient at a reduced center is

\[
B_{N;q}(a)=A_q(a)^2e(-Na/q).
\]

The common symmetric-window progression major sum is

\[
\mathcal M^{\mathrm{sym}}_{Q,N}
 =
 \sum_{(a,q)\in\mathcal I_Q}
 B_{N;q}(a)J_{Q,N}(q).
\]

Substituting the exact singular evaluation yields

\[
\mathcal M^{\mathrm{sym}}_{Q,N}
 =
 \mathcal M^{\mathrm{diag}}_{Q,N}
 +
 \mathcal M^{\mathrm{osc}}_{Q,N},
\]

where

\[
\mathcal M^{\mathrm{diag}}_{Q,N}
 =
 \sum_{(a,q)\in\mathcal I_Q}
 B_{N;q}(a)M_{Q,N}(q)
\]

and

\[
\mathcal M^{\mathrm{osc}}_{Q,N}
 =
 \sum_{(a,q)\in\mathcal I_Q}
 B_{N;q}(a)R_{Q,N}(q).
\]

The inherited coefficient bound \(|B_{N;q}(a)|\le1\) gives

\[
\left|\mathcal M^{\mathrm{osc}}_{Q,N}\right|
 \le
 \sum_{(a,q)\in\mathcal I_Q}E_{Q,N}(q).
\]

No cancellation across numerators or denominators is assumed.

## 7. Strict terminal boundary

A diagonal-window lower bound may reach the existing exact Goldbach count only
after separately charging:

1. the complete finite singular-window oscillatory allowance;
2. every prime-log progression discrepancy budget on every clipped arc;
3. any diagonal-to-local-main comparison error;
4. the complete signed minor-arc norm error.

The source exposes two consumers.

The direct progression consumer requires

\[
L_{\mathrm{diag}}
 \le
 \operatorname{Re}\mathcal M^{\mathrm{diag}}_{Q,N},
\]

\[
\sum_{(a,q)\in\mathcal I_Q}E_{Q,N}(q)
 \le E_{\mathrm{window}},
\]

and the strict margin

\[
E_{\mathrm{window}}
+
E_{\mathrm{progression}}
+
E_{\mathrm{minor}}
<
L_{\mathrm{diag}}.
\]

The coefficient-local-main consumer compares the diagonal source with the
existing finite coefficient Euler-product scale and requires

\[
E_{\mathrm{diagonal\to local}}
+
E_{\mathrm{window}}
+
E_{\mathrm{progression}}
+
E_{\mathrm{minor}}
<
\mathrm{LocalMain}.
\]

Every error is charged exactly once.

## 8. Hostile controls

The controls retain the following boundaries.

- At \(N=0\), the pair source is the singleton \((0,0)\), the correction and
  its budget are zero, and the symmetric integral is exactly twice the radius.
- At \(N=1\), the only off-diagonal pairs are \((0,0)\) and \((1,1)\), with
  frequencies \(-1\) and \(1\).
- At radius \(1/2\), the first nonzero character integral vanishes. Thus
  \(Q=N=q=1\) has exact symmetric integral \(2\) and zero oscillatory budget.
- The same \(Q=N=q=1\) case lies on, not inside, the strict
  \(2Q^2<N+1\) regime. Exact evaluation of the real window does not by itself
  justify replacing an intrinsic circle window at the boundary.
- Exact singular-window evaluation can coexist with `goldbachCount 2 = 0`.
- Equality of an error allowance and its proposed lower source is rejected;
  the final positivity margin remains strict.

## 9. Verification boundary

The committed replay target requires:

- a clean exact-head checkout;
- exact declaration-type reconciliation;
- complete module coverage;
- transitive import and axiom auditing;
- hostile-control replay;
- an external operational receipt.

The source status remains

```text
SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED
```

Static lexical checks and independent finite diagnostics are evidence about
the committed source text and finite arithmetic models only. They are not Lean
elaboration, kernel acceptance, analytic verification, or an execution
receipt.

## 10. Remaining mathematical obligations

The next substantive obligations are:

1. evaluate or sharply bound the finite oscillatory budget in the actual
   radius regime;
2. group the finite denominator coefficients multiplicatively beyond prime
   denominators and compare the finite denominator sum with the inherited
   truncated local product, with an explicit tail;
3. prove uniform source-bound estimates for every finite prime-log progression
   discrepancy on the declared arcs;
4. prove a complete signed minor-arc norm bound;
5. establish one strict every-even margin beyond a fixed cutoff;
6. verify every remaining even target below that cutoff.

The exact finite sine formula does not by itself prove any of these analytic
estimates.
