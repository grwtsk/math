# The actual Alpöge (M) prime-cell readout and an independently derived error ledger

**Attribution:** grwtsk contributors. **Local base:** grwtsk/math main \`640fdc42f09d2084099b3b93dfbc6a15a0e46885\`, root Lean \`v4.34.1\`, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. **Source candidates:** [AlpogeMainPrimeArithmetic.lean](AlpogeMainPrimeArithmetic.lean) and [../../../scripts/verify_alpoge_main_source.py](../../../scripts/verify_alpoge_main_source.py). **Consumers:** [math #1850](https://github.com/grwtsk/math/issues/1850), [math #1828](https://github.com/grwtsk/math/issues/1828), [math #124](https://github.com/grwtsk/math/issues/124). **Mathematical disposition:** an unconditional prime-cell translation/counting identity and rational error **normalization only**; (M), an independent zero-free result, and the Hilbert–Pólya determinant from a source-independent self-adjoint operator are all **OPEN**. Lean elaboration, fresh kernel, axiom audit and independent paper review are **NOT_RUN**.

**Original primary source consulted for direction only:** Levent Alpöge, [*A remark*](https://alpo.ge/remark.pdf), 20 November 2026, p. 1 and original formal source archived in [leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005), Lean 4.33.1 / incompatible Mathlib. Inspected exact theorem and source paths:
- \`src/Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean\` blob \`18deb7cb85d6f650a69f01fda6e0c789b9f04d89\`: \`ArithData\`, \`HostFacts\`, \`primVal\`, \`ASK\`, \`MAIN\`, \`De\`, \`AskMainBalance\`.
- \`src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/ChTop.lean\` blob \`ce06a34a9e0b1b332e10d3b7efb04a06e9ab77f5\`: \`ch_top\` needs \`IdentU\`, \`SizeData₂\`, \`ErrWindows\`, \`BNBoundsU\`, \`LargeX\`.
- \`src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreAtH.lean\` blob \`0ba3621036f19146e7e67fa9c0e8a1c38661a097\`: exact existential package and \`HostAddCharCompatible\`.
- \`src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean\` blob \`3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d\`: the bound \`Level.Gm x ≤ x^(1/2+(eD+eL+7)*eps)\` is conditional on \`EAtH\` and \`CoreAtH\`.
- \`src/Formalism/SharpRestriction/GrowthBounds/CoarseMultiplicity/KeyMinorDvd.lean\` blob \`8ee2f1276f7f14e4737c70cce11f894a3ab8c348\`: genuine local divisibility hypotheses, including Frobenius congruences and inverse minor matrices.
No \`riemannHypothesis\`, \`rhOfAll\`, \`everyCharacter\`, RH-equivalent sign, or undeclared \`(M)\` premise is imported here.

**Exact mathematical exposition:** Claude Fable 5.2, Codex Astra 6.2 and Gemini Carbon, under the direction of Michael O. Rubinstein, [*The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf), working draft 21 November 2026, Sections II.4–II.6, especially (4.1), (4.2), (M), (II.15), (II.16), (5.1)–(5.5) and Part III pp. 54–55. This draft **explicitly quotes the main inequality (M) from the Lean archive**. The unnormalized error (II.15) is explicitly identified there as a **parallel formulation, not a proved member of the final kernel dependency graph in that exact form**. The calculation below is therefore an algebraic reconstruction, not a formal proof of (M).

## The exact main inequality and its source types

For auxiliary primes q,d, cell index \(i=(v,s)\) with v in {0,1} and s in the finite abelian group \(H\) of size \(n\), and a *positive* weight \(w_i\), the genuine prime-power contribution for odd prime-power \(r=p^h\) with p different from 2,q is
\[
c(r)\,(a/r-w_i)_+,\qquad c(p^h)=(1-\chi_d(p^h))\log p.
\]
The cell is assigned by the two source labels \(v(r)=(1+\chi_q(r))/2\) and \(t[r]\in H\). The finite original signed sum is
\[
P_{u,t,j}=\sum_{r=p^h} c(r)\,(a_t/r-w_{u,t,j}(v(r),t[r]))_+.
\tag{1}
\]
The sum is finite **only after the lower weight bound and the appropriate weight-dependent cutoff are fixed**. Neither \(\chi_d\) nor \(\chi_q\) is replaced with its absolute value. For p=d the character is 0 and the coefficient is \(\log d\), not \(2\log d\); p=2 or p=q is excluded as in the source.

The exact main term of the same cell data is
\[
M_{u,t,j}=a_t\left(\log a_t-1-\gamma_E+c_{\chi_d}
-\frac1{2n}\sum_{v,s}\log w_{u,t,j}(v,s)\right),
\quad c_{\chi_d}=(L'/L)(1,\chi_d)\text{ with source convention}.
\tag{2}
\]
The sign and normalization of the logarithmic derivative must be inherited from the source, not guessed from a differently centered \(L\)-function.

The original target is
\[
\frac1n\sum_{u\in H}\sum_{t\in T}\sum_{j=1}^m(P_{u,t,j}-M_{u,t,j})
\le\mathcal E,\qquad
\frac{\mathcal E}{B}\le x^{C\varepsilon}
\left(\frac{x}{m}+\frac{xm}{k}+m+\frac{k}{n^2}\right),
\quad B=\frac{|T|mb\delta}{2}.
\tag{M}
\]
**The first inequality in (M) is NOT proved in this file.** It requires integrality and valuations of the actual theta kernels in height-two formal-group coordinates, global glue/lattice discriminant and local covolume comparisons, trace and rank estimates, Galois-cohomology denominator control, and the construction and weighted averaging of the actual maps with \(\mathrm{IdentU}\), \(\mathrm{SizeData₂}\), \(\mathrm{ErrWindows}\) and related hypotheses. The arithmetic date and exact source locations above are intended to keep that premise visible rather than relabel it as a definition.

## Theorem A: exact finite translation of the signed prime selector

Let \(H\) be any finite abelian group, \(n=|H|\), and \(T_2\subset H\) with \(|T_2|=n\delta\). For a fixed column \(s\in H\), the map \(z\mapsto s-z\) is a bijection \(T_2\to\{u:s\in u+T_2\}\). Therefore
\[
\frac1n\sum_{u\in H}\mathbf1_{\{v(r)=1,\;s\in u+T_2\}}
=\delta\,\mathbf1_{\{\chi_q(r)=1\}}
=\frac{\delta}{2}(1+\chi_q(r)).
\tag{3}
\]
For every coprime prime-power \(r\), multiplication by the genuine signed \((1-\chi_d(r))\Lambda(r)\) gives
\[
(1+\chi_q)(1-\chi_d)=1+\chi_q-\chi_d-\chi_q\chi_d.
\tag{4}
\]
Thus the finite average retains all **four** actual centered sums, with the signs \(+,+,-,-\), not a positive Gram surrogate. Exceptional terms p=d and omitted p=2,q are handled separately from the group identity. No analytic prime distribution estimate is used in (3)–(4).

## Theorem B: exact arithmetic cell centering (source (5.3))

Write \(\mu=1/(2n)\), and suppose the original progression-smooth sums have the explicit expansion
\[
S_i(y)=\mu y\log y+C_i y+R_i(y),
\qquad \sum_iC_i=-1-\gamma_E+c_{\chi_d}.
\tag{5}
\]
For **fixed** auxiliary moduli, the prime number theorem in arithmetic progressions gives (5) with \(R_i(y)=o(y)\); it does **not** supply a uniform bound for moduli varying with x. For \(a>0,w_i>0\),
\[
\begin{aligned}
\sum_i w_i S_i(a/w_i)
&=\mu a\sum_i \log(a/w_i)+a\sum_i C_i+\sum_i w_iR_i(a/w_i)\\
&=a\left(\log a-1-\gamma_E+c_{\chi_d}
-\frac1{2n}\sum_i\log w_i\right)
+\sum_i w_iR_i(a/w_i).
\end{aligned}
\tag{6}
\]
There are exactly \(2n\) cells, so the coefficient of \(a\log a\) is 1. Equation (6) proves the **identity**
\[
\boxed{P_{u,t,j}-M_{u,t,j}=\sum_iw_iR_i(a_t/w_i)}
\tag{7}
\]
whenever the original cell assignments and the exact coefficient expansion are used. No RH, sign assumption, or theta-lift estimate enters this elementary equality. To use (7) uniformly in x still requires original Estimate C, including its varying moduli and character corrections.

## Theorem C: exact unnormalized error normalization

The 21 November draft's parallel unnormalized source (II.15) is
\[
\mathcal E\le x^{C\varepsilon}\left[
h a_E\left(1+\frac{m^2}{k}\right)+
m\left(2nmbx^\varepsilon+
\frac{h_2kb x^\varepsilon}{n(nx^{-\varepsilon})}\right)\right],
\quad h=|T|,\ h_2=n\delta,\ 0\le a_E\le2xb.
\tag{8}
\]
Let \(u=x^\varepsilon>0\), so \(x^{-\varepsilon}=u^{-1}\), and \(B=hmb\delta/2>0\). Using the **exact original nested denominator**, no dropped n factors,
\[
\begin{aligned}
&\frac{h a_E(1+m^2/k)+m(2nmbu+(n\delta)kbu/[n(n/u)])}{B}\\
&\qquad =
\frac{2a_E}{mb\delta}\left(1+\frac{m^2}{k}\right)
+\frac{4nmu}{h\delta}+\frac{2ku^2}{hn}.
\end{aligned}
\tag{9}
\]
These rational identities are supplied in the adjacent Lean source and tested using 64 **exact Fraction arithmetic** parameter assignments in the executable checker.

With \(a_E\le2xb,\delta\ge x^{-\varepsilon},h/n\ge x^{-\varepsilon/8}/2\), \(x\ge1\), and positive h,n,m,k,b,delta, bound the terms successively:
\[
\frac{2a_E}{mb\delta}(1+m^2/k)
\le \frac4\delta\left(\frac xm+\frac{xm}k\right)
\le4x^\varepsilon\left(\frac xm+\frac{xm}k\right),
\]
\[
\frac{4nmu}{h\delta}\le 8m x^{17\varepsilon/8},
\qquad
\frac{2ku^2}{hn}
\le4\frac{k}{n^2}x^{17\varepsilon/8}.
\]
As \(x^{17\varepsilon/8}\ge x^\varepsilon\), one obtains the fully quantified consequence **of (8)**:
\[
\boxed{
\frac{\mathcal E}{B}\le
8x^{(C+17/8)\varepsilon}
\left(\frac xm+\frac{xm}k+m+\frac{k}{n^2}\right).
}
\tag{10}
\]
No attempt is made to prove (8) using this identity; the source's actual kernel theorem depends on \(\mathrm{CoreAtH}\) and \(\mathrm{EAtH}\) data that are still missing in an independent rederivation.

## Verified original prime-power example and a hostile cutoff

The independent Python 3 checker [verify_alpoge_main_source.py](../../../scripts/verify_alpoge_main_source.py) contains **no external mathematical libraries** and uses the source's actual finite data \(q=3,d=23,N=16,\ H=(\mathbb Z/16)^\times/\{\pm1\},\ T_2=T=\{[1]\},a=10000,b=10\), one distinguished cell per translate, all other weights \(w=1/20\). Its output, checked against Rubinstein's II.20, is:

| Translate | Direct finite signed prime-power sum |
|---|---:|
| [1] | 95461.615595417 |
| [3] | 95812.671765768 |
| [5] | 95315.209017191 |
| [7] | 95239.810565570 |

The independently evaluated center is \(95444.463617721\) using the source's rounded \(c_{\chi_{23}}=-0.422120948038\) and standard \(\gamma_E\), giving mean excess \(12.863118265\). These are numerical regression checks, not rigorous bounds on \(\zeta\) or (M). The checker verifies (3) on all 16 subsets \(T_2\subset H\), independently groups the prime atoms by cell as in (7), and checks 64 exact-rational versions of (9).

**A necessary hypothesis of the inert-prime truncation is \(w\ge1\).** If \(r>a\) and \(w\ge1\), then \((a/r-w)_+=0\). But with the source example's non-distinguished weight \(w=1/20\), the genuine prime powers \(5^7=78125\) and \(11^5=161051\) still contribute at \(a=10000\), and both have \(p^{h-1}>a\); a substitute finite \(V\) with cutoff \(p^{h-1}\le a\) loses their contributions. The precise missing sum is \(0.3090636481285\), matching Rubinstein's §III.6 Lemma L6 warning. This **falsifies an unqualified \(V_\infty=V\) assertion**, but does not contradict Alpöge's source, which uses appropriate weight hypotheses.

## Remaining independent Hilbert–Pólya gates

1. **Original theta-lift integrality and local valuations.** Prove for the actual kernels (not a formal-polynomial toy model) the height-two local-coordinate integrality, Frobenius-compatible minor divisibility, full higher-orbit duality, and the global placewise lift. Existing \`KeyMinorDvd.lean\` gives an arithmetic ring lemma **under explicit congruence hypotheses**; it does not establish those hypotheses for all original theta kernels.
2. **Arithmetic norms and periods.** Independently supply the inner-product formula, local Euler factors, Chowla–Selberg period normalization, lattice covolumes, source indexes, and all eleven size inputs. Preserve the linear-in-a terms, not only the leading \(a\log a\).
3. **Trace, rank, and Galois control.** Prove the genuine relative trace estimates, independence/rank conditions, and Tate–Shafarevich/Galois denominators with uniform conductor and scale dependence.
4. **Maps, weights, error and full averaging.** Build the genuine \`IdentU\`, \`SizeData₂\`, \`ErrWindows\`, \`BNBoundsU\`, \`SizesA\`, \`ThinScales\`, \`CostWindows\`, \`RestSize\` and \`EAtH\` suppliers; derive (8) or a valid source-dependent alternative; then actually prove the **first** inequality of (M) at every required large scale.
5. **Original zero-freeness and positive determinant.** Only after the real source one-sided window bound yields \(RH\) independently can the original-Xi Newton moment positivity in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) be admitted. That document gives a **conditional** coefficient-defined positive operator with exact multiplicities, but not the missing independently proved positivity.

**Verification and epistemic status:** Algebraic source identities (3),(4),(6),(7),(9),(10) are classical/elementary consequences under their stated premises. The finite example and its weight-cutoff control were run independently; these checks cannot supply theta arithmetic or an RH proof. The new Lean statements are **SOURCE_PROOF_CANDIDATES**, with elaboration/kernel/axiom checks **NOT_RUN** in the current environment. Independent mathematical review is also **NOT_RUN**. External original RH/GRH theorems are **direction only**.
