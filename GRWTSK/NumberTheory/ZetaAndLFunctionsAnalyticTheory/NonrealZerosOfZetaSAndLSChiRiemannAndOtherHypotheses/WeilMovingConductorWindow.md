# An explicit growing-conductor window for the original primitive Weil quadratic form

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06, 11M26, 11N05, 11N13, 47A12.

**Evidence:** WRITTEN_ANALYTICAL_ARGUMENT with separate finite exact-integer checks EXECUTED. Lean elaboration, dependency build, fresh kernel replay and transitive axiom audit: **NOT_RUN**. Independent analytic review: **UNASSESSED**. Originality: **UNASSESSED**; the Chebyshev estimate, binomial/lcm induction, and conductor domination are elementary. This is **not** a proof of primitive GRH or RH.

## 1. Exact original source and mathematical consumer

Fix any primitive **nonprincipal** Dirichlet character \(\chi\) of exact conductor \(q>1\), with parity \(a\in\{0,1\}\) and gamma parameter \(b=a+1/2\). Fix every real support length \(L>0\). For any complex \(f\) on \((0,L)\) in the original logarithmic gamma form domain \(V_{L,b}\), extend \(f\) by zero to all of \(\mathbb R\). Use the actual conjugate-linear-first physical source:

\[
Q_{\chi,L}(f)=c_{q,a}\|f\|_2^2+\Gamma_b(f)-
2\sum_{\substack{n\ge2\\\log n<L}}\frac{\Lambda(n)}{\sqrt n}
\operatorname{Re}\bigl(\overline{\chi(n)}C_f(\log n)\bigr),
\qquad C_f(r)=\int_{\mathbb R}\overline{f(x)}f(x+r)\,dx, \tag{WMC.1}
\]
\[
\Gamma_b(f)=\int_0^\infty\frac{e^{-bs}}{1-e^{-2s}}\|f(\cdot+s)-f\|_2^2\,ds,\quad
c_{q,a}=\log(q/\pi)+\psi_\Gamma(1/4+a/2). \tag{WMC.2}
\]

Here the strict finite inventory includes **every** actual von Mangoldt prime power \(p^k<e^L\), with weight \(\Lambda(p^k)=\log p\), all complex character phases and zero values at ramified primes. The finite prime sum is written in the exact original source, not replaced by an auxiliary positive matrix. For primitive \(q>1\), the genuine zeta pole is absent. **Conductor-one zeta \(q=1\) is separate**: its complete Weil form has both possibly indefinite pole orientations, and neither theorem below is applied to it. The original primitive Dirichlet \(L(s,\chi)\) and completed functional equation remain unchanged.

The consumer is a fully quantified **support-versus-conductor sign supplier** for the original \(Q_{\chi,L}\), complementing [WeilFirstActivatedPrimeConductorWindows.md](WeilFirstActivatedPrimeConductorWindows.md), [WeilFirstPrimeRankOne.md](WeilFirstPrimeRankOne.md), [WeilFirstPrimeLogBarrier.md](WeilFirstPrimeLogBarrier.md) and [WeilHighShiftInterference.md](../WeilHighShiftInterference.md). The WFLB result already proves a character-uniform full-test sign through `L <= log2+1/32`; this theorem needs much larger conductors, but its permissible `L` increases indefinitely with `q`. Unlike a fixed \(L\le\log 8\) result, the positive support range in this note grows without bound with \(q\). It is not a uniform-in-\(L\) theorem for any fixed \(q\).

## WMC-1: an unconditional bound on the complete von Mangoldt source

Define the classical Chebyshev function \(\Psi(X)=\sum_{n\le X}\Lambda(n)\). **Elementary lemma:** for every real \(X\ge1\),

\[
\boxed{0\le\Psi(X)\le 2X.} \tag{WMC.3}
\]

**Complete elementary proof, including all prime powers.** Put \(U_N=\operatorname{lcm}(1,2,\dots,N)\), \(U_1=1\). Unique prime factorization gives
\(\Psi(X)=\log U_{\lfloor X\rfloor}\). For \(N\ge2\), write
\(m=\lfloor N/2\rfloor\), \(r=\lceil N/2\rceil\). Legendre's binomial valuation formula shows

\[
\boxed{U_N\ \bigm|\ U_r\binom Nm.} \tag{WMC.4}
\]

Indeed, fix any prime \(p\), and let \(p^k\le N\) be its **largest** power below \(N\). If \(p^k\le r\), it already divides \(U_r\). Otherwise \(p^{k-1}\le N/p\le N/2\le r\), so \(U_r\) supplies the preceding \(p^{k-1}\). Since \(r<p^k\le N\), the term for \(p^k\) in the Legendre exponent of \(\binom Nm\) is \(\lfloor N/p^k\rfloor-\lfloor m/p^k\rfloor-\lfloor r/p^k\rfloor=1\), and all other terms are nonnegative. Thus \(U_r\binom Nm\) supplies the full \(p^k\). This proves divisibility simultaneously for **every** prime, including all powers.

For even \(N=2m\), the central binomial coefficient is at most \(2^N\). For odd \(N=2m+1\), its two equal central coefficients are both in \(\sum_j\binom Nj=2^N\), so \(\binom Nm\le2^{N-1}\). Strong induction from \(U_1=1\), using (WMC.4), gives

\[
U_{2m}\le4^m2^{2m}=4^{2m},\qquad
U_{2m+1}\le4^{m+1}2^{2m}=4^{2m+1}.
\]

Therefore \(U_N\le4^N\) for every \(N\), and
\(\Psi(X)\le X\log4<2X\) for \(X\ge1\), since \(\log2<1\) (the exponential series gives \(e>2\)). This proves (WMC.3) **without** PNT, RH, GRH or a conjectural prime-error estimate. QED.

**Weighted all-prime-power consequence.** Abel/Stieltjes summation with the actual \(\Psi\), valid for every \(X>1\), gives

\[
\sum_{2\le n\le X}\frac{\Lambda(n)}{\sqrt n}
=\frac{\Psi(X)}{\sqrt X}
+\frac12\int_1^X\frac{\Psi(u)}{u^{3/2}}\,du
\le 2\sqrt X+\int_1^X u^{-1/2}\,du
=4\sqrt X-2<4\sqrt X. \tag{WMC.5}
\]

This controls the **complete original prime-power inventory**, not merely ordinary primes; the integer \(n\) and its \(\Lambda(n)\) retain their actual values. Taking \(X=e^L\) bounds the strict inventory from (WMC.1).

## WMC-2: a source-exact coercivity lower bound valid for every support

**Theorem.** For **every** primitive nonprincipal \(\chi\) of conductor \(q>1\), **every** \(L>0\), and **every** \(f\in V_{L,a+1/2}\),

\[
\boxed{Q_{\chi,L}(f)\ge
\bigl(\log q-7-8e^{L/2}\bigr)\|f\|_2^2.} \tag{WMC.6}
\]

This is an **unconditional, all-support lower bound**, but its right side need not be positive. It must not be called an all-support positivity theorem.

**Proof.** The original \(\Gamma_b(f)\) is nonnegative by its complete compensated integral. The precise digamma values give

\[
c_{q,0}=\log q-\left(\log\pi+\gamma+\pi/2+3\log2\right),
\quad c_{q,1}=c_{q,0}+\pi. \tag{WMC.7}
\]

The elementary rational bounds \(\pi<4\), \(\gamma<1\), and \(\log2<3/4\) imply
\(\log\pi<2\log2<3/2\) and hence
\[
\log\pi+\gamma+\pi/2+3\log2
<\frac32+1+2+\frac94=\frac{27}{4}<7.
\]

Here \(\log2<3/4\) follows from
\(e^{3/4}>1+3/4+(3/4)^2/2>2\), and \(\gamma\le1\) follows directly from \(H_N\le1+\log N\) and passage to the limit. Thus **both** true parity constants satisfy \(c_{q,a}>\log q-7\).

On the zero-extended complex source, translation is unitary, so
\(|C_f(\log n)|\le\|f\|_2^2\) by Cauchy–Schwarz. Also \(|\chi(n)|\le1\), including the genuine zero at ramified primes. Use this **only as an upper estimate on the original signed prime response**, after retaining its full (WMC.1) identity. By (WMC.5),

\[
2\sum_{\substack{n\ge2\\\log n<L}}
\frac{\Lambda(n)}{\sqrt n}
\operatorname{Re}(\overline{\chi(n)}C_f(\log n))
\le 2\|f\|_2^2 \sum_{2\le n<e^L}\frac{\Lambda(n)}{\sqrt n}
<8e^{L/2}\|f\|_2^2. \tag{WMC.8}
\]

Substitute into the ORIGINAL \(Q\) and retain the positive full \(\Gamma_b\); this proves the nonstrict displayed lower bound (and gives the strict scalar inequality for \(f\ne0\)). No zero-free hypothesis, replacement source, invalid totalized Dirichlet series, or approximation of an infinite gamma tail is used. QED.

## WMC-3: a support range growing with the conductor

**Theorem (conductor-moving full-test positivity).** Let \(q\) be any positive integer with \(\log q\ge32\), and let \(\chi\) be **every** primitive character of exact conductor \(q\) (necessarily nonprincipal). For **every** real \(L\) satisfying

\[
\boxed{0<L\le\log\frac{(\log q)^2}{256}
=2\log\log q-\log256,} \tag{WMC.9}
\]

and **every** complex \(f\) in the ORIGINAL logarithmic Weil form domain,

\[
\boxed{Q_{\chi,L}(f)\ge\frac{\log q}{4}\,\|f\|_2^2.} \tag{WMC.10}
\]

**Proof.** Put \(M=\log q\ge32\). The right endpoint in (WMC.9) is positive, since \(M^2/256\ge4\). For every admissible \(L\),
\(e^{L/2}\le M/16\), hence \(8e^{L/2}\le M/2\). The source-exact (WMC.6) therefore yields

\[
Q_{\chi,L}(f)\ge(M/2-7)\|f\|_2^2
\ge(M/4)\|f\|_2^2,
\]

because \(M\ge32>28\). This includes all support lengths in the closed upper range, all complex tests, every primitive character at each allowed conductor, all nonzero/ramified character values and every active prime power. QED.

For illustration, \(\log q\ge32,64,128,256\) respectively guarantees positivity for **at least** \(L\le\log4,\log16,\log64,\log256\). The support bound grows like \(2\log\log q\) as \(q\to\infty\), rather than stopping at a single fixed prime activation. It does **not** prove positivity for all \(L\) at any fixed \(q\).

## WMC-4: hostile checks, provenance and the unresolved all-window premise

* The bound uses the exact original \(\Lambda(n)/\sqrt n\) coefficients, including **all prime powers**. Neither replacing \(\Lambda(p^k)\) by \(\log(p^k)\) nor deleting higher powers is valid. Equation (WMC.5) upper-bounds them by a larger, classical Chebyshev budget; it does not claim prime-square or ordinary-prime cancellation.
* Actual complex \(\chi(n)\) phases stay in (WMC.1); \(|\chi(n)|\le1\) is used only in a subsequent source-preserving upper bound. This estimate is purposely crude and does not use the stronger mixed-shift savings from [WeilHighShiftInterference.md](../WeilHighShiftInterference.md).
* **Conductor-one zeta is excluded** because of the original indefinite two-pole kernel, not because its zeros are assumed absent. Zeta's genuine small-support results remain in [WeilShortWindowConvexGammaExtension.md](WeilShortWindowConvexGammaExtension.md) and [WeilShortWindowRankOne.md](WeilShortWindowRankOne.md). No imprimitive transfer is asserted.
* This theorem is conditional **only on the displayed conductor/window relation**, not on a mathematical conjecture. The lower bound in (WMC.6) becomes useless when \(L\) grows while \(q\) stays fixed: the term \(8e^{L/2}\) eventually dominates \(\log q\). This is a limitation of the method, **not a negative direction or counterexample** to Weil positivity or GRH.
* The classical binomial-Chebyshev recursion is compared with the pre-PNT elementary proof (see, e.g., Robert C. Vaughan, *Elementary Results*, Chapter 1, Chebyshev's theorem). This note includes its complete specific integer induction instead of assuming RH or citing an unproved prime bound. No originality is claimed.
* The source proof is a written analytic argument, not Lean kernel replay. The adjacent `WeilMovingConductorWindowCertificate.py` checks **4,096 exact finite** lcm/von Mangoldt source identities and **4,095** central-binomial recurrence divisibilities, plus the precise threshold algebra; those checks cannot establish the universal induction on their own. They never perform floating-point sign decisions. Optimized Python execution is rejected.

**Exact source return and first unresolved premise.** The estimate is an explicit unconditional lower bound on the **original** primitive nonprincipal Weil form for a support range depending on \(q\). To prove primitive Dirichlet GRH, including conductor-one zeta, the untouched critical-strip consumer requires Weil nonnegativity for **every primitive \(\chi\), every support length \(L>0\), and every test**, with original conductor/parity, all prime powers, dual-character functional equation and both zeta pole orientations. This theorem supplies no fixed-character all-window positivity, no universal certificate existence, no infinite-tail estimate and no zero localization. The first missing arithmetic premise is a signed cross-prime/gamma bound that does **not** require \(\log q\gg e^{L/2}\). The stronger local WAPC/WFP and frequency-deficit inequalities remain complementary.

**Source and execution provenance:** Inspected `grwtsk/math/main` initially at `8fed237e7b97a7f42955e932f3f3aaaf4ce4a6a2`, then reconciled live `main` `4aaf5eea7f62c1f8f2e54d2f29c93c5750ebc8cd` with concurrent WFLB, Gaussian-process and zeta-pole source work; checked WAPC/WFP/WeilHighShiftInterference and the root/scoped AGENTS.md, publication policy and pins. Lean `leanprover/lean4:v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Coordinating issue `grwtsk/math#1801`. Canonical `grwtsk/noeaaeue/main` proof-automation skill remained inaccessible (HTTP 404); no Lean or covered proof automation was run or delegated. Exact finite Python verification was run locally on Python 3.13.5; independent mathematical review is UNASSESSED. No imports, research axioms, `sorry`, `admit`, dependency pins or RH/GRH targets were changed.

**Individual verification fixture provenance:** the adjacent
`WeilMovingConductorWindowCertificate.py` has SHA-256
`ea467a8dad7439af7a234ddc5128448ea82380777b72715225bed91293961fe9`
and Git blob `f3da701df1c28cf7347591f165fced56042e7c7b`.
On Debian GNU/Linux 13, Python 3.13.5, the exact-integer source ran successfully:
`lcm_and_prime_power_source_checks=4096` and
`central_binomial_divisibility_checks=4095`, with moving upper prime
inventory cutoffs `4,16,64,256,1024,4096` at sample values
`M=log(q)=32,64,128,256,512,1024`. Python source compilation succeeded;
optimized `-O` execution was deliberately refused, and all inequalities
were checked with exact integers/Fractions. The checked output has SHA-256
`6a9cc401ce16527e6313bfa14bdf3e0fdbbba0a370dafa2cc700288c0e8f74de`.
These finite checks **test** rather than replace the universal written induction;
they do not establish a Lean kernel theorem or mathematical novelty.
