# A single ordinary-prime comparison on fourth powers

Local mathematical exposition and formalization by grwtsk contributors. The geometry and the one-sided window-to-RH implication are from Levent Alpöge's work with Claude.

For $n\ge2$ use the [finite rational product](XiAlpogeOrdinaryPrimeWindows.md#a-smaller-test-using-rounded-integer-exponents)
\[
 E_n=\left[\frac{n+1}{n}\prod_{i=1}^n\frac{ni+1}{ni}\right]^n,\qquad
 V_n=\left[\frac{E_n}{n(n+1)}\right]^{n^2}
       \prod_{p\le n}p^{\lfloor n^2/(p-1)\rfloor-n}.
\]
Only ordinary primes enter. The following single arithmetic assertion suffices for the complete real windows in Alpöge's ordinary-zeta argument:
\[
 \forall L\in\mathbb N\quad\exists k\ge L\quad
 \forall j\in\mathbb N,\quad k^2\le j\le k^3
 \quad\Longrightarrow\quad V_{j^4}\le 2^{3j^4(j^2+1)}.
\]
The exponent and the sample orders are integers. There are $k^3-k^2+1$ comparisons in the entire window $[k^8,k^{12}]$. [Lean statement and implication](XiAlpogeFourthPowerBinary.lean)

## Why fourth powers suffice

The uncentered ramp $U(x)=\sum_m\Lambda(m)(x/m-1)_+$ is convex, as each summand is convex with nonnegative coefficient. For $x\ge a>0$, $x^2/(2a)-x\log x$ is convex since its second derivative is $1/a-1/x\ge0$. The affine terms in $G$ preserve convexity. Applied to $G(x)+x^2/(2a)$, the chord inequality consequently gives
\[
 G(x)\le\max(G(a),G(b))+\frac{(x-a)(b-x)}{2a}
       \le\max(G(a),G(b))+\frac{(b-a)^2}{8a}
       \qquad (0<a\le x\le b).
\]
For successive fourth powers the last error is $O(\sqrt a)$. Inside an integer window the proof clips the neighbors to its boundaries. The resulting endpoints $u\le n\le v$ satisfy $v\le16u$ and $(v-u)^2\le225u\sqrt n$. Any positive exponent allowance above one half absorbs both this error and fixed multiplicative constants. The [secant theorem](XiAlpogeRampSecant.lean), [integer mesh](XiAlpogeFourthPowerMesh.lean), [rounding on selected integers](XiAlpogeSampleProductTransport.lean), and [two-way window theorem](XiAlpogeFourthPowerWindowCriterion.lean) establish this first for fourth powers plus the two endpoints. Choosing the start $k^8$ makes both endpoints fourth powers. The [fixed binary test](XiAlpogeBinaryBudget.lean) implies the previous variable-exponent comparison for every $n\ge64$. The final implication consumes no zeta-zero or window-existence hypothesis other than the displayed arithmetic assertion.

An alternative allows both windows and test orders to be specified with square starts and square samples, with an arbitrary upper bound request on the exponent slack as in the preceding [window theorem](XiAlpogeOrdinaryPrimeWindows.md). For every real $b\ge a\ge1$, summing the von Mangoldt weights gives $|G(b)-G(a)|\le(b-a)((\log b+2)^2+3)$. This permits moving an endpoint in either direction to the nearest square. The rounded product test on the squares in $[K^2,K^3]$, with arbitrarily large $K$ for every exponent above one half as in the precise Lean statement, is equivalent to the original real-window family. [Logarithmic slope](XiAlpogeRampLogSlope.lean) · [Square-only equivalence](XiAlpogeSquareSampling.lean)

## The geometric source before zero exclusion

1.  Let `row` be `UpperTheory.Gal.Int.galoisLocalGlobalStrong_recParameter`. The record of literature inputs has the explicit inhabitant `⟨row, UpperTheory.Zero.LLC.recTExists, row⟩` used in the original `MainConclusion`. Applying `UpperTheory.One.vwin_of_row row` gives `VWin`, hence `VWinAt PChar.one 401`. From the same record take the eigen and theta-local packages, the equality of theta integrals, local matching, the covolume bound and local Langlands input as at the end of `EveryCharacterOfLiteratureOfVWin`. The constructor `nonempty_hyps_definite_side_of_closed_bound` applies to these inputs, with the two-and-three bound `boundAtTwoThree_linked_of_recT`. Its output and Green's character theorem from the eigen package feed `forall_goal_of_shape_of_hyps` with `shape_closed_link_n_of_green`. The output is precisely `UpperTheory.Top.TopG`. This uses the argument that the original `TopPlug` supplies **as an input** to its zero-free theorem. [Row and literature record](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean#L7-L13) · [Arithmetic and geometric packages](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/EveryCharacterOfLiteratureOfVWin.lean#L810-L814) · [Nonempty family and Green inputs](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/SiegelEisensteinSecondTermHypotheses.lean#L44-L75) · [TopG construction and principal host](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/ThetaCorrespondence/ThetaPairLifts/ThirdPlaceSeries/TopPlug.lean#L12-L15)

2.  Let $\psi=\mathtt{PChar.one}$, $\lambda=3/2$. Apply `TopG` to `GChi ψ`, the host from `supplyChi ψ (VWin ψ)`, and `hypV_of_cls ψ λ`. Its `FamilyClassConnected` supplies real constants $e_D,e_L$ and a positive $\varepsilon_1$, and for each $0<\varepsilon<\varepsilon_1$ a family $F$, a proof that $F$ has cofinal power windows of exponent $\lambda$, and the original chain inequalities on those windows above a cutoff. The class also gives the explicit-formula host comparison `eFamC_of_cls`. Applying `level_gm_le_on_family_scales` produces $x_1$ such that on $F$'s windows, for $x\ge x_1$,
\[
   (\mathrm{Level.cyc}\ \psi).\mathrm{Gm}(x)\le x^{1/2+(e_D+e_L+7)\varepsilon}.
\]
Choose $\varepsilon$ by `exists_small_eps` so $(e_D+e_L+7)\varepsilon\le\eta$. This selection only uses $\eta>0$ and $\varepsilon_1>0$. Apply the original `HasWindows.mono` with cutoff $\max(1,x_1)$. Its witness is a complete interval $[Y,Y^{3/2}]$ at an arbitrarily late start. [Connected family and host comparison](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/CharacterBoxes/ZeroFreeAllOfTopG.lean#L12-L36) · [Actual geometric power bound](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/PrimitiveCosets/LevelGmLeOnFamilyScales.lean#L27-L31) · [Window-to-exponent step before the call to Landau](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/TopWin.lean#L62-L81)

3.  In `Level.cyc PChar.one`, each member of the retained set is `PChar.of χ` for a character of modulus one, hence equals `PChar.one` by `DirichletCharacter.level_one` and `PChar.of_one`. The nonprincipal set is the retained set with this character erased. Its sum in `Level.Gm` is empty. This gives the displayed window inequality for the original `Formalism.Gz`, with unit coefficient and no substitute tensor observable. The extraction ends immediately before `FormBAt` would turn the estimate into zero exclusion. [Character terms and retained set](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean#L30-L41) · [Cyclic level and its membership criterion](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean#L103-L124)

The archive and the native files use different Lean and Mathlib versions. The correspondence above was read from the pinned source. The original archive's full [external proof verification](https://math.mit.edu/~drew/grh/) and the kernel replays of the new native window reductions cover their respective developments. A single cross-edition build of the composite was not performed. The analytic implication from the identified window to critical-line zeros is also available as a [separately verified extraction](https://nasqret.github.io/riemann-rev/book/_static/atlas/index.html).

## What Alpöge's theorem proves for the new product

Write $P(n)=\log(V_n)/(n\sqrt n)$ and $H(t)=\psi(t)-\vartheta(t)$, the contribution of higher prime powers. Finite centering and rounding in the [exact score comparison](XiAlpogeOrdinaryPrimeWindows.md) give
\[
 \frac{\log V_n}{n}=G(n)+C(n)-T(n)-D(n)-R(n),\qquad C(n)=n\int_n^\infty\frac{H(t)}{t^2}\,dt.
\]
Here $T(n)=n\sum_{p>n}\log p/[p(p-1)]$, $0\le D(n)\le4$, and $0\le R(n)\le\vartheta(n)/n$. All three terms are nonnegative and $O(1)$ by partial summation and $\vartheta(t)=O(t)$. Each atom of $H$ at $p^h$ contributes $\log p\min(1,n/p^h)$ to $C(n)$. The ordinary prime number theorem gives $H(t)\sim\sqrt t$ and $C(n)=(2+o(1))\sqrt n$.

Use Alpöge's zero exclusion and reflection. With zeros $\rho=1/2+i\tau$, counted with multiplicity and both signs of $\tau$, the smoothed explicit formula is
\[
 G(x)=\log(2\pi)+\sum_\rho\frac{x^\rho}{\rho(1-\rho)}
               -\sum_{h\ge1}\frac{x^{-2h}}{2h(2h+1)},\qquad x>1.
\]
The last summands are the residues at the trivial zeros. Their sign follows from the logarithmic derivative and the factor $1/[s(s-1)]$ in the Mellin transform. The absolutely convergent coefficient sum is $A=2+\gamma_E-\log(4\pi)=0.0461914179\ldots$. Thus $P(n)=2+F(\log n)+o(1)$, where $F(t)=\sum_\rho e^{i\tau t}/(1/4+\tau^2)$ and $|F|\le A$. The archimedean term and the contribution from prime squares are both retained. [Working guide, §I.1, (I.3)–(I.4)](https://math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper_v2.pdf)

For each finite set of frequencies, the orbit $t\mapsto(e^{i\tau t})_\tau$ has compact closure. Finitely many translates of any neighborhood of its identity cover that closure, so return times to that neighborhood have bounded gaps. The absolute coefficient tail tends to zero. Therefore for any $\delta>0$ the times when $F(t)>A-\delta$ have bounded gaps. Uniform continuity and $4\log(j+1)-4\log j\to0$ transfer these near maxima to fourth powers in every sufficiently late log interval whose length tends to infinity. It follows that
\[
 \lim_{k\to\infty}\ \max_{k^2\le j\le k^3}P(j^4)=2+A,\qquad
 \liminf_{n\to\infty}P(n)\ge 2-A.
\]
This determines the upper extreme without assuming independence of zero ordinates. Since $2\log2<2-A$ and $2+A<3\log2$, three is the least positive integer coefficient for which arbitrarily late whole windows can pass. The [Lean threshold comparison](XiAlpogeBinaryBudgetThreshold.lean) converts the corresponding upper or lower bounds to exact rational comparisons. The explicit formula and sharp spectral extreme in this section are paper deductions.

There is also an effective upper bound. Rosser and Schoenfeld proved $H(t)<1.001102\sqrt t+3t^{1/3}$ for $t>0$. Integration gives $C(n)\le2.002204\sqrt n+4.5n^{1/3}$. The negative trivial-zero terms yield $G(n)\le\log(2\pi)+A\sqrt n$. Hence for $n\ge10^{13}$,
\[
 P(n)\le 2.002204+A+4.5n^{-1/6}+\frac{\log(2\pi)}{\sqrt n}<3\log 2 .
\]
For explicit slack, use $A<0.0462$, $\log(2\pi)<2$, $146^6<10^{13}$, and $3{,}000{,}000^2<10^{13}$. The resulting upper bound is less than $2.079227$, while $3\log2>2.0793$. The binary comparison therefore holds for **every integer $n\ge 10^{13}$** and every displayed window with $k\ge43$. This explicit guarantee uses Alpöge's theorem. A proof from GRWTSK arithmetic alone remains open. [Rosser and Schoenfeld, Theorem 6, (5.3)](https://doi.org/10.1090/S0025-5718-1975-0457373-7) · [Independent statement of the estimate, (30)](https://imar.ro/~increst/1992/15_1992.pdf)

## Finite checks without the zero-location result

Direct integer enclosures give a different picture at small orders. Every fourth-power sample in each of these three windows fails at coefficient three and passes at coefficient four.

| $k$ | Orders from $k^8$ through $k^{12}$ | Fourth-power samples | Failures at three | Passes at four |
|---:|---:|---:|---:|---:|
| 2 | 256 through 4,096 | 5 | 5 | 5 |
| 3 | 6,561 through 531,441 | 19 | 19 | 19 |
| 4 | 65,536 through 16,777,216 | 49 | 49 | 49 |

The [integer verifier](../../../scripts/verify_xi_fourth_power_binary.py) sieves the primes and sums intervals directed outward on the scale $2^{64}$. For
\[
 U(n)=\sum_{p\le n}(n/(p-1)-1)\log p+n(1+H_n-\log(n(n+1))),
\]
where $H_n$ is the harmonic number, the rational-centering theorem and the floor losses give $U(n)-3-\vartheta(n)/n\le \log(V_n)/n\le U(n)$. The logarithms use the positive series $2\sum_{j\ge0}u^{2j+1}/(2j+1)$ after range reduction. The geometric remainder bound is checked against one unit of the fixed-point scale at each call. The numerical evidence is confined to the indicated samples. The intervening orders are covered only by the applicable analytic implications.

The full Weil positivity conclusion follows from the complete explicit formula after the arithmetic zero exclusion. A spectral realization obtained by indexing with the resulting critical-line zeros retains that dependence. [Weil form and Hilbert–Pólya realization](XiWeilDampingThreshold.md)
