# Goldbach Fejér core lower source

Status: `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: `#259`  
Parent program: `#257`  
Stacked parent: draft PR `#399` at
`625cec626b161bf257b46d9308b6d5807a0a694d`

This note records the exact finite mathematics added by the Fejér-kernel
increment. It is not an execution receipt and does not represent a proof of
Goldbach's conjecture.

## 1. Why the preceding absolute oscillatory budget is insufficient

The inherited finite singular kernel is

\[
V_N(\beta)=\sum_{0\le n\le N}e(n\beta),\qquad
K_N(\beta)=V_N(\beta)^2e(-N\beta).
\]

PR #399 expanded this into the complete ordered pair box and evaluated every
frequency on a symmetric interval. It also exposed the termwise absolute
budget for the nonzero frequencies.

That budget is intentionally complete but usually far too large. Bounding each
frequency separately discards the structural fact that the triangular spectrum
is a positive square. The present increment makes that structure explicit and
uses it before applying any triangle inequality.

## 2. Exact triangular spectrum

For an ordered pair \((u,v)\), define

\[
m_N(u,v)=u+v-N.
\]

The fibre at frequency \(m\) is

\[
\mathcal F_N(m)=
\{(u,v):0\le u,v\le N,\ m_N(u,v)=m\}.
\]

Its cardinality is

\[
|\mathcal F_N(m)|=
\begin{cases}
N+1-|m|,&|m|\le N,\\
0,&|m|>N.
\end{cases}
\]

Therefore

\[
K_N(\beta)
=
\sum_{m=-N}^{N}
(N+1-|m|)\,e(m\beta).
\]

This is an exact finite regrouping of the ordered pair source. It retains both
endpoints, signed frequencies, and the literal zero-frequency antidiagonal.

## 3. Exact positive-square identity

The canonical character satisfies

\[
e(-m\beta)=\overline{e(m\beta)}.
\]

Reflecting the finite range \(0,\ldots,N\) gives

\[
e(-N\beta)V_N(\beta)
=
\overline{V_N(\beta)}.
\]

Hence

\[
K_N(\beta)
=
V_N(\beta)\overline{V_N(\beta)}
=
|V_N(\beta)|^2.
\]

The source calls this real quantity `goldbachFejerKernel`. Consequently,

\[
\operatorname{Im}K_N(\beta)=0,
\qquad
\operatorname{Re}K_N(\beta)\ge0
\]

for every real \(\beta\). No oscillatory cancellation estimate is needed for
these conclusions.

The normalization is the unnormalised Fejér kernel. The standard Fejér kernel
would divide this quantity by \(N+1\).

## 4. Fixed central interval

Define

\[
\delta_N=\frac{1}{6(N+1)}.
\]

For \(|\beta|\le\delta_N\) and \(0\le n\le N\),

\[
|2\pi n\beta|
\le
\frac{\pi}{3}.
\]

Since cosine is even and antitone on \([0,\pi]\),

\[
\operatorname{Re}e(n\beta)
=
\cos(2\pi n\beta)
\ge
\cos(\pi/3)
=
\frac12.
\]

Summing over all \(N+1\) terms gives

\[
\operatorname{Re}V_N(\beta)\ge\frac{N+1}{2}.
\]

The real-part square is bounded by the complex norm square, so throughout the
core interval,

\[
K_N(\beta)=|V_N(\beta)|^2
\ge
\frac{(N+1)^2}{4}.
\]

Integrating over an interval of length \(2\delta_N=1/(3(N+1))\) yields

\[
\int_{-\delta_N}^{\delta_N}K_N(\beta)\,d\beta
\ge
\frac{N+1}{12}.
\]

This lower source is uniform in every denominator.

## 5. Containment in every declared denominator window

The inherited symmetric radius is

\[
\rho_{Q,N}(q)=\frac{Q}{q(N+1)}.
\]

Whenever \(0<q\le Q\),

\[
\rho_{Q,N}(q)
\ge
\frac{1}{N+1}
\ge
\delta_N.
\]

Thus every declared denominator window contains the fixed core interval. The
exact symmetric singular integral therefore satisfies

\[
\operatorname{Re}J_{Q,N}(q)
\ge
\frac{N+1}{12}.
\]

It is also real and nonnegative.

The packet retains the elementary upper envelope

\[
\operatorname{Re}J_{Q,N}(q)
\le
|J_{Q,N}(q)|
\le
(N+1)^2\,2\rho_{Q,N}(q).
\]

Unlike the previous three-lift measure estimate, this uses the exact length of
the symmetric interval.

## 6. Why a positive window does not immediately give a positive major term

The exact symmetric progression major source is grouped by denominator:

\[
\mathcal M_{Q,N}^{\mathrm{sym}}
=
\sum_{1\le q\le Q}
C_q(N)J_{Q,N}(q),
\]

where \(C_q(N)\) is the exact finite arithmetic denominator coefficient.

The singular integral is nonnegative, but \(C_q(N)\) need not be. Already at a
prime denominator,

\[
C_p(N)=
\begin{cases}
1/(p-1),&p\mid N,\\
-1/(p-1)^2,&p\nmid N.
\end{cases}
\]

Accordingly, the packet does not multiply every coefficient by the positive
lower mass. It uses a sign-aware denominator envelope.

Let

\[
L_N=\frac{N+1}{12},
\qquad
U_{Q,N}(q)=(N+1)^2\,2\rho_{Q,N}(q),
\qquad
c_q=\operatorname{Re}C_q(N).
\]

Define

\[
\ell_{Q,N}(q)=
\begin{cases}
c_qL_N,&c_q\ge0,\\
c_qU_{Q,N}(q),&c_q<0.
\end{cases}
\]

Because multiplication by a negative coefficient reverses inequalities,

\[
\ell_{Q,N}(q)
\le
\operatorname{Re}\bigl(C_q(N)J_{Q,N}(q)\bigr).
\]

Summing gives the unconditional finite lower envelope

\[
\mathcal L_{Q,N}^{\mathrm{Fejer}}
=
\sum_{1\le q\le Q}\ell_{Q,N}(q)
\le
\operatorname{Re}\mathcal M_{Q,N}^{\mathrm{sym}}.
\]

This is finite and exact. It does not assume that composite denominator
coefficients are positive or that the denominator sum equals an Euler product.

## 7. Terminal consumers

Under the inherited safe scale

\[
2Q^2<N+1,
\]

the exact factored progression major sum is the symmetric-window sum. Therefore
the sign-aware Fejér lower envelope can be supplied directly to the existing
strict terminal criterion.

A count conclusion still requires

\[
E_{\mathrm{progression}}+E_{\mathrm{minor}}
<
\mathcal L_{Q,N}^{\mathrm{Fejer}}.
\]

The finite-local-product variant additionally requires a separately supplied
comparison

\[
\operatorname{LocalMain}-E_{\mathrm{model}}
\le
\mathcal L_{Q,N}^{\mathrm{Fejer}},
\]

and the strict margin

\[
E_{\mathrm{model}}+
E_{\mathrm{progression}}+
E_{\mathrm{minor}}
<
\operatorname{LocalMain}.
\]

Each error is charged once.

## 8. Hostile boundaries

The controls retain the following failures.

1. The frequency multiplicity vanishes outside \([-N,N]\); frequencies are not
   wrapped modulo a denominator.
2. A negative prime-denominator coefficient uses the upper window envelope,
   not the positive core lower mass.
3. The positive-square identity proves positivity of a model singular window,
   not positivity of the prime-log Goldbach coefficient.
4. `goldbachCount 2 = 0` coexists with a strictly positive finite singular
   window.
5. Equality with the announced lower source cannot satisfy a strict terminal
   margin.

## 9. Remaining obligations

The increment does not supply:

- exact-head Lean elaboration or source repairs;
- exact public declaration types;
- transitive import, axiom, or native-dependency audit;
- hostile Lean replay or external acceptance;
- a closed composite-denominator coefficient formula;
- multiplicativity of the complete denominator coefficients;
- comparison of the finite denominator lower source with the inherited
  coefficient Euler product;
- an explicit finite denominator tail;
- uniform prime-log progression discrepancy bounds on every declared arc;
- a complete signed minor-arc norm bound;
- a strict every-even margin beyond one fixed cutoff;
- complete finite verification below that cutoff;
- strong Goldbach.

The main mathematical gain is that the singular-window problem is no longer
represented as an uncontrolled sum of absolute sine terms. Its positive Fejér
core is explicit, denominator-uniform, and source-preserving. The remaining
difficulty has moved to the arithmetic signs and sizes of the denominator
coefficients, the prime-progression discrepancies, and the minor arcs.
