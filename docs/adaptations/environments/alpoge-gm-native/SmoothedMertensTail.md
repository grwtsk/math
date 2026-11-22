# Native smoothed Mertens tail: exact source cancellation, optimal one-sided supplier, and Mellin obstruction

**Consumer:** [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850), independent arithmetic route to the original intermediate Level.Gm and [RH/GRH blueprint #1828](https://github.com/grwtsk/math/issues/1828). **Lean source candidate:** [SmoothedMertensTail.lean](SmoothedMertensTail.lean). This note extends the prior [CenteredMertensAbel.md](CenteredMertensAbel.md) without creating a second weighted Mertens definition. It explicitly reuses the original [CenteredSlope.lean](CenteredSlope.lean).

**Original pinned source, not imported from the final proof:** tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Lean v4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. Exact Level.Nt/wt/Gm from Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean, blob ed60b4b997cd4703713660b185b9e43fd95559a1; An.sumLamChi/gChi/logDerivativeAtOne from .../Analytic.lean, blob 599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1; Gz from Formalism/StatementOC.lean, blob 12ab19c0176bd4135c2b23a7ee3ac22888df0122. No Alpöge Main.riemannHypothesis or everyCharacter theorem, Weil positivity from RH, or zero-indexed spectral substitute is used.

**Prior mathematical source:** [CenteredMertensAbel.md](CenteredMertensAbel.md), blob 45593c27fea670a59bab26be7fb5b5991234e595, already proves classical original-source PNT/AP centering and exact Mertens tail with all Dirichlet L'/L corrections; this note draws a sharper consequence. Classical references: K. Kedlaya, [Error bounds for primes in arithmetic progressions](https://kskedlaya.org/ant/chapter-11.html), ETH [Analytic Number Theory notes, Theorem 11.2](https://metaphor.ethz.ch/x/2018/hs/401-3100-68L/IANTnotes2018.pdf); B. Green, [Mellin transforms and the explicit formula](https://people.maths.ox.ac.uk/greenbj/papers/primenumbers.pdf); UConn [Dirichlet L-function lecture notes](https://ctnt-summer.math.uconn.edu/wp-content/uploads/sites/1632/2018/05/ctnt2018-DirichletLfnGRH-Day1.pdf) for logarithmic-derivative pole residues. These are classical source methods, not asserted globally novel.

## 1. Exact finite source cancellation, before any PNT

For a genuine native Level \(\mathcal L\), retain
\[
a_{\mathcal L}(n)=\Lambda(n)c_{\mathcal L}(n),\quad
c_{\mathcal L}(n)=1+\sum_{\chi\in\mathcal L.Nt}
\mathcal L.wt(\chi)\operatorname{Re}\chi(n),
\]
\[
\Psi_{\mathcal L}(x)=\sum_{n\le x}a_{\mathcal L}(n),\quad
B_{\mathcal L}(x)=\sum_{n\le x}\frac{a_{\mathcal L}(n)}n,\quad
R_{\mathcal L}(x)=\Psi_{\mathcal L}(x)-x.
\]
The complete genuine constant, not a model parameter, is
\[
A_{\mathcal L}=1+\gamma_E+
\sum_{\chi\in\mathcal L.Nt}\mathcal L.wt(\chi)
\,\operatorname{Re}\frac{L'(1,\chi)}{L(1,\chi)}.
\]
Define \(E_{\mathcal L}(x)=B_{\mathcal L}(x)-\log x+A_{\mathcal L}-1\), exactly the existing source's centered weighted Mertens.

The original signed smoothed prime source is a FINITE sum:
\[
S_{\mathcal L}(x)=\sum_{n\le x} a_{\mathcal L}(n)
 \left(\frac xn-1\right)
=x B_{\mathcal L}(x)-\Psi_{\mathcal L}(x).
\]
Substitution into the actual normalized definition proves
\[
\boxed{
\mathcal L.Gm(x)
=S_{\mathcal L}(x)-x\log x+A_{\mathcal L}x
=x E_{\mathcal L}(x)-R_{\mathcal L}(x),
\quad x\ge1.
}\tag{1}
\]
This is RH-independent and holds for arbitrary Level, including exceptional characters, because it uses no sign assumption. The new Lean SOURCE_PROOF_CANDIDATE [SmoothedMertensTail.lean](SmoothedMertensTail.lean) proves (1) at EVERY natural integer N≥1 against the existing original CenteredSlope.weightedMertens and CenteredMertensAbel.nativeChebyshevPrefix. These bodies have not yet been compiled or kernel checked.

### Exact finite two-cutoff identity

Let \(1\le n<T\) be integers. Abel summation gives
\[
 B_{\mathcal L}(T)-\frac{\Psi_{\mathcal L}(T)}T
-\left(B_{\mathcal L}(n)-\frac{\Psi_{\mathcal L}(n)}n\right)
=\sum_{k=n}^{T-1}\frac{\Psi_{\mathcal L}(k)}{k(k+1)}.
\]
Using (1) therefore gives the **source-exact, finite, no-PNT theorem**
\[
\boxed{
\frac{\mathcal L.Gm(n)}n+\log n
=\frac{\mathcal L.Gm(T)}T+\log T
-\sum_{k=n}^{T-1}\frac{\Psi_{\mathcal L}(k)}{k(k+1)}.
}\tag{2}
\]
No continuation, limit or synthetic character value occurs. In particular the sign in front of the finite sum is MINUS. A hostile checker initially tried the opposite sign, failed immediately, and was corrected before publication. The finite formula is a natural continuation theorem for exact signed source-window data.

## 2. Sharpened infinite tail: the local Chebyshev discrepancy cancels

The preceding [CenteredMertensAbel.md](CenteredMertensAbel.md) proves using classical PNT in arithmetic progressions, original Euler/L'/L centering and dominated convergence:
\[
 E_{\mathcal L}(x)=
 \frac{R_{\mathcal L}(x)}x-
  \int_x^\infty\frac{R_{\mathcal L}(t)}{t^2}\,dt.
\]
Insert this into (1). The **entire local \(R_{\mathcal L}(x)\) term cancels**:
\[
\boxed{
\mathcal L.Gm(x)
=-x\int_x^\infty\frac{R_{\mathcal L}(t)}{t^2}\,dt,
\qquad x\ge1.
}\tag{3}
\]
Thus the original smoothed Level.Gm is a negative *integrated Chebyshev error tail*. This is an exact identity for genuine original Dirichlet-character sources, NOT a claim that the tail has a new power-saving bound.

The PNT/AP input is necessary for proving absolute convergence and identifying the original constant at infinity. The finite identity (1) itself requires no PNT. For x=1, (3) agrees with the original source normalization \(\mathcal L.Gm(1)=A_{\mathcal L}\); indeed \(R_{\mathcal L}(1)=-1\), \(E_{\mathcal L}(1)=A_{\mathcal L}-1\). The analytic constant has not been dropped.

## 3. The MINIMAL one-sided RH-strength supplier

Equation (3) yields an equivalence with NO pointwise Chebyshev hypothesis:
\[
\boxed{
\mathcal L.Gm(x)\le x^\theta
\quad\Longleftrightarrow\quad
\int_x^\infty \frac{R_{\mathcal L}(t)}{t^2}\,dt
\ge -x^{\theta-1},
\qquad x\ge1.
}\tag{4}
\]
For the eventual integer curvature margin in the existing proof corridor:
\[
\boxed{
\mathcal L.Gm(n)\le n^\theta-\frac1{4n}
\iff
\int_n^\infty\frac{R_{\mathcal L}(t)}{t^2}\,dt
\ge -n^{\theta-1}+\frac1{4n^2}.
}\tag{5}
\]
The SIGN is crucial. This is a **one-sided INTEGRATED lower bound** on the actual discrepancy, weaker than demanding an absolute pointwise AP error. It is the exact missing supplier that the original intermediate Landau/HasWindows consumer needs, not a proof that the supplier holds.

An explicit sufficient, but stronger, pointwise supplier is
\[
\forall t\ge X:\quad R_{\mathcal L}(t)\ge-Kt^\beta,\quad0<\beta<1.
\]
Direct integration gives
\[
\boxed{
\mathcal L.Gm(x)\le
  \frac{K}{1-\beta}x^\beta,\qquad x\ge X.
}\tag{6}
\]
For any \(\beta<\theta<1\), (6) eventually supplies \(\mathcal L.Gm(x)\le x^\theta-1/(4x)\), and the original independent intermediate Landau.zero_free_of_Chebyshev_growth returns its native zero-free region. **The one-sided \(\beta<1\) premise is OPEN**, not obtained from ordinary PNT or finite Jacobi computations.

## 4. Improved unconditional original-source rate

For a fixed true cyclic Level, classical fixed-modulus PNT/AP supplies
\[
|R_{\mathcal L}(t)|\le
K\,t\,\exp(-c\sqrt{\log t}),\qquad t\ge X,\quad K,c>0.
\]
Equation (3) gives the sharper unconditional bound
\[
|\mathcal L.Gm(x)|\le
Kx\int_x^\infty
 \frac{\exp(-c\sqrt{\log t})}{t}\,dt.
\]
The exact substitution \(u=\sqrt{\log t}\) evaluates the integral:
\[
\int_x^\infty
\frac{e^{-c\sqrt{\log t}}}{t}\,dt
=2e^{-c\sqrt{\log x}}
\left(\frac{\sqrt{\log x}}c+\frac1{c^2}\right).
\]
Hence
\[
\boxed{
|\mathcal L.Gm(x)|\le
2Kx\,e^{-c\sqrt{\log x}}
\left(\frac{\sqrt{\log x}}c+\frac1{c^2}\right),
\qquad x\ge\max(e,X).
}\tag{7}
\]
This is a genuine *eventually quantified*, two-sided estimate for the original Level.Gm, independently of Alpöge's final RH theorem, with constants supplied by the external classical PNT/AP. It improves the previous triangle-through-Mertens estimate by cancellation of the local discrepancy. It is still insufficient to deduce any fixed power saving \(O(x^\theta)\) for \(\theta<1\).

## 5. Quantitative AP-power supplier with optimal smoothing coefficient

The original cyclic subgroup AP decomposition in [CenteredMertensAbel.md](CenteredMertensAbel.md) gives
\[
|R_{\mathcal L}(t)|\le\varphi(M)K t^\beta+
\frac43\omega(M)\log t
\quad(t\ge X)
\]
provided every reduced-class original Chebyshev discrepancy is \(\le K t^\beta\) in modulus. Inserting this directly into (3), instead of first bounding the centered Mertens E, gives
\[
\boxed{
|\mathcal L.Gm(x)|\le
\frac{\varphi(M)K}{1-\beta}x^\beta+
\frac43\omega(M)(\log x+1),
\quad x\ge X.
}\tag{8}
\]
This sharpens the prior coefficient \(\varphi(M)K(2-\beta)/(1-\beta)\) inherited from the indirect E bound. No subgroup-order factor is introduced, and the genuine ramified term remains.

For any \(\beta<\theta<1\), (8) eventually proves \(|\mathcal L.Gm(x)|\le x^\theta\) after a finite threshold. However, the **AP power hypothesis is not proved**: fixed-modulus classical Siegel–Walfisz gives a subexponential scale, not a fixed power. This condition is comparable in strength to the RH/GRH zero-free program. No parameter choice in (8) substitutes for the missing estimate.

## 6. Independent Mellin pole obstruction: why smoothing cannot manufacture RH

Set \(D_{\mathcal L}(s)=\sum_{n\ge1}a_{\mathcal L}(n)n^{-s}\) for \(\Re s>1\). Because the true source uses \(\operatorname{Re}\chi(n)\), the correct **complex-holomorphic Dirichlet-series identity** is
\[
\boxed{
D_{\mathcal L}(s)
=-\frac{\zeta'(s)}{\zeta(s)}
-\frac12\sum_{\psi\in\mathcal L.Nt}w_\psi
\left[
\frac{L'(s,\psi.\chi)}{L(s,\psi.\chi)}
+\frac{L'(s,\overline{\psi.\chi})}{L(s,\overline{\psi.\chi})}
\right].
}\tag{9}
\]
The conjugate character is a *separate holomorphic Dirichlet L-function*. One must **not** interpret \(\operatorname{Re}(L'/L(s,\chi))\) as a holomorphic function of arbitrary complex s. On real s>1 the two formulations coincide. No final RH theorem is used in (9); it is the ordinary Euler-product logarithmic derivative.

For \(\Re s>1\) finite absolute convergence and the real Mellin integral of each original source ramp give
\[
\int_1^\infty
 \left(\frac{x}{n}-1\right)_+x^{-s-1}\,dx
=\frac{n^{-s}}{s(s-1)}.
\]
The two elementary source counterterms integrate explicitly, so the original source satisfies
\[
\boxed{
\int_1^\infty \mathcal L.Gm(x)x^{-s-1}\,dx
=\frac{D_{\mathcal L}(s)}{s(s-1)}
-\frac1{(s-1)^2}+\frac{A_{\mathcal L}}{s-1}.
}\tag{10}
\]

**Conditional Mellin obstruction theorem.** Suppose that for some \(0<\theta<1\), \(G_m(x)=O(x^\theta)\) in **absolute value** for all sufficiently large x. Then the Mellin integral in (10) is holomorphic for \(\Re s>\theta\), so its right-hand expression meromorphically continues \(D_{\mathcal L}(s)\) without poles there, except for its known \(s=1\) pole.

For \(\mathcal L=\mathrm{Level.ofSub}(\Xi)\), every retained nontrivial weight is strictly positive. At a zero of \(\zeta(s)\) or any source \(L(s,\chi)\), the residues of every corresponding **negative** logarithmic derivative are nonpositive real multiples of their strictly positive multiplicities, and at least one is strictly negative. Since the nonprincipal L-functions are entire and have no compensating poles, the weighted sum (9) **cannot cancel such a pole**. Therefore an absolute \(O(x^\theta)\) source bound forces *all the zeta and retained L-function zeros* to be outside \(\Re s>\theta\). The pole at s=1 is the expected zeta pole, not an L zero.

This gives an **independent conditional analytic explanation** of why the desired power bound is difficult. It does not prove that the bound holds, and hence does not prove RH or GRH. The one-sided Gm upper bound instead uses the source's intermediate Landau theorem; the simple absolute Mellin argument alone does **not** justify replacing a one-sided hypothesis by a two-sided one.

The kernel, Mellin transform and logarithmic derivative pole residue are classical; see the Oxford and UConn notes linked at the start of this record. This is not claimed as a novel globally independent proof of RH.

### Sharp hostile test: smoothing preserves a power obstruction

Consider a **synthetic** non-prime Chebyshev discrepancy \(R(t)=-t^\beta\), \(0<\beta<1\). It is compatible with a nondecreasing continuous model \(\Psi(t)=t-t^\beta\), \(t\ge1\), but it is not the original discrete von Mangoldt source. The tail gives
\[
\boxed{G_m(x)=\frac{x^\beta}{1-\beta}.}\tag{11}
\]
Thus smoothing does **not improve the exponent** in a generic error-bound transfer. The corresponding synthetic Dirichlet transform \(D(s)=s/(s-1)-s/(s-\beta)\) has a pole at \(\beta\); the Mellin transform is \(1/((1-\beta)(s-\beta))\). These are exact rational identities at rational parameters, and a hostile certificate for any ungrounded assertion that finite diffusion automatically removes RH-strength poles.

## 7. Independent exact source checks and formal boundary

The source-specific [verify_native_mertens_smoothed_tail.py](../../../../scripts/verify_native_mertens_smoothed_tail.py) uses actual cyclic character phases modulo 4, 5 and 15 and true prime-power support with **strictly positive rational log surrogates**, to check coefficient-linear equalities only. It executes:

- 1,440 direct integer \(G_m=nE-R\) and exact finite smoothed-source equalities at N≤240;
- 108 genuine finite two-cutoff Abel identities with the correct MINUS sign;
- 36 finite Mellin-kernel/centering equalities for complex Mellin exponent represented by real integers s=2,…,7;
- 120 sharp power-pole countermodel checks with β∈{1/2,2/3,3/4}, both signs, and exact rational scales.

**1,584 finite source algebra checks and 120 hostile power-pole controls PASS** with only Python standard-library fractions. The checker is not an RH oracle; it does not verify any transcendental L-value, the external PNT/AP, Lean kernel or the actual analytic tail convergence. It specifically detected and corrected a mistaken PLUS sign in an early finite scale identity before publication.

**Formal status:** Three new original-source Lean theorem bodies are SOURCE_PROOF_CANDIDATES, not compiled. The true infinite-tail (3), Mellin (10), and full PNT/AP transfer (7) are complete classical mathematical derivations, but **NOT FORMALIZED IN LEAN**. The exact original root Mathlib versus source original version incompatibility remains; do not import these isolated files into the root. No Noe automation, synthetic spectral statement, or Alpöge final proof has entered this work.

**Decisive next research obligation:** prove (4) for the true original source (or the stronger one-sided (6) premise) at arbitrarily late x, with original character families, actual ramified factors and all analytic constants. The existing arithmetic reconstruction, exact finite diffusion and classical PNT/AP supply source correctness and weaker unconditional bounds, **not this RH-strength exponent**.
