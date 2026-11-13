# Conductor-stratified positivity of the original primitive Weil form beyond the first prime activations

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06, 11M26, 11N05, 47A12.

**WAPC-v1-1 through WAPC-v1-4 — WRITTEN_ANALYTICAL_ARGUMENT and EXECUTED_EXACT_RATIONAL_SCALAR_CERTIFICATE.** Lean elaboration, full build, fresh kernel replay, transitive axiom audit, independent mathematical review: NOT_RUN/UNASSESSED. Originality UNASSESSED. No RH, primitive GRH or all-window positivity is claimed.

**Canonical source and consumer.** This note consumes the ORIGINAL primitive Weil quadratic form and the zero-extension gamma boundary identity in [WeilShortWindowBridgeCertificate.md](WeilShortWindowBridgeCertificate.md), the midpoint convexity bound in [WeilShortWindowConvexGammaExtension.md](WeilShortWindowConvexGammaExtension.md), and the [WeilShortWindowRankOne.md](WeilShortWindowRankOne.md) all-primitive result through the first prime threshold, together with the stronger post-activation character-uniform rank-one argument [WeilFirstPrimeRankOne.md](WeilFirstPrimeRankOne.md). The finite-chain physical overlap is compared with [WeilFiniteChainPrimeBound.md](../WeilFiniteChainPrimeBound.md) and [WeilPrimePowerCluster.md](../WeilPrimePowerCluster.md). The new results control **all complex tests**, and have genuinely activated n=2, n=3, n=4, n=5 and n=7 prime-power terms, rather than merely an endpoint span or an auxiliary Gram model.

## WAPC-v1-1: original arithmetic source and two-/three-site inequalities

For L>0 let I=(0,L), with every complex test f zero-extended to the real line, and with the actual gamma form domain
\[
V_{L,b}=\{f\in L^2(I;\mathbb C):\Gamma_b(f)<\infty\},
\qquad
\Gamma_b(f)=\int_0^\infty\frac{e^{-bs}}{1-e^{-2s}}\|f(\cdot+s)-f\|_2^2\,ds.
\tag{1}
\]
For a primitive Dirichlet character chi of exact conductor q>=1, parity a=0 or 1 and b=a+1/2, the original pole-inclusive Weil form is
\[
Q_{\chi,L}(f)
=c_{q,a}\|f\|_2^2+\Gamma_b(f)-\langle f,P_{\chi,L}f\rangle
+\delta_\chi\langle f,R_Lf\rangle,\qquad
c_{q,a}=\log(q/\pi)+\psi(1/4+a/2).
\tag{2}
\]
Here
\[
P_{\chi,L}=\sum_{\substack{n\ge2\\\log n<L}}
\frac{\Lambda(n)}{\sqrt n}
\left[\chi(n)T_{\log n}+\overline{\chi(n)}T_{\log n}^{*}\right],
\qquad T_r f(x)=f(x-r).
\tag{3}
\]
Inner products are conjugate linear in the first variable. Every integer n in the strict cutoff is retained, with the actual von Mangoldt weight (zero away from prime powers) and the actual complex phase chi(n) (zero on nonunits). For conductor-one zeta, delta=1 and the two genuine, possibly indefinite pole orientations form R_L(x,y)=e^{(x-y)/2}+e^{-(x-y)/2}. **The new q>=16/64/1024 inequalities do not apply to conductor-one zeta**; retain WSGC/WSR1's separate existing zeta full-test results. For q>1 primitive, delta=0, but parity and conductor are not omitted.

Define the original signed correlation C_f(r)=integral_R conjugate(f(x)) f(x+r) dx. The exact physical source identity is
\[
\langle f,P_{\chi,L}f\rangle
=2\sum_{\log n<L}\frac{\Lambda(n)}{\sqrt n}
\operatorname{Re}\left(\overline{\chi(n)}C_f(\log n)\right).
\tag{4}
\]
With the translation convention in (3), \(\langle f,T_r f\rangle=\overline{C_f(r)}\), yielding exactly (4) with its original conjugated character phase. We take an upper bound on this SIGNED response only after (4), without replacing the Weil quadratic form by a positive auxiliary construction.

**Two-site bound.** If L/2<=r<L, then (0,L-r) and (r,L) are disjoint up to a null endpoint. The actual zero-extended correlation therefore satisfies
\[
|C_f(r)|\le\|f\|_{L^2(0,L-r)}\|f\|_{L^2(r,L)}
\le\tfrac12\|f\|_2^2.
\tag{5}
\]

**Three-site bound.** If L/3<=r<L, split Lebesgue measure into source fibers modulo r. Put a_j(x)=f(x+jr) for x in (0,r), with a_j=0 if x+jr is outside I. At most three consecutive entries a_0,a_1,a_2 can be nonzero almost everywhere, and
\[
C_f(r)=\int_0^r(\overline{a_0}a_1+\overline{a_1}a_2)\,dx.
\]
For every complex triple,
\[
|\overline{a_0}a_1+\overline{a_1}a_2|
\le|a_1|(|a_0|+|a_2|)
\le\sqrt2\,|a_1|\sqrt{|a_0|^2+|a_2|^2}
\le\frac{|a_0|^2+|a_1|^2+|a_2|^2}{\sqrt2}.
\]
The true L2 source mass is the integral of the fiber masses. Thus
\[
\boxed{|C_f(r)|\le 2^{-1/2}\|f\|_2^2.}
\tag{6}
\]
This is the elementary three-site nilpotent-shift numerical-radius inequality, with its original physical disintegration. Do **not** substitute the two-site factor 1/2 when there are three sites: a real fiber (1,3/2,1) has correlation/mass 12/17>1/2.

## WAPC-v1-2: strict original prime-power inventory through log 8

The exact nonzero von Mangoldt inventories with n<e^L are:

| L range | Potential nonzero n | A uniform upper bound B(L) in (4), divided by ||f||^2 |
|---|---|---|
| 0<L<=log 2 | none | 0 |
| log 2<L<=log 3 | 2 | log2/sqrt2 |
| log 3<L<=log 4 | 2, 3 | log2/sqrt2+log3/sqrt3 |
| log 4<L<=log 8 | 2, 3, 4, 5, 7 | log2+log3/sqrt3+log2/2+log5/sqrt5+log7/sqrt7 |

At each endpoint, log n=L implies zero overlap; in particular n=8 is **not active** at L=log8. The integer n=6 remains in the original indexing but Lambda(6)=0. The prime square n=4 has Lambda(4)=log2, NOT log4.

For L<=log4, both lags log2 and log3 (when active) satisfy r>=L/2, so (5) applies. For L<=log8=3log2, the n=2 lag obeys r>=L/3, so (6) gives its complete signed response at most
2(log2/sqrt2)(1/sqrt2)||f||^2=log2||f||^2.
For n>=3, log n>=log3>L/2 because 8<9, so (5) controls every other active shift. Finally |chi(n)|<=1, including the correct value 0 at ramified primes. These are exactly the displayed budgets, giving the literal original arithmetic bound
\[
\boxed{\langle f,P_{\chi,L}f\rangle\le B(L)\|f\|_2^2.}
\tag{7}
\]
Any actual signed cancellation among distinct primes can improve (7) but none is presumed. It is NOT an all-window upper estimate.

## WAPC-v1-3: exact infinite gamma energy and both parity constants

The zero-extension decomposition from the *same original gamma source* is
\[
\Gamma_b(f)=\int_{0<x<y<L}k_b(y-x)|f(y)-f(x)|^2\,dxdy+
\int_0^L[K_b(x)+K_b(L-x)]|f(x)|^2\,dx,
\quad K_b(v)=\int_v^\infty k_b(s)ds.
\tag{8}
\]
All terms are nonnegative. Since k_b is decreasing, K_b is convex; hence
\[
\boxed{\Gamma_b(f)\ge2K_b(L/2)\|f\|_2^2.}
\tag{9}
\]
This is the entire compensated infinite archimedean energy, not a finite quadrature or H1 surrogate.

Put z=e^{-L/4} in (0,1). For b=1/2 and 3/2 respectively,
\[
2K_{1/2}(L/2)=\log\frac{1+z}{1-z}+2\arctan z,\qquad
2K_{3/2}(L/2)=2K_{1/2}(L/2)-4\arctan z.
\tag{10}
\]
The original primitive constants satisfy
c_{q,0}=\log(q/\pi)-\gamma-\pi/2-3\log2,
c_{q,1}=c_{q,0}+\pi.
Consequently the odd-parity scalar-plus-gamma lower value exceeds the even-parity value by
\[
\pi-4\arctan z\ge0.
\tag{11}
\]
Thus **the even scalar comparison controls BOTH actual primitive parities**, without altering the source. For every primitive nonprincipal chi, its genuine pole term is zero, and (2), (7), (9)--(11) imply
\[
\boxed{Q_{\chi,L}(f)\ge
\left[\log(q/\pi)-\gamma-\pi/2-3\log2+
2K_{1/2}(L/2)-B(L)\right]\|f\|_2^2.}
\tag{12}
\]
This holds for every original complex form-domain test, not merely for exponential endpoints.

## WAPC-v1-4: three unconditional full-test conductor strata

The following theorems are for **every primitive** chi of the indicated exact conductor q, every displayed support L and every complex f in V_{L,b}. They do not assume RH, GRH, a zero-free region, or sign cancellation across primes.

**Theorem A (first activated prime):**
\[
\boxed{q\ge16,\quad0<L\le\log3
\ \Longrightarrow\ Q_{\chi,L}(f)\ge\tfrac1{10}\|f\|_2^2.}
\tag{13}
\]
Indeed z=e^{-L/4}>=3^{-1/4}>3/4 because (3/4)^4<1/3. From
arctan z=pi/4-arctan((1-z)/(1+z)) and arctan u<=u,
2K_{1/2}(L/2)>=log7+pi/2-2/7. With 1/sqrt2<71/100, the lower scalar is
\[
A_{16}=\log\frac{7\cdot16}{8\pi}-\gamma-\frac27-
\frac{71}{100}\log2>\frac1{10}.
\tag{14}
\]

**Theorem B (two distinct activated primes):**
\[
\boxed{q\ge64,\quad0<L\le\log4
\ \Longrightarrow\ Q_{\chi,L}(f)\ge\tfrac12\|f\|_2^2.}
\tag{15}
\]
Now z>=4^{-1/4}=1/sqrt2>7/10, giving
2K_{1/2}(L/2)>=log(17/3)+pi/2-6/17.
Using 1/sqrt2<71/100 and 1/sqrt3<29/50 on the exact active n=2,3 source gives
\[
A_{64}=\log\frac{17\cdot64}{24\pi}-\gamma-\frac6{17}
-\frac{71}{100}\log2-\frac{29}{50}\log3>\frac12.
\tag{16}
\]

**Theorem C (one prime square and several complex prime phases):**
\[
\boxed{q\ge1024,\quad0<L\le\log8
\ \Longrightarrow\ Q_{\chi,L}(f)\ge\tfrac34\|f\|_2^2.}
\tag{17}
\]
Here z>=8^{-1/4}>7/12, hence
2K_{1/2}(L/2)>=log(19/5)+pi/2-10/19.
The exact n=2 THREE-site coefficient is log2, while n=3,4,5,7 have their true two-site weights log3/sqrt3, log2/2, log5/sqrt5, log7/sqrt7. With the *rational* bounds
1/sqrt3<29/50, 1/sqrt5<9/20 and 1/sqrt7<19/50,
\[
A_{1024}=\log\frac{19\cdot1024}{40\pi}-\gamma-\frac{10}{19}
-\frac32\log2-\frac{29}{50}\log3
-\frac9{20}\log5-\frac{19}{50}\log7>\frac34.
\tag{18}
\]

The adjacent [WeilFirstActivatedPrimeConductorCertificate.py](WeilFirstActivatedPrimeConductorCertificate.py)
**executed** these strict signs using Python standard-library Fraction arithmetic: outward rational atanh-series logarithms with explicit positive remainders, Machin alternating rational arctangent pi enclosures, and the standard harmonic-number Euler constant enclosure based on H_100-log100-1/200 with a safe 1/80000 positive upper allowance. It also checked the true integer prime-power inventories, reciprocal-square-root inequalities and 729 finite Gaussian-integer three-site cases. The latter are *hostile finite tests*, not replacements for the preceding all-fiber mathematical argument. The diagnostic lower-millionths floors from the executed run were 139258, 609822 and 798157; NO floating-point sign decision was used. The source SHA-256 is b71a9926d89cc64ad01a270a3ca87d642fcbd6fe0759e05167c5b9e94c404ce7. Python 3.13.5 execution and py_compile passed; optimized Python -O deliberately failed rather than skipping assertions.

### Falsification, prior art and open obligations

- A real three-site profile (1,3/2,1) has ratio 12/17>1/2, so the n=2 contribution cannot use the two-site constant at L=log8. Moreover a *four-site* profile (1,1,1,1) has ratio 3/4>1/sqrt2 (since 2*3^2>4^2). Thus (6) is false beyond the three-site range L<=log8. The prime cube n=8 also activates for L>log8. **No extrapolation past this last cutoff is made.**
- This is a full original-form **LOWER sign** with a rigorously separate upper bound on its *finite active* prime response, not an estimate of universal prime growth. For L->infinity the number and size of active prime powers change; none of (13)--(18) supplies a fixed-character all-window theorem.
- [WeilShortWindowRankOne.md](WeilShortWindowRankOne.md) gives the stronger character-uniform scope q>1, L<=log2, with margin 1/100. The subsequent [WeilFirstPrimeRankOne.md](WeilFirstPrimeRankOne.md) already pays the active n=2 overlap using the original gamma rank-one term for EVERY primitive q>1 through L<=log2+1/1000, with margin 1/125. The new WAPC conductor restrictions are useful farther beyond that post-activation interval, but are NOT character-uniform. They are complementary, not duplicates. The separate zeta WSGC/WSR1 results retain BOTH indefinite pole orientations and remain unchanged.
- The n=4 term has weight log2/2, not log4/2. The n=6 term has Lambda(6)=0, n=8 is a strict endpoint, and complex phases including ramified zeros are preserved in (4).
- Prior art: localized Weil-positivity (Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), sections 1--3); finite numerical radius (Fejer, Haagerup--de la Harpe, Proc. AMS 115 (1992)). Maintained source comparison includes WeilFiniteChainPrimeBound, WeilHighShiftInterference, WeilPrimePowerCluster, WeilShortWindowRankOne and WeilShortWindowConvexGammaExtension. These elementary inequalities are not claimed novel.

**Precise mathematical consumer:** Actual primitive-character full-complex-form positivity on three conductor/support regions, with every original active prime power accounted for. The unchanged WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity still needs **every character, every L>0 and every admissible test**, the full signed low/high prime couplings, gamma/parity/conductor and zeta's two poles. No universal hpositive supplier, all-height prime cancellation, certified infinite tail, imprimitive transfer or RH/GRH proof follows.

**Provenance and status:** Initial live source inspection was grwtsk/math/main 83f3cdac0bb22ad41c745710d29cf79a1f1ec4de, with root/scoped AGENTS.md, CONTRIBUTING.md and canonical WSR1/WSGC/finite-shift sources inspected. Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination issue grwtsk/math#1801. Canonical proof-automation skill workflows/research/orchestration/skills/noe-proof-automation/SKILL.md at grwtsk/noeaaeue/main 45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d returned HTTP 404, so **no covered Lean/proof automation was run or delegated**. Analytic proof is WRITTEN and scalar certificate RUN; Lean elaboration/kernel/axiom audit and independent review NOT_RUN/UNASSESSED. No new Lean declarations, research axioms, sorry/admit, imports/pins or conjecture target changes.
