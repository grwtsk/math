# Removing the unramified value-group hypothesis in Alpöge's height-two torus gain

**Attribution:** grwtsk contributors. **Starting local source:** \`grwtsk/math@edb87996b1c5591aac2e0f0187750deb50758ce2\`; Lean \`v4.34.1\`, Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. **Companion:** [AlpogeHeightTwoTorusGain.lean](AlpogeHeightTwoTorusGain.lean), source-local elementary arithmetic proof candidates; the full valued-formal-series argument is *analytical*, not Lean-formalized. **Exact executable control:** [verify_height_two_torus.py](../../../scripts/verify_height_two_torus.py). Lean elaboration, fresh kernel checking, transitive axiom audit and independent mathematical review: **NOT_RUN**.

**Consumers:** [math #1850](https://github.com/grwtsk/math/issues/1850) (RH-free original arithmetic windows), [#1849](https://github.com/grwtsk/math/issues/1849) (source-independent Hilbert–Pólya), [#124](https://github.com/grwtsk/math/issues/124) (exact Xi Fredholm operator), [#1828](https://github.com/grwtsk/math/issues/1828) (true RH/GRH targets). Related local [AlpogeMainPrimeArithmetic.md](AlpogeMainPrimeArithmetic.md), [AlpogeInertiaFourier.md](AlpogeInertiaFourier.md), [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) and [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md).

**Exact external sources, inspected for mathematical direction, NOT imported as proof premises:**
- Levent Alpöge, *A remark* (20 Nov 2026), https://alpo.ge/remark.pdf; the original Lean source as reproduced by [leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005), Lean 4.33.1 with a different Mathlib. The source's height-two \`GenLogWeight\`, \`GenLogInverse\`, \`ExpDelnv\`, \`BHyp\`, \`BinomExtract\`, \`ThmAOp\`, and \`Loc.AdmB\` are the mathematical comparison targets, not imported theorems. The top-level \`core_gm\` requires \`CoreAtH\` and \`EAtH\`; no final \`riemannHypothesis\` or \`everyCharacter\` result is a premise.
- Claude Fable 5.2, Codex Astra 6.2 and Gemini Carbon, at the behest of Michael O. Rubinstein, *The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*, working draft 21 Nov 2026, https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf, Part III §III.5, **pp. 82–84 (III.84)–(III.88)** and **p. 88 Remark (1)**. The draft proves the weight gain using (B1) integer-valued coefficients and Lemma 2; its Remark (1) suggests the unramified field hypothesis is unnecessary through torus sparsity but says the observation is *without proof*. The alternative proof below is an independent derivation of that observation, not a novelty claim for the larger theorem.
- The original hypothesis (B4), that the *actual* theta kernels have the needed integral \`exp(Delta_i beta)∘L\`, is **taken from the source** in the draft, not independently derived there. The prime/lattice/global inequality (M) is not established by that document and is NOT established here.

## 1. Exact height-two setting; what is assumed

Fix a prime \(\ell\ge2\), an even site count \(d\ge2\), and a complete nonarchimedean valued characteristic-zero field \((K,v)\), with \(v(\ell)=1\). The value group of \(K\) may be **nondiscrete**. Assume \(K\) contains a primitive root of unity \(\zeta\) of order \(\ell^d-1\). Denote the site group by \(S=\mathbb Z/d\mathbb Z\); define \(\pi(s)=s-2\), and use the actual source torus characters
\[
t_s=\zeta^{(-1)^s\ell^s}.
\tag{1}
\]
The representative \(s\in\{0,\ldots,d-1\}\) is harmless because \(d\) is even and \(\ell^d\equiv1\pmod{\ell^d-1}\).

Define the multivariate source height-two logarithm
\[
L_s(X)=\sum_{e\ge0}\ell^{-e}
X_{\pi^e(s)}^{\ell^{2e}},\qquad
\rho=\frac1{\ell^2-1},\quad
\eta=\frac1{\ell-1}=(\ell+1)\rho.
\tag{2}
\]
For formal power series \(f=\sum_{\mathbf n}f_{\mathbf n}X^{\mathbf n}\), the source \(\mathcal W(\rho,w)\) is the condition
\[
v(f_{\mathbf n})\ge w-|\mathbf n|\rho
\quad\text{for all multi-indices }\mathbf n.
\tag{3}
\]
Its coefficients are valued in \(K\), not an artificially positive real matrix.

**Hypotheses of the strengthened theorem.** Let \(\Delta(X)\in K[[X_s:s\in S]]\) have zero constant coefficient and satisfy the *actual site-torus invariance* \(\Delta((t_sX_s)_s)=\Delta(X)\). Assume the formal exponential is meaningful as usual in the \(X\)-adic topology, and let
\[
E(T):=\exp\bigl(\Delta(L(T))\bigr).
\tag{4}
\]
Assume **every coefficient of \(E\) is integral**, i.e. \(v(E_{\mathbf n})\ge0\). This is precisely the part of the source theta-integrality condition **(B4)** needed for \(\Delta=\Delta_1\beta\) or \(\Delta_2\beta\) in the original argument. The full \(\beta\)-hypotheses (B2),(B3) imply the torus invariance and zero constant term of those differences.

No hypothesis about a discretely valued unramified subfield \(K_0\) or about coefficients lying in \(K_0\) is made. In the source exposition these are (B1) and the coefficient-field part of hypothesis (B).

## 2. Theorem: the full target weight WITHOUT (B1)

**Theorem.** Under the hypotheses of §1, the *complete* formal series \(\Delta\), at **every degree and in every number of variables**, satisfies
\[
\boxed{\Delta\in\mathcal W\left(\rho,\eta\right),\qquad
v([X^{\mathbf n}]\Delta)\ge
\frac1{\ell-1}-\frac{|\mathbf n|}{\ell^2-1}\quad(\mathbf n\ne0).}
\tag{5}
\]

**Proof, step 1: construct the inverse without a valuation-group restriction.** Since \(L_s(X)=X_s+\) terms of degree at least \(\ell^2\), it has an \(X\)-adic inverse \(g=(g_s)\) with no constant term. The defining recursion is exactly
\[
g_s(X)=X_s-\sum_{e\ge1}\ell^{-e}
g_{\pi^e(s)}(X)^{\ell^{2e}}.
\tag{6}
\]
Let \(r=\ell^{2e}\). By induction on total degree, any coefficient of degree \(N\) in the \(r\)th power on the right has valuation at least
\(-(N-r)\rho\), because each of its \(r\) factors has positive degree and induction gives a lower bound \( -(n_i-1)\rho\). The factor \(\ell^{-e}\) costs \(e\), but the **exact** geometric inequality
\[
e\le1+\ell^2+\cdots+\ell^{2(e-1)}
=\frac{r-1}{\ell^2-1}=(r-1)\rho
\tag{7}
\]
pays this loss. By the ultrametric triangle inequality, finite sums of terms of degree \(N\) have the same lower bound. Hence
\[
\boxed{g_s\in\mathcal W(\rho,\rho)}
\quad\text{for every site }s,
\tag{8}
\]
with no integrality or discreteness requirement on the coefficient field.

**Step 2: prove torus-equivariance of the actual logarithm.** For every \(s,e\),
\[
t_{\pi^e(s)}^{\ell^{2e}}
=\zeta^{(-1)^{s-2e}\ell^{s-2e+2e}}
=t_s.
\tag{9}
\]
If a site representative wraps around modulo \(d\), the same identity holds modulo \(\ell^d-1\) because \(d\) is even. Thus \(L((t_sX_s)_s)=(t_sL_s(X))_s\). Its formal inverse \(g\) is also equivariant. The assumed torus invariance of \(\Delta\) consequently implies **invariance of \(E\)** in (4).

**Step 3: integral invariant series have a degree gap.** Let \(E_{\mathbf n}\ne0\) with \(\mathbf n\ne0\). Invariance under the order-\(\ell^d-1\) torus means
\[
\ell^d-1\ \bigm|\ 
\sum_s n_s(-1)^s\ell^s.
\tag{10}
\]
Since \(d\) is even, \(\ell+1\mid\ell^d-1\). Modulo \(\ell+1\) the exponent at **every** site is \((-1)^s\ell^s\equiv(-1)^s(-1)^s=1\). Therefore
\[
\boxed{\ell+1\mid|\mathbf n|,\qquad|\mathbf n|\ge\ell+1.}
\tag{11}
\]
This is a coefficient-support consequence of the *actual source torus*, not a surrogate Gram positivity assertion.

**Step 4: the weight gain comes directly from substitution.** Since \(\Delta(0)=0\), \(E(0)=1\). By the integrality hypothesis, \(E-1\) is an integral sum of nonconstant monomials of degree \(j\ge\ell+1\). Substituting \(g_s\) in a monomial of degree \(j\), equations (3),(8) and multiplication of filtered formal power series give weight \(j\rho\), which is at least \((\ell+1)\rho=\eta\). Every target coefficient receives only finitely many terms, since all \(g_s\) have zero constant coefficient. Hence
\[
\boxed{(E-1)\circ g\in\mathcal W(\rho,\eta).}
\tag{12}
\]
But \(L\circ g=\mathrm{id}\), so \((E-1)\circ g=\exp(\Delta)-1\). **This is where the earlier use of the integer-valued \(v(K_0^\times)\) and the quantization Lemma 2 is replaced:** no valuation rounding occurs at all.

**Step 5: logarithm preserves the sharp weight.** Set \(Y=\exp(\Delta)-1\), with \(Y(0)=0\) and \(Y\in\mathcal W(\rho,\eta)\). For \(k\ge1\),
\[
Y^k\in\mathcal W(\rho,k\eta).
\]
The standard integer valuation estimate \(v_\ell(k)\le (k-1)/(\ell-1)\) implies
\[
k\eta-v_\ell(k)\ge\eta.
\tag{13}
\]
Therefore every term \((-1)^{k+1}Y^k/k\) of the formal logarithm lies in \(\mathcal W(\rho,\eta)\). Each coefficient is a finite sum, so
\[
\Delta=\log(1+Y)\in\mathcal W(\rho,\eta),
\]
which proves (5). \(\square\)

**Scope of the theorem.** This is a complete independent proof of **the formal filtered-series implication (B2)+(B3)+(B4) ⇒ Lemma 3 without (B1)**. It is not a proof of the *original arithmetic hypothesis (B4)*. It works for the original height-two exponent \(\ell^{2e}\), the exact Frobenius shift \(s\mapsto s-2\), and all even orbit lengths; no height-one replacement has been made.

## 3. Sharp genuine formal controls and hostile exclusions

The proof's weight threshold is sharp for a fully integral and torus-invariant *formal model*. In one variable let
\[
E(T)=1+T^{\ell+1},
\qquad
\Delta(X)=\log(1+g(X)^{\ell+1}).
\tag{14}
\]
Then \(\exp(\Delta(L(T)))=E(T)\) coefficientwise, and the leading term is \(X^{\ell+1}\) with coefficient \(1\). Its valuation is \(0=\eta-(\ell+1)\rho\), so the bound is attained.

In contrast, the **integral but noninvariant** model \(E(T)=1+T\) gives \(\Delta(X)=\log(1+g(X))\), whose linear coefficient is \(1\) of valuation zero. The requested lower bound at degree 1 would be \(\eta-\rho>0\), so it FAILS. This shows why torus selection cannot be omitted even if all coefficients of \(E\) are integral. Neither model is identified with a genuine Alpöge theta kernel.

The independent standard-library exact checker [verify_height_two_torus.py](../../../scripts/verify_height_two_torus.py) implements the actual one-variable height-two inverse \(\sum_{e\ge0}\ell^{-e}g(X)^{\ell^{2e}}=X\) in truncated \(\mathbb Q[[X]]\), the exact \(v_\ell\) of every nonzero rational coefficient, both examples (14), and finite site-torus congruences for \(d=2,4\). Tested and PASSED:
- \(\ell=2\) to degree 80;
- \(\ell=3\) to degree 100;
- \(\ell=5\) to degree 140;
- \(\ell=7\) to degree 100.

It tests inverse-logarithm composition, all tested degree weights, sharpness at \(\ell+1\), degree selection, equivariance of \(\pi\), and the noninvariant hostile failure. This is **finite exact evidence**, not a certificate for the infinite-valued theta kernels or for RH. The mathematical proof above covers arbitrary degrees under the stated assumptions.

The adjacent Lean source is narrower: it proves only the elementary scalar algebra of degree selection, \((\ell+1)\rho=\eta\), and the exact \(e\)-versus-geometric-sum budget. The multivariable power-series, valuations, character action, B4 integrality and analytic theta-source identification are **NOT FORMALIZED** there. Lean elaboration/kernel/axiom checks remain **NOT_RUN**.

## 4. The precise original-source boundary, and Hilbert–Pólya

The actual Part III.5 hypothesis (B4) requires, for \(\Delta_i\beta\) built from the theta kernel itself,
\[
\exp(\Delta_i\beta)\circ L
\quad\text{to have integral coefficients at every inert prime,
every orbit and every total degree.}
\tag{15}
\]
The draft traces the source of that requirement to \`Loc.AdmB\` in \`ProductZerothFirstParts.lean\` and the later \`BeOK\`, \`ThetaExpansionAllPlaces\`, \`JetIntegralityBis\`, and \`SelectionServed\` packages. Its computations show only finite-degree checks for explicit lemniscatic examples; the draft does NOT prove all-degree B4 for them. Those actual kernel and global-gluing arguments are not reproduced here.

The remaining global supplier for Alpöge's inequality (M) is not obtained by this simplification. It still needs:
- (15) for the **genuine theta lifts**, plus the original exceptional-monomial control, rank/minor duality and all Frobenius orbits;
- local-period factors, actual integral lattice covolumes and discriminant/index comparisons;
- relative trace and rank estimates, Galois-cohomology denominator bounds and all character corrections;
- the correct arithmetic \(\mathrm{ASK}-\mathrm{MAIN}\), \(\mathrm{CoreAtH}\), \(\mathrm{EAtH}\) and averaged error budgets, followed by the source-exact one-sided zero-free argument.

On the operator side the existing [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) already constructs an **unconditional source-coefficient-defined trace-class operator** with the true entire \(\Xi\) Fredholm determinant, retaining multiplicities, but the operator is **not self-adjoint**. The distinct coefficient-moment positive operator in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) still requires **independently proved all-rank true-Xi Newton Hankel PSD**, equivalent to RH. A true original-source proof of (M) could supply the zero-free theorem that proves the latter; this local theorem does not.

**Completion criterion:** independently establish (15) for the actual theta kernels, integrate it with the complete global estimates to prove (M) and genuine zero-freeness, and formalize the positive coefficient-defined Fredholm operator against the original Mathlib zeta source. No imported external \`riemannHypothesis\`, \`everyCharacter\`, alternative positive Gram form, theta-only Fourier positivity or zero-indexed spectral definition discharges that criterion. **(M), RH and independent self-adjoint Hilbert–Pólya remain OPEN.**
