# An exact unconditional Riemann-theta spectral realization and the missing Hilbert–Pólya determinant

**Mathematical consumers:** [grwtsk/math #1849](https://github.com/grwtsk/math/issues/1849) (arithmetic Jacobi Hilbert–Pólya), [#124](https://github.com/grwtsk/math/issues/124) (Fredholm/divisor return), [#1850](https://github.com/grwtsk/math/issues/1850) (original prime–gamma–pole source), and [#1828](https://github.com/grwtsk/math/issues/1828) (canonical RH/GRH target). **Adjacent finite Lean source candidate:** [XiThetaMomentSpectralModel.lean](XiThetaMomentSpectralModel.lean). **Existing genuine completed source:** [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean), [XiThetaSchurSource.lean](XiThetaSchurSource.lean), and the corresponding source notes. Their actual definitions are not copied or altered.

**Immutable source basis reviewed:** `grwtsk/math@8a844070d03a77d30f08e75dec519bc22b2f75b4`, root Lean v4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; original Mathlib `Mathlib/NumberTheory/LSeries/RiemannZeta.lean` `completedRiemannZeta₀` and `completedRiemannZeta₀_one_sub`; Riemann's 1859 theta integral and the classical Andréief identity and generalized Vandermonde total positivity. Accessible primary/theorem reviews: Apoorva Khare's [Total Positivity course notes, §6, Proposition 6.2 and Theorem 6.4](https://math.iisc.ac.in/~khare/teaching/Math341-notes.pdf); Konstanze Rietsch, [*Totally Positive Toeplitz Matrices: Classical and Modern*, ICM 2026, Theorem 1.1](https://doi.org/10.1137/25M1806727); Riemann-theta formula also discussed in [Kobayashi (2015), §1](https://hp.hisashikobayashi.com/wp-content/uploads/2015/12/Riemann-Hypothesis-No.4-shortened.pdf). The 2026 external RH proof of Alpöge is **NOT A PREMISE** in any theorem here, nor is any zero ordinate an input. Mathematical proof of the unconditional spectral theorem is complete below; **Lean realization, infinite-dimensional operator API, and fresh-kernel checks are NOT_RUN**.

## 1. The real Riemann source, with its normalization

Use exactly the actual completed zeta function

\[
\xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s),\qquad
\Xi(z)=\xi(\tfrac12+iz).
\]

The actual entire version in Mathlib is `sourceXi(s)=(1+s(s−1) completedRiemannZeta₀(s))/2`, equal to \(\xi\) by the original completed-zeta identity; the `sourceXiOnLine` used in the existing root file is unchanged. Classical theta integration gives **for every complex** \(z\)

\[
\boxed{\Xi(z)=\int_0^\infty\Phi(u)\cos(zu)\,du,}
\qquad
\Phi(u)=4\sum_{n\ge1}\left(2\pi^2n^4e^{9u/2}-3\pi n^2e^{5u/2}\right)e^{-\pi n^2e^{2u}}.
\tag{1}
\]

For \(n\ge1\) and \(u\ge0\), each summand factors as
\(4\pi n^2e^{5u/2}(2\pi n^2e^{2u}-3)e^{-\pi n^2e^{2u}}>0\), since \(2\pi>3\). Therefore \(\Phi(u)>0\) everywhere on \([0,\infty)\). Its superexponential decay implies \(\int_0^\infty e^{cu^2}\Phi(u)du<\infty\) **for every fixed real** \(c>0\), and hence all polynomial and exponential moments exist. In particular

\[
M_0:=\int_0^\infty\Phi(u)du=\Xi(0)=\xi(1/2)>0.
\tag{2}
\]

There are no zero ordinates, Pólya-frequency assumptions or RH inputs in (1)–(2).

## 2. Unconditional self-adjoint operator: COMPLETE cosine-vector realization

Define the **actual source probability measure** \(d\mu(u)=\Phi(u)du/M_0\) on \([0,\infty)\). Let \(\mathcal H_\theta=L^2([0,\infty),\mu)\), \(v(u)=1\), and

\[
(Af)(u)=u f(u),\qquad
\mathcal D(A)=\{f\in\mathcal H_\theta:uf\in\mathcal H_\theta\}.
\tag{3}
\]

The multiplication-operator theorem makes \(A\) positive and self-adjoint, with \(\|v\|=1\). For every real \(z\), the bounded Borel functional calculus gives

\[
\boxed{\Xi(z)/\Xi(0)=\langle v,\cos(zA)v\rangle.}
\tag{4}
\]

For complex \(z\), \(\cos(zA)v\) still lies in \(\mathcal H_\theta\), because \(|\cos(zu)|\le e^{|\Im z|u}\) and \(\mu\) has every exponential moment. This vector is entire analytic, and (4) continues as an **entire scalar identity** with the same measure. No claim is made that \(\cos(zA)\) is a bounded operator on **all** of \(\mathcal H_\theta\) at nonreal \(z\). This domain distinction is essential.

This is an exact, *unconditional*, original-source spectral **matrix-coefficient realization** of the entire \(\Xi\), but is **not** the demanded positive trace-class Hilbert–Pólya determinant.

### Exact spectral type and a categorical obstruction

Since \(\Phi\) is continuous and strictly positive, \(\mu\) is nonatomic and equivalent to Lebesgue measure on every finite interval inside \((0,\infty)\). Consequently, \(A\) has **purely continuous spectrum** \([0,\infty)\), with no eigenvalues. Its inverse square would be multiplication by \(1/u^2\), which is unbounded near zero and not trace class. Even a restriction away from zero leaves a nonatomic multiplication operator, which cannot become a compact nonzero operator by an ordinary unitary change of basis. Thus **the genuine theta operator is not \(H_+\) in the required determinant \(\det(I-z^2H_+^{-2})\)**.

Indeed, \(\Phi(0)>0\) implies
\[
\langle v,A^{-2}v\rangle=\int_0^\infty\frac{d\mu(u)}{u^2}=+\infty,
\]
whereas the genuine Taylor logarithmic derivative at the origin is finite:
\[
\frac{F'(0)}{F(0)}=\frac{M_2}{2M_0}<\infty,
\qquad F(w)=\Xi(i\sqrt w)/\Xi(0).
\tag{5}
\]
Therefore the natural resolvent \(\langle v,(A^2+w)^{-1}v\rangle\) **cannot equal** the proposed positive Hilbert–Pólya Stieltjes transform \(F'(w)/F(w)\) near \(w=0\). A nonlinear, source-identified discretization is genuinely missing.

## 3. An infinite-rank positive Jacobi operator, but NOT the zeta-zero operator

Push \(\mu\) forward under \(u\mapsto y=u^2\). The resulting probability \(\nu\) has density
\[
\frac{d\nu}{dy}(y)=\frac{\Phi(\sqrt y)}{2M_0\sqrt y}>0,\qquad y>0,
\]
non-atomic support \([0,\infty)\), and finite exponential moments of every order. On \(L^2(\nu)\), the positive self-adjoint multiplication operator \(T f(y)=y f(y)\) has the **actual all-order spectral moments**
\[
\boxed{m_n:=\langle1,T^n1\rangle=\frac{M_{2n}}{M_0}.}
\tag{6}
\]

Polynomials are dense in \(L^2(\nu)\): if \(f\) is orthogonal to all polynomials, \(z\mapsto\int f(y)e^{zy}d\nu(y)\) is entire by Cauchy–Schwarz and the exponential-square moment bounds; every derivative at zero is zero, hence the transform vanishes identically; uniqueness of Fourier transforms gives \(f=0\). This also proves moment determinacy (or apply Carleman from \(m_{2n}\le C(2n)!c^{-2n}\)). Gram–Schmidt on \(1,y,y^2,\ldots\) therefore constructs a **canonical source-determined Jacobi matrix** \(J_\theta\) on \(\ell^2(\mathbb N)\), unitarily equivalent to \(T\), with real diagonal coefficients and strictly positive off-diagonals. The full Jacobi matrix is self-adjoint in the transported domain, with \(\sigma(J_\theta)=[0,\infty)\) purely continuous, and
\[
\boxed{\frac{\xi(1/2+\sqrt w)}{\xi(1/2)}
=\sum_{n=0}^\infty\frac{\langle e_0,J_\theta^ne_0\rangle}{(2n)!}w^n
=\langle e_0,\cosh(\sqrt w\,\sqrt{J_\theta})e_0\rangle.}
\tag{7}
\]

This is the precise connection to the source prime-Jacobi program, **not an identification** with its earlier zero-diagonal prime-bond matrix. In particular the genuine \(J_\theta\) has continuous spectrum, whereas the desired positive Hilbert–Pólya operator would have an inverse-square trace-class discrete spectrum. Source moment uniqueness **prevents** reinterpreting \(J_\theta\) as the desired operator merely by changing the basis.

## 4. Every genuine theta Hankel moment minor is STRICTLY positive

For **every** integer rank \(k\ge1\) and strictly increasing tuples of nonnegative integers \(r_1<\cdots<r_k\), \(c_1<\cdots<c_k\), Andréief's formula yields
\[
\boxed{
\det\big[M_{2(r_i+c_j)}\big]_{i,j=1}^k
=\frac1{k!}\int_{[0,\infty)^k}
\det[u_j^{2r_i}]_{i,j=1}^k
\det[u_j^{2c_i}]_{i,j=1}^k
\prod_{j=1}^k\Phi(u_j)\,du_j>0.
}\tag{8}
\]

Proof: first restrict to compact support and apply the classical finite Andréief identity. Absolute moment bounds permit removal of the cutoffs. For pairwise distinct variables ordered as \(0<u_1<\cdots<u_k\), each generalized Vandermonde determinant is strictly positive for strictly increasing exponents; permutations change both determinants' signs, so their product stays positive. The positive theta density gives positive mass to every open ordered simplex. This proves strict positivity for **all ranks and all Hankel minors**, independently of RH.

Equation (8) implies all conventional Gram, orthogonal-polynomial, and positive moment Hankel conditions of the source. It does **not** imply the desired Pólya-frequency condition on the *different* factorial-normalized upper Toeplitz array
\[
\boxed{\det\left[\frac{M_{2(c_j-r_i)}}{(2(c_j-r_i))!\,M_0}\mathbf1_{c_j\ge r_i}\right]\ge0.}
\tag{9}
\]
The unproved (9) is the actual RH-equivalent source gate. Under (9), Edrei's classification and the order-one-half growth of the genuine Xi produce the positive trace-class Fredholm determinant, as proved conditionally in the adjacent [XiToeplitzHilbertPolyaCriterion.md](XiToeplitzHilbertPolyaCriterion.md). **Do not promote** (8) into (9): the index-sum vs index-difference and factorials are mathematically consequential.

The adjacent [XiThetaMomentSpectralModel.lean](XiThetaMomentSpectralModel.lean) develops five *finite quadrature source candidates*: even-power factorization, exact moment-entry Gram identity, nonnegative positive-weight energy, the two-atom Hankel determinant identity, and its nonnegativity. Those five are source proposals only; the continuous source theorem (8), Carleman, Jacobi operator and (4) are mathematical arguments here and remain **NOT_RUN in Lean**.

## 5. Exact hostile counterexample: even a positive self-adjoint operator can have off-real cosine zeros

Let \(A_0=\operatorname{diag}(0,1)\) on \(\mathbb C^2\) and \(v_0=(\sqrt3/2,1/2)\). Both are genuine Hilbert-space objects; \(A_0\) is positive and self-adjoint, and \(\|v_0\|=1\). Yet
\[
\langle v_0,\cos(zA_0)v_0\rangle=\frac34+\frac14\cos z.
\]
Let \(a=\log(3+2\sqrt2)>0\). Since \((3+2\sqrt2)^{-1}=3-2\sqrt2\), \(\cosh a=3\). At the explicitly **nonreal** point \(z=\pi+ia\) one has \(\cos z=-\cosh a=-3\), so
\[
\boxed{\langle v_0,\cos((\pi+ia)A_0)v_0\rangle=0.}
\tag{10}
\]
The corresponding finite positive-moment Hankel matrix has determinant \(3/16>0\). In contrast, the factorial-normalized theta-type coefficients \((1,1/8,1/96,1/2880,\ldots)\) yield the **negative** Toeplitz/Schur three-minor \(-7/23040\). This is a true exact counterexample to the false inference "positive theta Gram ⇒ all Fourier-transform zeros real", even for a finite-dimensional positive self-adjoint operator. It is not a counterexample to RH, because the source is an artificial two-atom measure, not Riemann's theta measure.

The source-local exact-rational regression [verify_xi_theta_cyclic_spectral.py](../../../scripts/verify_xi_theta_cyclic_spectral.py) checks 922 generalized Hankel minors with strict positivity and exact Cauchy–Binet representations for five positive atoms, constructs the corresponding five-dimensional Jacobi recurrence with positive subdiagonal squares, and verifies eleven original spectral moments and the exact off-real cosine counterexample. These computations test independent finite algebra, not the continuous analytical proof or RH.

An independent numerical diagnostic for the **actual** Riemann theta source checks the xi cosine identity at four real frequencies and positive rank-two/rank-three Hankel determinants; no numerical evaluation is an analytic proof or interval certificate.

## 6. Every prime, gamma, pole and spectral multiplicity remains a separate bridge

The source Xi in (1) has the original analytic gamma and pole factors. The exact prime-power return is visible, *only in the Euler-product domain* \(s=1/2+\sqrt w>1\):
\[
\boxed{
\frac{F'(w)}{F(w)}=
\frac1{2\sqrt w}\left[
\frac1s+\frac1{s-1}-\frac12\log\pi
+\frac12\psi(s/2)-\sum_{n=2}^\infty\frac{\Lambda(n)}{n^s}
\right],
}\tag{11}
\]
where \(\psi=\Gamma'/\Gamma\) and the sum is the **complete von Mangoldt prime-power** series, not a prime-only approximation. At any real s>1 and cutoff N≥3, the omitted positive prime-power term is bounded rigorously by
\[
0\le\sum_{n>N}\frac{\Lambda(n)}{n^s}
\le N^{1-s}\left(\frac{\log N}{s-1}+\frac1{(s-1)^2}\right).
\tag{12}
\]
Equation (11) is source-exact and unconditional in that domain; extending its Dirichlet series term by term to \(\Re s\le1\) would be invalid. The original [XiThetaSchurSource.md](XiThetaSchurSource.md) records three independent numeric comparisons including all gamma/pole terms. The new theta spectral model does not delete or modify any of them.

The only way to complete a genuinely **positive trace-class Hilbert–Pólya** identity of the stated form is to prove the additional independent RH-equivalent **Stieltjes/Edrei/Toeplitz gate**:
\[
\frac{F'(w)}{F(w)}=\operatorname{Tr}(K(I+wK)^{-1}),\quad K\ge0,\ K\in S_1,
\]
with the entire original \(F\), full zero divisor and analytic multiplicities. It is not true merely because (11) is a real positive number at some w>1/4. The theta multiplication operator's own resolvent is NOT that trace and diverges at w=0. A source-specific nonlinear spectral discretization with the full signed Weil/pole/gamma terms, or a proof of (9) for all partitions, is still needed. External Alpöge RH is **directional literature only**, never a proof premise here; the resulting independent RH theorem is **not currently completed**.

For Dirichlet GRH, build separate actual conductor, parity, gamma, root number and primitive-character pairings; no zeta-only theta cosine construction can be declared to solve that problem.

## 7. Scope, reproducibility and disposition

**Mathematical proof status:** the unconditional theta self-adjoint cosine realization (4), moment-determinate Jacobi realization (7), strict all-minor Hankel positivity (8), and the explicit off-real two-atom obstruction (10) follow from classical integral/spectral tools and the exact Riemann theta source. They do not prove the positive Fredholm determinant of Xi or RH. The required Toeplitz/Schur inequalities (9) remain unproved independently of any external RH result.

**Formal status:** original Mathlib Xi is used as a source reference; the five new Lean source candidates and all transitive candidate dependencies have **elaboration NOT_RUN / fresh kernel NOT_RUN / axiom audit NOT_RUN**. The infinite-dimensional multiplication, Carleman and Andréief arguments are **not implemented in Lean** by this file. Exact finite computations are a mathematical regression, not a verified source theorem. External independent mathematical review and worldwide novelty evaluation are not claimed: the theta representation, Andréief, Carleman and Jacobi orthogonalization are classical methods.

**Direct continuation:** prove a nonlinear source-faithful map from the actual continuous theta moment operator (7), or from the original prime-powered Jacobi, to a discrete positive trace-class inverse-square operator with exact Xi divisor. To prove it *without circularity*, supply the universal original theta Schur/Toeplitz positivity or an independent global Stieltjes representation carrying integer zero multiplicities. No shorter upgrade from mere Gram positivity or an external RH theorem is permitted in this lane.

The [Bernoulli reconstruction and radial determinant](XiBernoulliProjectiveSpectrum.md) use positive even xi samples to give rational Jacobi recurrence data, an exact single-argument angular defect, and a bounded integer determinant test.
