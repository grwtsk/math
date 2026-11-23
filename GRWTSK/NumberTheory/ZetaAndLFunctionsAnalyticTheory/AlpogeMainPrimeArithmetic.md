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

### Extending the marked sum to all integers

For the source primes the extension in (II.29) has **exactly zero error**.
The fields of `UpperTheory.Top.WinPair` give primes \(q\equiv3\pmod8\),
\(d\equiv7\pmod{16}\), \(q\mid d+1\), and \(p\mid d+1\) for every odd prime
\(p\le Y^{\varepsilon/5}\). The prime-denominator Jacobi symbols in the
source twists are the Legendre characters \(\chi_d(r)=(r/d)\) and
\(\chi_q(r)=(r/q)\). The original `HostFacts.split_inertia` and
`split_frob` concern inertia groups and Frobenius elements in the host
field. The calculation here establishes the integer character weights.
[Original WinPair, lines 27–37](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/CharacterBoxes/ExistsPageN.lean#L27-L37)
· [Original twists](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/CharacterBoxes/PairGood.lean#L9-L10)
· [HostFacts](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean#L47-L59)

The supplement at two gives \((2/d)=1\). For any odd prime \(p\mid d+1\),
quadratic reciprocity and \(d\equiv3\pmod4\) give
\[
 (p/d)=(-1)^{(p-1)/2}(d/p)=(-1)^{(p-1)/2}(-1/p)=1.
\]
Thus \(1-\chi_d(p^h)=0\) for every \(h\ge1\) at \(p=2,q\) and at every
small prime covered by the source condition. For the retained base \(d\),
\(\chi_d(d^h)=0\) and \(\chi_q(d) = (-1/q)=-1\). Its marked multiplier
is exactly \(1+(-1)^h\). Hence its odd powers have zero marked weight
and its positive even powers have marked weight \(2\log d\) before the
common factor \(\delta/2\). Its unmarked coefficient in (1) remains
\(\log d\) in every degree. These facts prove the passage from the sum
over \((r,2q)=1\) to \(S_{q,d}(y)\) for every cutoff and every finite
real smoothing. Only prime powers can contribute, by the support of
\(\Lambda\). No column label needs to be assigned to an omitted integer.
[Explanatory draft v2, §§II.4.1, II.5.3 and III.1](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper_v2.pdf)
· [Lean declarations for the actual symbols and von Mangoldt sum](AlpogeExceptionalPrimePowers.lean)

For a check on the hypotheses, consider arbitrary distinct odd primes
\(q,d\) and the source ramp. Write
\(R_p(y)=\sum_{j\ge0}(y/p^{2j+1}-1)_+\) for \(y\ge0\).
The all-integer marked sum minus its restriction to \((r,2q)=1\) is
exactly
\[
 (1+\chi_q(2))(1-\chi_d(2))\log2\, R_2(y)
   +(1-\chi_d(q))\log q\, R_q(y).
\]
At both bases the even powers vanish since \(\chi_d(p)^2=1\). The
formula follows by multiplying the two character factors on odd powers,
using \(\chi_q(q^h)=0\). In particular the marked term at two already
vanishes when \(\chi_q(2)=-1\), even if the unrestricted coefficient
\(1-\chi_d(2)\) is positive. If \(K\) counts the odd powers of \(p\)
strictly below \(y\), the finite geometric sum gives
\[
 R_p(y)=\frac{yp}{p^2-1}(1-p^{-2K})-K,\qquad
 0\le \frac{yp}{p^2-1}-R_p(y)-K\le\frac{p^2}{p^2-1}.
\]
The last bound uses \(y\le p^{2K+1}\). A lost local factor can therefore
change even the linear centering. For \(q=3,d=7,y=4\) the two source
congruences still hold but \(3\nmid8\). The omitted power \(3\) gives
the exact difference \(2\log(3)/3\). Under the full source hypotheses
both correction coefficients vanish identically.

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

## Averaging the marked-weight replacement before applying Chebyshev's estimate

Fix source indices \(t,j\), put \(a=a_t\), \(y=a/b\), and let \(b>0\).
On every distinguished cell the actual table weight is \(w=b+e\), with
\(0\le e\le\Delta\). The ideal table replaces exactly these weights by
\(b\). For any table expression write its change as its ideal value minus
its actual value. Let \(D\) be the sum over \(t,j\) of the changes in
\(P-M\), averaged over all \(u\). As in (M), \(B=|T|mb\delta/2>0\).
Let \(\overline y=|T|^{-1}\sum_{t\in T}a_t/b\). Then
\[
 -\frac{\Delta}{b}\overline y
 \ \le\ \frac D B\
 \le\ \frac{4\Delta}{b|T|}\sum_{t\in T}\psi(a_t/b)
 \ \le\ 4(\log 4+4)\frac{\Delta}{b}\overline y .
\]

For the proof, the loss in the positive part of the \(r\)-th summand
on a marked cell is exactly
\[
 (a/r-b)_+-(a/r-b-e)_+=\min\{e,(a/r-b)_+\}.
\]
It vanishes for \(r\ge a/b\) and is between zero and \(\Delta\).
For each admissible \(r=p^h\), Theorem A counts precisely \(\delta n\)
marked translates if the row is one and zero otherwise. The prime
coefficient of each marked contribution is the source value
\((1-\chi_d(r))\log p\). It is between zero and \(2\Lambda(r)\), including
the coefficient \(\log d\) at \(p=d\). Set the coefficients to zero at
the omitted \(p=2,q\) and at other integers. Thus for fixed \(t,j\) the
mean change in \(P\) is bounded above by \(2\delta\Delta\psi(y)\).
The individual increments \(e\) may vary with the entire table. The
count only majorizes them by a common bound before summation.

The mean change in \(M\) has the opposite sign in \(D\). In each
translate it is exactly
\(\frac{a}{2n}\sum_{\mathrm{marked}}\log(1+e/b)\). Every summand is
between zero and \(\Delta/b\) and there are exactly \(\delta n\) of
them. The change therefore lies in \([0,a\delta\Delta/(2b)]\).
Summation and division by \(B\) give the first two inequalities.
The last uses the elementary estimate \(\psi(y)\le(\log4+4)y\)
for every \(y\ge0\).
[Mathlib's Chebyshev bound at the pinned revision](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/Chebyshev.lean#L444-L461)

A second calculation retains the moving cutoff. The loss for one atom
is \(\int_0^e\mathbf1_{\{r<a/(b+s)\}}\,ds\). Extend the upper
integration limit to \(\Delta\), count translates at each \(s\), and
sum the finitely many eligible prime powers. For fixed \(t,j\) the
mean prime-part loss is at most
\[
  2\delta\!\int_0^\Delta \psi(a/(b+s))\,ds
  \le 2\delta(\log4+4)a\log(1+\Delta/b).
\]
The exact logarithmic center above also admits
\(a\delta\log(1+\Delta/b)/2\) as an upper bound. Thus the outer
two-sided linear bounds remain valid with every \(\Delta/b\) in
those bounds replaced by \(\log(1+\Delta/b)\). This integral argument
also applies when the allowed weight increments are large.

For the actual parameter bounds \(\Delta\le Cb/(nx^2)\),
\(|a_t/b-x|\le1\), and \(x\ge1\), the displayed result gives
\(|D|/B\le 8(\log4+4)C/(nx)\). Version 2 of the explanatory draft,
Part II §5.4, bounds each marked cell separately before summing and
obtains \(O(1/x)\) for this portion of the error. The extra factor
\(1/n\) here comes from retaining the translate count for each
prime power. This improves only the replacement term. The shift
from \(a_t/b\) to \(x\), the nondistinguished cells, and the first
inequality in (M) require their own estimates.
[Working draft, 22 November 2026, Part II §§5.3–5.4](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper_v2.pdf)

For a check on the sign, take \(0<a/b<2\) and strictly positive
increments on the marked cells. The prime-part change vanishes
whereas the logarithmic center increases upon replacing the weights
by \(b\), giving \(D<0\). This example tests the abstract bound at
small scales. The source's large-window hypotheses enter the
stated \(O(1/(nx))\) consequence.

For an exact finite check, let \(q=3,d=23\), \(H=(\mathbb Z/16)^\times/\{\pm1\}\)
with least positive representatives \(1,3,5,7\), and \(T_2=\{1,3\}\).
Take \(a=1000,b=10,\Delta=1/5\). On the marked pairs set
\(e(u,r)=((u+r)\bmod5)/20\). This is a test of the atom-by-atom
prime loss allowing a varying increment. For example, at \(u=5\) the
primes \(37,43\) both have row one and column \([5]\), but their
increments are respectively \(1/10\) and \(3/20\). The example therefore
supplies no common cell table for computing the logarithmic center.
For each odd prime power
\(r=p^h<100\) with \(p\ne3\) and \(r\equiv1\pmod3\), select the
translates \([r]\in uT_2\). Compute the coefficient of \(\log p\) by
averaging \((1-\chi_{23}(r))\min(e(u,r),1000/r-10)\) over the four
\(u\), taking zero on unmarked pairs. After discarding zero character
weights there are sixteen marked pairs, eleven with positive loss. The
resulting prime-part change is
\[
 \frac{4\log7+2\log19+6\log37+3\log43+6\log61+
             3\log67+4\log79+5\log97}{40}.
\]
Replacing all eight logarithms by one gives \(33/40\). Enumerating
prime powers first and enumerating residue cells first yield the same
eight rational coefficients.

The accompanying Lean module proves the positive-part identity, the exact
finite-group translate count, and the summed prime-part bounds with the
actual von Mangoldt function and Chebyshev's explicit constant. Its
coefficient hypotheses allow the original quadratic character weights.
The logarithmic centering, final division by B, and construction of the
source tables remain outside those declarations. External mathematical
review of this refinement is `NOT_RUN`.
[Lean declarations](AlpogeMarkedWeightReplacement.lean)
