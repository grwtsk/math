# Reciprocal-zeta and Perron factorization of the PR103-to-Mertens bridge

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Research date: 2026-11-02.

Disposition: ordinary scalar/exponent mathematics proved; Lean source proof candidate. The reciprocal-zeta subpower theorem and the source-specific truncated Perron rectangle remain visible analytic inputs. The external PR103 theorem, Lean compilation, expected-type checks, fresh-kernel replay, transitive axiom audit, native execution, the all-positive-rate endpoint supplier and RH remain open or `NOT_RUN`.

## 1. Unchanged target

The arithmetic source remains the actual Mertens prefix

\[
M(x)=\sum_{n\le x}\mu(n),
\]

and the existing bridge target is

\[
\theta_0<\theta<1,
\qquad
\zeta(s)\ne0\quad(\Re s>\theta_0,\ s\ne1)
\Longrightarrow
|M(e^u)|\le C_\theta e^{\theta u}\quad(u\ge0).
\]

This is the repository proposition `ZeroFreeToMertensPowerBridge`. The new source does not replace it. It identifies and separates the two analytic statements needed to prove it.

## 2. Reciprocal-zeta input

For `sigma>theta0` and `eta>0`, define the closed-strip subpower estimate

\[
\left|\zeta(a+it)^{-1}\right|
\le C_{\sigma,\eta}(2+|t|)^\eta,
\qquad
\sigma\le a\le2,
\qquad
 a+it\ne1.
\]

The source records this as `ZetaReciprocalSubpowerAt sigma eta C`, and the zero-free-to-growth provider as `ZetaZeroFreeToReciprocalSubpowerBridge`.

This is stronger than merely knowing that the reciprocal exists. Its dependence on every arbitrarily small `eta>0` is essential for the unsmoothed rectangular Perron route.

OpenAI's formalized theorem `SevenEighths.LogarithmicControl.logarithmic_control` supplies the generic complex-analytic mechanism. On a zero-free disk, polynomial outer growth together with a bounded inner Euler logarithm produces both function and reciprocal bounds of size `C^epsilon`. Applying it to zeta still requires source-bound moving-disk polynomial growth and identification of the inner Euler logarithm. Those zeta-specific adaptations are not claimed here.

## 3. Perron three-term output

At a noninteger cutoff and contour height comparable to `x`, a standard truncated Perron rectangle shift to `Re(s)=sigma` under reciprocal exponent `eta` has three costs:

\[
x^{\sigma+\eta},
\qquad
x^\eta,
\qquad
1+\log x.
\]

The first is the shifted vertical side, the second represents the two horizontal sides, and the last absorbs the truncation and finite collar costs. In physical time `x=e^u`, the source records the explicit result as

\[
|M(e^u)|
\le K\left(
 e^{(\sigma+\eta)u}
 +e^{\eta u}
 +1+u
\right).
\tag{1}
\]

This is `MertensPerronThreeTermEnvelopeAt sigma eta K`. The unresolved source-specific contour theorem is `ReciprocalPerronThreeTermBridge`.

The source does not hide a Perron conclusion inside an unrestricted certificate. The reciprocal estimate and the three-term return are separate propositions with their complete parameter dependencies visible.

## 4. Exact absorption into the requested Mertens power

Let `theta>0` and assume

\[
\sigma+\eta\le\theta,
\qquad
\eta\le\theta.
\]

Then

\[
e^{(\sigma+\eta)u}\le e^{\theta u},
\qquad
e^{\eta u}\le e^{\theta u}.
\]

The exponential series gives

\[
u\le\frac1\theta e^{\theta u},
\qquad
1\le e^{\theta u},
\]

so

\[
1+u\le\left(1+\frac1\theta\right)e^{\theta u}.
\]

Substitution in (1) yields

\[
\boxed{
|M(e^u)|
\le K\left(3+\frac1\theta\right)e^{\theta u}.
}
\tag{2}
\]

This is proved by `mertensThreeTermEnvelope_to_power`.

## 5. Parameter choice valid for every requested exponent

For arbitrary

\[
\theta_0<\theta,
\qquad
\theta>\frac12,
\]

put

\[
L=\max\left(\theta_0,\frac\theta2\right),
\qquad
\sigma=\frac{L+\theta}{2},
\qquad
\eta=\frac{\theta-\sigma}{2}.
\]

Then

\[
\theta_0<\sigma,
\qquad
\eta>0,
\qquad
\sigma+\eta<\theta,
\qquad
\eta<\theta.
\]

This parameter choice remains valid even if a generic zero-free boundary lies far to the left. The theorem `perron_parameter_bounds` proves the four inequalities. Combining the two visible analytic providers with (2) gives an actual proof candidate for the repository's complete abstract proposition:

```lean
zeroFreeToMertensPowerBridge_of_reciprocal_perron :
  ZetaZeroFreeToReciprocalSubpowerBridge ->
  ReciprocalPerronThreeTermBridge ->
  ZeroFreeToMertensPowerBridge
```

All existing PR103 causal-energy, endpoint, complete signed strong-packet and exact-abscissa consumers are then routed through the factored bridge.

## 6. Why a fixed reciprocal polynomial exponent is insufficient

Suppose only

\[
|\zeta(\sigma+it)^{-1}|\ll(1+|t|)^A
\]

with one fixed `A>=0`, and take Perron height `T=x^B`. The ordinary rectangular argument has exponent ledger

\[
1-B<\theta,
\tag{3}
\]

\[
\sigma+AB<\theta,
\tag{4}
\]

\[
1+(A-1)B<\theta.
\tag{5}
\]

Equation (3) is the truncation error, (4) the shifted vertical side, and (5) the horizontal sides. The source calls their conjunction `PerronPowerBalance sigma theta A B`.

If `0<A<1`, multiply (5) by `A` and (4) by `1-A` and add. The `B` terms cancel, giving

\[
A+(1-A)\sigma<\theta,
\]

or equivalently

\[
\boxed{
A(1-\sigma)<\theta-\sigma.
}
\tag{6}
\]

If `A>=1`, (5) is already impossible because its left side is at least one while `theta<1`. For `A=0`, (6) reduces to `sigma<theta`. Thus (6) is necessary for every `A>=0`; this is `perronPowerBalance_forces_weighted_gap`.

Now fix a zero-free boundary `theta0<1` and a positive polynomial exponent `A`. Put

\[
d=\frac{A(1-\theta_0)}{A+1},
\qquad
\theta=\theta_0+d,
\qquad
\sigma=\theta_0+\frac d2.
\]

Then

\[
\theta_0<\sigma<\theta<1,
\]

but direct calculation gives

\[
\theta-\sigma
< A(1-\sigma).
\]

Therefore no `B` can satisfy (3)--(5). The theorem is

```lean
fixedPolynomial_no_perron_balance
```

with stable obstruction identifier

```text
rh-fixed-polynomial-reciprocal-perron-insufficiency-v1
```

This is a method obstruction, not a counterexample to a Mertens power bound. It proves that one fixed polynomial reciprocal estimate cannot support all powers arbitrarily close to the zero-free boundary through the plain rectangle.

## 7. Subpower control is sufficient for the exponent ledger

If the reciprocal exponent can be chosen as any `eta>0`, use `B=1`. The three exponents become

\[
0,
\qquad
\sigma+\eta,
\qquad
\eta.
\]

Thus `sigma+eta<theta` and `eta<theta` close the complete ledger. This is `perronPowerBalance_of_subpower` and explains why the all-`eta` quantifier in the reciprocal input is not cosmetic.

A smoothed Perron kernel could alter the horizontal and truncation exponents. Such a theorem would be a legitimate alternative, but its complete smoothing and unsmoothing losses must be supplied. No such replacement is claimed by this source.

## 8. Relation to available formal sources

Pinned Mathlib's `LSeries/SumCoeff.lean` proves the forward Abel direction: coefficient-prefix bounds imply convergence and an integral representation of the L-series. It does not furnish the inverse truncated Perron theorem needed here.

OpenAI's repository contains generic rectangle-contour and Riesz-kernel identities, including `MRTRieszContour.lean` and `DirichletL/Mellin/InverseContour.lean`. These show that substantial contour infrastructure exists, but their source-specific kernels do not directly prove the unsmoothed Möbius prefix formula above. The local Perron proposition therefore remains visible.

## 9. Exact remaining frontier

After this factorization, the former opaque bridge is reduced to two explicit tasks:

1. instantiate zero-free holomorphic logarithmic control for zeta to prove reciprocal subpower bounds on every closed sub-half-plane;
2. prove the truncated Perron rectangle with the three displayed errors for the actual Möbius prefix.

Even completing both tasks yields only the fixed positive PR103 boundary. The RH campaign still requires a one-sided all-positive-rate estimate for the complete signed endpoint source on one fixed affinely covering scale set. This increment supplies no new cancellation for that terminal packet.

## 10. Verification disposition

- ordinary scalar/exponent derivation: **PROVED**;
- source publication: **PENDING** at the time of this review;
- reciprocal-zeta subpower theorem: **NOT_FORMALIZED LOCALLY**;
- truncated Perron rectangle: **NOT_FORMALIZED**;
- external PR103 replay: **NOT_RUN**;
- Lean compilation: **NOT_RUN**;
- expected types: **NOT_RUN**;
- fresh-kernel replay: **NOT_RUN**;
- transitive axiom audit: **NOT_RUN**;
- native execution: **NOT_RUN**;
- all-positive-rate endpoint supplier: **UNPROVED**;
- RH: **UNPROVED**.
