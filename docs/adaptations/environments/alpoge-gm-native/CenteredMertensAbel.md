# Original Level.Gm: weighted Chebyshev–Mertens Abel return and arithmetic-progression suppliers

**Mathematical consumer:** [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850), [RH/GRH AND–OR blueprint #1828](https://github.com/grwtsk/math/issues/1828), signed source [#1819](https://github.com/grwtsk/math/issues/1819), and prime-only arithmetic return [#1849](https://github.com/grwtsk/math/issues/1849).

**Pinned original Lean context (READ ONLY):** tamnd/riemann-lean at af705e0d9a5904326eb0693310e36d9484df7f8f; original Lean v4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. Source objects: Formalism.StatementOC.Gz (blob 12ab19c0176bd4135c2b23a7ee3ac22888df0122), Formalism.HC.An.gChi and An.logDerivativeAtOne in Analytic.lean (599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1), original Level.Nt/Level.wt/Level.Gm and Level.ofSub in ExplicitFormulaErrorOfHostConditions.lean (ed60b4b997cd4703713660b185b9e43fd95559a1). Native source normalization in [Normalization.md](Normalization.md) and the original character phase in [CyclicPhase.md](CyclicPhase.md). The new [CenteredMertensAbel.lean](CenteredMertensAbel.lean) provides three finite source-specific Lean proof candidates without importing Main, FinalTheorems, the final RH result, or Weil positivity. **Lean elaboration, transitive axiom audit, independent fresh kernel replay: NOT_RUN.**

**Classical external suppliers and their precise limits:** The fixed-modulus prime number theorem in arithmetic progressions, including a bound of shape \(O_M(x\exp(-c_M\sqrt{\log x}))\), is classical; see Kiran Kedlaya, [Chapter 10](https://kskedlaya.org/ant/chap-errorbounds2.html) and [Chapter 11](https://kskedlaya.org/ant/chapter-11.html), and the [ETH analytic number theory notes](https://metaphor.ethz.ch/x/2018/hs/401-3100-68L/IANTnotes2018.pdf), Theorem 11.2. This theorem is an **external established analytic fact**, not a currently imported or verified Mathlib theorem in the new source. Stronger fixed power-saving errors \(O(x^\beta)\) for \(\beta<1\) are **not** inferred from the classical zero-free region. The finite-group orthogonality and Abel summation below are standard methods; worldwide novelty is NOT claimed for them.

## A. Source definitions and exact finite partial summation

Fix an original Level \(\mathcal L\) and define its **literal** real signed arithmetic coefficient
\[
a_{\mathcal L}(n)=\Lambda(n)c_{\mathcal L}(n),\qquad
c_{\mathcal L}(n)=1+\sum_{\psi\in\mathcal L.Nt}
\mathcal L.wt(\psi)\,\Re(\psi.\chi(n)).
\]
The complete native analytic constant is
\[
A_{\mathcal L}=1+\gamma_E+
\sum_{\psi\in\mathcal L.Nt}\mathcal L.wt(\psi)
 \Re\frac{L'(1,\psi.\chi)}{L(1,\psi.\chi)}.
\]
Do not replace these real parts with synthetic signs, or drop any nontrivial original conductor or L'/L term.

For integer \(N\ge0\) put
\[
U_{\mathcal L}(N)=\sum_{1\le n\le N}a_{\mathcal L}(n),
\qquad
B_{\mathcal L}(N)=\sum_{1\le n\le N}\frac{a_{\mathcal L}(n)}n.
\]
The **exact finite Abel identities** are
\[
\boxed{B_{\mathcal L}(N)=
\frac{U_{\mathcal L}(N)}{N}
+\sum_{k=1}^{N-1}\frac{U_{\mathcal L}(k)}{k(k+1)}
\quad(N\ge1),}\tag{A1}
\]
and its inverse
\[
\boxed{U_{\mathcal L}(N)=N B_{\mathcal L}(N)
-\sum_{k=1}^{N-1}B_{\mathcal L}(k)\quad(N\ge1).}\tag{A2}
\]
Proof: \(a_n=U(n)-U(n-1)\) and
\(a_n/n=B(n)-B(n-1)\); apply a finite telescoping sum.
The Lean module imports the existing native CenteredSlope.weightedMertens, preserving its Finset.Icc 1 N indexing and genuine analytic normalization. It defines only the matching weighted Chebyshev prefix, then states (A2) for every N including zero; Finset.range N appears solely in the accumulated Mertens inverse. Its proof is ordinary finite algebra, independent of RH. No duplicate Mertens interface is maintained.

For real \(x\ge1\), define the actual weighted Chebyshev function
\[
\Psi_{\mathcal L}(x)=\sum_{n\le x}a_{\mathcal L}(n),
\quad R_{\mathcal L}(x)=\Psi_{\mathcal L}(x)-x,
\quad B_{\mathcal L}(x)=\sum_{n\le x}a_{\mathcal L}(n)/n,
\]
and the original centered weighted Mertens sum
\[
E_{\mathcal L}(x)=B_{\mathcal L}(x)-\log x+A_{\mathcal L}-1.
\]
Stieltjes partial summation gives, **exactly for every real x≥1**,
\[
B_{\mathcal L}(x)=\frac{\Psi_{\mathcal L}(x)}x+
 \int_1^x\frac{\Psi_{\mathcal L}(t)}{t^2}\,dt
=\log x+1+\frac{R_{\mathcal L}(x)}x+
 \int_1^x\frac{R_{\mathcal L}(t)}{t^2}\,dt,
\]
hence
\[
\boxed{E_{\mathcal L}(x)=
 A_{\mathcal L}+\frac{R_{\mathcal L}(x)}x+
 \int_1^x\frac{R_{\mathcal L}(t)}{t^2}\,dt.}\tag{A3}
\]
Unlike an infinite-tail formula, (A3) requires **no PNT**; it is a finite integration-by-parts identity. The discontinuities of the Chebyshev step function are handled by the original right-continuous source definition.

## B. Exact two-symbol arithmetic-progression source for Level.ofSub

Let \(M\ge1\) and \(\Xi\le\widehat{(\mathbb Z/M\mathbb Z)^\times}\) be the actual finite subgroup used in \(\mathcal L=\mathrm{Level.ofSub}(\Xi)\), of order \(o\). Let \(G=(\mathbb Z/M\mathbb Z)^\times\), and let
\[
H=\{a\in G:\chi(a)=1\text{ for EVERY }\chi\in\Xi\}
\]
be the annihilator of the original character subgroup. Standard finite abelian duality gives \(|H|=\varphi(M)/o\).

On units, original primitive PChar.of characters agree with their induced source character values, and subgroup orthogonality proves the previously established **mathematical** binary identity:
\[
c_{\mathcal L}(n)=\frac{3o}{3o+1}
+\frac{o}{3o+1}\mathbf1_{n\bmod M\in H},
\qquad \gcd(n,M)=1.
\]
For nonunit prime powers \(n=p^j\), their prime p divides M; the source c(n) must be evaluated using the **original primitive characters**, not an incorrectly extrapolated unit-residue formula.

Define the completely original arithmetic-progression Chebyshev sums
\[
\Psi_{\rm units}(x)=\sum_{\substack{n\le x\\(n,M)=1}}\Lambda(n),\quad
\Psi_H(x)=\sum_{\substack{n\le x\\n\bmod M\in H}}\Lambda(n),
\]
and the retained ramified source
\[
T_{\rm ram}(x)=
\sum_{p\mid M}\sum_{\substack{j\ge1\\p^j\le x}}
 \log(p)\,c_{\mathcal L}(p^j).
\]
Then the **exact all-x decomposition** is
\[
\boxed{
\Psi_{\mathcal L}(x)=
\frac{3o}{3o+1}\Psi_{\rm units}(x)
+\frac{o}{3o+1}\Psi_H(x)+T_{\rm ram}(x).
}\tag{B1}
\]
Because the original nonexceptional Level has \(2/3<c_{\mathcal L}(n)<4/3\), the nonunit part satisfies, for \(x\ge1\),
\[
\boxed{0\le T_{\rm ram}(x)
\le\frac43\,\omega(M)\log x.}\tag{B2}
\]
Indeed at each fixed p dividing M, the number of p-powers not exceeding x, multiplied by log p, is at most log x. This bound is uniform in the original cyclic subgroup and retains the exact conductor behavior.

Let \(\psi(x;M,a)=\sum_{n\le x,\ n\equiv a\bmod M}\Lambda(n)\). Since \(|H|=\varphi(M)/o\), the exact centered arithmetic error is
\[
\boxed{
R_{\mathcal L}(x)=
\frac{3o}{3o+1}
 \sum_{a\in G}\left(\psi(x;M,a)-\frac{x}{\varphi(M)}\right)
+\frac{o}{3o+1}
 \sum_{a\in H}\left(\psi(x;M,a)-\frac{x}{\varphi(M)}\right)
+T_{\rm ram}(x).
}\tag{B3}
\]

The term x cancels *exactly*: \(3o/(3o+1)+[o/(3o+1)]/o=1\). This is a source-specific return to genuine ordinary progressions, not a signless surrogate or a neural spectral estimate.

### Exact quantitative transfer with no subgroup-order loss

If for every reduced residue class a and every real \(x\ge X\),
\[
\left|\psi(x;M,a)-\frac{x}{\varphi(M)}\right|\le K f(x),
\]
then (B3) gives the **sharp shared-class coefficient**:
\[
\boxed{
|R_{\mathcal L}(x)|\le \varphi(M)K f(x)
+\frac43\omega(M)\log x,\quad x\ge X.
}\tag{B4}
\]
Both sums are over genuine residue classes. The coefficient \(\varphi(M)\), independent of o, comes from
\(3o\varphi(M)+o|H|=(3o+1)\varphi(M)\). These explicit constants are the genuine upstream arithmetic-supplier interface.

For M=4, the unit phases are 6/7 and 8/7; for M=5 they are 12/13 and 16/13; for the full order-8 character subgroup modulo 15 they are 24/25 and 32/25. **Do not** apply the unit two-symbol formula to n=15; there the actual primitive-phase value is 1 and belongs in \(T_{\rm ram}\).

## C. Exact analytic centering constant and infinite Chebyshev tail

The fixed-modulus prime number theorem in arithmetic progressions gives constants \(K,c,X>0\) for each **fixed** M and finite Xi such that
\[
|R_{\mathcal L}(x)|\le Kx\,e^{-c\sqrt{\log x}}
\quad(x\ge X).
\tag{C0}
\]
This follows from (B4), Siegel–Walfisz and the elementary O(log x) ramified term. The constants may depend on M and be ineffective; they are **not** rational numerical certificates computed by the script. The fixed-modulus theorem is classical and does **not** use Alpöge's final RH result.

For real \(s>1\), define the real Dirichlet series
\[
D_{\mathcal L}(s)
=\sum_{n\ge1}\frac{\Lambda(n)c_{\mathcal L}(n)}{n^s}
=-\frac{\zeta'(s)}{\zeta(s)}
-\sum_{\psi\in\mathcal L.Nt}
 \mathcal L.wt(\psi)\Re\frac{L'(s,\psi.\chi)}{L(s,\psi.\chi)}.
\]
Its equality holds initially for s>1 by the original Euler products and complete finite character family; do not analytically extend the real-part operation to a complex-holomorphic identity. Mellin partial summation gives
\[
D_{\mathcal L}(s)
=s\int_1^\infty \Psi_{\mathcal L}(t)t^{-s-1}\,dt
=\frac{s}{s-1}
+s\int_1^\infty R_{\mathcal L}(t)t^{-s-1}\,dt.
\]
By (C0), \(R_{\mathcal L}(t)/t^2\) is absolutely integrable at infinity, so dominated convergence applies when \(s\downarrow1\).
The Laurent expansion
\(-\zeta'/\zeta(s)=(s-1)^{-1}-\gamma_E+o(1)\),
nonprincipal L(1,χ)≠0, and continuity of L'/L there give
\[
\lim_{s\downarrow1}
\left[D_{\mathcal L}(s)-\frac{s}{s-1}\right]
=-1-\gamma_E-\sum_{\psi\in\mathcal L.Nt}
 \mathcal L.wt(\psi)\Re\frac{L'(1,\psi.\chi)}{L(1,\psi.\chi)}
=-A_{\mathcal L}.
\]
Thus the **authentic analytic normalization** is
\[
\boxed{A_{\mathcal L}=-\int_1^\infty
 \frac{R_{\mathcal L}(t)}{t^2}\,dt.}\tag{C1}
\]
Substituting this fact into (A3) yields the exact signed tail formula
\[
\boxed{
E_{\mathcal L}(x)=\frac{R_{\mathcal L}(x)}x-
\int_x^\infty\frac{R_{\mathcal L}(t)}{t^2}\,dt,
\qquad x\ge1.
}\tag{C2}
\]
This is **not** an Alpöge final-result dependency. It does require the classical fixed-modulus PNT in AP and the genuine Dirichlet logarithmic-derivative series at s=1. These analytic steps remain **NOT_RUN in Lean**, even though they are classical mathematical implications.

## D. Unconditional, eventually quantified ONE-SIDED Mertens bound

For each fixed original subgroup Level, choose K,c,X from (C0). Equation (C2) gives, for all real \(x\ge\max(e,X)\),
\[
\begin{aligned}
|E_{\mathcal L}(x)|
&\le K e^{-c\sqrt{\log x}}+
 K\int_x^\infty\frac{e^{-c\sqrt{\log t}}}{t}\,dt\\
&=K e^{-c\sqrt{\log x}}
 \left(1+\frac{2\sqrt{\log x}}c+\frac2{c^2}\right).
\end{aligned}
\]
The integral is elementary: substitute \(u=\sqrt{\log t}\), so \(dt/t=2u\,du\) and integrate the exponential exactly. Hence
\[
\boxed{\exists K,c,X>0\ \forall x\ge X:\quad
E_{\mathcal L}(x)\le
K e^{-c\sqrt{\log x}}
\left(1+\frac{2\sqrt{\log x}}c+\frac2{c^2}\right).}
\tag{D1}
\]
The same expression bounds \(-E_{\mathcal L}(x)\) as well. This is an **unconditional eventually quantified, original-source one-sided Mertens estimate** using genuine arithmetic and classical PNT in AP, independent of Alpöge's final RH theorem.

For any fixed A>0, this implies \(|E_{\mathcal L}(x)|=O_{\mathcal L,A}((\log x)^{-A})\) eventually. It does **not** imply the desired \(E_{\mathcal L}(x)\le Cx^{\theta-1}\) for any fixed θ<1 by this comparison alone: for L=log x,
\[
x^{1-\theta}e^{-c\sqrt{\log x}}
=e^{(1-\theta)L-c\sqrt L}\to\infty.
\]
This is a mathematical limitation of the **known bound**, not a claim that the actual centered E violates the hoped-for power saving.

## E. Sharp conditional AP-power supplier into original Gm

If an independent theorem upgrades the genuine reduced-class error to
\[
\forall x\ge X,\ \forall a\in G,\quad
\left|\psi(x;M,a)-\frac{x}{\varphi(M)}\right|\le K x^\beta,
\quad 0<\beta<1,
\tag{E0}
\]
then the SAME arithmetic decomposition and tail formula give, for all sufficiently large x,
\[
\boxed{
|E_{\mathcal L}(x)|\le
\varphi(M)K\frac{2-\beta}{1-\beta}\,x^{\beta-1}
+\frac{4\omega(M)}3\,\frac{2\log x+1}{x}.
}\tag{E1}
\]
Proof: insert (B4) with f(x)=x^β into (C2) and integrate the two terms:
\(\int_x^\infty t^{\beta-2}\,dt=x^{\beta-1}/(1-\beta)\) and
\(\int_x^\infty (\log t)/t^2\,dt=(\log x+1)/x\).

For any β<θ<1 and any fixed η∈(0,θ), the right side of (E1) is at most
\(\eta x^{\theta-1}\) at **every sufficiently large x**, because
\(x^{\beta-\theta}\to0\) and \((\log x)/x^\theta\to0\).
The exact source derivative relation holds away from the finitely
many prime-power knots in each compact interval:
\[
\frac{d}{dx}\mathcal L.Gm(x)=E_{\mathcal L}(x).
\]
The original Gm is locally absolutely continuous; its arithmetic
ramp sum is piecewise linear and the other terms are smooth.
Integrating the bound therefore gives
\[
\mathcal L.Gm(x)\le\mathcal L.Gm(X)
+\frac{\eta}{\theta}(x^\theta-X^\theta),
\]
and since η/θ<1, it follows that
\[
\boxed{\forall x\ge X',\quad
\mathcal L.Gm(x)\le x^\theta-\frac1{4x}.}\tag{E2}
\]
This supplies the **genuine intermediate** Landau/HasWindows corridor, with no import of the final RH theorem. However **the independent power-saving AP premise (E0) is OPEN** and cannot be inferred from the usual PNT error (C0), from a finite prime-Jacobi experiment, or from covariant finite diffusion. As θ approaches 1/2 this is RH/GRH-strength information; the derivation is a dependency map, not its resolution.

The converse finite Abel inverse (A2) shows that the weighted Mertens/Chebyshev problems are not unrelated: both encode the same original prime data. A two-sided all-scale Mertens power rate would likewise constrain the weighted Chebyshev discrepancy. One-sided bounds alone do not supply a two-sided discrepancy estimate without extra information.

## F. Exact controls, hostile test, formalization boundary

The source-specific standard-library checker [verify_weighted_mertens_abel.py](../../../../scripts/verify_weighted_mertens_abel.py) tests the finite Abel identity (A1), its inverse (A2), every term of the AP/ramified decomposition (B1), and binary unit phase/ramification boundaries for three genuine character groups:

| Ambient modulus | Subgroup order | Integer cutoffs | Exact Abel and inverse checks | AP/ramified decompositions |
|---|---:|---:|---:|---:|
| 4 | 2 | 1–600 | 1,200 | 600 |
| 5 | 4 | 1–600 | 1,200 | 600 |
| 15 | 8 | 1–600 | 1,200 | 600 |

**5,400/5,400 exact rational algebraic checks PASS**, using positive rational surrogates for individual prime-power log(p) atoms. The test asserts real primitive character values on units and on ramified indices; modulus 15 detects the nonunit value c(15)=1 which is outside the two unit symbols. The use of rational log surrogates is deliberate: these tests establish only **coefficient-linear finite identities**, not exact transcendental logarithms or any PNT/AP power estimate. Python syntax compilation PASS; Lean compiler/kernel/axiom audit NOT_RUN. The checker also verifies on chosen large exponential scales that the known subexponential comparison bound does NOT yield a fixed power estimate.

**Exact formal status:** The three new Lean declarations in CenteredMertensAbel.lean prove the finite source-prefix increments and their inverse via a proposed sum/telescoping induction. They consume the ACTUAL Level and native coefficient types in Alpöge's original isolated version. They remain SOURCE_PROOF_CANDIDATES pending elaboration and fresh kernel checks; the analytic infinite-tail theorem (C2), PNT/AP supplier (C0), original subgroup/annihilator correspondence, and eventual all-scale power assertion are **not** claimed as Lean-verified. No Main, FinalTheorems, Alpöge RH, a zero ordinate table, synthetic Weil positivity, or Noe scheduling/execution authority is introduced.

**Research disposition:** Real mathematical advance: the exact original-source tail identity, an unconditional eventually quantified one-sided logarithmic-rate bound using established external PNT/AP, explicit bounded ramification and a source-specific quantitative AP-power implication. Still unresolved: a genuinely independent proof of the AP/Chebyshev power saving (E0), which is the RH-strength analytic supplier.
