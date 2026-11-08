# Reciprocal-zeta and truncated Perron reduction for the original Mertens prefix

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Research date: 2026-11-02.

Disposition: complete ordinary mathematical reduction at the stated conditional scope; Lean source proof candidate. The source proves the pole-regularized holomorphic contour interface and all scalar/exponent/cutoff transfers. It does not prove the zeta-specific reciprocal subpower estimate or the truncated Perron approximation. Compilation, expected-type checking, fresh-kernel replay, transitive axiom auditing, and native execution were not run. The all-positive-rate endpoint supplier and the Riemann Hypothesis remain open.

## 1. Existing source and exact objective

The arithmetic source remains the actual Möbius prefix

\[
M(N)=\sum_{n\le N}\mu(n).
\]

The repository already proves exact finite Abel summation for the original coefficients, equality of its finite prefix with the maintained real `mertensPrefix`, the integer-to-real floor transfer, and the causal velocity-to-energy calculus. The remaining fixed-power bridge was still packaged as

```lean
ZeroFreeToMertensPowerBridge
```

which asks for

\[
\zeta(s)\ne0\quad(\Re s>\theta_0)
\Longrightarrow
M(N)=O_\theta(N^\theta)
\quad
(\theta_0<\theta<1,\ \theta>1/2).
\]

The new source decomposes that bridge into the actual analytic mechanisms rather than replacing it by another proposition with the same hidden content.

## 2. Remove the pole before shifting

Pinned Mathlib defines an entire function `riemannZeta₁` satisfying

\[
\zeta(s)=(s-1)^{-1}\zeta_1(s)
\qquad(s\ne1),
\]

and

\[
\zeta_1(1)=1.
\]

Define

\[
R(s)=\frac{s-1}{\zeta_1(s)}.
\]

Then

\[
R(1)=0
\]

and, whenever \(s\ne1\) and \(\zeta(s)\ne0\),

\[
R(s)=\frac1{\zeta(s)}.
\]

If zeta has no zeros on \(\Re s>\theta_0\), then \(\zeta_1\) is nonzero throughout that half-plane, including \(s=1\). Thus \(R\) is holomorphic on the whole half-plane. This avoids treating the zeta pole as an artificial singularity of the reciprocal contour.

The source declarations are:

```lean
regularizedReciprocalZeta
regularizedReciprocalZeta_one
riemannZeta₁_ne_zero_of_zeroFree
regularizedReciprocalZeta_eq_inv_riemannZeta
regularizedReciprocalZeta_differentiableAt
```

## 3. Exact Perron rectangle

For \(x>0\), put

\[
P_x(s)=\frac{x^sR(s)}s.
\]

For \(\sigma>0\) and \(T\ge0\), define the normalized vertical integral

\[
V_x(\sigma,T)
=
\frac1{2\pi}
\int_{-T}^{T}P_x(\sigma+it)\,dt.
\]

For \(\sigma\le c\), define the horizontal correction

\[
H_x(\sigma,c,T)
=
\frac1{2\pi i}
\left(
\int_\sigma^c P_x(a+iT)\,da
-
\int_\sigma^c P_x(a-iT)\,da
\right).
\]

The regularization makes \(P_x\) holomorphic throughout every rectangle contained in the positive zero-free half-plane. Pinned Mathlib's rectangle Cauchy-Goursat theorem therefore gives the exact identity

\[
\boxed{
V_x(c,T)=V_x(\sigma,T)+H_x(\sigma,c,T).
}
\tag{1}
\]

No growth estimate or asymptotic argument occurs in (1). The source retains both horizontal orientations and proves the normalized algebra rather than silently changing the contour convention.

The relevant declarations are:

```lean
perronKernel
perronVertical
perronHorizontalCorrection
perronKernel_differentiableAt
perronKernel_boundary_rect_eq_zero
perronVertical_shift
```

## 4. The two quantitative inputs

Let

\[
x_N=N+\frac12,
\qquad
T_N=x_N^2.
\]

The half-integer cutoff avoids a boundary weight at an integer.

### 4.1 Zeta-specific reciprocal growth

The raw minimum-modulus target is:

\[
\boxed{
\begin{aligned}
&\forall \theta_0<\sigma,\ \forall\eta>0,\quad
\zeta(s)\ne0\ \text{for }\Re s>\theta_0\\
&\Longrightarrow
\exists B\ge0\ \forall a\in[\sigma,2]\ \forall t\in\mathbb R:
\quad
|R(a+it)|\le B(1+|t|)^\eta .
\end{aligned}
}
\tag{2}
\]

This is `RegularizedReciprocalSubpower`.

The source also records its segment-integrated form `ZeroFreeReciprocalPerronBounds`. For \(0<\eta\le1\),

\[
\boxed{
|V_{x_N}(\sigma,T_N)|
\le
2B\left(\frac1\sigma+\frac1\eta\right)
x_N^{\sigma+2\eta},
}
\tag{3}
\]

and

\[
\boxed{
|H_{x_N}(\sigma,2,T_N)|
\le
4B\,x_N^{2\eta}.
}
\tag{4}
\]

The ordinary derivation is elementary after (2). For the vertical side,

\[
|P_x(\sigma+it)|
\le
Bx^\sigma\frac{(1+|t|)^\eta}{|\sigma+it|}.
\]

Split at \(|t|=1\). On the central interval use
\(|\sigma+it|\ge\sigma\), \(2^\eta\le2\), and
\(x^{2\eta}\ge1\). Outside it use
\(|\sigma+it|\ge|t|\), \((1+t)^\eta\le2t^\eta\), and

\[
\int_1^T t^{\eta-1}\,dt
=
\frac{T^\eta-1}{\eta}.
\]

With \(T=x^2\), these terms give (3) after dropping harmless factors \(1/\pi<1\).

For either horizontal side,

\[
x^a\le x^2,\qquad
|a\pm iT|\ge T=x^2,\qquad
(1+T)^\eta\le2T^\eta,
\]

and the horizontal length is at most \(2\). Summing the two orientations gives (4).

The formal real-integral proof of (2) \(\Rightarrow\) (3)-(4) remains the explicit proposition

```lean
ReciprocalSubpowerSegmentIntegration
```

rather than being hidden in an arithmetic supplier.

### 4.2 Half-integer truncated Perron

The second input is the concrete right-line approximation

\[
\boxed{
\left|
M(N)-V_{x_N}(2,T_N)
\right|
\le
K\left(1+\log x_N\right)
}
\tag{5}
\]

for one \(K\ge0\) and every \(N\ge1\). This is

```lean
HalfIntegerMertensTruncatedPerron
```

with the actual maintained `finiteMertensPrefix`.

It is strictly weaker and more source-specific than assuming a Mertens power bound. It is the finite truncation theorem that must be proved from the Möbius Dirichlet series on \(\Re s>1\), including the half-integer cutoff and its complete error.

## 5. Exact exponent bookkeeping

Fix

\[
\theta_0<\theta<1,
\qquad
\theta>\frac12.
\]

Put

\[
b=\max\!\left(\theta_0,\frac12\right),
\]

\[
\sigma=\frac{b+\theta}{2},
\qquad
\eta=\frac{\theta-b}{8}.
\]

Then

\[
\theta_0<\sigma<\theta,
\qquad
\sigma>0,
\qquad
0<\eta\le1,
\]

and the three exponents satisfy

\[
\boxed{
\sigma+2\eta
=
\frac{b+3\theta}{4}
<\theta,
}
\tag{6}
\]

\[
\boxed{
2\eta=\frac{\theta-b}{4}<\theta,
\qquad
\eta<\theta.
}
\tag{7}
\]

Equation (1), followed by (3)-(5), gives

\[
\begin{aligned}
|M(N)|
\le{}&
K(1+\log x_N)\\
&+
2B\left(\frac1\sigma+\frac1\eta\right)
x_N^{\sigma+2\eta}
+
4B x_N^{2\eta}.
\end{aligned}
\tag{8}
\]

For \(x\ge1\), Mathlib's exact logarithm-power inequality gives

\[
\log x\le\frac{x^\eta}{\eta},
\]

while \(1\le x^\eta\). Hence

\[
1+\log x
\le
\left(1+\frac1\eta\right)x^\eta.
\tag{9}
\]

By (6)-(7), every power in (8) is at most \(x_N^\theta\). Thus, with

\[
A=
K\left(1+\frac1\eta\right)
+
2B\left(\frac1\sigma+\frac1\eta\right)
+
4B,
\]

we obtain

\[
|M(N)|\le A x_N^\theta.
\tag{10}
\]

Since \(x_N\le2N\), \(0\le\theta\le1\), and
\(2^\theta\le2\),

\[
x_N^\theta\le2N^\theta.
\]

Therefore

\[
\boxed{
|M(N)|\le2A\,N^\theta.
}
\tag{11}
\]

The source theorem

```lean
integerMertensPower_of_reciprocalPerron
```

contains this complete parameter transfer. No constant depends on \(N\).

## 6. Return to the maintained real cutoff and causal consumer

The existing source theorem

```lean
original_integer_to_real_Mertens_power
```

turns (11) into

\[
|M(x)|\le 2A\,x^\theta
\qquad(x\ge1)
\]

with the repository's exact floor convention.

At \(x=e^u\),

\[
(e^u)^\theta=e^{\theta u}.
\]

Thus (11) produces the exact `MertensExponentialEnvelopeAt` consumed by the causal energy source. The new source proves:

```lean
mertensExponentialEnvelopeAt_of_integerPower
zeroFreeToMertensPowerBridge_of_reciprocalPerron
zeroFreeToMertensPowerBridge_of_subpowerPerron
```

The old monolithic `ZeroFreeToMertensPowerBridge` is therefore reduced to the explicit reciprocal-growth, segment-integration, and truncated-Perron inputs.

The PR103 wrappers

```lean
pr103_pickupEnergy_clean_rate_of_perron
pickupEnergyAbscissa_le_exactPR103_of_perron
```

then feed the existing exact external statement, causal calculus, and energy-abscissa consumers without reopening their source definitions.

## 7. Hostile check: nonvanishing alone is insufficient

A generic theorem

\[
\text{zero-free holomorphic}
\Longrightarrow
\text{subpower reciprocal growth}
\]

is false.

Consider the entire zero-free function

\[
f(z)=\exp\!\left(-\exp(-iz)\right).
\]

For \(z=it\),

\[
-i(it)=t,
\]

so

\[
f(it)=\exp(-e^t)
\]

and

\[
\left|\frac1{f(it)}\right|
=
\exp(e^t).
\]

This exceeds \(C(1+t)^A\) for every fixed \(A,C\) along sufficiently large positive \(t\). Consequently, the external PR103 nonvanishing theorem by itself cannot discharge (2). A valid proof must use zeta-specific structure: its Dirichlet series/Euler product on the right, functional equation, vertical growth estimates, and a minimum-modulus or logarithmic argument inside the zero-free half-plane.

Stable obstruction:

```text
rh-zero-free-alone-no-reciprocal-growth-v1
```

This obstruction does not apply to zeta after the missing zeta-specific estimates are proved.

## 8. Comparison with established sources

Titchmarsh's classical RH-to-Mertens argument uses a half-integer cutoff, a Perron integral for \(1/\zeta\), a contour displacement, and reciprocal-zeta bounds on the displaced sides. The present reduction follows that mechanism but keeps the repository's exact PR103 boundary \(\theta_0\), regularizes the pole before applying Cauchy-Goursat, and states every quantitative loss needed to obtain an arbitrary strict exponent \(\theta>\theta_0\).

Pinned Mathlib supplies:

- the entire `riemannZeta₁` and its exact relation to zeta;
- differentiability of `riemannZeta₁`;
- complex powers;
- the rectangle Cauchy-Goursat theorem;
- interval integrals and logarithm-power absorption.

Pinned Mathlib does not currently supply a ready truncated Perron theorem for the Möbius coefficients or the required zeta minimum-modulus theorem. Its `LSeries/SumCoeff.lean` develops the forward Abel direction from partial-sum bounds to L-series convergence and integral representations, not this inverse contour implication.

The new result is not claimed as an original theorem of analytic number theory. Its contribution is a source-exact decomposition and parameter-complete formal target for the current causal programme.

## 9. Remaining mathematical frontier

The next bounded analytical tasks are now precise:

1. prove `RegularizedReciprocalSubpower` for zeta from the external zero-free half-plane and pinned zeta growth machinery;
2. formalize `ReciprocalSubpowerSegmentIntegration`;
3. prove `HalfIntegerMertensTruncatedPerron` from the Möbius Dirichlet series on \(\Re s>1\);
4. compile and kernel-check the complete bridge.

Even after those tasks, PR103 supplies only one fixed positive boundary. The independent RH programme still requires a one-sided all-positive-rate bound for the complete signed endpoint source on one fixed affinely covering scale set. A fixed exponent does not satisfy that quantifier order.

## 10. Verification disposition

- ordinary mathematical contour reduction: `PROVED`;
- exact scalar/exponent/cutoff transfer: `PROVED`;
- Lean source proof candidate: `WRITTEN`;
- source publication: pending at review authoring time;
- reciprocal subpower theorem: `UNPROVED`;
- subpower-to-segment Lean integration: `NOT_FORMALIZED`;
- truncated Perron theorem: `UNPROVED`;
- Lean compilation: `NOT_RUN`;
- expected-type checking: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- all-positive-rate endpoint supplier: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.
