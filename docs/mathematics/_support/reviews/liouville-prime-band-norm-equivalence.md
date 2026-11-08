# Uniform norm equivalence for nonnegative Liouville prime bands

**Disposition:** source-bound no-go theorem for norm-only prime-band
preconditioning; exact finite-horizon comparison and scale-dependent supplier
equivalence; no new Liouville cancellation estimate and no claim of Riemann
Hypothesis completion.

**Prepared against `grwtsk/math/main`:**
`1b38a559e7970426502368cefb0f287539047aa9` with tree `2187c8d5d08a5b206c02b516aead550dc17238d6`.

**Upstream source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleGrowingPrimeBandIdentity.lean`,
blob `477ca1d19b634a09e8d5c1e38e8035798bb0ef37`.

**New Lean source candidate:**
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeBandNormEquivalence.lean`.

**Verification status:** source inspection and analytical derivation only.
Compilation, expected-type checking, fresh-kernel replay, and transitive axiom
audit are all `NOT_RUN`.

## 1. Fixed source and exact finite-band identity

Retain the actual real Liouville coefficient, the original causal response

\[
r_n(u)=2\max\!\left(n^{-1/2}-e^{-u/2},0\right),
\]

the source waveform

\[
F(u)=\sum_{n\le e^u}\lambda(n)r_n(u),
\]

and its cumulative energy

\[
H(T)=\int_0^T |F(u)|^2\,du
\qquad(T\ge0).
\]

Let \(P\) be a finite set of primes, let \(w_p\ge0\), and write

\[
W=\sum_{p\in P}w_p>0.
\]

The previously published exact identity is

\[
W F(u)+
\sum_{p\in P}w_pp^{-1/2}F(u-\log p)
=
R_{P,w}(u),
\tag{1.1}
\]

where \(R_{P,w}\) is the complete signed uncovered waveform. Every
repeated-prime multiple, every integer not divisible by the selected primes,
and every zero-birth collar remains in this identity.

Normalize the weights by

\[
\pi_p=\frac{w_p}{W},
\qquad
\sum_{p\in P}\pi_p=1,
\]

and define

\[
(A_{P,\pi}F)(u)
=
\sum_{p\in P}
\pi_p p^{-1/2}F(u-\log p).
\tag{1.2}
\]

Then (1.1) becomes

\[
\boxed{
\frac{R_{P,w}(u)}{W}
=
F(u)+A_{P,\pi}F(u).
}
\tag{1.3}
\]

The band may depend on \(T\). No step below assumes a fixed band across
different heights.

## 2. Every physical-time delay is a contraction

The waveform vanishes for negative physical time. For every prime \(p\) and
every \(T\ge0\),

\[
\begin{aligned}
\int_0^T
|F(u-\log p)|^2\,du
&=
\int_{-\log p}^{T-\log p}|F(v)|^2\,dv \\
&=
\int_0^{\max(T-\log p,0)}|F(v)|^2\,dv \\
&\le H(T).
\end{aligned}
\tag{2.1}
\]

Thus the delay \(D_pF(u)=F(u-\log p)\) has finite-horizon \(L^2\) norm at
most that of \(F\).

Put

\[
\rho(P,\pi)
=
\sum_{p\in P}\frac{\pi_p}{\sqrt p}.
\tag{2.2}
\]

Minkowski's inequality and (2.1) give

\[
\|A_{P,\pi}F\|_{L^2(0,T)}
\le
\rho(P,\pi)\,\|F\|_{L^2(0,T)}.
\tag{2.3}
\]

Because every selected integer is prime, \(p\ge2\), and therefore

\[
0\le \rho(P,\pi)\le\frac1{\sqrt2}<1.
\tag{2.4}
\]

This bound is independent of the number of selected primes, the locations of
the primes, the weights, and the height \(T\).

## 3. Exact two-sided norm equivalence

Let

\[
E_{P,w}(T)
=
\int_0^T |R_{P,w}(u)|^2\,du.
\]

The reverse and ordinary triangle inequalities applied to (1.3) and (2.3)
give

\[
(1-\rho)\sqrt{H(T)}
\le
\frac{\sqrt{E_{P,w}(T)}}{W}
\le
(1+\rho)\sqrt{H(T)}.
\tag{3.1}
\]

Squaring,

\[
\boxed{
(1-\rho)^2H(T)
\le
\frac{E_{P,w}(T)}{W^2}
\le
(1+\rho)^2H(T).
}
\tag{3.2}
\]

Using (2.4) yields the uniform comparison

\[
\boxed{
\left(\frac32-\sqrt2\right)H(T)
\le
\frac{E_{P,w}(T)}{W^2}
\le
\left(\frac32+\sqrt2\right)H(T).
}
\tag{3.3}
\]

Equivalently,

\[
H(T)
\le
(6+4\sqrt2)\,
\frac{E_{P,w}(T)}{W^2}.
\tag{3.4}
\]

The constant is the undamped \(p=2\) norm-inversion constant:

\[
\left(1-\frac1{\sqrt2}\right)^{-2}
=
6+4\sqrt2.
\]

The predecessor review already records the long oscillatory packet showing
that the one-delay norm inverse constant is abstractly sharp. The present
result extends that obstruction to every finite nonnegative multi-prime band
and to bands chosen separately at every height.

## 4. Scale-dependent bands do not weaken the supplier

Consider the apparently weaker condition

\[
\begin{aligned}
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;
\forall T\ge0\;\exists(P_T,w_T):\qquad
\frac{E_{P_T,w_T}(T)}{W_T^2}
\le
C_\varepsilon e^{\varepsilon T}.
\end{aligned}
\tag{4.1}
\]

The band, its cardinality, and its nonnegative weights may all depend on
\(T\).

By the lower comparison in (3.3), (4.1) implies

\[
H(T)
\le
(6+4\sqrt2)C_\varepsilon e^{\varepsilon T}.
\tag{4.2}
\]

Conversely, if the original uniform-energy target holds, then the upper
comparison in (3.3) bounds the normalized residual energy for every admissible
band, and in particular for the singleton band \(\{2\}\).

Therefore

\[
\boxed{
\text{scale-dependent normalized residual supplier}
\quad\Longleftrightarrow\quad
\text{original all-positive-rate energy target},
}
\tag{4.3}
\]

up to absolute constants that are absorbed into \(C_\varepsilon\).

This is a no-go result for the transferred follow-up phase. Merely allowing a
growing or height-dependent nonnegative prime band does not create a new
arithmetic route. It produces a uniformly equivalent Hilbert norm.

## 5. Why compensating negative covariance also collapses

Let

\[
G=A_{P,\pi}F,
\qquad
c(T)=\langle F,G\rangle_{L^2(0,T)},
\qquad
Q(T)=\|G\|_2^2.
\]

Expanding (1.3),

\[
\frac{E_{P,w}(T)}{W^2}
=
H(T)+2c(T)+Q(T).
\tag{5.1}
\]

A proposed transfer can allow negative covariance by paying its full negative
part. Define \(x_+=\max(x,0)\). Then

\[
\begin{aligned}
\frac{E_{P,w}(T)}{W^2}+2(-c(T))_+
&=
H(T)+Q(T)+2c(T)+2(-c(T))_+ \\
&=
H(T)+Q(T)+2(c(T))_+.
\end{aligned}
\tag{5.2}
\]

Hence

\[
\boxed{
\frac{E_{P,w}(T)}{W^2}+2(-c(T))_+
\ge H(T).
}
\tag{5.3}
\]

The compensated certificate restores the original energy plus nonnegative
terms. Proving it subexponential is therefore not a weaker cancellation
problem.

There is also an automatic relative covariance bound. By Cauchy--Schwarz and
(2.3),

\[
|c(T)|
\le
\sqrt{H(T)Q(T)}
\le
\rho(P,\pi)H(T)
\le
\frac1{\sqrt2}H(T).
\tag{5.4}
\]

Using \(c(T)\ge-\rho H(T)\) in the integrated identity recovers (3.4), but does
not improve its mathematical content.

## 6. Convex optimization is diagnostic, not a new proof target

For a fixed finite candidate set \(P\) and fixed height \(T\), the normalized
residual energy

\[
\Phi_T(\pi)
=
\left\|
F+\sum_{p\in P}\pi_pp^{-1/2}D_pF
\right\|_2^2
\tag{6.1}
\]

is a convex quadratic function on the probability simplex. Its Hessian is the
positive-semidefinite Gram matrix of the delayed waveforms.

Thus finite numerical optimization over the weights is well posed and can
identify active delays or test conjectured covariance structure. However,
(3.3) gives

\[
\inf_{\pi}\Phi_T(\pi)
\ge
\left(\frac32-\sqrt2\right)H(T).
\tag{6.2}
\]

No optimizer, diffusion procedure, entropy weighting, or growing support can
turn the residual norm into a quantity of strictly smaller asymptotic order
without already proving the target energy bound.

## 7. Consequence for the research programme

The following routes are now eliminated as independent completion mechanisms:

1. a fixed nonnegative prime band with normalized residual-energy control;
2. a growing nonnegative prime band;
3. a band and weights selected separately for every \(T\);
4. minimization of the normalized residual energy over a finite simplex;
5. paying the full negative delayed covariance and then taking a norm.

All five are uniformly equivalent to the unresolved causal energy.

A viable prime-delay advance must therefore preserve information discarded by
the norm comparison. It must do at least one of the following:

- establish a source-specific signed covariance estimate that is consumed
  before triangle or Cauchy--Schwarz erases its sign;
- feed the complete signed delay expansion into the existing positive
  double-Abel rectangle kernel and obtain cancellation across rectangles;
- construct a source-exact operator with sign-changing coefficients or a
  non-Hilbert observation, while proving the corresponding source return and
  all boundary costs;
- transport a genuinely weaker arithmetic estimate into the endpoint or
  historical Landau consumer without replacing its signed source.

The immediate next target is not another residual norm. It is a signed
bilinear estimate for the actual Liouville delayed family, with a quantitative
gain that survives the complete downstream consumer.

## 8. Formalization and verification boundary

The new source declares:

- admissible finite prime bands;
- normalized shift mass, delayed average, residual energy, covariance, and
  delayed-average energy;
- the normalized waveform identity;
- finite-horizon shift contraction;
- band-dependent and uniform norm equivalence;
- equivalence of the scale-dependent supplier and the original energy target;
- the negative-covariance compensation identity.

Only elementary structure projections are proved in Lean. The analytic
identities remain named propositions.

Required validation commands include:

```text
lake env lean \
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeBandNormEquivalence.lean

lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvillePrimeBandNormEquivalence.lean
```

Exact expected types, fresh kernel replay, and transitive axiom inspection must
cover the new module and its complete import closure. They remain `NOT_RUN`.

Publication of the source candidate does not prove a new Liouville estimate,
the all-positive-rate energy target, or RH.
