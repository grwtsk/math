# Discrete curvature, prime-power recovery and continuous-window certification for native Alpöge Gm

**Authors:** grwtsk contributors. **Mathematical consumers:** [math #1850](https://github.com/grwtsk/math/issues/1850) (RH-independent Jacobi source reconstruction), [#1828](https://github.com/grwtsk/math/issues/1828) (one-sided analytic Gm corridor) and [#1819](https://github.com/grwtsk/math/issues/1819) (complete signed prime-power readout).  
**Base repository:** grwtsk/math main \`7d0433f7a3919e3c5863887c2bf7b95b45865a34\` (2026-11-22); Lean v4.34.1, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`.  
**Original external source inspection, not imported into math:** \`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\`, \`lean/src/Formalism/StatementOC.lean\` blob \`12ab19c0176bd4135c2b23a7ee3ac22888df0122\` (\`Formalism.Gz\`), \`lean/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean\` blob \`599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1\` (\`An.G\`, \`An.gChi\`), \`.../ExplicitFormulaErrorOfHostConditions.lean\` blob \`ed60b4b997cd4703713660b185b9e43fd95559a1\` (\`Level.Nt\`, \`Level.wt\`, \`Level.Gm\`), and \`.../Window.lean\` blob \`099d96fec932b03a505ea79a81c45bcc3fbf0ea3\` (\`HasWindows\`, \`FormBAt\`). All source these intermediate **definitions** are independent of Alpöge's final \`RiemannHypothesis\` theorem.  
**Local arithmetic consumers:** \`PrimeJacobiGmArithmeticReturn.lean\` blob \`58f73c23c615bf7192e6934f2a5d9bd6e48454d7\`; \`PrimeJacobiGmAdaptiveCertificate.lean\` blob \`df57d6394a873bb57d4baefbdcd3448bd9314a54\`; \`WeilAdaptivePrimeLogObservations.lean\` blob \`a87e4d3a404fcb00bcb2bb2940b1da36a2da1992\`. The local normalization already separates the zeta term from nontrivial-character corrections and keeps the latter's original L'/L constant.  
**Maintained Lean candidates:** [PrimeJacobiGmDiscreteCurvature.lean](PrimeJacobiGmDiscreteCurvature.lean) and [PrimeJacobiGmDiscreteDiffusion.lean](PrimeJacobiGmDiscreteDiffusion.lean). Lean compilation, kernel replay, transitive axiom audit and cross-edition definition identification: **NOT_RUN**. This document proves the mathematical identities directly from the original source definitions; the new Lean generic hinge/heat lemmas are **SOURCE_PROOF_CANDIDATES**, not accepted checked theorem receipts.

## 1. Correct source algebra (no imported RH)

Fix any original Alpöge \`Level Λ\`. The finite family \(\Lambda.Nt\) **excludes the trivial character**; otherwise the zeta branch and its pole need a different normalization. Let
\[
c_\Lambda(n)=1+\sum_{\psi\in\Lambda.Nt}
      \Lambda.wt(\psi)\operatorname{Re}\psi.\chi(n),
\qquad
A_\Lambda=1+\gamma_E+
\sum_{\psi\in\Lambda.Nt}\Lambda.wt(\psi)
\operatorname{Re}\frac{L'(1,\psi.\chi)}{L(1,\psi.\chi)}.
\]
Every \(L'/L\) term is the **actual source analytic correction**. No value of \(A_\Lambda\) is inferred from Jacobi moments, and any required nonvanishing/regularity premise is an independent analytic obligation, not silently discharged. The original \`An.gChi\` nontrivial branch is used, not its special \(\chi=1\) case.

For every \(x\ge1\), direct expansion of \`Gz\`, \`An.gChi\` and \`Level.Gm\` gives:
\[
\boxed{\Lambda.Gm(x)
=\sum_{1\le n\le \lfloor x\rfloor}
  \Lambda(n)c_\Lambda(n)\left(\frac{x}{n}-1\right)
-x\log x+A_\Lambda x.}\tag{1}
\]
The sum is signed: \(c_\Lambda(n)\) may be negative or zero, and the original complex character phase is projected to its real part **only after its multiplication by the genuine coefficient**.

For any integer \(M\ge x\), define \(b_n=\Lambda(n)c_\Lambda(n)/n\) for \(2\le n\le M\), and \(b_1=0\) since \(\Lambda(1)=0\). Then
\[
\boxed{\Lambda.Gm(x)+x\log x-A_\Lambda x
=\sum_{n=1}^{M}b_n(x-n)_+,\qquad
 (u)_+:=\max(u,0).}\tag{2}
\]
The equality is **exact at integer endpoints**: the newly entering term at \(x=n\) has coefficient \(b_n(x-n)_+=0\). No source sample, sign, gamma correction or prime power has been dropped.

Equation (2) is a finite continuous piecewise-affine expansion. All possible knots are positive integers, and **only genuine prime powers can carry a nonzero knot** because \(\Lambda(n)=0\) otherwise.

## 2. Integer curvature deconvolution — an exact source inverse

For an integer \(k\ge2\), define
\(\Delta^2q(k)=q(k+1)-2q(k)+q(k-1)\).
For each hinge \(h_n(x)=(x-n)_+\), direct integer arithmetic yields
\[
\Delta^2h_n(k)=\begin{cases}1,&n=k,\\0,&n\ne k.\end{cases}
\]
Indeed for \(n<k\) the ramp is affine at all three sample points, for \(n>k\) all three samples vanish, and at \(n=k\) only the first sample at \(k+1\) contributes one.

Apply \(\Delta^2\) to (1) (the \(A_\Lambda x\) term cancels identically):
\[
\boxed{
k\Delta^2\bigl[\Lambda.Gm(x)+x\log x\bigr]_{x=k}
=\Lambda(k)c_\Lambda(k).}\tag{3}
\]

This is a **full source-sign and Euler-factor deconvolution**, not a magnitude-only or spectral-zero proxy. It preserves vanishing Dirichlet-character values at ramified primes. A missing or corrupted prime-power atom is detected locally at its integer index.

For the zeta-only intermediate source,
\[
\boxed{k\Delta^2\bigl[G_z(x)+x\log x\bigr]_{x=k}
=\Lambda(k).}\tag{4}
\]
The classical \(\Lambda(k)>0\iff k=p^h\) (for \(k\ge2\)) turns this into exact prime-power support detection from *three* neighboring integer samples, independent of RH or any zero table.

**Information-loss boundary:** if \(c_\Lambda(k)=0\), the single weighted \`Level.Gm\` signal does not recover \(\Lambda(k)\) by division. Equivalence to prime-power support requires the separate zeta source or a nonvanishing character-family multiplier. The reverse map (3) does not prove an analytic estimate for Gm.

**Hostile cancellation with an actual character:** the nontrivial quadratic Dirichlet character modulo 4 satisfies \(\chi_4(3)=-1\) at the genuine prime 3. For the algebraic family multiplier \(c(n)=1+\chi_4(n)\) (unit positive weight), \(c(3)=0\), although \(\Lambda(3)=\log3>0\). Its combined source curvature at \(k=3\) is therefore zero. This is a legitimate finite *character-phase* counterexample to unconditional recovery from a weighted family statistic. It is not asserted that this one-character choice is realized by every original \`Level\` structure.

**Affine-kernel obstruction:** \(\Delta^2(Ak+B)=0\) for any constants \(A,B\). Even complete exact discrete curvature data cannot recover those integration constants. The original source's \(A_\Lambda\) contains genuine \(L'/L(1,\chi)\) and Euler's constant; it must be independently normalized or certified. A finite prime prefix or a second-difference measurement cannot silently determine the full analytic correction. The zeta-only statistic has a separate explicitly specified normalization.


## 3. Finite continuum observation certificate: no dense-grid extrapolation

For any prescribed finite window \([Y,U]\) with \(1\le Y\le U\le M\), let \(\widetilde\Lambda(n)\) denote source-certified approximate von Mangoldt coefficients, with the **original** character family and \(A_\Lambda\) unchanged. The exact difference is
\[
E(x)=\widetilde G_m(x)-G_m(x)
=\sum_{n=1}^{M}
\frac{(\widetilde\Lambda(n)-\Lambda(n))c_\Lambda(n)}n\,(x-n)_+.
\tag{5}
\]
The adaptive source \`WeilAdaptivePrimeLogObservations\` sets both true and approximate coefficients to zero outside prime powers, so the only nonzero slope jumps of \(E\) are at **prime powers**.

Set
\[
\mathcal K_{Y,U}=\{Y,U\}\cup
\{n:\ Y<n<U,\ n\text{ a prime power}\}.
\]
On each adjacent gap between knots, \(E\) is exactly affine. Consequently its absolute value is convex on that gap and maximized at an endpoint. Therefore
\[
\boxed{
\sup_{x\in[Y,U]}|\widetilde G_m(x)-G_m(x)|
=\max_{z\in\mathcal K_{Y,U}}|E(z)|.}\tag{6}
\]
This is an all-real-x theorem on a **fixed entire finite window**. For a point \(z\), the true logarithm \(\log p\) is enclosed by exact rational dyadic-geometric intervals, and the signed arithmetic readout \(E(z)\) is enclosed by rational interval arithmetic. The largest of these certified interval moduli bounds (6). No dense grid, sampling asymptotic or RH hypothesis is required.

**For different windows the certified prime prefix and precision may change.** This is not a global fixed-precision function and must not be mistaken for Alpöge's \`HasWindows\` supplier.

## 4. Certified continuous inequality for the actual Gm source

The full source is **not** affine between knots because of the \(-x\log x\) term. It has a universal curvature, however. On a gap \((a,b)\) between consecutive active prime-power knots (or any subinterval without an active knot), the arithmetic term is affine, and every \(A_\Lambda x\) term is linear. Hence, without RH,
\[
\boxed{(\Lambda.Gm)''(x)=-1/x.}\tag{7}
\]

For \(0<\theta<1\) set \(F_\theta(x)=\Lambda.Gm(x)-x^\theta\). Then
\[
F_\theta''(x)=-1/x+\theta(1-\theta)x^{\theta-2}
\ge-1/x\ge-1/a,\qquad x\in(a,b),\ a\ge1.
\]

**Theorem (curvature interpolation majorant).** Given real endpoints \(1\le a<b\) with no active prime-power knot inside, let \(t=(x-a)/(b-a)\in[0,1]\). Since \(F_\theta''\ge-1/a\), the function
\(F_\theta(x)+x^2/(2a)\) is convex on \([a,b]\), giving
\[
\begin{aligned}
F_\theta(x)
&\le(1-t)F_\theta(a)+tF_\theta(b)
  +\frac{(x-a)(b-x)}{2a}\\
&\le\max\{F_\theta(a),F_\theta(b)\}
  +\boxed{\frac{(b-a)^2}{8a}}.\tag{8}
\end{aligned}
\]
This is a **rigorous all-real-x upper certificate**. On unit intervals \([k,k+1]\), the curvature allowance is \(1/(8k)\). The same bound is valid on a finer rational grid and the allowance scales quadratically in the mesh size.

**Sharp sign control for the interpolation residual.** Because \(0<\theta<1\), the inequality \(\theta(1-\theta)\le1/4\) and \(x^{\theta-1}\le1\) for \(x\ge1\) imply
\[
-\frac1x\le F_\theta''(x)\le-\frac{3}{4x}.
\]
On \([a,b]\subseteq[1,\infty)\), integrate these two curvature bounds (equivalently use convexity/concavity after adding a quadratic) to obtain the **two-sided** bound:
\[
\boxed{
\frac{3}{8b}(x-a)(b-x)
\le F_\theta(x)-\bigl[(1-t)F_\theta(a)+tF_\theta(b)\bigr]
\le\frac{1}{2a}(x-a)(b-x).
}\tag{8a}
\]
The interpolation excess is **strictly positive** at every interior point, so ordinary endpoint-only checking is inherently insufficient for an upper certificate. An explicit safety allowance or a separate interior critical-point evaluation is necessary. The independent exact rational interval checker now verifies **both** sides of (8a), not just the upper bound, on 720 test configurations with actual prime-power kinks and symbolic rational choices for the missing analytic constant.


If a certified analytic/arithmetical interval evaluation proves
\[
\max\{G_m(a)-a^\theta,\;G_m(b)-b^\theta\}
\le-\frac{(b-a)^2}{8a},
\]
then it **proves** \(G_m(x)\le x^\theta\) throughout \([a,b]\).
Every analytic constant, including \(A_\Lambda\), must be enclosed soundly. The current rational finite checks use explicitly supplied **synthetic rational** \(A\) values to test (8), **not certified values of the original L'/L constants**.

A successful collection of such certificates for arbitrarily late admissible windows, with fixed \(\theta\) and original \`Level.Gm\`, would provide the hypothesis for Alpöge's original \`Level.FormBAt\` and thus a zero-free result. We have **not proved the existence of those all-scale certificates**, nor the original \`EAtH\`/\`CoreAtH\` analytic suppliers. Equation (8) is a new *finite verification reduction*, not a new RH proof.

## 4A. RH-independent arithmetic integer criterion for genuine Alpöge HasWindows

The curvature majorant yields a useful **all-index conditional theorem** that retains the exact original source \`Level.Gm\` and its analytic constants.

**Integer-to-continuum criterion.** Fix an actual \`Level Λ\`, \(0<\theta<1\) and an integer \(N\ge1\). Assume the genuine, correctly normalized signed source satisfies
\[
\boxed{\forall n\in\mathbb N,\ n\ge N:\quad
\Lambda.Gm(n)\le n^\theta-\frac1{4n}.}\tag{8b}
\]
Then
\[
\boxed{\forall x\ge N,\quad\Lambda.Gm(x)\le x^\theta.}\tag{8c}
\]

**Proof:** Given \(x\ge N\), let \(k=\lfloor x\rfloor\ge N\). Its endpoints \(k,k+1\) are **consecutive integers**, hence no active von Mangoldt/character prime-power knot lies in \((k,k+1)\). Applying (8b) at these endpoints gives
\(F_\theta(k)\le-1/(4k)\le-1/(8k)\) and
\(F_\theta(k+1)\le-1/(4(k+1))\le-1/(8k)\), because \(k\ge1\) implies \(2k\ge k+1\). The curvature majorant (8) gives
\(F_\theta(x)\le-1/(8k)+1/(8k)=0\). \(\square\)

For any original Alpöge exponent \(\lambda>1\), (8c) supplies the exact
\(\mathrm{HasWindows}(\{x:\Lambda.Gm(x)\le x^\theta\},\lambda)\)
predicate: choose \(Y\ge\max(y,N,1)\) for each requested lower start y. If the *separately proved intermediate* \(\Lambda.\mathrm{FormBAt}(\lambda)\) hypothesis is available, its original definition then yields \(\Lambda.\mathrm{ZeroFreeAbove}(\theta)\). The original \`EAtH\`/\`CoreAtH\` alternative supplier may instead prove the required integer inequalities.

This is a precise **discrete arithmetic proof obligation**, not a proof that (8b) holds, not an unconditional zero-free region and not a use of Alpöge's final RH result. A finite verification through any bound M does **not** establish the required universal n≥N inequality. The safety margin 1/(4n) is sufficient but not claimed optimal.

A certified observed table can be substituted into (8b) only when every *actual* \(L'/L(1,\chi)\) correction and other analytic constant has a sound enclosure and the observed source error is paid **before** comparing with the original one-sided threshold. This identifies the exact remaining analytic supplier.

## 5. Finite discrete heat with complete boundary return

Let \(q(k)=G_m(k)+k\log k\), and restrict the integer samples to \(k=1,\dots,N\). Let \(L_N\) be the *Dirichlet* second-difference matrix with diagonal -2 and adjacent offdiagonals 1. Its interior curvature is the arithmetic source \(b_k\), but its boundary rows omit the exterior samples.

Write \(s=(q(1),\ldots,q(N))^\mathsf T\),
\(c=(b_1,\ldots,b_N)^\mathsf T\), and let
\[
B=(-q(0),0,\ldots,0,-q(N+1))^\mathsf T.
\]
Use the continuous extension \(q(0)=0\) of the finite smoothed head plus the linear term. The exact source identity is
\[
\boxed{L_Ns=c+B.}\tag{9}
\]
When \(N=1\), the two boundary contributions share a single slot; treat it separately or assume \(N\ge2\).

For \(0<t<1/4\), set \(D_t=I+tL_N\). Matrix algebra gives
\[
\boxed{L_ND_t^m s=D_t^m c+D_t^m B.}\tag{10}
\]
Both the signed coefficients and the **boundary contamination** diffuse. Discarding the last term changes the source.

The nonnegative tridiagonal \(D_t\) has row-sum norm at most one, so forward diffusion is an \(\ell^\infty\) contraction. Since \(\|tL_N\|_\infty\le4t<1\), the Neumann series proves that \(D_t\) is invertible and
\[
\|D_t^{-m}\|_\infty\le(1-4t)^{-m}.
\]
This gives an explicit inverse-diffusion error amplification budget. It neither creates Weil positivity nor asserts that the raw prime-Jacobi operator has the zeta-zero spectrum.

The maintained proof candidates [PrimeJacobiGmDiscreteDiffusion.lean](PrimeJacobiGmDiscreteDiffusion.lean) state exact matrix commutation and boundary-vector transport; **Lean execution NOT_RUN**.

## 6. Reproducible and hostile evidence

Two **independent exact-rational** checkers ran in Python 3 with no zeta-zero input:

- \`verify_prime_jacobi_gm_curvature.py\`: M=110, 39 active prime-power knots, 216 signed second-difference identities, 1,308 exact integer-gap affine identities, 280 exact prime-power-gap continuum identities, and 720 **rigorously enclosed** curvature comparisons for \(\theta=1/2\) and four explicitly supplied rational analytic constants. For the full real window \([33/4,351/4]\), **29 finite knot checks** with rational logarithm intervals certify a uniform signed source-log approximation error \(\le0.00734120707766\) for the tested nontrivial character phases (quadratic mod 4 and real order-four mod 5), weight -1/4 and +1/3. A deliberately deleted \(2^3=8\) atom breaks the predicted local second difference.
- \`verify_gm_discrete_diffusion.py\`: 40 exact rational matrix tests across N=2,3,5,8,13, heat steps t=1/16 or 1/8 and diffusion depths 0,1,3,5. All commutation, forward contraction, inverse recovery and boundary-retaining equalities passed. All 40 tests exhibit the nonzero terminal boundary vector; dropping it is demonstrably false.

These checks validate finite arithmetic and the derived exact enclosures. They are **not** Lean kernel checks and do not verify Alpöge's open original intermediate hypotheses.

## Research completion criteria

1. Prove the generic ramp curvature/affine Lean candidates in a pinned root build and check their exact axioms/kernel; prove the native \`Level.Gm\` equation (1) *in Alpöge's own isolated source pin*, retaining \`Level.Nt\`, \`Level.wt\`, actual conductors and every \(L'/L\) correction.
2. Produce source-bound analytic enclosures for \(A_\Lambda\), which **cannot** be recovered from finite prime-Jacobi moments alone. This is indispensable before using (8) as a certificate for the original Gm rather than a synthetic example.
3. Obtain certified nonpositive curvature-grid inequalities for arbitrarily late windows (or find a hostile counterexample). Only then may the original \`HasWindows\` and \`FormBAt\` corridor consume the evidence.
4. Preserve the source issue's original split between arithmetic reconstruction, analytic \`EAtH/CoreAtH\` estimates, and any genuine RH/GRH conclusion. No Alpöge final result, RH oracle, or zero-indexed spectral substitute is permitted.

**Novelty:** discrete-hinge second differences, Jacobi moment inversion, heat commutation and curvature interpolation are classical mathematical mechanisms. Their explicit integration with genuine signed \`Level.Gm\` coefficients and exact finite-source verification is a new maintained project result; independent global novelty assessment remains outstanding.
