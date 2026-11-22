# Certified prime-Jacobi moment recovery and Alpöge component transport

**Authors:** grwtsk contributors.  
**Source base:** grwtsk/math main 14165a7035d14ab3d20d80396a0ba8f3b75cae52 (2026-11-22); Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.  
**Mathematical consumers:** independent prime-only Jacobi issue [#1849](https://github.com/grwtsk/math/issues/1849), full signed Weil readout [#1819](https://github.com/grwtsk/math/issues/1819), and the RH/GRH supplier blueprint [#1828](https://github.com/grwtsk/math/issues/1828).  
**Prior math source:** [PrimeJacobiKrylovFrontier.lean](PrimeJacobiKrylovFrontier.lean) (blob 05aafe27b87dae744c49533a8906b6ab6b08cecb); [PrimeJacobiArithmeticReturn.md](PrimeJacobiArithmeticReturn.md) (blob 40519bf8456273b965652ee15928f5ea737cf2bb); [PrimeJacobiSymbolPerturbation.md](PrimeJacobiSymbolPerturbation.md) (blob 10f11fe93ff9c6a9c1d8201e697019ddbeb50080).  
**New Lean algebra candidates:** [PrimeJacobiMomentErrorBudget.lean](PrimeJacobiMomentErrorBudget.lean) and [AlpogeWindowSourceTransport.lean](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlpogeWindowSourceTransport.lean). The new exact-integer/fraction checker is [verify_prime_jacobi_moment_to_source_stability.py](../../../scripts/verify_prime_jacobi_moment_to_source_stability.py).  
**Evidence status:** full primary mathematical proofs below; 21 independent *finite* checker trials PASS (seven lengths, three deterministic perturbations); generic determinant-error theorem itself and its complete Jacobi-source composition are NOT_YET_FORMALIZED_IN_LEAN. The five short interval/window Lean candidates are **NOT_RUN**; no local Lean binary or Mathlib checkout was available. Neither Alpöge's final RiemannHypothesis theorem nor his everyCharacter theorem is used as a premise or import.

## 1. What to reconstruct, and the exact arithmetic assumptions

Let \(p_0=2,p_1=3,\ldots\) denote genuine increasing primes, not stored zeros. For any \(K\ge1\), take the true \((K+1)\)-dimensional zero-diagonal prime-Jacobi section \(J\) with adjacent offdiagonals \(p_0,\ldots,p_{K-1}\). Set

\[
m_r=\langle e_0,J^r e_0\rangle,\qquad
H_k=(m_{i+j})_{0\le i,j<k},\quad
D_k=\det H_k,\quad D_0=1.
\]

All the determinant statements refer to *the same* finite section, with \(k\le K+1\). Since a closed \(r\)-step walk from the root has maximum height \(\lfloor r/2\rfloor\), moments \(m_r\) through \(r=2K\) are stable on further enlarging that section. The independent prime-Krylov theorem proves mathematically

\[
D_k=\prod_{j=0}^{k-2}p_j^{2(k-1-j)}>0,
\qquad
p_j^2=\frac{D_{j+2}D_j}{D_{j+1}^{2}}
\quad(0\le j<K).
\tag{1}
\]

A closed walk of \(r\le2K\) steps has at most \(2^r\) possibilities and every traversed bond is at most \(P=p_{K-1}\); all contributions are nonnegative. Hence for every \(0\le r\le2K\),

\[
0\le m_r\le (2P)^r\le M:=(2P)^{2K}.
\tag{2}
\]

Odd moments vanish, but this sharper fact is not needed in the perturbation bound.

## 2. Theorem A: arbitrary entrywise moment error -> actual Hankel determinant error

Suppose \(\widetilde m_r\in\mathbb R\), \(0\le r\le2K\), with
\(|\widetilde m_r-m_r|\le\varepsilon\) for some \(0\le\varepsilon\le1\).
Set \(\widetilde H_k=(\widetilde m_{i+j})\),
\(\widetilde D_k=\det\widetilde H_k\), \(\widetilde D_0=1\).

**Theorem A.** For every \(1\le k\le K+1\),

\[
\boxed{
|\widetilde D_k-D_k|
\le k!\,k\,\varepsilon(M+1)^{k-1}.
}
\tag{3}
\]

**Proof.** Expand both determinants using the Leibniz formula over permutations \(\sigma\) of the \(k\) indices. For a fixed permutation let \(a_i=m_{i+\sigma(i)}\) and \(b_i=\widetilde m_{i+\sigma(i)}\). Each satisfies \(|a_i|\le M\), \(|b_i|\le M+1\), \(|b_i-a_i|\le\varepsilon\). The exact telescoping identity

\[
\prod_{i=0}^{k-1}b_i-\prod_{i=0}^{k-1}a_i
=\sum_{\ell=0}^{k-1}
  \left(\prod_{i<\ell}b_i\right)
  (b_\ell-a_\ell)
  \left(\prod_{i>\ell}a_i\right)
\]

has at most \(k\) terms, each bounded in modulus by
\(\varepsilon(M+1)^{k-1}\). Sum these bounds over the \(k!\) permutations,
taking absolute values before cancellations. This is (3). \(\square\)

This bound is deliberately coarse but fully explicit and holds for *any* real entrywise moment perturbation, not only one arising from another Jacobi operator. An entrywise perturbed Hankel matrix need not be a valid moment matrix, so its positivity is a **consequence of a separately enforced error threshold**, not an initial hypothesis.

## 3. Theorem B: certified moment-ball exact-recovery theorem

Let \(P=p_{K-1}\) and choose
\[
0<\delta<\frac{1}{4P+1},\qquad
0<\varepsilon\le
\min\left\{
1,\ \min_{1\le k\le K+1}
\frac{\delta D_k}{k!\,k\,(M+1)^{k-1}}
\right\}.
\tag{4}
\]

**Theorem B.** For each \(1\le k\le K+1\),

\[
(1-\delta)D_k\le\widetilde D_k\le(1+\delta)D_k,
\qquad \widetilde D_k>0.
\tag{5}
\]

For all \(0\le j<K\), the measured positive bond estimator

\[
\widetilde p_j=
\sqrt{\frac{\widetilde D_{j+2}\widetilde D_j}
           {\widetilde D_{j+1}^2}}
\]

satisfies

\[
\boxed{
|\widetilde p_j-p_j|\le
\frac{2\delta}{1-\delta}p_j<\frac12.
}
\tag{6}
\]

Therefore nearest-integer rounding uniquely returns \(p_j\), for *every* \(j<K\), despite arbitrary coherent moment errors within the ball (4).

**Proof.** Equation (3) and (4) give (5). All \(\widetilde D_k\) are positive because \(D_k>0\), \(\delta<1\). For \(j\ge0\), include \(D_0=\widetilde D_0=1\) (which obeys the same interval), multiply the three positive determinant intervals and use (1):

\[
\left(\frac{1-\delta}{1+\delta}\right)^2p_j^2
\le\frac{\widetilde D_{j+2}\widetilde D_j}{\widetilde D_{j+1}^2}
\le\left(\frac{1+\delta}{1-\delta}\right)^2p_j^2.
\]

Taking the **positive** square root gives
\((1-\delta)p_j/(1+\delta)\le\widetilde p_j
\le(1+\delta)p_j/(1-\delta)\).
The upper deviation is at most \(2\delta p_j/(1-\delta)\), and this also dominates the lower deviation. The strictly sufficient condition \(\delta<1/(4p_j+1)\), implied by \(\delta<1/(4P+1)\), makes that upper deviation \(<1/2\). Since every \(p_j\) is an integer, nearest-integer rounding is unique. \(\square\)

The extra Lean interval lemmas in PrimeJacobiMomentErrorBudget.lean formalize the algebraic implications (5)–(6) **conditional on** determinant error bounds. Formalizing Theorem A itself in Lean is the specific remaining source theorem, using pinned Mathlib's Matrix.det_apply and the permutation telescoping identity. Unlike previous work, the analytic norm propagation (3) is now fully specified and proved on paper.

### Computation and its limitations

The accompanying checker uses **only standard-library integers and exact rational arithmetic**. It independently constructs prime-Jacobi moments through order \(2K\), computes all Hankel determinants with fraction-free Bareiss elimination, verifies (1), constructs the exact rational tolerance (4) with \(\delta=1/(8P+4)\), perturbs every moment with three deterministic patterns, and tests (3), (5), and the *squared* nearest-integer inequalities without floating-point square roots.

Length \(K=1,\ldots,7\): **21/21 trial groups PASS**. The most conservative permitted moment radius ranges from \(1/340\) at \(K=1\) to about \(1.3\cdot10^{-121}\) at \(K=7\). This bound is formally robust but **extremely ill-conditioned**, hence not a practical precision target. A future stronger theorem should use structured Hankel/Gram conditioning rather than a uniform \(M\) and \(k!\) for every permutation.

**Hostile control:** replacing the first true second moment \(m_2=4\) by 9 makes the determinant-based first bond 3 instead of 2. Without a certified radius, positive semidefiniteness and the inverse formula alone do not protect prime identity.

## 4. Theorem C: error-free finite Alpöge arithmetic return after rounding

Fix real \(X\ge1\) with \(X\le P\). Reconstruct the first \(K\) prime bonds using Theorem B, and let \(\widehat p_j\in\mathbb N\) be their nearest-integer values. Then \(\widehat p_j=p_j\) **exactly**, not within an error.

For any genuine Dirichlet character \(\chi\), completely multiplicative and allowed to vanish at ramified primes,

\[
\boxed{
\sum_{j<K}\log\widehat p_j
\sum_{\widehat p_j^h\le X}
  \chi(\widehat p_j)^h
   \left(\frac{X}{\widehat p_j^h}-1\right)
=
\sum_{n\le X}\Lambda(n)\chi(n)
   \left(\frac Xn-1\right).
}
\tag{7}
\]

**Proof.** Equation (6) returns the genuine list \(p_0,\ldots,p_{K-1}\), which includes every prime \(\le X\). Unique factorization gives the bijection between nonzero von Mangoldt terms and the pairs \((p,h)\), \(p^h\le X\). Character multiplicativity gives \(\chi(p^h)=\chi(p)^h\), also when the value is zero. No RH or spectral information about zeros enters. \(\square\)

Thus one certified moment ball returns exactly the finite prime-power component of Alpöge's Formalism.Sz, Schi, SchiC and his nontrivial-character An.sumLamChi at every \(X\le P\). Its centered zeta statistic Gz also follows after including the explicit elementary \(X\log X-(1+\gamma)X\) counterterm. The nonprincipal GchiC and An.gChi require the **separate genuine** \(X(L'/L)(1,\chi)\) analytic correction; this theorem does not derive it from finitely many moments. The trivial character needs its separate pole normalization.

The full physical signed Weil form in [WeilGammaPhysicalReturn.lean](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaPhysicalReturn.lean) further requires the real autocorrelation at each active prime-power log shift and the complete gamma/pole terms. Equation (7) does **not** establish that full signed Weil positivity.

## 5. Theorem D: finite symbol perturbations preserve Alpöge's closed windows with exponent slack

The source \`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\` defines in
Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean
(blob 099d96fec932b03a505ea79a81c45bcc3fbf0ea3)
a late-window predicate

\[
\mathrm{HasWindows}(S,a)\iff
\forall y\;\exists Y\ge y\;
\forall x\in[Y,Y^a],\ x\in S.
\]

Its Level.Gm (blob ed60b4b997cd4703713660b185b9e43fd95559a1) is the exact centered zeta term plus a **finite weighted family of nontrivial-character corrections**, and CoreGm.lean (blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d) proves a one-sided bound *from the explicit EAtH and CoreAtH hypotheses*.

Assume, with the **original primes fixed**, that finitely many character Euler symbols have changed, every old/new symbol has modulus at most one, and the associated nontrivial Euler-factor logarithmic derivatives at 1 have been adjusted exactly. By the already proved [FiniteEulerSymbolCancellation.md](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteEulerSymbolCancellation.md), each affected prime p contributes at most

\[
2\log X+\frac{2p}{p-1}\log p
\]

to the corrected smoothed statistic, for \(X\ge1\).
For a fixed finite family and its exact weights there are therefore constants \(C_0,C_1\ge0\) with

\[
|\widetilde G_m(X)-G_m(X)|
\le C_1\log X+C_0 \quad(X\ge1).
\tag{8}
\]

This is **only** for the corrected nontrivial character branches; Gz is held fixed, and any conductor/gamma changes not accounted for in the Euler-factor identity require separate terms.

**Theorem D (window/slack stability).** Let \(F,G:[1,\infty)\to\mathbb R\) satisfy \(|F(x)-G(x)|\le C\log x\) for all \(x\ge e\). Fix \(\theta>0\), \(\eta>0\), \(a\in\mathbb R\). Then

\[
\boxed{
\mathrm{HasWindows}(\{x:F(x)\le x^\theta\},a)
\ \Longrightarrow\
\mathrm{HasWindows}(\{x:G(x)\le x^{\theta+\eta}\},a).
}
\tag{9}
\]

**Proof.** For \(x\ge1\), the elementary inequality \(e^t\ge1+t\) gives

\[
x^{\theta+\eta}-x^\theta
=x^\theta(e^{\eta\log x}-1)
\ge \eta x^\theta\log x.
\]

Choose \(x_0\ge e\) so that \(x^\theta\ge C/\eta\) for every \(x\ge x_0\). Then
\(|G(x)-F(x)|\le C\log x\le x^{\theta+\eta}-x^\theta\).
For any prescribed lower window start \(y\), apply the source HasWindows hypothesis to the larger start \(\max(y,x_0)\). The **same resulting closed window** \([Y,Y^a]\) now satisfies \(G(x)\le x^{\theta+\eta}\). All of the original endpoint quantifiers are retained. \(\square\)

The new source-independent Lean candidate [AlpogeWindowSourceTransport.lean](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlpogeWindowSourceTransport.lean) formalizes the exact HasWindows shape and the transfer under a supplied eventual error-vs-power margin. The elementary logarithmic absorption and source-specific finite Euler-factor identity are mathematically proved here but are separate Lean obligations.

**Critical limitation:** this transports an already established source one-sided window estimate to a nearby, *genuinely source-preserving* character-family statistic. It does **not prove** such an estimate for the original \(G_m\), does **not derive** EAtH/CoreAtH, and cannot infer Alpöge's zero-free conclusion unless the original hypotheses of Level.FormBAt are independently supplied. Translating a conditional lemma without discharging its hypotheses is not an RH proof.

## 6. Independent component program, with no final RH import

| Source component and exact upstream declaration | Existing grwtsk/math consumer | New theorem / status | Next non-circular proof obligation |
|---|---|---|---|
| Prime-walk moment inverse, PrimeJacobiKrylovFrontier.bond_sq_from_hankel_determinants | Prime-only Hilbert–Pólya arithmetic encoder, #1849 | Theorem A–B: explicit moment-to-determinant tolerance and exact rounding, mathematically proved; finite exact tests PASS; Lean denominator/positivity candidates NOT_RUN | Formalize entrywise determinant perturbation on actual Hankel matrix using Matrix.det_apply; verify imported source candidates |
| Alpöge Formalism.Sz/Gz/SchiC; An.sumLamChi | Exact arithmetic-return readout, #1849 | Theorem C: exact finite signed prime-power readout from noisy moments after certified rounding | Formalize unique prime-power decomposition and character multiplication in the pinned root Mathlib environment |
| Alpöge imprimitive Euler-factor identity and An.logDerivativeAtOne | FiniteEulerSymbolCancellation, #1849 | Existing local \(O(\log X)\) correction; Theorem D extends to a weighted family and source windows | Check actual primitive/imprimitive character Euler-factor identity at 1, including ramified zero symbols and conductor; no invented character values |
| Alpöge Level.Gm, HasWindows, FormBAt and CoreGm | #1828 and #1819 | Theorem D RH-free window transfer, mathematically proved; 3 Lean conditional/transport candidates NOT_RUN | Discharge complete arithmetic EAtH + CoreAtH supplier for unbounded windows; avoid imported FinalTheorems.everyCharacter |
| Signed compact test autocorrelation and full zeta explicit formula | WeilGammaPhysicalReturn / WeilWindowFilterLedger, #1819 | Recovered prime-power **source identities**, not positivity | Supply all-test gamma/pole/full signed arithmetic bounds; derive a uniform, nonnegative limit without using Alpöge RH |
| Heat/diffusion of the physical Weil kernel | WeilDiffusionSourceBridge, #1849 | Existing finite invertible heat inertia obstruction, no RH | Construct compact cutoff and actual tail bounds, then a separately justified GNS/Stone generator; self-adjointness does not create Weil positivity |

The proposed source-specific combination of moment conditioning, exact character source return and Alpöge's quantified windows has **not** been surveyed exhaustively against the classical literature. The determinant inequality is standard multilinear algebra; the inverse Jacobi mechanism is classical (e.g., G. Teschl, *Jacobi Operators and Completely Integrable Nonlinear Lattices*, AMS 2000). These are maintained **new project theorems**, not asserted to be globally original.

**All formal gates:** root Lean/Mathlib compilation NOT_RUN; imported candidate replay NOT_RUN; fresh kernel/axiom audit NOT_RUN; independent expert analysis NOT_RUN. The exact finite checker establishes only the explicitly reported K=1..7 cases. The final RiemannHypothesis and all-character theorem from Alpöge are not imported, assumed, inferred, or used.
