# Pursuing RH through complete recording blocks

The prime cascade gives an exact scale decomposition of the actual Möbius pickup. It also exposes an obstruction to the earlier uniform prime and block suppliers: controlling every intermediate finite prime cascade by a polynomial in recording time and logarithmic prime mass is too strong. The new research target retains the cancellation of an entire horizon-matched block. No bound for that target, and no RH proof, is supplied.

Human mathematical direction: grwtsk contributors. Derivation, formalization and checking assistance: OpenAI Codex. Local contribution: MIT; upstream Lean and Mathlib authorship and Apache-2.0 licensing remain preserved. No originality or independent human acceptance is claimed. The continuing research owner is [math #15](https://github.com/grwtsk/math/issues/15); the previous exact-cascade implementation is [math #95](https://github.com/grwtsk/math/issues/95).

## Checked obstruction to nonnegative echoes

`primePrefix p` contains precisely the primes strictly below $p$. Lean proves

$$
C_{W_{\{2,3,5,7\}},\log 11}(\log 12)<0.
$$

This is an actual natural-order source state, not an arbitrary waveform. On the only active correlation cell, $\log11\le u\le\log12$,

$$
W_{\{2,3,5,7\}}(u)=2\left(1-\frac1{\sqrt2}-\frac1{\sqrt3}-\frac1{\sqrt5}
+\frac1{\sqrt6}-\frac1{\sqrt7}+\frac1{\sqrt{10}}+e^{-u/2}\right)<0.
$$

The radical sum before the exponential is strictly below $-1/3$; $e^{-u/2}\le1/\sqrt{11}<1/3$. The delayed waveform is the positive base note for $u>\log11$, and vanishes before that endpoint. Continuity then gives a strictly negative integral. All radical inequalities, support conditions and the strict integral argument are kernel checked, without numerical quadrature or custom axioms. Thus dropping every negative correlation is a false shortcut. This finite counterexample alone does not refute an allowance with nonzero constants.

## Analytic obstruction to the uniform suppliers

The following is a classical analytic argument recorded in prose, **not a Lean theorem in this contribution**. It uses the unconditional prime number theorem, for example [DLMF 27.12.5](https://dlmf.nist.gov/27.12.E5). It does not assume RH.

Write $P_X=\{p\le X:p\text{ prime}\}$. The exact finite cascade has the absolutely convergent Laplace transform, for $\Re z>0$,

$$
\int_0^\infty e^{-zu}W_{P_X}(u)\,du
=\frac{1}{z(z+1/2)}\prod_{p\le X}(1-p^{-(z+1/2)}).
\tag{1}
$$

This follows by transforming each finite causal shift; each finite cascade is bounded. There is no interchange with an infinite Euler product.

The compensated induction already proved for `PrimeReverberation` and `PrimeBlockReverberation`, and now also proved for `PrimePrefixReverberation`, would imply, for fixed nonnegative supplier constants,

$$
E_{P_X}(U)\le e^{c\Omega(P_X)}\bigl(4U+(1+U)^q\bigr)
\le A_X(1+U)^m\quad\text{for every }U\ge0,
\tag{2}
$$

where $m=\max(1,q)$ and $A_X\ll(1+\log X)^{c\log4}$. The prime-mass bound used in the second inequality is already Lean checked. Crucially, (2) quantifies horizons independently of the prime cutoff.

For any fixed $a>0$, Tonelli's theorem gives

$$
\int_0^\infty e^{-au}W_{P_X}(u)^2\,du
=a\int_0^\infty e^{-aU}E_{P_X}(U)\,dU\ll_{a,m}A_X.
$$

Cauchy–Schwarz and (1), with $a=\Re z$, consequently bound

$$
\left|\prod_{p\le X}(1-p^{-s})\right|
\ll_s (1+\log X)^{c\log4/2},\qquad s=z+1/2.
\tag{3}
$$

But fix $s=\sigma+it$, with $1/2<\sigma<1$ and $t\ne0$. Partial summation of the prime number theorem gives

$$
\sum_{p\le X}p^{-s}=\frac{X^{1-s}}{(1-s)\log X}
+o\!\left(\frac{X^{1-\sigma}}{\log X}\right).
$$

Since $\sum_p p^{-2\sigma}<\infty$, the convergent logarithm expansion of each factor gives

$$
\log\left|\prod_{p\le X}(1-p^{-s})\right|
=-\Re\frac{X^{1-s}}{(1-s)\log X}
+o\!\left(\frac{X^{1-\sigma}}{\log X}\right).
\tag{4}
$$

Choose $X_k\to\infty$ so that $X_k^{-it}/(1-s)$ is negative real. Then (4) has leading term $X_k^{1-\sigma}/(|1-s|\log X_k)>0$, exceeding every $O(\log\log X_k)$ bound forced by (3). This contradicts (3).

Therefore the uniform suppliers as currently defined cannot hold with fixed nonnegative constants. Restricting to natural prime order removes unnecessary quantifiers but does not repair this obstruction. Their Lean implications remain valid conditional statements; they are retained for exact scope and history, not adopted as viable supplier conjectures. The PNT, finite-transform and Cauchy–Schwarz argument above has not been replayed in Lean, so the receipt records this analytic rejection separately from its kernel-checked finite counterexample.

This distinction also matters when consulting Euler-product literature. [Gonek, arXiv:0704.3448v1, equations (7)–(10)](https://arxiv.org/html/0704.3448v1) uses a smoothed product together with explicit zero and pole correction factors. It does not supply a uniform bound for the raw finite product in (1).

## Exact horizon-matched block

For $T\ge0$, let $P_T$ be the closed prime cutoff at $e^T$, and let

$$
B_T=P_{2T}\setminus P_T,\qquad
F_T=W_{P_T},\qquad
Q_T(u)=\sum_{p\in B_T}p^{-1/2}S_{\log p}F_T(u).
$$

Every $p\in B_T$ has $\log p>T$. Two distinct block delays cannot fit in the window $[0,2T]$. Lean proves

$$
W(u)=F_T(u)-Q_T(u),\qquad0\le u\le2T.
\tag{5}
$$

Every active echo looks back into $[0,T]$, where $F_T=W$. Accordingly `recordingEcho_eq_actual` replaces the shifted finite cascade in $Q_T$ with the literal actual pickup. Causal equality at a double birth is also permitted: the source vanishes at zero.

The square in the exact energy formula still includes **all** ordered interactions between different block primes. No orthogonality or positivity of those interactions is asserted. Define

$$
I(T)=E_{F_T}(2T)-E_W(T)+E_{Q_T}(2T)
-2\int_0^{2T}F_T(u)Q_T(u)\,du.
$$

Lean proves

$$
E_W(2T)=E_W(T)+I(T),\qquad I(T)\ge0.
\tag{6}
$$

The potentially large finite-core and echo energies are retained together with their cancellation. They are not separately charged to a small polynomial allowance.

## A remaining sufficient scale estimate

`RecordingScaleBound C r`, with $C\ge0$ and natural $r$, is the still-open estimate

$$
I(T)\le(2^{r+1}-1)E_W(T)+C\,2^rT^r,
\qquad\text{every real }T\ge1.
\tag{7}
$$

It gives the compensated doubling inequality

$$
E_W(2T)+C(2T)^r\le2^{r+1}\bigl(E_W(T)+CT^r\bigr).
$$

Lean checks its induction at every dyadic horizon and the monotone interpolation to every real horizon. The resulting polynomial witnesses are

$$
\bigl(E_W(1)+C\bigr)2^{r+1},\qquad r+1.
$$

The existing pickup-energy consumer then proves the literal Mathlib `RiemannHypothesis`, explicitly conditional on (7). A finite set of computations cannot supply that universal premise. The estimate concerns the actual complete recording, so the independently varying finite-cutoff obstruction above does not apply to its quantifiers. Establishing (7), or a suitable weaker all-rate estimate, remains the arithmetic problem. This contribution supplies the exact block expression and eliminates false proof shortcuts; it does not establish an improved unconditional growth exponent.

Lean also proves that existence of nonnegative constants in (7) is **equivalent to polynomial pickup energy and to P04**. For the converse, an energy bound with constant $A$ and exponent $q$ gives (7) with $r=\lceil q\rceil_+$ and $C=A3^r$, using $I(T)\le E_W(2T)$ and $1+2T\le3T$ for $T\ge1$. The new formulation retains the exact prime-block cancellation while imposing no extra uniform-prefix obligation. This equivalence does not lower the established arithmetic difficulty.

## Verification

Run `lake build --wfail` and `python3 scripts/check_recording_scale.py`. The new checker freshly replays the complete selected project dependency closure at trust zero, audits all declarations in the four new modules, and checks controls for a missing scale premise, a missing no-double-delay condition and the false nonnegative-correlation shortcut. Its source-bound receipt is `evidence/recording-scale-checks.json`. The existing prime-cascade checker remains separate. Lean 4.33.0 and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d` remain pinned.
