# Conditional logarithmic Mertens boundary estimate

## Unconditional finite identities

For real damping `σ`, the source defines

$$
G_\sigma(u)=e^{-\sigma u}\,\mathrm{pickupVelocity}(u).
$$

It proves the exact identities

$$
G_\sigma(u)=e^{-(\sigma+1/2)u}M(e^u),\qquad
e^{-\sigma t}\,\mathrm{wholePickup}(t)
=V_{\sigma,G_\sigma}(t),
$$

where `M` is the repository's literal closed real-cutoff `mertensPrefix` and
$V$ is the [finite exponential Volterra operator](../../Analysis/RealAnalysis/Integration/exponential-volterra-l2.md).
The source is interval integrable on every finite interval. At `σ = 1/2`, it
also proves finite-interval square integrability, the identity
$G_{1/2}(u)=e^{-u}M(e^u)$, the pointwise bound $|G_{1/2}(u)|\le1$, and

$$
\int_0^1 G_{1/2}(u)^2\,du\le1.
$$

The unconditional finite-window return `verticalLineMass_le_dampedSource`
states that, for `σ > 0`, `T >= 0`, and an explicit finite-interval square
integrability hypothesis,

$$
\mathrm{verticalLineMass}(\sigma,T)
\le \frac{1}{\sigma^2}\int_0^T G_\sigma(u)^2\,du.
$$

This is the finite Volterra estimate applied to the exact pickup identity. It
does not provide a horizon-independent bound on the source integral.

## Generic conditional transfers

The source also isolates three reusable conditional steps. If the exact
damped source has an exponential envelope

$$
|G_\sigma(u)|\le C e^{-au}\quad(u\ge0),
$$

with $C\ge0$, $a>0$, and $\sigma>0$, then it proves

$$
\mathrm{verticalLineMass}(\sigma,T)
\le \frac{C^2}{2\sigma^2a}\quad(T\ge0).
$$

It then derives this envelope from either a real-cutoff estimate
$|M(x)|\le Cx^\beta$ for $x\ge1$, or a natural-cutoff estimate for
`pickupMertensPrefix`, provided $\beta<\sigma+1/2`; the natural form also
assumes $\beta\ge0$. In both cases the returned denominator is
$2\sigma^2(\sigma+1/2-\beta)$. These are transfer theorems only: the source
retains the exponential or arithmetic bound as an explicit hypothesis and
does not supply the exponent.

## Explicit conditional premise and return

The remaining arithmetic input is a named proposition, not a theorem supplied
by the module:

$$
\mathrm{MertensLogSquareBound}:=
\forall x\in\mathbb R,\quad x>1\Longrightarrow
|M(x)|\le \frac{3x}{(\log x)^2}.
$$

Assuming a term `hM : MertensLogSquareBound`, the source proves, in order,

$$
G_{1/2}(u)^2\le 9u^{-4}\quad(u\ge1),
$$

$$
\int_1^T G_{1/2}(u)^2\,du\le3\quad(T\ge1),\qquad
\int_0^T G_{1/2}(u)^2\,du\le4\quad(T\ge0),
$$

and therefore

$$
\mathrm{verticalLineMass}(1/2,T)\le16\quad(T\ge0).
$$

It packages the last estimate as
`CriticalBoundaryVerticalLineUniform` and, by monotonicity, obtains the same
constant `16` for every `σ >= 1/2`. The tail, total-source, and
Mertens-derived constant-`16` conclusions all retain `hM`; the separate
monotonicity lemma instead accepts the boundary estimate as a premise. The
module does not prove `MertensLogSquareBound`, does not make the
critical-boundary estimate unconditional, and does not prove the Riemann
hypothesis unconditionally.

The published source for the intended arithmetic premise is Johnston,
Leong, and Tudzi, Theorem A.1, equation (A.5),
[arXiv:2408.04143v2](https://arxiv.org/pdf/2408.04143v2). Its constant
`2.91890` implies the displayed premise with constant `3`. That theorem has
not yet been admitted and replayed in the pinned Lean environment, so the
literature citation is evidence for the mathematical supplier, not a native
formal supplier.

## Completed-transform scope

The existing finite Parseval identity identifies `verticalLineMass σ T` with
the normalized completed expression. At `σ = 1/2`, the conditional bound
above therefore prices the normalized expression by `16`, or equivalently
the corresponding unnormalized integral by `32 * π`. This statement retains
the unborn-product debt and both signed endpoint sums in the completed
numerator. It neither deletes those corrections nor bounds the raw finite
Euler product by itself.

The coordinate is also essential: `σ = 1/2` corresponds to `Re s = 1`, not
to the critical line. Once the logarithmic Mertens supplier is admitted, the
remaining damping interval is still

$$
0<\sigma<\frac12.
$$

The logarithmic majorant used here becomes
$e^{(1-2\sigma)u}/u^4$ in that interval and is not integrable. This only
shows that this particular majorization stops at the boundary; it does not
show that the actual signed energy diverges.

## Next quantitative obligation

The next reciprocal damping is `σ = 1/3`. The formal power-transfer theorem
shows exactly what a pointwise power supplier would need to provide:

$$
|M(x)|\le Cx^\beta\quad(x\ge1),\qquad \beta<\frac56.
$$

It would then give, uniformly for `T >= 0`,

$$
\mathrm{verticalLineMass}(1/3,T)
\le
\frac{C^2}{2(1/3)^2(5/6-\beta)}.
$$

This is a transfer specification, not a theorem supplying such a `β`.

The inspected external `openai-math` declaration
`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re` proves a zero-free region
`Re s > 7/8`. It does not prove a Mertens estimate. A quantitative bridge
would still have to identify `1/ζ` coefficients with Möbius, control vertical
growth and every Perron or Mellin contour edge and truncation term, recover
the exact cutoff, and replay under this repository's pins. Even if that bridge
eventually supplied `|M(x)| <<_η x^(7/8+η)`, the present transfer would only
pay `σ > 3/8 + η`; it would not reach `σ = 1/3`.

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Local work is MIT; Lean and Mathlib retain their upstream
authorship and licenses.

## Source and verification scope

[Source](../../../../GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean).
Status: **fresh-selected**. Verification receipt (artifact:gitblob:bd2f6ab88153b727a4d1e21c2c5d40751816cd59) ·
credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f).
The receipt covers the conditional theorem and its separate consumer under the
pinned compiler with trust zero, fatal warnings, and an owned-declaration axiom
audit. The displayed Mertens premise remains explicitly unproved here.

---

## Written continuation: zero-free strip to the actual pickup

**Status: written conditional analytic argument, not part of the preceding
fresh-selected Lean receipt.** Human mathematical direction: grwtsk contributors. Derivation and diagnostic implementation assistance: OpenAI ChatGPT.
No Lean source or previously recorded acceptance is changed by this section.

The external input is precisely

$$
\mathrm{ZF}_{7/8}:\quad
\forall s\in\mathbb C,\quad \Re s>7/8,\ s\ne1
\ \Longrightarrow\ \zeta(s)\ne0.
\tag{ZF}
$$

The inspected implementation is
[`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re`](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean),
Git blob `46c67f4000906b1391a471d6e6396ac0da3c16a5`. Its audit was reported by
the human; this contribution inspected the declaration but did not replay
its dependency closure. The argument below retains (ZF) explicitly. It does
not substitute nonvanishing for an already-proved Mertens power estimate.

### Statement with a complete constant

Assume (ZF). For any real $3/8<\sigma\le1/2$, define

$$
a=\sigma+1/2,\quad \delta=a-7/8=\sigma-3/8,\quad
\eta=4\delta/9,\quad m=\lceil9/(4\delta)\rceil,
$$

$$
L=(36/\delta)^m,\qquad
K=6\exp(30/\delta+L/2),
$$

$$
B_\sigma=\frac{2K^2}{\pi}
\left(\frac1{\sigma^2(\sigma+1/2)^2}+\frac12\right).
\tag{6}
$$

The written conclusion is

$$
\boxed{\mathrm{ZF}_{7/8}\ \Longrightarrow\
\forall T\ge0:\quad
\mathrm{verticalLineMass}(\sigma,T)=H_\sigma(T)\le B_\sigma.}
\tag{7}
$$

No unspecified compact-set maximum, height cutoff, Mertens constant, or
Perron truncation cost is concealed in $B_\sigma$. The constant is deliberately
very large. For the concrete intermediate line $\sigma=2/5$ it simplifies to

$$
\boxed{H_{2/5}(T)\le
\frac{5324}{9\pi}\exp\bigl(2400+1440^{90}\bigr)
\quad(T\ge0),\quad\text{assuming (ZF)}.}
\tag{8}
$$

This is a transfer of the external zero-free information to a smoother,
already identified source. It is not a new zero-free exponent. In particular,
$\sigma=1/3$ would require the zeta line $5/6$, which lies $1/24$ to the left
of the supplied $7/8$ boundary. Neither (7) nor its repeated application
crosses that gap. The strict endpoint $\sigma=3/8$ is not included.

### Analytic ingredients and their domains

For $\Re s>1$, absolute summation gives
$\zeta(s)=s\int_1^\infty\lfloor x\rfloor x^{-s-1}dx$.
Splitting $\lfloor x\rfloor=x-\{x\}$ continues this identity to
$\Re s>0$, $s\ne1$:

$$
\zeta(s)=\frac{s}{s-1}-s\int_1^\infty\{x\}x^{-s-1}dx,
\qquad
\left|\int_1^\infty\{x\}x^{-s-1}dx\right|\le\frac1{\Re s}.
\tag{9}
$$

Continuation here follows from absolute convergence of the last integral
locally uniformly in $\Re s>0$ and analytic uniqueness from $\Re s>1$.
Define the actual pole regularization

$$Z(s)=(s-1)\zeta(s)\ (s\ne1),\qquad Z(1)=1.$$

It is holomorphic on $\Re s>0$. Under (ZF), $Z$ has no zeros on
$\Re s>7/8$. The analytic reciprocal used below is

$$\mathcal R(s)=\frac{s-1}{Z(s)},\qquad\mathcal R(1)=0.$$

It equals $1/\zeta(s)$ only away from the pole. This is compatible with the
repository's [pole regularization](../../../../GRWTSK/NumberTheory/Zeta/PoleRegularization.lean);
the literal total-function product at one is not used as its analytic value.

Two classical disk inequalities are used with explicit costs. If $g$ is
holomorphic on a neighborhood of the disk of radius $R_2$, centered at $c$,
and $\Re g\le M$ there, then for $r<R_2$,

$$
\max_{|s-c|\le r}|g(s)|\le
\frac{2r}{R_2-r}M+
\frac{R_2+r}{R_2-r}|g(c)|.
\tag{10}
$$

For completeness, subtract $g(c)$ and put $A=M-\Re g(c)\ge0$.
If $A=0$, the real-part maximum principle makes $g$ constant. Otherwise
$h=(g-g(c))/(2A-(g-g(c)))$ maps the disk to the unit disk and vanishes at
$c$. Schwarz gives $|h(s)|\le r/R_2$, hence
$|g(s)-g(c)|\le2Ar/(R_2-r)$, which implies (10).

If $0<r_0<r<R$, the three-circles inequality is

$$M_g(r)\le M_g(r_0)^{1-\lambda}M_g(R)^\lambda,
\quad\lambda=\frac{\log(r/r_0)}{\log(R/r_0)}.$$

This follows by applying the maximum principle to the subharmonic function
$\log|g|$ minus the harmonic function affine in $\log|s-c|$ that matches
the two boundary bounds on the annulus. Zeros of $g$ are handled by the
subharmonic maximum principle or a limiting positive boundary bound.
Neither inequality assumes a bound for the actual Mertens function.

### High-height reciprocal bound

Put

$$r_0=1/2,\quad r=2-a=9/8-\delta,\quad
R=9/8-\delta/2,\quad R_2=9/8-\delta/4.$$

Then $r_0<r<R<R_2<9/8$. For $|t|\ge4$, the disk centered at $c=2+it$
with radius $R_2$ lies in $\Re s>7/8$, avoids the pole, and has no zeros by
(ZF). Choose its analytic logarithm $g=\log\zeta$ to agree at $c$ with
the absolutely convergent Euler logarithm. On the inner disk, $\Re s\ge3/2$,
so $|g|\le\log\zeta(3/2)\le\log3<2$. Also $|g(c)|\le\log2$.
These Euler estimates are used only in the absolute-convergence region.

On the outer disk, (9) and
$|s|\le2|t|$, $|s-1|>1$, $\Re s>7/8$ give
$|\zeta(s)|\le6|t|$, hence $\Re g(s)\le\log(6|t|)$.
The two coefficients in (10), with output radius $R$, are each at most
$9/\delta$. Thus

$$M_g(R)\le(9/\delta)\log(12|t|).$$

Three circles now gives, with $v=\log(12|t|)>1$,

$$M_g(r)\le2^{1-\lambda}(9/\delta)^\lambda v^\lambda
\le(18/\delta)v^\lambda.$$

The exponent gain is accounted for exactly:

$$
1-\lambda=\frac{\log(R/r)}{\log(2R)}
\ge\frac{R-r}{R}\ge\frac{4\delta}{9}=\eta.
\tag{11}
$$

Here $\log(R/r)\ge(R-r)/R$, while $0<\log(2R)<1$ because
$2R<9/4<e$. Hence $|g(s)|\le C v^{1-\eta}$ on the target strip,
where $C=18/\delta$ and $a\le\Re s\le3/2$.
Since $m\eta\ge1$ and $L=(2C)^m$, we have $L^\eta\ge2C$.
For $v\ge L$, $Cv^{1-\eta}\le v/2$; for $0\le v\le L$,
$Cv^{1-\eta}\le L/2$. Consequently

$$
Cv^{1-\eta}\le(v+L)/2,
\qquad
|\mathcal R(s)|\le\sqrt{12|t|}\,e^{L/2}
\quad(|t|\ge4,\ a\le\Re s\le3/2).
\tag{12}
$$

The nonvanishing input is indispensable at the construction of $g$ on the
outer disk. The logarithmic interpolation cannot extend that disk into an
unproved zero-free region.

### Low heights and the pole are paid explicitly

For $|t|\le4$, use the same outer disk and a logarithm $g=\log Z$ instead.
At its center choose
$g(2+it)=\log(1+it)+\log\zeta(2+it)$, where the first logarithm is on the
right half-plane and the second is the Euler logarithm. Its modulus is less
than $5$: $\log\sqrt{17}<2$, $|\arg(1+it)|<2$, and $\log2<1$.

Throughout the disk, $|s|<7$, $|s-1|<6$, and $\Re s>7/8$.
Equation (9), with the removable value included, gives
$|Z(s)|\le7(1+6/(7/8))=55<64$, so $\Re g<5$.
The two coefficients of (10), now with output radius $r$, are each at most
$3/\delta$. It follows that $|g|\le30/\delta$ on the target strip.
Since $|s-1|<5$ on $a\le\Re s\le3/2$, $|t|\le4$,

$$|\mathcal R(s)|\le5e^{30/\delta}.$$

Together with (12) and $6>\max(5,\sqrt{12})$, this proves the global,
explicit strip estimate

$$
\boxed{|\mathcal R(x+it)|\le K\sqrt{1+|t|}
\quad(a\le x\le3/2,\ t\in\mathbb R).}
\tag{13}
$$

No uncomputed finite-height minimum of $|\zeta|$ is an input to (13).

### Literal source identification and contour costs

Set

$$F(z)=\frac{\mathcal R(z+1/2)}{z(z+1/2)}.$$

It is holomorphic on a neighborhood of the closed strip
$\sigma\le\Re z\le1$, including the shifted zeta pole at $z=1/2$.
For $\Re z>1/2$, the actual source has

$$F(z)=\int_0^\infty e^{-zu}W(u)du.$$

One may reuse the repository's initial Laplace identity, or obtain it directly
from its causal responses $h_n(u)=2(n^{-1/2}-e^{-u/2})1_{[\log n,\infty)}(u)$.
Their transforms are $n^{-(z+1/2)}/[z(z+1/2)]$.
The sum of the integrals of $e^{-(\Re z)u}h_n(u)$ is
$\zeta(\Re z+1/2)/[(\Re z)(\Re z+1/2)]<\infty$.
Thus absolute Fubini justifies the signed sum, and the reciprocal Euler
series is used only at $\Re(z+1/2)>1$.

At the initial line $b=1$, extend $f_1(u)=e^{-u}W(u)$ by zero for $u<0$.
It is continuous, including $u=0$, and belongs to $L^1\cap L^2$, because
$|W(u)|\le2(e^{u/2}-1)$ for $u\ge0$.
Its Fourier transform is $F(1+it)$. The bound
$|\mathcal R(3/2+it)|\le\zeta(3/2)\le3$ also makes this transform $L^1$.
Ordinary Fourier inversion therefore identifies the actual continuous pickup
on the initial line without an unproved integrability premise at $\sigma$.

On the rectangle with vertical sides $\sigma$ and $1$ and heights $\pm Y$,
$Y\ge1$, (13) pays both horizontal sides of the inversion integral:

$$
\frac1{2\pi}\left|\int_{\mathrm{horizontal\ sides}}e^{zu}F(z)dz\right|
\le\frac{(1-\sigma)K}{\pi}
 e^{\max(\sigma u,u)}\frac{\sqrt{1+Y}}{Y^2}.
\tag{14}
$$

The right side tends to zero for each real $u$. No pole is crossed. Both
vertical integrals converge absolutely, since for $|t|\ge1$,
$|F(\sigma+it)|\le\sqrt2K|t|^{-3/2}$.
Shifting the rectangle proves pointwise, for every real $u$,

$$
1_{[0,\infty)}(u)e^{-\sigma u}W(u)
=\frac1{2\pi}\int_{\mathbb R}e^{itu}F(\sigma+it)dt.
\tag{15}
$$

The inverse on the new line is the actual causal function, not merely an
unidentified $L^2$ representative. Truncation at height $Y\ge1$ has normalized
pointwise error at most $2\sqrt2K/(\pi\sqrt Y)$. For the undamped $W(u)$,
$u\ge0$, multiply this error by $e^{\sigma u}$.
Its whole-real-line squared $L^2$ truncation error is at most
$K^2/(\pi Y^2)$, by the same tail bound and Plancherel.
These are frequency truncation costs, not physical-time tail estimates.

The transform in (15) is also in $L^2$. For $|t|\le1$ its squared modulus
is at most $2K^2/(\sigma^2a^2)$; for $|t|\ge1$ it is at most
$2K^2|t|^{-3}$. Plancherel now yields, without having assumed the conclusion,

$$
\int_0^\infty e^{-2\sigma u}W(u)^2du
=\frac1{2\pi}\int_{\mathbb R}|F(\sigma+it)|^2dt
\le\frac{2K^2}{\pi}\left(\frac1{\sigma^2a^2}+\frac12\right).
$$

Restriction to $[0,T]$ proves (7). The infinite integrals can initially be
read as nonnegative extended integrals; the constructed $L^2$ inverse proves
their finiteness. No totalized integral is used to infer integrability.

For any real physical cutoff $x\ge1$, (15) concerns exactly the original
$W(\log x)=2(A_N-x^{-1/2}M_N)$ with $N=\lfloor x\rfloor$.
At an integer cutoff the touching response is zero, but its coefficient
remains in the closed prefixes. No Perron half-weight convention or
coefficient recovery is introduced. The existing finite-window Parseval
identity therefore returns (7) to `verticalLineMass` with the complete
prime-product numerator, both endpoint terms, and the unborn-product debt
unchanged. No bound on the raw finite prime product alone is asserted.

### Negative control: finite vertical mass is not enough

Take $a_*=2/5$, $b_*=1/2$ and the comparison source
$W_*(u)=(e^{a_*u}-e^{-b_*u})1_{[0,\infty)}(u)$.
Its Laplace transform, initially to the right of $a_*$, is

$$F_*(z)=\frac1{z-a_*}-\frac1{z+b_*}.$$

At $\sigma=1/3<a_*$, $F_*(\sigma+it)$ still decays quadratically and has
finite normalized vertical mass. Its inverse on that line is instead

$$
-e^{(a_*-\sigma)u}1_{(-\infty,0)}(u)
-e^{-(b_*+\sigma)u}1_{[0,\infty)}(u),
$$

whose squared norm is
$1/[2(a_*-\sigma)]+1/[2(b_*+\sigma)]=81/10$.
But the actual causal source has infinite $\sigma$-weighted energy.
The missing contour residue is exactly $e^{a_*u}$. Thus a bound for an
analytic-continuation expression on one line, without a justified pole-free
shift and causal identification, does not pay the actual pickup energy.
This is a counterexample to an inference rule, not to the Mobius target.

### Verification boundary and remaining arithmetic

`zero_free_pickup_transfer.py` (artifact:gitblob:97acf4e7cee93a7a4c3663b29596fbf4e864c553)
checks exact rational radii, Borel--Caratheodory coefficients, the integer
ceiling in $L$, the prefactor in (8), and the crossed-pole model.
It leaves exponentials symbolic and rejects $\sigma\le3/8$, including $1/3$.
`test_zero_free_pickup_transfer.py` (artifact:gitblob:5ba720e5f5ba316756a26ecb5a6f1c9ff438d943)
contains finite controls and tests rejection under optimized Python.
The source-bound receipt (artifact:gitblob:6664c398dd6609510c373346ef3563ede17e4724)
records the actual runs and distinguishes them from the analytic proof.

This continuation supplies a written route from the reported external
zero-free theorem to the intermediate line $2/5$, and more generally every
$\sigma>3/8$ (using the existing elementary range above $1/2$).
It does not supply (ZF) afresh, prove a new Mertens exponent, formalize
(9)--(15), or admit (7) in Lean. Analytic logarithms, the disk inequalities,
contour integration and their actual-source adapters require native replay.
The earlier fresh-selected receipt covers only its original conditional
Volterra module; it does not cover this appended argument. Full-repository
layout and documentation checks were not available for this contribution.

The smallest surviving one-third inequality remains the signed bound
$\exists C\ge0\;\forall N\ge1:\ \mathcal C_N-\mathcal T_N(N)\le C$
from the [direct finite-response reduction](Energy/damped-tails.md).
A new zero-free supplier strictly to the left of $5/6$, with the corresponding
quantitative transfer, would be another route; no such supplier is claimed.
Neither P04 nor an RH premise is added. No RH proof is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean`](../../../../GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 20 |
| Theorem/lemma commands | 18 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
