# An explicit growing-conductor window for the original primitive Weil quadratic form

Local attribution: grwtsk contributors. Edition 4 (effective and PNT conductor-window refinements), 2026-11-12.
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

## WMC-5: an exact three-band saving for every original prime power

The preceding single-Cauchy estimate (WMC.8) charges every active
translation by twice its von Mangoldt mass. This section retains its
original literal source (WMC.1), but sharpens **each actual physical
translation** using the complex finite-chain result
[WeilFiniteChainPrimeBound.md](../WeilFiniteChainPrimeBound.md),
WFCP-v1-A, Theorem (2.1). The same finite-chain source is also used
in [WeilFirstActivatedPrimeConductorWindows.md](WeilFirstActivatedPrimeConductorWindows.md);
here the three ranges are applied for **arbitrary L>0**.

For each real u>0 define the complete strict prime-power mass
\[
W(u)=\sum_{\substack{n\ge2\\\log n<u}}
  \frac{\Lambda(n)}{\sqrt n}\ge0. \tag{WMC.11}
\]
It retains every p^k with \(\Lambda(p^k)=\log p\), including all
character-zero and non-prime-power contributions as zeros.
(WMC.5) gives \(W(u)<4e^{u/2}\), without any asymptotic assumption.

For the original complex zero-extended test f on (0,L), the following
physical correlation bounds hold for **every** shift \(r\in(0,L)\):
\[
|C_f(r)|\le
\begin{cases}
\|f\|_2^2,&0<r<L/3,\\
\frac34\|f\|_2^2,&L/3\le r<L/2,\\
\frac12\|f\|_2^2,&L/2\le r<L.
\end{cases}\tag{WMC.12}
\]
For the last band, the source and destination strips are disjoint
up to null endpoints and Cauchy gives the 1/2 bound.
For the middle band, disintegrate Lebesgue measure into length-r
fibers. There are at most three consecutive nonzero entries almost
everywhere; their original correlation is
\(\overline{x_0}x_1+\overline{x_1}x_2\), with
\[
|\overline{x_0}x_1+\overline{x_1}x_2|
 \le |x_1|(|x_0|+|x_2|)
 \le\frac{|x_0|^2+|x_1|^2+|x_2|^2}{\sqrt2}
 \le\frac34\sum_{j=0}^2|x_j|^2.
\]
The last rational comparison is **exact** because
\(1/\sqrt2\le3/4\iff 8\le9\).
Integrate the full fiber mass, with the genuine support/zero
extension. The first band uses whole-line translation Cauchy.
No shift outside the active support is included, and no complex
Dirichlet phase is suppressed before forming the literal source.

**Theorem (original-source three-band bound).** For EVERY primitive
nonprincipal \(\chi\) of conductor \(q>1\), EVERY \(L>0\) and EVERY
complex \(f\in V_{L,a+1/2}\), the complete signed prime response
\(\mathcal P_{\chi,L}(f)\) in (WMC.1) satisfies
\[
\boxed{\mathcal P_{\chi,L}(f)\le
\left[W(L)+\frac12W(L/2)+\frac12W(L/3)\right]\|f\|_2^2
<\left[4e^{L/2}+2e^{L/4}+2e^{L/6}\right]\|f\|_2^2}
\tag{WMC.13}
\]
for \(f\ne0\); the nonstrict version holds for \(f=0\).
The FIRST displayed comparison is a source-exact finite arithmetic
inequality with all prime powers and their true complex phases;
the SECOND comparison is only an unconditional Chebyshev budget.

**Proof.** Split the strict prime-power inventory into
\(\log n<L/3\), \(L/3\le\log n<L/2\), and
\(L/2\le\log n<L\). Apply (WMC.12) to the corresponding
terms in (WMC.1) *after* retaining the original signed real part.
Use \(0\le\Lambda(n)/\sqrt n\), \(|\chi(n)|\le1\)
(including the correct zero at ramified primes). The three costs are
\(2W(L/3)\), \((3/2)[W(L/2)-W(L/3)]\) and
\(W(L)-W(L/2)\), respectively. Their exact sum is the
first bracket in (WMC.13). It is valid also when a prime power
lies exactly at L/3 or L/2: the strict W values allocate the
threshold to the next band, with no endpoint double counting.
Apply (WMC.5) individually at \(u=L,L/2,L/3\) for the second bracket.
QED.

The original complete \(\Gamma_b(f)\ge0\) and unchanged two-parity
constant \(c_{q,a}>\log q-7\) from WMC-2 therefore yield the
strengthened **all-support, possibly negative** coercivity bound
\[
\boxed{
Q_{\chi,L}(f)\ge
\bigl[\log q-7-4e^{L/2}-2e^{L/4}-2e^{L/6}\bigr]\|f\|_2^2.}
\tag{WMC.14}
\]
Unlike merely applying a positive finite-shift Gram comparator, the
estimate begins from the unchanged complex signed arithmetic source,
uses physical overlap on the original test domain and returns directly
to the original Weil form. The RHS is no promise of positivity for
large L at fixed q.

## WMC-6: a larger conductor-growing full-test positivity window

**Theorem (improved moving window, unconditional).** Put
\(M=\log q\). For every \(q\) with \(M\ge32\), every primitive
character \(\chi\) of exact conductor q (nonprincipal),
every REAL \(L\) and every ORIGINAL complex form-domain test f,
\[
\boxed{
0<L\le \log\!\frac{M^2}{144}
 \quad\Longrightarrow\quad
Q_{\chi,L}(f)\ge
\left(\frac{15M}{32}-7\right)\|f\|_2^2
\ge \frac{M}{4}\|f\|_2^2.}
\tag{WMC.15}
\]
The previous window (WMC.9) had divisor 256; the new theorem has
divisor **144**, without assuming GRH or omitting any active prime power.

**Proof.** Write \(s=e^{L/2}\). Since the exponentials are
monotone, the support restriction gives
\(1<s\le v=M/12\), with \(v\ge8/3\).
The rational inequalities
\[
v\ge\frac83>\frac{64}{25},\qquad
v\ge\frac83>\frac{64}{27}
\]
imply, by squaring and cubing nonnegative numbers,
\[
\sqrt v\le\frac58v,\qquad
v^{1/3}\le\frac9{16}v.
\tag{WMC.16}
\]
Thus
\[
4e^{L/2}+2e^{L/4}+2e^{L/6}
=4s+2\sqrt s+2s^{1/3}
\le4v+2\sqrt v+2v^{1/3}
\le\frac{51}{8}v=\frac{17M}{32}.
\tag{WMC.17}
\]
Insert this into (WMC.14). Finally,
\(15M/32-7-M/4=(7/32)(M-32)\ge0\).
Every inequality is uniform over all complex f and all primitive
characters q satisfying these support/conductor bounds; **no
uniformity in all supports at a fixed conductor is inferred**. QED.

For the same thresholds \(M=32,64,128,256\), the exact new
support endpoints are \(e^{L_{\max}}=64/9,256/9,1024/9,4096/9\),
compared with WMC-3's \(4,16,64,256\). The improvement is a fixed
positive support-width increment \(2\log(4/3)\) at every such M;
the asymptotic scale is still \(2\log\log q\).
This is a quantified conductor-window tradeoff, NOT an unconditional
all-window theorem for any fixed character.

### Source falsification, prior art, and strict limits

* **Do not apply the two-site bound in the middle band.** A
  three-site real vector (1,3/2,1) has correlation/mass 12/17>1/2.
  The three-site bound itself fails for a four-site vector
  (1,1,1,1), whose adjacent correlation/mass is 3/4>1/sqrt2.
  The low band must therefore use its separate larger allowance.
* **Endpoint activation:** shifts at precisely L/3 or L/2 are in
  the higher bands; \(\log n=L\) is not active. The identity with
  W(L), W(L/2), W(L/3) handles these cases exactly.
* **Signed source:** all \(\chi(p^k)\) values and their phases remain
  in (WMC.1). Only the FINAL upper estimate charges their magnitudes;
  the complete compensated gamma and conductor/parity terms are unchanged.
* **Conductor one:** zeta has BOTH signed original pole orientations,
  omitted only from these explicitly nonprincipal bounds. Its existing
  WSGC/WSR1/WSFLB positivity results remain separate and valid.
* **Comparison:** WFCP-v1-A proves the full finite-chain original
  correlation inequality for all shifts; (WMC.12) is a rational
  three-band corollary with a new **all-support Chebyshev consumer**.
  WAPC-v1 groups the first finite activations; WHSI-v1 saves
  interference across different high shifts. None supplies a
  fixed-q all-window positivity theorem. This is standard finite
  numerical-radius technology (Haagerup–de la Harpe,
  *Proc. Amer. Math. Soc.* 115 (1992), Theorem 1,
  DOI 10.1090/S0002-9939-1992-1072339-6), combined with the
  classical elementary Chebyshev budget from WMC-1. No originality
  or independent review is claimed.
* **No fictitious transfer to RH/GRH:** \(4e^{L/2}\) still
  dominates every fixed \(\log q\) as \(L\to\infty\). The
  entire unbounded window, signed cross-prime arithmetic
  cancellation, zeta pole competition, gamma/parity, dual-character
  equations, and every original test remain genuine missing
  universal obligations.

The adjacent WMC certificate retains the original 4,096 exact
lcm/von-Mangoldt checks and adds complex three-site and strict
three-band cutoff regressions. Their finite execution validates only
the finite claims tested, not the universal source proof.
The source-only mathematical proof above uses the ORIGINAL Weil form.
Lean elaboration, kernel replay, transitive axiom audit and independent
mathematical review are still NOT_RUN/UNASSESSED. The prescribed canonical
Noe proof-automation skill was unavailable (HTTP 404), so no covered
Lean/proof execution was dispatched.


### WMC-5/6 individual checker provenance and verification scope

Maintained source: this file, sections WMC-5/6. Exact adjacent
certificate: `WeilMovingConductorWindowCertificate.py`,
Git blob `c2c8fd1ef69b758bb6e1a6d2e3076d9f3b4c05ac`,
SHA-256 `a2fe1d0489de61360dc32248dbceb1127ca8e1be730c43819bf7389ebd547ca5`.
The existing WMC-1/3 source and its original 4,096 prime-power/lcm
checks were retained; the new V2 test executed 729 complex Gaussian-integer
three-site checks, 511 exact strict-cutoff three-band partition
identities with independent positive rational fixture weights, and
the exact rational tradeoff tests for
`M=32,33,64,128,256,512,1024`.
Those fixture weights are NOT purported exact representations of
the irrational coefficients `\Lambda(n)/\sqrt n`; the complete
symbolic arithmetic source is supplied by WMC-1 and WMC-5's
written proof. The checker was run under Python 3.13.5 on Debian
GNU/Linux 13, followed by successful `python3 -m py_compile` and
intentional nonzero exit under `python3 -O`.
Executed output SHA-256:
`fb33b3efd65308399ed35d7b8d30faea5881cacd2de6b55cf1942ab18030555e`.
The decision inequalities are exact integer/Fraction comparisons,
not floating-point sign guesses.

Direct individual source return: (WMC.11)--(WMC.14) bound the
unaltered signed primitive Weil arithmetic form (WMC.1),
using the genuine zero-extension source correlation and WMC-1's
all-prime-power Chebyshev induction. They are NOT new Lean
declarations; full-domain Fourier/Weil identification continues to
depend on the canonical physical-return sources. Previous
conductor-one zeta small-window sign results remain untouched.

Source baseline before the WMC-5/6 revision:
`grwtsk/math/main` `17305d0984f693954a725c50f5a405cfa4b1dcc7`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination `grwtsk/math#1801`. No Lean execution,
transitive axiom audit, independent mathematical review,
unconditional all-window positivity or RH/GRH proof is claimed.

## WMC-7: retain the exact Chebyshev constant and its Abel endpoint

The elementary lcm induction in WMC-1 establishes **more than**
\(\Psi(X)\le2X\): it proves \(U_N\le4^N\) for every integer N.
Thus, putting \(\alpha=\log4=2\log2\), for every real \(X\ge1\),
\[
0\le\Psi(X)=\log U_{\lfloor X\rfloor}
\le(\log4)\lfloor X\rfloor\le\alpha X.
\tag{WMC.18}
\]
This is a complete all-prime-power bound; it is **not** the
ordinary-prime \(\theta(X)\) bound substituted for \(\Psi(X)\).
Using the actual Stieltjes/Abel formula WMC.5, and retaining the
lower endpoint of the integral rather than discarding it, gives
\[
\begin{aligned}
\sum_{2\le n\le X}\frac{\Lambda(n)}{\sqrt n}
&=\frac{\Psi(X)}{\sqrt X}
  +\frac12\int_1^X\frac{\Psi(y)}{y^{3/2}}\,dy\\
&\le\alpha\sqrt X+\alpha(\sqrt X-1)
=\alpha(2\sqrt X-1).
\end{aligned}\tag{WMC.19}
\]
Therefore the exact strict arithmetic mass of WMC-5 satisfies,
for every **real** \(u>0\),
\[
\boxed{W(u)\le\alpha(2e^{u/2}-1).}\tag{WMC.20}
\]
No prime-power index, branch of a character, endpoint jump or
infinite tail is deleted. The upper bound follows from a finite
source inventory; the inequality is valid for all u without assuming
PNT, RH, GRH or any cancellation of character phases.

**Theorem (full original-source sharp-Chebyshev three-band bound).**
Fix any primitive **nonprincipal** Dirichlet character \(\chi\) of
conductor \(q>1\), either parity, **every** \(L>0\), and **every**
complex \(f\) in the original logarithmic Weil form domain
\(V_{L,a+1/2}\). The signed prime-power source defined in WMC.1
satisfies
\[
\boxed{\mathcal P_{\chi,L}(f)
\le \alpha\left(2e^{L/2}+e^{L/4}+e^{L/6}-2\right)\|f\|_2^2.}
\tag{WMC.21}
\]
**Proof.** WMC-5 already proves the exact source identity/inequality
\(\mathcal P_{\chi,L}(f)\le[W(L)+W(L/2)/2+W(L/3)/2]\|f\|_2^2\).
Substitute (WMC.20) **separately at each of the three real cutoffs**.
The negative Abel lower-endpoint constants sum to
\(-\alpha(1+1/2+1/2)=-2\alpha\), which is retained rather than
silently dropped. The two-/three-site physical correlation bounds and
all original complex \(\chi(n)\) phases remain those of WMC-5.
The result uses the complete original \(\Lambda(n)/\sqrt n\) source,
not a positive substitute matrix. QED.

The original parity constants admit a sharper *elementary* lower bound
\(c_{q,a}>\log q-6\). Indeed
\[
 c_{q,0}=\log q-c_0,
\quad c_0=\log\pi+\gamma+\pi/2+3\log2,
\quad c_{q,1}=c_{q,0}+\pi.
\]
Use \(\gamma\le1\) (the classical \(H_N\le1+\log N\) bound),
\(\pi<22/7\), and
\(e^{6/5}>1+6/5+(6/5)^2/2+(6/5)^3/6=401/125>22/7\),
which proves \(\log\pi<6/5\).
The positive arctanh series gives the rational enclosure
\[
\frac23+\frac2{81}<\log2<\frac23+\frac2{81}+\frac1{540}
<\frac{139}{200}.
\tag{WMC.22}
\]
The tail bound follows by replacing all \(2k+1\) denominators for
\(k\ge2\) by 5 and summing the geometric ratio 1/9; in
particular \(4/3<\alpha<139/100\).
Consequently
\[
 c_0<\frac65+1+\frac{11}7+\frac{417}{200}
=\frac{8199}{1400}<6.
\tag{WMC.23}
\]
For primitive \(q>1\) there is **no** zeta pole; the complete
positive compensated gamma is left unaltered and nonnegative.
Combining this stronger scalar with (WMC.21) gives the unconditional
all-support lower bound, whose right side may be negative,
\[
\boxed{
Q_{\chi,L}(f)\ge
\left[\log q-6-\log4\left(2e^{L/2}+e^{L/4}+e^{L/6}-2\right)\right]\|f\|_2^2.}
\tag{WMC.24}
\]
This estimate applies to the **same original source** as WMC-1--6,
with all prime powers, conductor, parity, zero values at ramified
primes and genuinely complex phases. The improvement is purely an
arithmetic majorant and does not supply fixed-character signed
cancellation at arbitrarily large supports.

## WMC-8: a fourfold larger positive cutoff in the conductor aspect

**Theorem (unconditional, full-test moving window).** For any integer
\(q\) with \(M=\log q\ge32\), every primitive character of **exact**
conductor \(q\) (necessarily nonprincipal), every real
\[
\boxed{0<L\le \log\!\left(\frac{M^2}{36}\right),}
\tag{WMC.25}
\]
and every complex test \(f\) in its original gamma form domain,
\[
\boxed{
Q_{\chi,L}(f)\ge
\left(\frac{10313}{28800}M-\frac{10}{3}\right)\|f\|_2^2
\ge\left(\frac{M}{4}+\frac{113}{900}\right)\|f\|_2^2.}
\tag{WMC.26}
\]
The previous WMC-6 cutoff was \(e^L\le M^2/144\), so the allowed
\(e^L\) range increases by an exact **factor four**, or support
length by \(\log4\), at the **same conductor threshold**.

**Proof.** Let \(s=e^{L/2}>1\) and \(v=M/6\), so
\(s\le v\) and \(v\ge16/3>256/49\), \(v^2>27\).
Taking nonnegative squares and cubes proves
\[
\sqrt{s}\le\sqrt v\le\frac7{16}v,
\qquad s^{1/3}\le v^{1/3}\le\frac13v.
\]
Hence \(2s+\sqrt s+s^{1/3}\le(133/48)v\).
With the *oppositely directed* rational bounds
\(\alpha<139/100\) and \(\alpha>4/3\),
\[
\begin{aligned}
\alpha(2s+\sqrt s+s^{1/3}-2)
&\le\frac{139}{100}\frac{133}{48}\frac M6
   -2\frac43\\
&=\frac{18487}{28800}M-\frac83.
\end{aligned}
\]
Insert this in (WMC.24) to obtain the first inequality in
(WMC.26). For the second, the remaining **exact rational** gap is
\[
\left(\frac{10313}{28800}-\frac14\right)M-\frac{10}3
=\frac{3113}{28800}M-\frac{10}3
\ge \frac{3113}{28800}\,32-\frac{10}3
=\frac{113}{900}>0.
\]
Every constant dependency is explicit and all quantifiers are
preserved. The nonprincipal conductor/parity source is unchanged.
Conductor-one zeta remains excluded because of its two signed poles.
QED.

**Actual finite verification and falsification.** The adjacent new
[WeilSharpChebyshevConductorCertificate.py](WeilSharpChebyshevConductorCertificate.py)
contains an **independent exact-Fraction** Machin enclosure of
\(\pi<22/7\), the positive-tail \(\log2\) rational bounds,
the precise \(\log\pi<6/5\) exponential comparison, both scalar
coefficients, the endpoint \(113/900\) gap, and the factor-four
cutoff relation. It executed locally (Python 3.13.5, Debian 13)
with **2048** exact lcm/prime-power source checks,
**729** complex three-site Gaussian-integer checks, and
**511** strict three-band rational fixture partition checks.
The fixture weights are explicitly *synthetic rational weights on
true prime-power positions*, not claimed equal to the irrational
original \(\Lambda(n)/\sqrt n\). The **universal mathematical
proof** is (WMC.18)--(WMC.26), not the finite test.
Python bytecode compilation passed, and `python3 -O` was rejected.
Exact source SHA-256:
`2f2f5bec2cb5d0b4d7fcd60685e58ba63f64e59396e21625d10b584328a5defb`;
exact self-test output SHA-256:
`ec70b1ecf2e0192df6b7ff080f410e371408be014c117cbf05d813fbf7f48a31`.
The complete output and command are recorded in coordination issue
`grwtsk/math#1801`. The sharp finite-chain prior art is
Haagerup--de la Harpe, *Proc. Amer. Math. Soc.* 115 (1992),
Theorem 1; the Chebyshev/lcm prime-power identity is classical.
No originality or independent analytical review is claimed.

**First open arithmetic premise.** The improved bound still has
\(\asymp e^{L/2}\) worst-case prime growth for any fixed q.
It therefore cannot prove the **fixed-character all-window**
Weil nonnegativity required for primitive GRH, nor zeta RH:
all primitive characters (including q=1), all L>0 and all tests
with true gamma/parity, signed prime powers, conductor and both
applicable pole orientations remain the universal target.
No infinite-height signed cancellation, operator-norm transfer,
source-exact universal certificate existence or new Lean proof is
provided. Formal Lean elaboration/build, fresh kernel checking,
transitive axiom audit and independent mathematical review remain
**NOT_RUN/UNASSESSED**. No new research axiom, sorry/admit, import,
mathlib pin or original conjecture target is introduced.


## WMC-9: an effective quadratic conductor cutoff with denominator 16

The prior WMC-8 obtains a positive source-exact window with
\(\exp L\le(\log q)^2/36\) for every \(\log q\ge32\).
A **stronger window** can be obtained from exactly the SAME
all-prime-power Chebyshev upper bound, but it requires a larger,
explicit conductor. No zero-free-region estimate is introduced.

**Theorem (WMC-v4-09; unconditional, effective).** Let \(q\ge2\)
be any integer, \(M=\log q\ge512\), and \(\chi\) be **any primitive
character of exact conductor q** (thus nonprincipal). For EVERY
real support \(L\) and EVERY complex original supported Weil test
\(f\in V_{L,a+1/2}\),
\[
\boxed{
0<L\le\log\frac{M^2}{16}
\quad\Longrightarrow\quad
Q_{\chi,L}(f)\ge
\left(\frac{14273}{55000}M-\frac{10}{3}\right)\|f\|_2^2
\ge\left(\frac M4+1\right)\|f\|_2^2.}
\tag{WMC.27}
\]
The source is still the literal pole-free nonprincipal primitive form
(WMC.1), not conductor-one zeta. Its prime term contains EVERY
active \(\Lambda(n)\chi(n)/\sqrt n\), all phases and every
ramified zero; the full gamma/parity and conductor scalar remain.

**Proof.** Take \(\alpha=\log4\), \(s=e^{L/2}\), and \(v=M/4\).
The support restriction implies \(1<s\le v\), and \(M\ge512\)
gives \(v\ge128\). Since \(v\ge121=11^2\) and
\(v\ge125=5^3\), elementary NONNEGATIVE powers give
\[
\sqrt{s}\le\sqrt v\le v/11,\qquad
s^{1/3}\le v^{1/3}\le v/25.
\tag{WMC.28}
\]
Use both rigorously established rational inequalities from WMC-7
in their correct directions:
\[
\frac43<\alpha<\frac{139}{100}.
\]
The signed source has already been bounded by its *actual*
three-band original L² correlations in WMC-5, giving
\[
\begin{aligned}
\mathcal P_{\chi,L}(f)
&\le\alpha(2s+\sqrt{s}+s^{1/3}-2)\|f\|_2^2\\
&<\left[\frac{139}{100}
   \left(2+\frac1{11}+\frac1{25}\right)\frac M4
       -2\frac43\right]\|f\|_2^2\\
&=\left[\frac{40727}{55000}M-\frac83\right]\|f\|_2^2
\end{aligned}
\tag{WMC.29}
\]
when \(f\ne0\); at zero test all comparisons follow by equality.
The original complete gamma integral is nonnegative and
\(c_{q,a}>M-6\) for BOTH parities, with no hidden zeta poles,
so the first lower bound in (WMC.27) follows.

The exact rational difference against \(M/4+1\) is
\[
\left(\frac{14273}{55000}-\frac14\right)M
-\frac{10}{3}-1
=\frac{523}{55000}M-\frac{13}{3}
\ge\frac{11041}{20625}>0
\quad(M\ge512).
\tag{WMC.30}
\]
Every inequality is a true universal statement on the original
complex logarithmic form domain under its displayed conductor/window
quantifiers. QED.

This increases the cutoff in \(\exp L\) by an **exact factor
\(9/4\)** relative to WMC-8's \(M^2/36\).
The larger \(M\)-threshold is an explicit tradeoff;
neither result subsumes the other's whole parameter range.

## WMC-10: the unconditional prime-number-theorem leading envelope

WMC-9 is *fully effective* but uses only Chebyshev's elementary
\(\Psi(X)\) upper bound. The ordinary, unconditional **prime number
theorem** gives the strictly sharper LEADING size of the identical
**complete von Mangoldt source**. This uses a known theorem about
ordinary primes, NOT an RH or Dirichlet GRH hypothesis.

**Theorem (WMC-v4-10, genuine all-prime-power asymptotic).**
For the same exact strict inventory \(W(u)\) from WMC-5,
\[
\boxed{W(u)=2e^{u/2}+o(e^{u/2})\quad(u\to+\infty).}
\tag{WMC.31}
\]

**Proof.** Put \(X=e^u\) and
\(\Psi(X)=\sum_{n\le X}\Lambda(n)\).
The unconditionally proved prime number theorem states
\(\Psi(X)=X+o(X)\) as \(X\to\infty\), summing ALL prime powers;
see [NIST DLMF §25.16(i), Eq. 25.16.3](https://dlmf.nist.gov/25.16.E3)
(Hadamard/de la Vallée Poussin, 1896).
The exact Stieltjes integration-by-parts identity for the STRICT
inventory is
\[
W(u)=\frac{\Psi(X^-)}{\sqrt X}
+\frac12\int_1^X \frac{\Psi(t)}{t^{3/2}}\,dt,
\qquad X=e^u.
\tag{WMC.32}
\]
Here \(\Psi(X^-)=\sum_{n<X}\Lambda(n)\), and the distinction from
\(\Psi(X)\) is at most \(\log X=o(X)\) at a prime-power endpoint;
no endpoint term is discarded. The boundary term equals
\(\sqrt X+o(\sqrt X)\). To evaluate the integral, split at a fixed
threshold \(T\), apply \(|\Psi(t)-t|\le\varepsilon t\)
for \(t\ge T\), and let \(\varepsilon\to0\): it equals
\(\sqrt X+o(\sqrt X)\). Their sum is
\(2\sqrt X+o(\sqrt X)\). QED.

The leading coefficient **2** is sharp for the positive
all-prime-power MASS \(W(u)\) itself, not established to be sharp for
the actual signed primitive Weil operator.

**Theorem (WMC-v4-11; unconditional, asymptotic conductor window).**
Fix arbitrary real parameters
\[
0<\vartheta<\frac12,\qquad
0<\mu<1-2\vartheta.
\tag{WMC.33}
\]
Then there exists a finite threshold \(M_0(\vartheta,\mu)\)
such that for EVERY integer \(q\) with \(M=\log q\ge M_0\),
EVERY primitive character \(\chi\) of exact conductor \(q\),
EVERY REAL \(L\) satisfying
\[
0<L\le2\log(\vartheta M)
      =\log\bigl(\vartheta^2(\log q)^2\bigr),
\tag{WMC.34}
\]
and EVERY original complex form-domain test \(f\),
\[
\boxed{Q_{\chi,L}(f)\ge\mu\,M\|f\|_2^2.}
\tag{WMC.35}
\]
The threshold is also large enough that \(\vartheta M>1\).
The statement is **uniform in q, chi, L and f** under these
quantifiers; only the fixed parameters \(\vartheta,\mu\) determine
the unknown threshold.

**Proof.** The original WMC-5 physical source return, after keeping
all signed complex phases, gives
\[
\mathcal P_{\chi,L}(f)\le
H(L)\|f\|_2^2,\quad
H(L)=W(L)+\frac12W(L/2)+\frac12W(L/3).
\tag{WMC.36}
\]
Every summand of \(W\) is nonnegative, so \(H\) is nondecreasing.
Put \(U_M=2\log(\vartheta M)\). For ALL \(0<L\le U_M\),
\[
H(L)\le H(U_M)
=2\vartheta M+o(M)
+O(M^{1/2})+O(M^{1/3})
=2\vartheta M+o(M),
\tag{WMC.37}
\]
where (WMC.31) is applied separately at \(U_M\), \(U_M/2\)
and \(U_M/3\). This is a UNIFORM envelope bound, independent
of conductor, character and test; no character-average limit
has been substituted for a fixed-character estimate.

The exact parity constants satisfy \(c_{q,a}>M-6\), and the
entire original compensated gamma is nonnegative. Hence
\[
Q_{\chi,L}(f)\ge[1-2\vartheta-o(1)]M\|f\|_2^2
\]
uniformly on the displayed conductor-dependent support range.
Since \(\mu<1-2\vartheta\), choose \(M_0\) large enough for
the error and the fixed constant 6 to fit in the strict
gap. This proves (WMC.35), without RH/GRH or any
fixed-character all-height positivity assumption. QED.

**Examples and exact parameter boundary.**
For \(\vartheta=1/3\), \(\mu=1/4\), all sufficiently large
conductors have a genuine \(M/4\) lower margin on
\(e^L\le M^2/9\); this exceeds WMC-9's \(M^2/16\)
range, but with a NONEXPLICIT starting conductor.
With the same margin \(\mu=1/4\), any
\(\vartheta<3/8\) is admissible, and the limiting
upper coefficient \(\vartheta^2\) approaches
\(9/64\) strictly from below. Its ratio to WMC-8's
\(1/36\) is \(81/16\). Equality
\(\vartheta=3/8\), \(\mu=1/4\) is NOT asserted;
the \(o(1)\) error has not been proved to have a
favorable sign.

**Counterchecks and precise obligations.**
* The PNT is a known **unconditional theorem**, but the
  asymptotic (WMC.31) gives no effective \(M_0\) without a
  quantitative error estimate. A finite numerical computation
  cannot certify this unknown threshold.
* The bound remains a POSITIVE-mass upper envelope on
  the ORIGINAL signed Weil prime source; no claim is
  made that the true signed operator norm asymptotically
  attains the coefficient 2.
* At any fixed \(q\), even the new \(2e^{L/2}\) leading
  budget eventually dominates the fixed \(\log q\)
  conductor term. The result does NOT prove
  fixed-character all-window positivity, RH or GRH.
* Conductor-one zeta is still a SEPARATE source with
  BOTH signed pole orientations. None of WMC-9/10
  is applied to \(q=1\), nor to imprimitive
  characters without an explicit transfer.
* The full original gamma, parity, conductor,
  strict prime-power cutoffs, actual \(\chi(n)\)
  phases and all complex test directions are retained
  in WMC.1 and WMC.36. Absolute values are introduced
  only as a rigorous upper-bound operation, never as
  a replacement of the original Weil form.

**Verification and provenance.** The new sibling
[WeilPNTMovingConductorCertificate.py](WeilPNTMovingConductorCertificate.py)
checks the exact rational WMC-9 constants, the
\(M\ge512\) margin, strict parameter inequalities,
and the need for \(\mu<1-2\vartheta\) rather than
equality. Locally executed under Python 3.13.5:
PASS; \`py_compile\`: PASS; Python \`-O\`
self-test: deliberately REJECTED. Exact tested source
SHA-256:
\`b928eeb32fefc53dc2f12ca96598369de404f1b95c501dfe4be259359303aa07\`;
Git blob \`996c6226fc9bf9466ceca6fcea6ad740e9feb6db\`.
The finite script does **not** prove the prime number
theorem or certify any qualitative \(o(1)\) threshold.
An initial handwritten expected-rational test failed
and was corrected to the exact
\(11041/20625\); the fixed source passed.

The original WMC-7/8 certificate and its historical
source identity remain unchanged. Source baseline
\`grwtsk/math/main\` at
\`f94754aaf09a83dc693665e330dd4ea32943abda\`,
Lean \`leanprover/lean4:v4.34.1\`, mathlib
\`d13f23b723b8a846827a245b89c10fc7d3f11612\`.
Coordinating issue \`grwtsk/math#1801\`.
The canonical Noe proof-automation skill was not
accessible; no Lean execution/build/kernel replay
or transitive axiom audit occurred. Source proof
status: WRITTEN; rational scalar certificate: RUN;
PNT: CLASSICAL_UNCONDITIONAL_INPUT; independent
analytical review and originality: UNASSESSED.
No new research axiom, sorry/admit, root import,
dependency pin, completed-GRH target change or
unconditional all-window claim is introduced.
