# An explicit growing-conductor window for the original primitive Weil quadratic form

Local attribution: grwtsk contributors. Edition 3 (exact Chebyshev and conductor-window strengthening), 2026-11-12.
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
