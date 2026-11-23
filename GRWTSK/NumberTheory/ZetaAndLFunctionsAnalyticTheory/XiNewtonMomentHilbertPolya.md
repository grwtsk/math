# Original-Xi Newton Hankel criterion and coefficient-defined exact Hilbert–Pólya operator

**Attribution:** grwtsk contributors. **Mathematical consumers:** [#124](https://github.com/grwtsk/math/issues/124) (exact determinant and divisor), [#1849](https://github.com/grwtsk/math/issues/1849) (independent Hilbert–Pólya), [#1850](https://github.com/grwtsk/math/issues/1850) (original prime/arithmetic windows), [#1828](https://github.com/grwtsk/math/issues/1828) (RH target). **Adjacent source candidate:** [XiNewtonMomentHilbertPolya.lean](XiNewtonMomentHilbertPolya.lean). **Local inspection pin:** grwtsk/math @ 1a2b742923287a54170e1964a880819750c0a856, root Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Lean elaboration, kernel replay, transitive axiom audit **NOT_RUN**; independent mathematical review **NOT_RUN**.

**Canonical original analytic source:** [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean) \`sourceXi\`, \`sourceXiOnLine\`, \`normalizedEvenXiTaylor\`, and separate \`XiTaylorSourceFaithful\` target; [XiThetaSchurSource.md](XiThetaSchurSource.md) actual \(\Phi(u)\); [XiThetaAntiPickSource.lean](XiThetaAntiPickSource.lean) \`xiSquareTaylorSeries\`; [AlpogeXiSmoothedTrace.md](AlpogeXiSmoothedTrace.md) exact original smoothed-prime Mellin resolvent; [XiSelfAdjointDefect.md](XiSelfAdjointDefect.md) zero-indexed normal-source obstruction.

**External arithmetic proof read for direction ONLY:** Levent Alpöge, *A remark* (20 Nov 2026), https://alpo.ge/remark.pdf, and pinned public Lean mirror [leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005). Inspected exact source declarations \`Formalism.LFunctionChainParameters.characterSumData.ASK\`, \`MAIN\` and \`AskMainBalance\` in \`src/Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean\` (blob 18deb7cb85d6f650a69f01fda6e0c789b9f04d89); \`Deduction.ch_top\` in \`src/Development/AutomorphicArithmetic/DedekindLFunctions/LandauTheorems/ChTop.lean\` (blob ce06a34a9e0b1b332e10d3b7efb04a06e9ab77f5); \`UpperTheory.Comparison₂.core_gm\` in \`src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean\` (blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d); \`Formalism.HC.HasWindows\` in \`src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean\` (blob 099d96fec932b03a505ea79a81c45bcc3fbf0ea3); \`rhOfAll\` and \`Main.riemannHypothesis\` in the public mirror. None of these are imported into the local Lean source.

**Exact readable source for (M):** Claude Fable 5.2, Codex Astra 6.2, Gemini Carbon at Michael O. Rubinstein's direction, *The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*, 21 Nov 2026 working draft, https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf, Sections II.4–II.6 (especially (4.1), (4.2), (M), (II.15) and (5.3)); Part III table (pp. 53–54). This paper proves a conditional reduction; **(M) itself is quoted, not independently proved**.

**Prior art:** K. Bickel, J. E. Pascoe and M. Sargent, *Zero-free regions near a line*, Mathematische Zeitschrift 305:39 (2023), DOI 10.1007/s00209-023-03364-w, https://arxiv.org/abs/2108.04807; they study Hankel positivity of logarithmic-derivative coefficients and Hamburger moment arguments for real entire functions, including zeta-related examples. The positivity equivalence in this note is a **genus-zero, true-theta-source specialization of a classical strategy, not a claimed novel proof of RH**. Hamburger compact moment theorem, uniqueness by polynomial density, Hadamard factorization and Fredholm determinant theory are classical background.

## I. Define every spectral input from the actual theta coefficients, NOT the zero list

Use the original Riemann entire completed function
\[
\xi(s)=\tfrac12 s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s),
\quad\Xi(z)=\xi(\tfrac12+iz),
\quad F(w)=\frac{\xi(\tfrac12+\sqrt w)}{\xi(\tfrac12)}.
\]
The square-root expression is **the even entire Taylor extension**, so no branch enters. Its actual positive Fourier-theta density is the literal \(\Phi\) displayed in [XiThetaSchurSource.md](XiThetaSchurSource.md), not an arbitrary positive measure. Put
\[
a_n=\frac{\int_0^\infty u^{2n}\Phi(u)\,du}{(2n)!\,\Xi(0)}
\quad(n\ge0),\qquad
F(w)=\sum_{n\ge0}a_nw^n,\quad a_0=1.
\tag{1}
\]
Unconditionally \(\Phi(u)>0\), \(F(x)>0\) for real \(x\ge0\), and \(F\) is entire of order \(1/2\). The identity of the source expression to Mathlib \`sourceXi\` is established analytically in the cited source material but the full Fourier/theta/Taylor derivation is **not yet Lean formalized**.

Define the **Newton power traces solely by the coefficients**:
\[
\tau_1=a_1,\qquad
\tau_n=(-1)^{n-1}na_n+
  \sum_{k=1}^{n-1}(-1)^{k-1}a_k\tau_{n-k}
\quad(n\ge2).
\tag{2}
\]
Equivalently in a disc where \(F\ne0\),
\[
\boxed{\frac{F'(w)}{F(w)}
=\sum_{n=0}^\infty(-1)^n\tau_{n+1}w^n.}
\tag{3}
\]
This is the formal logarithmic derivative/Newton identity. It uses no zero table, inferred ordinates, fitted spectral data or external RH assertion. The companion Lean \`originalXiNewtonMoment n\` uses the **actual xiSquareTaylorSeries** and the \(n\)-th derivative of this quotient at zero, with the exact sign and factorial from (3). It does not declare the entire analytic identification proved in Lean.

Define the full coefficient-only **Newton Hankel positivity** proposition:
\[
\boxed{\mathsf{NewtonPSD}_{\Xi}:\quad
\sum_{i,j=0}^{N-1}c_ic_j\tau_{i+j+1}\ge0
\quad\text{for every }N\ge1,\ c\in\mathbb R^N.}
\tag{4}
\]
The full quantifiers are essential. Positive ordinary theta Hankel moments \(\int u^{2(i+j)}\Phi(u)du\), which are **unconditional**, are a DIFFERENT object; they do not imply (4).

## II. Theorem: Newton Hankel PSD iff the actual Riemann Hypothesis

**Theorem (classical genus-zero moment criterion specialized to the true Xi):** Subject to the original analytic identities (1)–(3), all finite Hankel forms (4) are positive semidefinite **if and only if every nontrivial zero of the actual Riemann zeta lies on the critical line.** There is no premise from the external Alpöge proof.

*RH ⇒ (4).* Since \(F\) has order \(1/2<1\) and \(F(0)=1\), its genuine Hadamard product is
\[
F(w)=\prod_j(1-w/w_j),\qquad
\sum_j|w_j|^{-1}<\infty,
\tag{5}
\]
where every actual squared-coordinate zero \(w_j\) is retained with its analytic multiplicity. Under RH, \(w_j=-\gamma_j^2<0\), so \(\lambda_j=-1/w_j=1/\gamma_j^2>0\), again with multiplicity. Logarithmic differentiation of (5) yields
\[
\tau_{n+1}=\sum_j\lambda_j^{n+1}.
\tag{6}
\]
Therefore, for any real polynomial \(p(t)=\sum_{i=0}^{N-1}c_it^i\),
\[
\sum_{i,j}c_ic_j\tau_{i+j+1}
=\sum_j\lambda_j\,p(\lambda_j)^2\ge0.
\]
No assumption of simple zeros is made.

*(4) ⇒ RH.* Define the real linear functional \(L(t^n)=\tau_{n+1}\) on real polynomials. Equation (4) is exactly \(L(p^2)\ge0\) for all \(p\). By the Hamburger moment theorem, there is a finite **positive real Borel measure** \(\sigma\) with
\[
\int t^n\,d\sigma(t)=\tau_{n+1}\quad(n\ge0).
\tag{7}
\]
Its total mass is \(\tau_1=a_1>0\), by (1).

We must not silently assume the measure is compactly supported. Since \(F(0)=1\), the **actual original** \(F'/F\) is analytic in some closed disc \(|w|\le r\), \(r>0\). By Cauchy's coefficient estimate, for a finite constant \(C_r\),
\[
|\tau_{n+1}|\le C_r r^{-n}\quad(n\ge0).
\tag{8}
\]
For even \(n=2k\), equations (7) and (8) give \(\int t^{2k}d\sigma(t)\le C_r r^{-2k}\). A positive measure with any mass outside \([-1/r,1/r]\) would violate this bound for sufficiently large \(k\). Thus
\[
\operatorname{supp}\sigma\subseteq[-1/r,1/r].
\tag{9}
\]
Consequently the Stieltjes/Cauchy transform
\[
S(w)=\int_{\mathbb R}\frac{d\sigma(t)}{1+wt}
\tag{10}
\]
is holomorphic off the real axis. For \(|w|<r\), absolute convergence and (7) give
\[
S(w)=\sum_{n\ge0}(-1)^n\tau_{n+1}w^n=\frac{F'(w)}{F(w)}.
\tag{11}
\]
The two sides are equal by meromorphic analytic continuation on both upper and lower half-planes. Since \(S\) is holomorphic there, the logarithmic derivative \(F'/F\) has no poles off the real axis. At every zero of an entire function, \(F'/F\) has a genuine pole with residue the positive integer analytic multiplicity. Hence **all zeros of the actual F are real**. Equation (1) also gives \(F(x)>0\) for all real \(x\ge0\), so every real zero is **strictly negative**. The true source symmetry \(F(w)=\xi(1/2+\sqrt w)/\xi(1/2)\) then makes each nontrivial zeta zero \(\rho=\tfrac12+i\gamma\) with \(\gamma\in\mathbb R\). This proves the original RH statement. QED.

**Logical status:** This proves the equivalence, not the premise (4). The unconditional positivity of \(\Phi\) does not supply \(\mathsf{NewtonPSD}_{\Xi}\). This is a reduction of the missing RH-strength theorem to a complete, concrete family of **actual-source coefficient inequalities**.

## III. Construct an exact positive Hilbert–Pólya operator FROM the moment measure

Under (4), construct \(\sigma\) using **only the theta-derived \(\tau_n\) in (2)**, via the positive moment problem. This step does not index any operator by known zeta zeros.

To prove exactly what its atoms mean, we may now use the genuine Hadamard factorization as a **verification theorem**, not as the *definition* of the operator. By the proved implication (4) ⇒ RH, \(F\) has actual zeros \(w_j=-1/\lambda_j\), \(\lambda_j>0\), including multiplicity, and (6) holds. The finite positive measure
\[
\sigma_0=\sum_j\lambda_j\delta_{\lambda_j}
\tag{12}
\]
has the same moments as \(\sigma\) in (7). It is supported in a compact positive interval since the original entire F has a zero-free disc around 0, and \(\sum_j\lambda_j<\infty\) by (5). Uniqueness of finite positive compactly supported measures from all polynomial moments implies
\[
\boxed{\sigma=\sigma_0.}
\tag{13}
\]
In particular \(\sigma(\{0\})=0\). For every positive atom \(t\), the mass determines an **integer spectral multiplicity**
\[
\boxed{m(t)=\sigma(\{t\})/t\in\mathbb N_{>0}.}
\tag{14}
\]
This integer cannot be omitted or replaced by a simple eigenvalue: nothing here assumes that zeta zeros are simple.

Define the Hilbert space and operator **as functionals of the source moment measure**:
\[
\mathcal K_{\Xi,\sigma}:=
\bigoplus_{\substack{t>0\\\sigma(\{t\})>0}}\mathbb C^{m(t)},
\qquad
K_{\sigma}|_{\mathbb C^{m(t)}}=t\,I_{m(t)}.
\tag{15}
\]
This construction takes only \(\sigma\), extracted from the actual theta coefficients, as its **spectral input**. The use of the real-zero Hadamard theorem above certifies its multiplicity, but does not supply its input spectrum.

The operator \(K_\sigma\) is positive, self-adjoint, compact, injective and **trace class**:
\[
\operatorname{Tr}K_\sigma
=\sum_t m(t)t
=\sum_t\sigma(\{t\})
=\sigma(\mathbb R)=\tau_1=a_1<\infty.
\tag{16}
\]
The equality of the trace-class Fredholm determinant with the **actual** Riemann Xi follows from (5), (13), (14) and \(F(0)=1\):
\[
\boxed{
F(w)=\det_{\mathrm{Fr}}(I+wK_\sigma),\qquad
\Xi(z)=\Xi(0)\det_{\mathrm{Fr}}(I-z^2K_\sigma).
}
\tag{17}
\]
Since all \(t>0\), its inverse square root \(H_\sigma=K_\sigma^{-1/2}\) is a densely defined positive self-adjoint unbounded operator on the **maximal** domain
\[
\operatorname{Dom}H_\sigma
=\left\{(v_t)_t:\;
\sum_t\frac{\|v_t\|^2}{t}<\infty\right\}.
\tag{18}
\]
It satisfies \(H_\sigma^{-2}=K_\sigma\) and (17), with every true zero and multiplicity accounted for. This is an exact **coefficient-defined operator** under a fully explicit source-positive hypothesis, and does not use the zero divisor as the definition of \(H_\sigma\).

The theorem is NOT an unconditional Hilbert–Pólya proof, because full theta-source moment positivity (4) is precisely RH-equivalent and remains independently OPEN. In particular, the positive multiplication operator on the **ordinary scalar** \(L^2(\sigma)\) alone would have geometric multiplicity one at each atom; (14)–(15) are required to retain the original analytic multiplicity. This corrects the common but invalid identification of a scalar moment multiplication spectrum with the full Xi divisor.

## IV. Exact finite original-source conditions, independent controls

The first theta-derived Newton moments are
\[
\tau_1=a_1,\quad\tau_2=a_1^2-2a_2,\quad
\tau_3=a_1^3-3a_1a_2+3a_3.
\tag{19}
\]
The first nontrivial principal Hankel determinant is **exactly**
\[
\boxed{
\det\begin{pmatrix}\tau_1&\tau_2\\\tau_2&\tau_3\end{pmatrix}
=a_1^2a_2+3a_1a_3-4a_2^2.
}
\tag{20}
\]
The adjacent Lean candidate proves this elementary polynomial identity and defines \`ActualXiNewtonHankelPSD\` using the **original** \`xiSquareTaylorSeries\` logarithmic derivative. A numerical 70-digit mpmath check of the actual completed-zeta derivatives gives
\[
\tau_1\approx0.0231049931154,\quad
\tau_2\approx3.71725992853\times10^{-5},\quad
\tau_3\approx1.44173931401\times10^{-7},\quad
\det H_2\approx1.94933555482\times10^{-9}>0.
\]
This is **ordinary non-certified numerical evidence**, not a proof of even the actual rank-two sign (20). The complete infinite PSD obligation is much stronger.

A **rational hostile control**, with an explicitly positive cosine/theta-like source but not the true Xi, is
\[
F_*(w)=\tfrac34+\tfrac14\cosh\sqrt w.
\]
It is an entire function of order \(1/2\), has \(F_*(r)>0\) for real \(r\ge0\), and has strictly positive \(a_n^*=1/[4(2n)!]\) for all \(n\ge1\). Yet its first three coefficients \(a_1^*=1/8,\ a_2^*=1/96,\ a_3^*=1/2880\) yield
\[
\tau_1^*=\tfrac18,\quad \tau_2^*=-\tfrac1{192},
\quad
\boxed{\det H_2^*=-\tfrac{13}{92160}<0.}
\tag{21}
\]
The rational calculation is exact and is included as a \`norm_num\` Lean proof **candidate**. This refutes the proposed shortcut "positive theta density ⇒ Newton Hankel positivity" even at rank two. It is not a counterexample to the true Xi theorem.

## V. Where Alpöge's full inequality (M) must connect, with NO imported conclusion

In the pinned **primary external Lean source**, \`FirstPrimeNeSecondPrime.lean\` defines the original signed finite prime-power \`ASK\`, its main term \`MAIN\`, and the exact character Fourier balance \`AskMainBalance\`. In particular its \`MAIN\` retains the **real Euler correction** and \(\mathrm{ell}(\mathrm{chC})\), as well as the average \(\log w\) over the actual \(\Phi\)-cells. Its \`ASK\` has a genuine \(2\log p\) inert-prime component and an exceptional-\(d\) term, not an arbitrary nonnegative quadratic form.

The main arithmetic inequality stated in the 21 November draft, Section II.4, is
\[
\frac1n\sum_{u\in H}\sum_{t\in T}\sum_{j=1}^m(P_{u,t,j}-M_{u,t,j})
\le\mathcal E,\qquad
\frac{\mathcal E}{B}\le x^{C\varepsilon}
\left(\frac{x}{m}+\frac{xm}{k}+m+\frac{k}{n^2}\right),
\quad B=\frac{|T|mb\delta}{2}.
\tag{22}
\]
This is **not** proved here. Under the hypotheses of (22), original character estimates B and C, and their correct uniform quantifier ordering, the guide derives an upper bound for the original centered von Mangoldt ramp
\[
G(x)=\sum_{n\le x}\Lambda(n)(x/n-1)-x\log x+(1+\gamma_E)x
\tag{23}
\]
on arbitrarily late intervals \([Y,Y^{3/2}]\). The genuine one-sided Landau/Mellin argument then excludes actual zeta zeros in \(\operatorname{Re}s>1/2+\varepsilon\) for all \(\varepsilon>0\), which would prove the **source** RH and therefore (4). Equations (1)–(18) then produce the exact positive coefficient-defined Hilbert–Pólya operator.

To reconstruct (22) independently, the current *unfinished* guide explicitly identifies five unproved arithmetic suppliers from the formal development (Part III status table):
1. Actual theta-kernel **integrality in the coordinates of the height-two formal logarithm**, including local valuation estimates and higher Frobenius-orbit duality.
2. Actual theta-lift **inner-product/local factors**, lattice covolumes, index loss and level comparisons (the eleven named size inputs).
3. Genuine **relative trace formula** first and second moment bounds and the rank/pairing constraints (three named dimension inputs).
4. The actual **Galois-cohomology/denominator control**, including all local/global exceptions and scale dependence.
5. The **construction and weighted averaging of maps**, producing exactly the source \(\mathrm{ASK}-\mathrm{MAIN}\) inequality and the normalized error (22), without dropping any loss terms.

The external \`CoreGm.lean\` lemma is **conditional on** \`EAtH\` and \`CoreAtH\`; the latter bundles the true \`IdentU\`, \`SizeData₂\`, \`ErrWindows\`, \`BNBoundsU\`, \`ThinScales\`, \`CostWindows\` and \`RestSize\` supplier contracts. The mathematical consumer is \`Deduction.ch_top\`, which uses \`each_unit_bound_statement\` and \`errX5at_le\` before averaging. Replacing any of these with an axiomatic "positive kernel" or invoking the final \`rhOfAll\`, \`UpperTheory.FinalTheorems.everyCharacter\` or Alpöge \`riemannHypothesis\` would not satisfy independent proof requirements.

**Independent primary-analytic comparison:** The factorization (1)–(18) uses no imported RH proof and is a complete conditional theorem. Its proof is classical and closely related to the Bickel–Pascoe–Sargent Hankel criterion. It is mathematically different from Alpöge's automorphic Stepanov/lattice route, and agrees with that route only at the source zeta-zero-freeness implication; the enormous arithmetic bridge (22) remains unsupplied. The new arithmetic-data operator construction is therefore a **conditional source-faithful completion of the operator step**, not an independent proof of the hard global sign.

## VI. Verification boundary and next theorem

**Established mathematics (classical conditional implication):** For the actual original Xi, full Newton Hankel PSD is equivalent to RH; its positive moment measure, when the criterion holds, gives a self-adjoint trace-class \(K_\sigma\) and \(H_\sigma=K_\sigma^{-1/2}\) satisfying the **exact** source Xi Fredholm identity with all multiplicities. No zeros are used as *construction input*. Derivatives, gamma/poles and theta coefficients are not replaced by a surrogate.

**Exact finite proof-candidate scope:** Adjacent Lean has the source-referenced Newton moment target, two-by-two coefficient identity and rational hostile controls. Lean elaboration **NOT_RUN**; fresh kernel replay **NOT_RUN**; transitive axiom audit **NOT_RUN**; independent mathematical review **NOT_RUN**. The infinite Hamburger, support, uniqueness, source Hadamard and trace-class steps remain **unformalized**.

**Open theorem:** prove the complete (22) independently with the five genuine source suppliers and exact window quantifiers, or prove (4) directly for the **original theta coefficients**. This is RH-strength. Neither is established by a finite positive Hankel matrix, an assumed operator spectral theorem, an externally imported RH conclusion or a positive theta Fourier source by itself. A claim of completed independent Hilbert–Pólya proof is not justified until this theorem is supplied and source-verified.

## VII. Gaussian quadrature, spectral multiplicity and finite rank

Put \(g(w)=F(-w)\) and \(p_k=-k[w^k]\log g(w)=\tau_k\) for \(k\ge1\).
Fix \(n\ge1\) and use only the first \(2n\) coefficients to form
\[
 G_{ij}=p_{i+j+1},\quad D_{ij}=p_{i+j+2},\quad b_i=p_{i+1},
 \qquad 0\le i,j<n.
\]
Suppose for this finite construction that both matrices are positive
definite. On real polynomials of degree below \(n\), use the inner product
with Gram matrix \(G\) in the monomial basis. Define \(J\) by
\(\langle v,Ju\rangle=v^{\mathsf T}Du\). Then \(J\) is positive and
self-adjoint in this inner product. It sends \(t^j\) to \(t^{j+1}\) for
\(j<n-1\), so \(1,J1,\ldots,J^{n-1}1\) form a basis. Cyclicity implies
that all \(n\) eigenvalues \(\theta_j\) are simple and positive and the
spectral weights \(\omega_j=\|P_{\theta_j}1\|^2\) are positive.

These nodes and weights give the Gaussian quadrature identities
\(\sum_j\omega_j\theta_j^k=p_{k+1}\) for \(0\le k<2n\).
For \(k\le2n-2\), split \(k=r+s\) with \(r,s<n\) and take the inner
product of \(J^r1,J^s1\). At \(k=2n-1\) use
\(\langle t^{n-1},Jt^{n-1}\rangle=D_{n-1,n-1}\).
Thus \(\sum_j\omega_j/(1-\theta_j w)\) agrees with \(-g'(w)/g(w)\)
through degree \(2n-1\). Integrating the logarithmic derivative near
zero gives \(\prod_j(1-\theta_jw)^{\omega_j/\theta_j}\), normalized to
one at zero, agreeing with \(g\) through degree \(2n\). A determinant
with these distinct reciprocal roots requires each exponent to be an
integer, by the order of its zero at \(1/\theta_j\). The quadrature
identities alone impose no such condition.
[Golub and Welsch, *Calculation of Gauss Quadrature Rules*, §2](https://www.ams.org/journals/mcom/1969-23-106/S0025-5718-69-99647-1/S0025-5718-69-99647-1.pdf).

**A finite rank test.** If a list of \(d\) real numbers
\(x_1,\ldots,x_d\) realizes \(p_k=\sum_\ell x_\ell^k\) through
\(k=2n\), put \(q(t)=\sum_{i=0}^{n-1}u_i t^{i+1}\). Expanding the
nonnegative sum \(\sum_\ell(1-q(x_\ell))^2\) gives, for every real \(u\),
\[
 d\ \ge\ 2u^{\mathsf T}b-u^{\mathsf T}Du.
\]
This inequality allows repeated and negative real values. When \(D>0\),
completing the square gives the best bound in this polynomial family,
\[
 d\ge b^{\mathsf T}D^{-1}b
   =\langle 1,J^{-1}1\rangle
   =\sum_j \omega_j/\theta_j .
\]
The middle equality follows from \(J=G^{-1}D\) and \(b=G e_0\).
Thus the Gaussian weights give a dimension test even when a different
node set might realize the same trace data with integer multiplicities.

For the original xi coefficients, interval arithmetic gives the
following enclosures. All leading principal minors of both matrices
through order four were strictly positive.

| \(n\) | Enclosure for \(b^{\mathsf T}D^{-1}b\) | Minimum required dimension from the bound |
|---:|---:|---:|
| 1 | \((14.36,14.37)\) | 15 |
| 2 | \((40.84,40.85)\) | 41 |
| 3 | \((80.03,80.04)\) | 81 |
| 4 | \((128.12,128.13)\) | 129 |

At each displayed order the sum of the proposed multiplicities is
nonintegral. At order one the single node is \(p_2/p_1\), its weight
is \(p_1\), and its sole proposed multiplicity is \(p_1^2/p_2\).
A second check at order four uses only the integer vector
\(u=(13937,-22641010,10352378907,-1274144136143)\).
Its value \(2u^{\mathsf T}b-u^{\mathsf T}Du\) lies in \((128.12,128.13)\),
already excluding every real spectral list of size at most 128.
The lower bounds concern matching the first \(2n\) power sums. They
supply neither the size of a smallest realizing list nor a sign at
any subsequent order.

To reproduce the enclosures, use the positive cosine kernel in (1) for
moments through \(u^{16}\). Apply 192-bit Arb quadrature on \(0\le u\le3\)
with theta indices \(1\le j\le6\). After the substitution \(t=e^{2u}\),
the absolute \(j\)-summand is bounded by
\(40j^4t^{20}e^{-\pi j^2t}\,dt\).
For \(j\ge7\) use \(t^{20}\le e^{20(t-1)}\) and sum the resulting
geometric majorant. For \(j\le6\) and \(t\ge e^6>400\) use \(t^{20}\le e^t\).
The combined error per integral is at most
\(80\cdot7^4e^{-147}+40\cdot6^5e^{-800}<10^{-56}\).
Include that error before taking the ratios in (1). Set
\(c_k=(-1)^ka_k\), compute
\(p_k=-kc_k-\sum_{j=1}^{k-1}c_j p_{k-j}\), test the principal
determinants, then enclose \(b^{\mathsf T}D^{-1}b\) by a ball linear solve.
[Theta integral and ball integration formula](../../Combinatorics/GraphTheory/PrimeJacobiHilbertPolyaFaithfulComparison.md#the-inverse-of-the-even-prime-jacobi-sections).

The general polynomial bound and the four-moment implication
\(d\ge41\) from rational interval endpoints have Lean proofs. Their
numeric xi premises use the analytic quadrature above. The Gaussian
spectral representation and the quadrature enclosures have no Lean
formalization in this comparison.
[Finite real-spectrum rank theorems](NewtonMomentRank.lean).

**Limit under all-rank positivity.** Under the moment hypothesis in §II,
write \(\sigma\) for its recovered measure and choose \(R>0\) with
support in \([0,R]\). Its infinitely many distinct positive atoms make
both finite Gram matrices strictly positive at every order. Each
quadrature node lies in \((0,R]\), by
\(0<\int t f^2\,d\sigma\le R\int f^2\,d\sigma\) for nonzero polynomial
\(f\). For \(R|w|<1\), let \(g_n\) denote the integrated Gaussian product
above, with logarithm zero at the origin. Comparing the power series
after the first \(2n\) matching Newton sums gives
\[
 |\log g(w)-\log g_n(w)|
 \le \frac{2p_1|w|(R|w|)^{2n}}{(2n+1)(1-R|w|)} .
\]
Indeed, both true and quadrature measures have mass \(p_1\), so their
moments of degree \(k-1\) are bounded by \(p_1R^{k-1}\).
The dimension bounds \(b^{\mathsf T}D^{-1}b\) also grow without bound.
In their variational formula take \(q(t)=1-(1-t/R)^n\).
Then \((2q-q^2)/t\) increases to \(1/t\) at each positive atom.
By (14) the integral of \(1/t\) is the sum of all positive integer
multiplicities, hence is infinite. This limiting argument uses the
full positivity hypothesis throughout.

## VIII. Negative eigenvalues count distinct off-line zero quadruples

Fix an integer \(r\ge1\). Let \(H_{n,r}=(p_{r+i+j})_{0\le i,j<n}\),
with the true Newton sums of §VII, and let \(n_-(H)\) count strictly
negative eigenvalues with multiplicity. Then
\[
 \sup_{n\ge1} n_-(H_{n,r})
 =\#\{\text{distinct off-line zeta-zero quadruples }
       \{\rho,1-\rho,\bar\rho,1-\bar\rho\}\}.
\]
Either side can be infinite. If the number is finite, every sufficiently
large section attains it for this fixed shift. The theorem gives a count
conditional on knowing the inertia of the whole sequence. This independent argument leaves the value for
the actual xi function undetermined.

**Divisor and weights.** Since \(g(w)=F(-w)\) has order \(1/2\) and
\(g(0)=1\), its genus-zero product gives
\(p_k=\sum_{\lambda\in\Lambda}m_\lambda\lambda^k\) for \(k\ge1\), with
\(\sum_\lambda m_\lambda|\lambda|<\infty\). Here \(\Lambda\) is the set
of distinct reciprocal zeros of \(g\), with multiplicities
\(m_\lambda\). Every real node is positive since \(g(w)>0\) for real
\(w\le0\). The map \(\rho\mapsto\lambda=-1/(\rho-1/2)^2\) identifies
exactly \(\rho\) and \(1-\rho\). It has nonvanishing derivative there and
commutes with conjugation. No zeta zero in the critical strip is real,
by the same positivity of \(F\) on the nonnegative axis. Thus a distinct
nonreal pair of reciprocal nodes is precisely one off-line quadruple,
and its two multiplicities agree. These facts identify the analytic
meaning of the Newton sums computed from Taylor coefficients.

**Upper bound.** The quadratic form on real polynomials of degree
below \(n\) is \(Q_r(q)=\sum_\lambda m_\lambda\lambda^r q(\lambda)^2\).
It converges absolutely since the nodes are bounded. Real nodes
contribute nonnegatively. From each nonreal pair select one node
\(\lambda\) and choose \(s_\lambda^2=2m_\lambda\lambda^r\). Its contribution is
\[
 (\operatorname{Re}(s_\lambda q(\lambda)))^2
 -(\operatorname{Im}(s_\lambda q(\lambda)))^2 .
\]
If there are \(h<\infty\) such pairs, the map taking the \(h\) displayed
imaginary parts is injective on any negative-definite real subspace.
Its dimension is at most \(h\). This establishes the upper bound, including
sections with zero eigenvalues.

**Lower bound.** Select any \(h\ge1\) distinct pairs and denote their
chosen representatives by \(\lambda_j\). Set \(a=\min_j|\lambda_j|>0\).
The conjugation-stable set \(E=\{\lambda\in\Lambda:|\lambda|\ge a/2\}\) is
finite by absolute summability. For \(c\in\mathbb R^h\), prescribe
\(d(\lambda_j)=i c_j/s_{\lambda_j}\), the conjugate values at their
partners, and zero at every other member of \(E\). For \(M\ge1\) use
the Lagrange cardinal polynomials \(L_u\) of \(E\) to form
\[
 q_{M,c}(t)=t^M\sum_{u\in E}\frac{d(u)}{u^M}L_u(t).
\]
It takes exactly the prescribed values on \(E\). Conjugating the variable
and coefficients permutes the Lagrange summands, so the coefficients are
real. The map \(c\mapsto q_{M,c}\) is real linear and injective by its
values at the chosen nodes. On \(E\) its total contribution to \(Q_r\)
is \(-\|c\|_2^2\).

On the disk \(|t|\le a/2\), every term with nonzero prescribed value
satisfies \(|t/u|\le1/2\). Each of the finitely many \(L_u\) is bounded
on this disk, so \(|q_{M,c}(t)|\le C2^{-M}\|c\|_2\) with a constant
independent of \(M,c\). The absolute contribution of all nodes outside
\(E\) is therefore at most
\[
 C^2 4^{-M}\|c\|_2^2\sum_{\lambda\notin E}m_\lambda|\lambda|^r.
\]
The sum is finite. Choose \(M\) so its prefactor on \(\|c\|_2^2\) is
below one. Then the image of \(\mathbb R^h\) is negative definite,
and fits inside the section of size \(M+|E|\). This proves the lower
bound even for infinitely many pairs, by choosing \(h\) arbitrarily.
Nested polynomial spaces show the section indices are nondecreasing.

**Multiplicity and prior work.** For the polynomial
\(g_*(w)=(1-w)(1+w^2)^m\), \(m\ge1\), the only nonreal pair is
\(i,-i\), of multiplicity \(m\). At shift one its three-by-three
determinant is \(-16m^2\), and the upper bound gives exactly one negative
eigenvalue. Finite Hermite–Sylvester tests use the same real polynomial
evaluation form and interpolation at conjugate nodes. Bickel, Pascoe
and Sargent relate truncated Hankel positivity to restrictions on
zeros of real entire functions. The disk estimate above allows the
uninterpolated infinite tail in this fixed-shift inertia calculation.
[Nathanson, *The Hermite–Sylvester criterion for real-rooted polynomials*](https://arxiv.org/abs/1911.01745).
[Bickel, Pascoe and Sargent, *Zero-free regions near a line*](https://arxiv.org/abs/2108.04807).

**A fixed dimension can miss infinitely many pairs at every shift.**
Fix \(d\ge1\). Use positive reciprocal nodes \(1,\ldots,d\) and let
\(L_k\) be their cardinal polynomials. Put
\(C_d=\sum_{k=1}^d\max_{|t|\le1}|L_k(t)|^2\).
Interpolation and Cauchy–Schwarz give
\(|q(t)|^2\le C_d\sum_{k=1}^d|q(k)|^2\) on the unit disk for
\(\deg q<d\). Choose \(0<\epsilon<\min(1,1/(2C_d))\) and insert
the nonreal pairs \(\pm i\epsilon 2^{-j}\), \(j\ge1\). For any
integer \(r\ge1\) their total contribution has absolute value at most
\(2\epsilon C_d\sum_{k=1}^d|q(k)|^2\), since
\(\sum_{j\ge1}(\epsilon 2^{-j})^r\le\epsilon\).
The original positive contribution is at least \(\sum_{k=1}^d|q(k)|^2\),
strictly positive for any nonzero real polynomial of degree below \(d\).
All sections of size at most \(d\) are therefore positive definite at
every positive shift, while their unrestricted negative index is infinite.

Additional positive nodes \(1/(j+1)^2\), \(j\ge1\), preserve every
one of those inequalities. The genus-zero product of the combined
nodes has order exactly \(1/2\). The added zeros have exponent of
convergence \(1/2\), and splitting their product at \(j=\sqrt R\)
gives \(\log M(R)=O(\sqrt R\log(2+R))\) for this factor.
The geometric nonreal pairs contribute \(O((\log(2+R))^2)\) to the
logarithm of the maximum modulus. On changing variables by \(w\mapsto-w\),
the positive-node factors \(1+\lambda w\) and paired factors
\(1+\epsilon^2 4^{-j}w^2\) give strictly positive Taylor coefficients
at every degree. Thus the fixed-size limitation persists in a
genus-zero example with the same order and coefficient signs as \(F\).

The pair identity, finite example, interpolation at the prescribed
nodes and damping estimate have Lean statements. The equality of the
supremum with the number of xi zero quadruples, including the
Hadamard and infinite-dimensional counting arguments, is an analytic
result in this section and has no Lean formalization here.
[Finite interpolation and pair estimates](NewtonHankelInertia.lean).

## IX. One section size detects outer nonreal pairs at every shift

Let \(K\) be the number of distinct off-line quadruples in §VIII, in
\(\mathbb N_0\cup\{\infty\}\). For the actual xi Newton sums,
\[
 \sup_{n\ge1}\ \inf_{r\ge1} n_-(H_{n,r})=K.
\]
More precisely, for every finite \(h\le K\) there is a size \(n_h\)
such that \(n_-(H_{n,r})\ge h\) for **all** \(n\ge n_h\) and **all**
integer shifts \(r\ge1\). If \(K\) is finite, equality to \(K\) holds
uniformly for all sufficiently large sizes. Thus RH is equivalent to
the existence of positive semidefinite sections at unbounded sizes,
even when a different positive shift is chosen for each size.

**A quantitative estimate.** Choose any nonempty outer set
\(E=\{u\in\Lambda:|u|\ge a\}\), \(a>0\), containing all nodes at the
threshold. Absolute summability makes \(E\) finite and lets us choose
\(0<b<a\) with every remaining node in \(|z|\le b\). Indeed, only
finitely many nodes have modulus at least \(a/2\). Write
\(T=\sum_{z\notin E}m_z|z|\), let \(L_u\) be the Lagrange cardinal
polynomials of \(E\), and take the explicit constants
\[
 L^2=\sum_{u\in E}\frac1{m_u}
       \prod_{v\in E\setminus\{u\}}
       \left(\frac{b+|v|}{|u-v|}\right)^2,\qquad
 D=\frac{L^2 T}{a},\qquad \theta=b/a<1.
\]
Then \(\sum_{u\in E}|L_u(z)|^2/m_u\le L^2\) on the tail disk.

The possible values \(d(u)\) of a real polynomial on \(E\) are arbitrary
real numbers on its real nodes and arbitrary conjugate values on its
pairs. At shift \(r\), use coordinates \(X_u=\sqrt{m_u u^r}\,d(u)\)
on real nodes and \(X_u+iY_u=\sqrt{2m_u u^r}\,d(u)\) at one node
of each nonreal pair. Either square root gives real linear coordinates
in the latter formula. With \(\mathcal E=\|X\|_2^2+\|Y\|_2^2\),
\[
  \mathcal E=\sum_{u\in E}m_u|u|^r |d(u)|^2,\qquad
  \sum_{u\in E}m_u u^r d(u)^2=\|X\|_2^2-\|Y\|_2^2 .
\]
For an integer \(M\ge0\), interpolate by
\(q(t)=\sum_{u\in E}(t/u)^M L_u(t)d(u)\).
It has real coefficients by conjugation, degree less than \(|E|+M\)
and the specified values on \(E\). On \(|t|\le b\), Cauchy–Schwarz
with weights \(m_u\), using \(|u|\ge a\), gives
\[
 |q(t)|^2\le \theta^{2M} L^2 a^{-r}\mathcal E .
\]
Summing against \(m_z |z|^r\le b^{r-1}m_z|z|\) bounds the error of the
full Hankel form relative to its exact outer contribution by
\[
 \left|Q_r(q)-(\|X\|_2^2-\|Y\|_2^2)\right|
 \le D\theta^{2M+r-1}\mathcal E .
\]

**Consequences.** If \(D\theta^{2M+r-1}<1\), the form is strictly
positive on \(Y=0\) and strictly negative on \(X=0\), away from the
origin. The interpolation map is injective. Consequently its image
has exactly one negative dimension per nonreal pair in \(E\) and one
positive dimension per real node or nonreal pair in \(E\). For example,
projection to the \(Y\)-coordinates is injective on any negative
subspace, since a nonzero vector with \(Y=0\) gives a positive value.
The attained positive and negative dimensions sum to the image dimension.

Taking \(M=0\) fills the entire section of size \(|E|\) by ordinary
interpolation. Thus for **each shift with** \(D\theta^{r-1}<1\) its
inertia is exactly
\[
 \bigl(\#\{\text{real nodes in }E\}+\#\{\text{nonreal pairs in }E\},
       \#\{\text{nonreal pairs in }E\},0\bigr)
\]
in positive, negative, zero order. Alternatively choose a single
\(M\) with \(D\theta^{2M}<1\). The section of size \(|E|+M\) then
has at least this many negative directions at *every* positive shift.
For \(h>0\), choose \(E\) large enough to contain any \(h\) pairs.
The section bound, nesting in \(n\), and the upper bound in §VIII
prove the claimed quantifiers, including \(K=\infty\). The case \(h=0\)
is immediate. This argument requires no uniform lower bound on gaps
between all xi nodes. Its threshold depends on the chosen outer set.

**Independent determinant check.** Let \(n=|E|\) and
\(V(I)=\prod_{u<v\text{ in }I}(v-u)\) for any ordering of a finite
subset. The square is independent of the ordering. Expanding finite
divisor truncations by Cauchy–Binet and passing to the limit gives
\[
 \det H_{n,r}=\sum_{|I|=n} V(I)^2\prod_{u\in I}m_u u^r
 =V(E)^2\prod_{u\in E}m_u u^r\,
          \bigl(1+O_E(\theta^{r-1})\bigr).
\]
Indeed, with \(R=\sup_{\Lambda}|u|\) and \(S=\sum m_u|u|\), the
sum of \(|V(I)|^2\prod_{u\in I}m_u|u|\) is at most
\((2R)^{n(n-1)}S^n/n!\). For every \(I\ne E\), at least one
outer node is replaced by an inner node, giving
\(\prod_{I}|u|\le\theta\prod_E|u|\). This proves the error estimate
and absolute convergence. In particular the ratio of successive shifted
determinants tends to \(\prod_E u>0\). Conjugation permutes the nodes
of \(E\) by one transposition per nonreal pair, so the eventual
determinant sign is \((-1)^{\#\text{pairs in }E}\), as required by the
inertia calculation.

**Checks on the cutoff and quantifiers.** Equal-modulus nodes must be
kept together for the exact outer-section signature. The two nodes
\(i,-i\) give \(p_r=2\operatorname{Re}(i^r)\) in the one-by-one section,
with sign depending on the shift. Their two-by-two section has one
positive and one negative direction for every shift. The order-\(1/2\)
example in §VIII shows why sizes in the PSD criterion must be unbounded.
Neither the order nor the signs of the Taylor coefficients determine
how large a section would detect a hypothetical actual off-line pair.
The starting evaluation form is shared with the finite Hermite–Sylvester
argument cited in §VIII. The uniform estimate here compares the omitted
infinite tail with all outer coordinates at once.

The maximal negative dimension under the relative perturbation and the
geometric first-moment tail estimate have Lean proofs. The uniform
equality for the xi divisor and its outer-section inertia remain analytic
results in this section. They give no unconditional value for \(K\).
[Relative perturbation and tail estimates](HankelSignatureStability.lean).
