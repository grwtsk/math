# Coherence growth and the rightmost zeta zero

## 1. Source boundary and status

This note is source-bound to `grwtsk/math` at
`1b86586dc1598280cdc17e681c2a2f4180f8b5fc`, the published positive-coherence
and square-variation certificates, the literal pickup/Laplace interfaces in the
repository, and the cited 2026 preprint of János Pintz.

Evidence grade: written mathematics, exact finite/symbolic checks, and one
cited external analytic theorem.  The external theorem is not Lean-formalized
here.  The candidate Lean files are inactive and were not elaborated or
axiom-audited.  No RH proof or new zero-free region is asserted.

## 2. The three growth objects

Let `W` be the repository's literal completed Möbius pickup and

\[
E(T)=\int_0^T W(u)^2\,du.
\]

For `L=log 2`, define the nonnegative local energy blocks

\[
U_j=E((j+1)L)-E(jL).
\]

Retain the endpoint increments

\[
M_n=\sum_{m\le n}\mu(m),\qquad
x_n=M_n\left(n^{-1/2}-(n+1)^{-1/2}\right),\qquad
Q_n=\sum_{m<n}x_m,
\]

and the complete signed coherence

\[
C_n=Q_n^2-\sum_{m<n}x_m^2
   =2\sum_{m<k<n}x_mx_k.
\]

The signed dyadic coherence block is

\[
S_j=\sum_{2^j\le n<2^{j+1}}\log\frac{n+1}{n}\,C_n,
\]

and its post-aggregation positive part is

\[
S_j^+=\max(S_j,0).
\]

The previous source-bound package proves

\[
0\le H_j-S_j^+<\frac{49}{625},
\]

where

\[
H_j=\sum_{2^j\le n<2^{j+1}}\log\frac{n+1}{n}\,Q_n^2.
\]

The exact within-cell pickup formula and the globally summable drift give
constants independent of `j` such that

\[
U_j\le 8H_j+8,\qquad H_j\le \frac12U_j+2.
\]

Therefore `U_j`, `H_j`, and `S_j^+` have the same exponential growth exponent.
No termwise positive-part operation is introduced before the complete coherence
has been formed.

Define

\[
\lambda_{\rm coh}
 =\limsup_{j\to\infty}
   \frac{\log(1+S_j^+)}{j\log2},
\]

and

\[
\lambda_E
 =\limsup_{T\to\infty}
   \frac{\log(1+E(T))}{T}.
\]

Because the `U_j` are nonnegative and sum to `E(J log 2)`, elementary max/sum
comparison gives

\[
\boxed{\lambda_{\rm coh}=\lambda_E.}
\tag{1}
\]

A finite prefix cannot establish either limsup.

## 3. Energy exponent and weighted-energy abscissa

Let

\[
\sigma_E=\inf\left\{\sigma>0:
\int_0^\infty e^{-\sigma u}W(u)^2\,du<\infty\right\}.
\]

For a nonnegative cumulative energy, the standard elementary two-way estimate
is exact at the exponent level.

If the weighted integral at `sigma` is finite, then

\[
E(T)\le e^{\sigma T}
\int_0^\infty e^{-\sigma u}W(u)^2\,du,
\]

so `lambda_E <= sigma`.

Conversely, if `lambda_E < sigma`, choose `tau` strictly between them.  For all
large `T`, `E(T) <= exp(tau T)`.  Stieltjes integration by parts, with the finite
initial interval retained, gives

\[
\int_0^\infty e^{-\sigma u}\,dE(u)<\infty.
\]

Thus

\[
\boxed{\lambda_E=\sigma_E.}
\tag{2}
\]

The repository already defines this convergence abscissa and proves its zero
value equivalent to all-positive-damping pickup energy.

## 4. Lower bound from an actual zeta zero

Let `rho=beta+i gamma` be a nontrivial zero.  The repository's initial source
identity is

\[
\mathcal L W(z)=
\frac1{z(z+1/2)\zeta(z+1/2)}
\]

on its proved initial half-plane, followed by the checked holomorphic
continuation consumer whenever the required tilted pickup integrals are paid.

If weighted square energy is finite at damping `sigma`, Cauchy--Schwarz makes
the signed pickup Laplace transform holomorphic in

\[
\Re z>\sigma/2.
\]

The point `z=rho-1/2` is a genuine pole of the displayed reciprocal-zeta
expression: the numerator is one, and the nontrivial-zero and pole exclusions
keep the other denominator factors separate.  Therefore

\[
\beta-\frac12\le\frac\sigma2.
\]

Taking the infimum over every admissible `sigma` and then the supremum over
zeros gives

\[
\boxed{2\vartheta-1\le\sigma_E,}
\tag{3}
\]

where

\[
\vartheta=\sup_{\zeta(\rho)=0\atop \rho\text{ nontrivial}}\Re\rho.
\]

Equivalently, a zero with real part `beta>1/2` forces, for every `delta>0`,
infinitely many dyadic scales satisfying

\[
S_j^+\ge 2^{(2\beta-1-\delta)j}
\]

up to a scale-independent positive factor.  This is a limsup consequence, not
a claim about every block.

## 5. Upper bound from the zero supremum

Pintz proves, in the notation above, that for every fixed `eta>0`, when
`vartheta<1`,

\[
|M(x)|\ll_\eta x^{\vartheta+\eta}.
\]

His proof shifts the Perron contour to `Re s=vartheta+eta`; the stated maximal
short-range bound includes the point `x` itself.  When `vartheta=1`, the
trivial `|M(x)|<=x` gives the same exponent statement.

For every `eta>0`, therefore,

\[
|M_n|\le C_\eta n^{\vartheta+\eta}.
\]

The exact adjacent-root gap obeys

\[
0< n^{-1/2}-(n+1)^{-1/2}\le n^{-3/2}.
\]

Hence

\[
|x_n|\le C_\eta n^{\vartheta+\eta-3/2},
\]

and finite power-sum comparison gives

\[
|Q_n|\le C'_\eta n^{\vartheta+\eta-1/2}.
\]

Since `log((n+1)/n)<=1/n`,

\[
H_N
\le C''_\eta
\sum_{n\le N}n^{2\vartheta+2\eta-2}
\le C'''_\eta N^{2\vartheta-1+2\eta}.
\]

The endpoint/continuous comparisons then imply

\[
\lambda_E\le 2\vartheta-1+2\eta.
\]

Letting `eta` decrease to zero gives

\[
\boxed{\sigma_E=\lambda_E=\lambda_{\rm coh}=2\vartheta-1.}
\tag{4}
\]

The equality uses the external Mertens theorem for the upper inequality and the
repository's exact source identity for the lower inequality.  Neither side is
obtained from finite numerical data.

## 6. Exact regional consequence

If a proof supplies, for some `alpha>=0`,

\[
\forall\varepsilon>0\ \exists A_\varepsilon\ \forall j:\qquad
S_j\le A_\varepsilon 2^{(\alpha+\varepsilon)j},
\]

then bounded negative coherence converts the same estimate to `S_j^+`, and
(4) gives

\[
\boxed{\Re\rho\le\frac{1+\alpha}{2}}
\]

for every nontrivial zero.

Special cases:

* `alpha=0` is exactly RH at this growth-abscissa level;
* `alpha<3/4` excludes zeros to the right of `7/8`;
* a proved exponent improves a zero-free collar with no finite-height
  extrapolation.

Conversely, any zero with `Re rho=beta` forces coherence exponent at least
`2 beta-1`.  The exponent conversion is therefore sharp.

## 7. Diagnostic finite data

The package reads the previously published positive-coherence certificate by
its frozen SHA-256 and records the finite block values through `N=2,000,000`.
Those values are used only as diagnostics.  They do not enter (4), do not bound
the limsup, and do not certify eventual positivity or RH.

## 8. Hostile controls

The implementation rejects:

1. deriving a limsup from a finite prefix;
2. taking `log(1+S_j)` when the signed block can be negative;
3. replacing complete signed coherence by pairwise positive parts;
4. using the Mertens theorem without recording it as an external premise;
5. inferring the upper exponent from the pole argument alone;
6. inferring the lower exponent from a pointwise Mertens estimate alone;
7. claiming an attained rightmost zero when only a supremum is used;
8. treating exact Python identities as Lean acceptance.

## 9. Formal frontier

The generic block/cumulative/abscissa lemmas can be formalized independently of
zeta.  The source-specific lower bridge should reuse the current
`EnergyAbscissa.lean` and Laplace consumer.  The upper bridge additionally needs
a formal theorem supplying

\[
\forall\eta>0\ \exists C_\eta\ \forall n\ge1:\quad
|M_n|\le C_\eta n^{\vartheta+\eta}.
\]

That theorem is not present in the package.

The smallest unresolved theorem remains the zero-exponent estimate

\[
\lambda_{\rm coh}=0,
\]

or equivalently `DyadicSignedCoherenceBlockSubpower`.  Equation (4) proves that
this is not merely sufficient: it is the exact rightmost-zero exponent.
