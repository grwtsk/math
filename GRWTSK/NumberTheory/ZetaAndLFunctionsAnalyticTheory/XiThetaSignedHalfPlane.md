# Two unconditional signed Xi regions and the exact zero-divisor Fredholm boundary

**Attribution:** grwtsk contributors. **Analytic disposition:** unconditional partial theorem, relying only on classical completed-zeta/theta/Hadamard facts and elementary inequalities; no use of any RH proof as a premise. **Lean disposition:** adjacent `XiThetaSignedHalfPlane.lean` is a source proof candidate; elaboration, kernel replay, transitive axiom audit and independent mathematical review are **NOT_RUN**. The all-upper-half-plane sign is **OPEN independently**.

**Pin inspected before authoring:** `grwtsk/math@aab61f0ffc913cf1456ed9b25d498f71b81315ee`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. **Canonical source:** [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean), `sourceXi` and `normalizedEvenXiTaylor`; [XiThetaAntiPickSource.lean](XiThetaAntiPickSource.lean), `xiSquareTaylorSeries`, `xiAntiPickNumerator`, `xiTwoPointPickKernel`. The mathematical theta formula and complete prime/gamma/pole provenance are in [XiThetaSchurSource.md](XiThetaSchurSource.md) and [XiThetaAntiPickSource.md](XiThetaAntiPickSource.md). Consumers: [#1849](https://github.com/grwtsk/math/issues/1849), [#124](https://github.com/grwtsk/math/issues/124), [#1828](https://github.com/grwtsk/math/issues/1828).

## Theorem: true-Xi signed inequality for Re(w) >= -24

Let `xi` be Riemann's entire completed zeta
\[
\xi(s)=\tfrac12s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s)
\]
(with its removable values at 0,1), and define
\[
F(w)=\frac{\xi(1/2+\sqrt w)}{\xi(1/2)},\qquad
B_\Xi(w)=\operatorname{Im}\left(F'(w)\overline{F(w)}\right).
\]
The first expression is the entire even-power-series extension and is **not** branch-dependent. Then, **without assuming RH**,
\[
\boxed{\forall w\in\mathbb C:\
\operatorname{Re}w\ge-24,\ \operatorname{Im}w>0
\Longrightarrow B_\Xi(w)<0.}\tag{1}
\]
Equivalently, the **diagonal** of the exact source Pick kernel satisfies
\[
\mathcal P_\Xi(w,w)=-\frac{B_\Xi(w)}{\operatorname{Im}w}>0
\quad (\operatorname{Re}w\ge-24,\ \operatorname{Im}w>0).\tag{2}
\]
Equation (2) does **not** assert full positive semidefiniteness of every finite Pick matrix, even on this region.

### Step 1. A completely source-based zero-free disk

The actual Riemann theta representation is
\[
F(w)=M_0^{-1}\int_0^\infty\Phi(u)\cosh(u\sqrt w)\,du,
\quad M_0=\xi(1/2)>0,
\]
where `Phi` is the positive, superexponentially decaying **actual** theta density explicitly recorded in `XiThetaSchurSource.md`. Therefore
\[
F(w)=1+\sum_{n\ge1} a_n w^n,\qquad
a_n=\frac{\int_0^\infty u^{2n}\Phi(u)\,du}
{(2n)!M_0}>0.\tag{3}
\]
Set `theta(x)=sum_{n>=1} exp(-pi*n^2*x)`. Poisson summation gives the classical identity, valid by analytic continuation,
\[
\xi(s)=\tfrac12+
\tfrac{s(s-1)}2\int_1^\infty
\theta(x)\big(x^{s/2-1}+x^{-(s+1)/2}\big)\,dx.\tag{4}
\]
At `s=1/2`, (4) reads
\[
\xi(1/2)=\tfrac12-\tfrac14\int_1^\infty
\theta(x)x^{-3/4}\,dx.\tag{5}
\]
For `x>=1`, using `pi>3`, `n^2>=n` and `exp(3)>20` (already implied by the first nine positive terms of its exponential series),
\[
0<\theta(x)\le\sum_{n\ge1}e^{-3nx}
=\frac{e^{-3x}}{1-e^{-3x}}
\le\tfrac{20}{19}e^{-3x}.
\]
It follows from (5) that
\[
\boxed{\xi(1/2)>\tfrac12-\tfrac14\cdot\tfrac1{57}
=\tfrac{113}{228}.}\tag{6}
\]
Independently, the **actual** Euler/gamma value and the classical `pi<22/7` imply
\[
\xi(6)=\frac{2\pi^3}{63}
<\frac{21296}{21609}
<\frac{113}{114}<2\xi(1/2).\tag{7}
\]
Since `1/2+sqrt(121/4)=6`, equations (3) and (7) give
\[
F(121/4)<2,\qquad
|F(w)-1|\le F(|w|)-1\le F(121/4)-1<1
\quad (|w|\le121/4).
\]
Consequently the **true entire F has no zeros in the closed disk**
\[
\boxed{|w|\le121/4.}\tag{8}
\]
This uses neither an assumed location of all zeta zeros nor a table of finite zeros.

### Step 2. All actual zero factors lie in a strict left cone

Every zero of the entire `xi(s)` is a nontrivial zeta zero, hence has `0<Re(s)<1`, unconditionally by the standard Euler-product/functional-equation theory. Write it
\[
\rho=\tfrac12+a+i\gamma,\quad |a|<1/2,
\qquad w_\rho=(a+i\gamma)^2=-A+iB,
\]
with `A=gamma^2-a^2`, `B=2*a*gamma`. The exact even source identifies the zeros of `F` with these values, retaining analytic multiplicities.

By (8),
\[
a^2+\gamma^2=|w_\rho|>121/4
\quad\Longrightarrow\quad \gamma^2>30.\tag{9}
\]
Put `t=|gamma|>sqrt(30)`. Then
\[
A-|B|\ge t^2-\tfrac14-t
>30-\sqrt{30}-\tfrac14>24,\tag{10}
\]
where the strict middle inequality uses monotonicity of `t^2-t` for `t>=1/2`, and the last inequality uses `sqrt(30)<23/4`. Thus **every** true `F` zero lies in the strict cone
\[
\boxed{w_\rho=-A+iB,\qquad A>|B|+24.}\tag{11}
\]
In particular `F(w)` has no zeros for `Re(w)>=-24`.

### Step 3. The complete signed logarithmic derivative

Because `xi` is entire of order one and even about `1/2`, the **actual** `F` is entire of order `1/2<1`. Its normalized genus-zero Hadamard product and logarithmic derivative are, with all multiplicities,
\[
F(w)=\prod_j(1-w/w_j),\qquad
\frac{F'(w)}{F(w)}=\sum_j\frac1{w-w_j}.\tag{12}
\]
The series is locally normally convergent away from zeros; no RH, self-adjoint spectral model or preselected zero table is an input.

Real zeros `w_j=-A` have `A>24` and contribute
\[
\operatorname{Im}\frac1{w+A}
=-\frac{y}{(x+A)^2+y^2}<0\quad
(w=x+iy,\ x\ge-24,\ y>0).\tag{13}
\]
Nonreal zeros occur in conjugate pairs (reality of the original Xi source). The **complete** pair contributes
\[
\frac1{w+A-iB}+\frac1{w+A+iB}
=\frac{2(w+A)}{(w+A)^2+B^2},
\]
and its imaginary part is **exactly**
\[
\boxed{
\frac{2y\,[B^2-(x+A)^2-y^2]}
{|(w+A)^2+B^2|^2}<0.
}\tag{14}
\]
Indeed, (11) and `x>=-24` give `x+A>|B|`. The squared modulus denominator is strictly positive. This is the genuinely **signed** numerator; replacing it with a positive Gram surrogate would lose the implication.

Sum (13)–(14) using the normal convergence in (12). Every group contributes negatively. At least one zero exists: `F` is nonconstant by (3), and a zero-free entire function of order less than one normalized at zero would be constant by Hadamard. Therefore
\[
\operatorname{Im}(F'(w)/F(w))<0.
\]
Multiplying by `|F(w)|^2>0` proves (1). QED.

### Step 4. Return to the literal signed theta source

With `p_w(u)=cosh(u*sqrt(w))` and
`q_w(u)=u*sinh(u*sqrt(w))/(2*sqrt(w))`, the original
`XiThetaAntiPickSource.md` gives the **unconditional exact identity**
\[
B_\Xi(w)=\frac1{M_0^2}\int_0^\infty\!\int_0^\infty
\Phi(u)\Phi(v)\,
\operatorname{Im}\!\left[q_w(u)\overline{p_w(v)}\right]
\,du\,dv.
\]
Hence the full **signed** double integral is **strictly negative** for every `Re(w)>=-24, Im(w)>0`. This proves an infinite-family inequality on a two-dimensional unbounded region using the **actual** source; its pointwise integrand still changes sign and no pointwise positivity argument is claimed.

## Scope, comparison, and exact remaining proof obligation

This new region theorem is independent of the November 2026 external RH proof, of RH itself, of prime-only Jacobi self-adjointness, of any fabricated Hilbert–Pólya operator, and of finite zero verification. It relies on classical, unconditional completed-zeta/theta and entire-function results. The construction of its source-defined `F` preserves **every actual zero and multiplicity**.

The bound `Re(w)>=-24` is a **proper subset** of the upper half-plane. It leaves open the decisive universal inequality
\[
\boxed{\forall w:\operatorname{Im}w>0\ \Longrightarrow\operatorname{Im}(F'(w)\overline{F(w)})\le0,}\tag{15}
\]
which is equivalent to RH as proved *conditionally* in `XiThetaAntiPickSource.md`. In particular, the present sign theorem does not identify a self-adjoint operator with the entire zeta-zero divisor. The full two-point Pick positivity, all Taylor Toeplitz minors, exact Weil positivity, and the trace-class spectral determinant remain RH-strength independent suppliers. An off-line zero would lie far to the left and would still violate (15) near that zero; the present theorem does not exclude this.

**Formal status:** the adjacent Lean candidate supplies the exact complex conjugate-pair **cleared numerator**, its strict algebraic sign under the cone hypothesis, the elementary disk-to-height implication, and the rational comparison in (7). The analytic theta integral inequality (6), complete zero-cone transfer, genus-zero product and infinite signed summation are **not Lean-formalized**; no Lean toolchain is available in this authoring environment. Do not label (1) Lean-verified until those obligations are separately admitted. No root imports, dependency pins or existing verification results are changed. There has been no independent human mathematical review.

**Suggested independent cross-check:** attempt to disprove the strict sign on `Re(w)>=-24` by a certified interval evaluation of the *actual* theta source; investigate the sharpest source-certified zero-free disk separately. Verify the classical xi zero-strip and genus-zero hypotheses at their exact chosen Mathlib statements before importing the result into the protected `RiemannHypothesis` challenge. Neither numerical checks nor this proper-domain sign replace an independent proof of (15).


## New theorem: a second, unbounded parabolic signed domain

This theorem is independent of the external November 2026 RH proof. It uses the actual xi source and the classical unconditional facts that every xi zero lies in the open critical strip, that xi is real and entire, and that its even square-coordinate transform F has order 1/2.

**Theorem.** For every w=x+iy in the upper half-plane, the genuine source satisfies
\[
\boxed{x+y^2\ge\tfrac12\quad\Longrightarrow\quad
B_\Xi(w)=\operatorname{Im}(F'(w)\overline{F(w)})<0.}\tag{16}
\]
This is a signed source-specific inequality, not a positive-kernel substitution, and it holds arbitrarily far into the left half-plane at sufficiently high imaginary coordinate. It is **not** a global all-upper-half-plane theorem.

**Proof.** Each zero of F comes from an actual xi zero
\(\rho=\tfrac12+a+i\gamma\) with \(|a|<\tfrac12\), and has the form
\[
w_\rho=(a+i\gamma)^2=-A+iB,\quad
A=\gamma^2-a^2,\quad B=2a\gamma.
\]
The strict strip inequality gives the exact bound
\[
A+\tfrac14-B^2
=(1-4a^2)\gamma^2+(\tfrac14-a^2)>0.\tag{17}
\]
It also proves the unconditional zero exclusion
\[
\operatorname{Re}w_\rho+(\operatorname{Im}w_\rho)^2
=a^2-(1-4a^2)\gamma^2<\tfrac14.\tag{18}
\]
Hence F has **no zeros** in the closed parabolic region \(x+y^2\ge\tfrac14\) (in particular, the domain of (16)).

Group the complete genus-zero logarithmic derivative of F by conjugate zero pairs, with every analytic multiplicity retained. The exact contribution of a nonreal pair \(w_\rho=-A+iB\), \(\overline{w_\rho}=-A-iB\) is
\[
\operatorname{Im}\left[\frac1{w+A-iB}+\frac1{w+A+iB}\right]
=
\frac{2y\,[B^2-(x+A)^2-y^2]}
{|(w+A)^2+B^2|^2}.\tag{19}
\]
By (17), the signed bracket obeys
\[
\begin{aligned}
B^2-(x+A)^2-y^2
&< A+\tfrac14-(x+A)^2-y^2\\
&=\tfrac12-x-y^2-(x+A-\tfrac12)^2\\
&\le0
\end{aligned}\tag{20}
\]
whenever \(x+y^2\ge\tfrac12\). Thus every nonreal conjugate pair contributes **strictly negatively**. Real zeros of F must be negative since its actual positive theta integral gives \(F(t)>0\) for \(t\ge0\); their summands \(1/(w+A)\) also have negative imaginary part for \(y>0\). The order-1/2 Hadamard product gives locally normal convergence of the complete logarithmic derivative, and F is nonconstant with a nonempty zero divisor. Consequently the full imaginary part \(\operatorname{Im}(F'/F)\) is strictly negative, and multiplication by \(|F(w)|^2>0\) proves (16). QED.

**Combined independent sign region.** The previous source-certified bound (1) and (16) establish
\[
\boxed{\operatorname{Im}w>0,\quad
\bigl(\operatorname{Re}w\ge-24
\quad\text{or}\quad
\operatorname{Re}w+(\operatorname{Im}w)^2\ge\tfrac12\bigr)
\Longrightarrow B_\Xi(w)<0.}\tag{21}
\]
The actual zero-free parabola in (18) has threshold 1/4, whereas the **signed** inequality in (16) has threshold 1/2; zero-freeness and the anti-Pick sign are not interchangeable.

### Hostile exact-rational logical control (NOT the true Xi source)

The size of the gap cannot be erased by strip geometry and positive Taylor coefficients alone. Take the rational parameters
\[
a=\frac{499999}{1000000},\quad\gamma=6,\quad
A=\gamma^2-a^2,\quad B=2a\gamma,\quad
x=\tfrac12-A,\quad y=\tfrac{597}{100}.
\]
The rational arithmetic gives
\[
\tfrac14<x+y^2=\frac{390899000001}{10^{12}}<\tfrac12,
\quad
B^2-(x+A)^2-y^2
=\frac{6809750009}{62500000000}>0.\tag{22}
\]
For \(w_0=-A+iB\), the finite real entire surrogate
\(F_*(w)=(1-w/w_0)(1-w/\overline{w_0})\)
has **positive** Taylor coefficients and its two zeros arise from coordinates with \(|a|<1/2\) and \(|\gamma|>\sqrt{30}\). Yet (19) is positive at \(w=x+iy\), so its anti-Pick sign fails even though this point lies in the zero-free parabola. This is a hostile **surrogate** for the logical implication only, not a counterexample involving the actual Xi. Any extension of (21) requires further arithmetic or theta-source information.

## Exact actual-Xi Fredholm determinant without a positivity assumption

A complete divisor-preserving **normal** operator can be defined unconditionally, but this is not yet an independent positive Hilbert–Pólya realization.

Let \((w_j)_{j\in J}\) be the full analytic zero multiset of the **actual** entire F, including repeated zeros with their multiplicities. Since F has order \(1/2<1\), F(0)=1 and its Hadamard product has genus zero,
\[
F(w)=\prod_{j\in J}(1-w/w_j),\qquad
\sum_{j\in J}\frac1{|w_j|}<\infty.\tag{23}
\]
On \(\ell^2(J)\) define the diagonal operator
\[
T e_j=\mu_j e_j,\qquad \mu_j=-\frac1{w_j}.\tag{24}
\]
Equation (23) makes T **normal, compact, injective and trace class**, with every nonzero eigenvalue, algebraic multiplicity and determinant factor matched to the actual Xi zero divisor. Fredholm's determinant identity gives, for all complex \(w,z\),
\[
\boxed{F(w)=\det\nolimits_{\rm Fr}(I+wT),\quad
\Xi(z)=\Xi(0)\det\nolimits_{\rm Fr}(I-z^2T).}\tag{25}
\]
Here \(\Xi(z)=\xi(\tfrac12+iz)\). The change of variables \(w=-z^2\) preserves the order of every nonzero zero; \(\Xi(0)>0\) excludes the branch point. The construction retains the full genuine source and multiplicities. It never substitutes the unrelated prime-Jacobi operator.

**Precisely where Hilbert–Pólya remains open independently.**
For this divisor-defined T, the following statements are equivalent using the genuine source order, reflection, and \(F(t)>0\) for \(t\ge0\):

* T is positive and self-adjoint;
* every actual zero \(w_j\) is a negative real number;
* every nontrivial actual zeta zero lies on \(\operatorname{Re}s=1/2\);
* the all-upper-half-plane inequality \(B_\Xi(w)\le0\) holds.

Under those equivalent conditions, \(H=T^{-1/2}\) is a positive self-adjoint unbounded operator on its maximal domain,
\[
\operatorname{Dom}(H)
=\Bigl\{c\in\ell^2(J):\sum_j |c_j|^2/\mu_j<\infty\Bigr\},
\quad He_j=\mu_j^{-1/2}e_j,
\]
and (25) becomes the exact, full-multiplicity **Hilbert–Pólya determinant**
\[
\boxed{\Xi(z)=\Xi(0)\det\nolimits_{\rm Fr}(I-z^2H^{-2}).}\tag{26}
\]

**Proof status and noncircularity.** Equations (23)–(25) are an unconditional classical Hadamard/Fredholm **existence** construction because they take the complete actual zero divisor as input. They establish exact spectral identity for a **normal** T, not positivity. That zero-indexed construction is therefore *not* an independently constructed arithmetic Hilbert–Pólya operator or an independent proof of RH. Equation (26) is conditional on the independently unproved universal sign. Producing a genuinely arithmetic operator whose spectrum is proved to equal this divisor *without using the zeros as a definition* remains a separate and stronger construction problem.

The new Lean proof candidates formalize the finite real-algebra facts in (17)–(20), not the infinite Hadamard product, trace-ideal theorem, actual strip-zero transport, or (25)–(26). All Lean elaboration, fresh checker replay and transitive axiom auditing remain **NOT_RUN**. No external proof is imported as a mathematical premise. Independent mathematical review remains **NOT_RUN**.

## Next exact supplier

To complete an **independent** exact positive Hilbert–Pólya realization, the remaining theorem is still
\[
\boxed{\forall w\in\mathbb C,\quad \operatorname{Im}w>0
\Longrightarrow
\operatorname{Im}(F'(w)\overline{F(w)})\le0.}\tag{27}
\]
The proper-domain theorems (1) and (16) establish no sign in the remaining left parabolic horn
\(\operatorname{Re}w<-24\) and
\(\operatorname{Re}w+(\operatorname{Im}w)^2<\tfrac12\).
A proof must control the **complete signed original theta double integral**, or provide an independently proved equivalent source-exact arithmetic inequality, throughout that region. The external Alpöge result may guide research but must not be an assumption or a hidden lemma. No finite computation, ordinary Hankel positivity, additional formal definition or divisor-indexed diagonal operator discharges (27).
