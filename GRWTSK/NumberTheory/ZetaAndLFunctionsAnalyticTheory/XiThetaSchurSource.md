# Exact Riemann-theta source for every Xi Toeplitz/Schur minor and the genuine prime–gamma–pole resolvent

**Consumer:** [math #1849](https://github.com/grwtsk/math/issues/1849) (independent prime Jacobi Hilbert–Pólya), [#124](https://github.com/grwtsk/math/issues/124) (trace-ideal determinant/divisor), [#1850](https://github.com/grwtsk/math/issues/1850) (original signed Chebyshev/Alpöge intermediate Gm), [#1828](https://github.com/grwtsk/math/issues/1828) (original RH and GRH targets), and the existing maintained [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean) (source blob c13af5685959cd2b6e7a684035092e0e0a24e432).

**Original root mathematical source:** grwtsk/math@f918811ec09fa56c8aa6ef57124114e6f578a38d, Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Exact Mathlib source is \`Mathlib/NumberTheory/LSeries/RiemannZeta.lean\`: \`completedRiemannZeta₀\`, \`completedRiemannZeta₀_one_sub\`, \`differentiable_completedZeta₀\`, and \`completedRiemannZeta_eq\`. Our \`sourceXi(s)=(1+s(s-1)completedRiemannZeta₀(s))/2\` is the genuine pole-removed xi, equal to \(\tfrac12 s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s)\) away from s=0,1.

**Mathematical prior art (distinct objects are NOT conflated):** E. Riemann, 1859 theta/Fourier representation; K. Rietsch, *Totally Positive Toeplitz Matrices: Classical and Modern*, ICM 2026, Theorem 1.1 (Edrei classification), https://doi.org/10.1137/25M1806727; I.G. Macdonald / R.P. Stanley, skew Jacobi–Trudi and Littlewood–Richardson, see https://www.symmetricfunctions.com/polyaFrequency.htm ; Suvrit Sra, *On some positivity properties of the Riemann Ξ function*, v3 2 November 2026, https://suvrit.github.io/papers/riem-xi/ (the **reciprocal-Xi densities**, not the direct Taylor sequence in this note); Cardon, *Extended Laguerre Inequalities and a Criterion for the Reality of Zeros*, https://mathdept.byu.edu/cardon/papers/criterion_for_reality_arXiv.pdf ; Bickel–Pascoe–Sargent, *Zero-free regions near a line*, https://par.nsf.gov/servlets/purl/10509853 (log-derivative Hankel representation). The external independently published RH proof, including Alpöge's source, is **not imported, assumed, or used** here; it supplies direction only.

## I. Unconditional exact theta kernel of the ACTUAL Xi

Let \(\xi(s)=\tfrac12 s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s)\), \(\Xi(z)=\xi(\tfrac12+iz)\). The Riemann theta functional equation and integration by parts give the **literal** Fourier cosine representation
\[
\Xi(z)=\int_0^\infty\Phi(u)\cos(zu)\,du,
\quad
\Phi(u)=4\sum_{m=1}^\infty
  \left(2\pi^2m^4e^{9u/2}-3\pi m^2e^{5u/2}\right)
  e^{-\pi m^2 e^{2u}},\qquad u\ge0.
\tag{1}
\]
For every integer m≥1, u≥0, the m-th theta summand factors as
\[
4\pi m^2 e^{5u/2}(2\pi m^2e^{2u}-3)e^{-\pi m^2e^{2u}}>0
\]
because \(2\pi>3\). Hence \(\Phi(u)>0\). The theta tail is superexponentially integrable, including against every polynomial in u and against \(\cosh(tu)\) for any finite real t. Set
\[
M_{2n}:=\int_0^\infty u^{2n}\Phi(u)\,du,\qquad
M_0=\Xi(0)=\xi(\tfrac12)>0.
\]
The genuine even Taylor coefficients are
\[
\boxed{a_n=\frac{M_{2n}}{(2n)!M_0}>0,\quad
\frac{\xi(\tfrac12+\sqrt w)}{\xi(\tfrac12)}
=\sum_{n=0}^\infty a_n w^n.}\tag{2}
\]
Evenness follows from the original completed-zeta functional equation. The branch of \(\sqrt w\) is immaterial; the right side defines an entire order-1/2 function \(F(w)\), with F(0)=1. The equality in (2) is a **mathematical source theorem**, not yet a formal Lean Fourier-theta/Taylor derivation. The ROOT Lean file reuses the exact \`normalizedEvenXiTaylor\` coefficients already defined in XiToeplitzHilbertPolyaCriterion.lean, avoiding a second surrogate Xi object.

## II. An exact multiple integral for EVERY Toeplitz minor

For natural \(r_1<\cdots<r_k\) and \(c_1<\cdots<c_k\), define the true original array \(T_{ij}=a_{c_j-r_i}\), with \(a_m=0\) for m<0. Use (2) independently in each determinant column and expand the finite determinant:
\[
\boxed{
\det_{i,j\le k}a_{c_j-r_i}
=\frac1{M_0^k}\int_{[0,\infty)^k}
\det_{i,j\le k}\!\left[
\mathbf 1_{c_j\ge r_i}
\frac{u_j^{\,2(c_j-r_i)}}{(2(c_j-r_i))!}
\right]\prod_{j=1}^k\Phi(u_j)\,du_j.
}\tag{3}
\]
Every interchanged sum/integral is finite, and the theta superexponential decay justifies every factor. This is an **exact all-rank source formula**, not a truncated approximation. It retains the full theta/gamma/pole normalization because it equals the ACTUAL completed xi.

**This is not automatically a nonnegative integral.** The internal determinant can have either sign even when every \(\Phi(u_j)>0\). A sum/mixing of totally positive exponential-factor kernels is not generically totally positive. The independent hostile positive measure \(\mu=\tfrac34\delta_0+\tfrac14\delta_1\) gives \(a_0=1,a_1=1/8,a_2=1/96,a_3=1/2880\), but the actual shifted Toeplitz minor
\[
\det\begin{pmatrix}a_1&a_2&a_3\\a_0&a_1&a_2\\0&a_0&a_1\end{pmatrix}
=a_1^3-2a_1a_2+a_3=-7/23040<0.
\tag{4}
\]
Thus **positive theta moments, positive Gram matrices, all finite Jacobi heat contractions, or positive Fourier coefficients do not prove all-minor positivity**. The specific inequality for the actual Riemann theta kernel remains the RH-equivalent step.

## III. Strictly smaller indexing: ALL ordinary Schur specializations

Given the genuine original complete-homogeneous specialization \(h_n:=a_n\), define for each partition \(\lambda=(\lambda_1\ge\cdots\ge\lambda_k\ge0)\) the ordinary Schur determinant
\[
s_\lambda[a]:=\det_{1\le i,j\le k}a_{\lambda_i-i+j}.
\tag{5}
\]
The skew Jacobi–Trudi theorem identifies *every* Toeplitz minor (possibly zero) with some skew \(s_{\lambda/\mu}[a]\), after harmless row/column reversal and common index shifting. The Littlewood–Richardson rule gives
\[
s_{\lambda/\mu}[a]
=\sum_{\nu}c_{\mu,\nu}^\lambda\,s_\nu[a],
\qquad c_{\mu,\nu}^\lambda\in\mathbb N.
\]
Conversely, every ordinary \(s_\lambda[a]\) is a Toeplitz minor: take \(r_i=i-1\) and \(c_j=\lambda_{k+1-j}+j-1\), then transpose and reverse both index orders. Therefore
\[
\boxed{\mathrm{PF}_\infty(a)
\quad\Longleftrightarrow\quad
s_\lambda[a]\ge0\ \text{for every ordinary partition }\lambda.}\tag{6}
\]
This removes redundant arbitrary-index minors from the **proof obligation**, not the requirement for a universal all-partition theorem. No Schur positivity is assumed or proved by the reduction.

Substituting (2) gives the complete genuine source formula for every partition:
\[
\boxed{
s_\lambda[a]=\frac1{M_0^k}
\int_{[0,\infty)^k}
\det_{i,j}
\left[
\mathbf1_{\lambda_i-i+j\ge0}
\frac{u_j^{2(\lambda_i-i+j)}}{(2(\lambda_i-i+j))!}
\right]
\prod_j\Phi(u_j)\,du_j.
}\tag{7}
\]
To finish an **independent** proof, prove (7) nonnegative **for every partition** using properties of the literal \(\Phi\), not by importing RH, selecting zero ordinates, or replacing it with an arbitrary positive kernel.

## IV. First explicit full-source Schur obstructions

The first two meaningful column-partition conditions reduce to exact, low-degree inequalities in the actual theta moments:
\[
\boxed{s_{(1,1)}=a_1^2-a_2
=\frac{6M_2^2-M_0M_4}{24M_0^2}\ge0,}\tag{8}
\]
\[
\boxed{s_{(1,1,1)}=a_1^3-2a_1a_2+a_3
=\frac{90M_2^3-30M_0M_2M_4+M_0^2M_6}{720M_0^3}\ge0.}\tag{9}
\]
These exact formulas are unconditional identities. The displayed inequalities are REQUIRED source obligations; they are not implied by \(\Phi\ge0\). A real example of the failure is (4). The root Lean source XiThetaSchurSource.lean retains the a0 factors for arbitrary a and simplifies only under a0=1, so it does not misstate the 3×3 determinant.

The proposed positive-operator trace sums supply still stronger conditions. For \(F(w)=\det(I+wK)\),
\[
\frac{d}{dw}\log F(w)
=\operatorname{Tr}\bigl(K(I+wK)^{-1}\bigr),\qquad
p_j:=\operatorname{Tr}(K^j)=\sum_\ell\lambda_\ell^j\ge0.
\]
Newton's identities, entirely determined by the original \(\Xi\) Taylor coefficients, give
\[
p_1=a_1=\frac{M_2}{2M_0},
\quad
p_2=a_1^2-2a_2=\frac{3M_2^2-M_0M_4}{12M_0^2},
\quad
p_3=a_1^3-3a_1a_2+3a_3
=\frac{30M_2^3-15M_0M_2M_4+M_0^2M_6}{240M_0^3}.
\tag{10}
\]
A genuine positive operator also forces **all Hankel inequalities** \( (p_{i+j+1})_{i,j\ge0}\succeq0\) and the corresponding shifted Stieltjes moment conditions. These are nontrivial source constraints and not consequences of each \(a_n>0\). The hostile positive measure above even yields \(p_2=-1/192<0\), despite \(s_{(1,1)}>0\).

## V. The complete PRIME + GAMMA + POLE resolvent identity

The theta source alone does not explicitly display the prime-power weights. They reappear **exactly**, without a conjecture, through the source's Euler product and logarithmic derivative. Define for real \(w>1/4\):
\[
t=\sqrt w,\ s=\tfrac12+t>1,\qquad
G_\xi(w):=\frac{F'(w)}{F(w)}
=\frac1{2t}\frac{\xi'(s)}{\xi(s)}.
\]
On this genuine source domain the entire completed expression gives
\[
\boxed{
G_\xi(w)=\frac{1}{2t}\left[
\underbrace{\frac1s+\frac1{s-1}}_{\text{original pole corrections}}
\underbrace{-\tfrac12\log\pi
+\tfrac12\psi(s/2)}_{\text{Archimedean gamma factor}}
-\underbrace{\sum_{n=2}^{\infty}\frac{\Lambda(n)}{n^s}}_{\text{all prime powers}}
\right].}\tag{11}
\]
Here \(\psi=\Gamma'/\Gamma\) and the Dirichlet series converges absolutely because s>1. **Every term is from the original arithmetic completed zeta**, including the two pole corrections and full prime-power inventory. The equation is a logarithmic derivative identity, not an assertion that G is a positive Stieltjes resolvent.

The original positive theta kernel also supplies an **unconditionally positive scalar formula** for \(w>0\):
\[
\boxed{
G_\xi(w)=\frac1{2\sqrt w}
\frac{\int_0^\infty u\Phi(u)\sinh(u\sqrt w)\,du}
     {\int_0^\infty \Phi(u)\cosh(u\sqrt w)\,du}
>0.}\tag{12}
\]
This positivity follows from the literal positive kernel. But \(G_\xi(w)>0\) pointwise is MUCH weaker than the Stieltjes property, which requires a positive measure representation and hence a Pick/Nevanlinna analytic sign condition.

If a positive trace-class \(K\) yields the exact Hilbert–Pólya determinant \(F(w)=\det_{\mathrm{Fr}}(I+wK)\), then
\[
\boxed{
G_\xi(w)=\operatorname{Tr}\!\left(K(I+wK)^{-1}\right)
=\sum_j\frac1{w+\gamma_j^2},\quad
K e_j=\gamma_j^{-2}e_j,
}\tag{13}
\]
multiplicities retained and \(\sum_j\gamma_j^{-2}<\infty\). Comparing (11) and (13) is a genuine full-source **prime–gamma–pole resolvent identity**. It is not justified by matching finite traces or finite Jacobi moments.

**Alternative RH-equivalent analytic supplier:** Prove directly, from the source (11)/(12), that \(G_\xi(w)\) is a *Stieltjes function*:
\[
G_\xi(w)=\int_{(0,\infty)}\frac{d\nu(q)}{w+q},
\quad \nu\ge0,\quad \int q^{-1}d\nu(q)<\infty.
\tag{14}
\]
Because F is entire of order 1/2 and F(0)=1, its logarithmic derivative is meromorphic on \(\mathbb C\); a positive Stieltjes representation then forces its poles onto the negative real axis. They have positive **integer residues** equal to the genuine analytic zero multiplicities. The measure is consequently purely atomic, with atoms at \(q=\gamma_j^2>0\), and the finite inverse moment ensures \(K=\operatorname{diag}(q^{-1})\) is positive trace class. The genus-zero product has no missing exponential factor, so integrating (14) with F(0)=1 gives the EXACT entire determinant without an arbitrary prefactor. Conversely the positive determinant produces (14).

This is a faithful inverse-spectral construction **without feeding zero ordinates to the algorithm**, but Stieltjes positivity of the full original G is itself RH-equivalent. Positivity of its first few derivatives, positive moments, or a finite Hankel matrix does not establish (14). See the cited Stieltjes/Widder and log-derivative-Hankel literature; these equivalences are not claimed globally novel.

## VI. What “complete Hilbert–Pólya” must additionally mean

Under a fully proved all-partition positivity theorem (6), Edrei–Thoma classification and the fact F is entire of order 1/2 force
\[
F(w)=\prod_j(1+\lambda_jw),\quad
\lambda_j>0,\quad\sum_j\lambda_j<\infty,
\]
with no e^{cw} or denominator factors. Define \(K e_j=\lambda_je_j\), and the positive self-adjoint \(H_+=K^{-1/2}\) on the genuine unbounded domain \(\{v:\sum_j|v_j|^2/\lambda_j<\infty\}\). The exact identity becomes
\[
\boxed{\Xi(z)=\Xi(0)\det_{\mathrm{Fr}}(I-z^2H_+^{-2})}
\]
for all complex z, matching zero multiplicities and without any external entire correction. The true xi Taylor sequence determines the operator **up to unitary equivalence**, but the positivity/PF∞ result needed to construct this positive spectrum is equivalent to RH. Naming \(K\) through its factors is NOT an independent arithmetic construction until the direct theta-source inequalities are proved.

The existing prime-built Jacobi J_n is self-adjoint *mathematically* by the prime reciprocal divergence/Carleman criterion but is not known to have this spectrum, compact resolvent, or trace-class inverse square. Its odd finite sections have a forced zero at 0, while Xi(0)>0. Hence neither a finite Jacobi determinant nor a positive Hodge/heat norm may be silently substituted for the actual xi Schur source.

To connect this entire determinant to the **signed Weil criterion** or Alpöge's original \`Level.Gm\` and GRH, a separate source-exact trace formula over the full test space must match every prime-power term, gamma/pole/conductor/parity, and every omitted spectral tail. The scalar Euler-source equality (11) is an essential starting point but **does not itself establish** the complete Weil quadratic identity. For non-real primitive Dirichlet characters, the completed L-function's functional equation pairs χ with \(\bar\chi\); an even zeta-only Fredholm determinant does not imply GRH for all characters.

## VII. Evidence, falsifiers and independent source status

- Exact standard-library rational checker \`/mnt/data/xi_theta_schur_exact_minors_2026_11_22.json\`: **125** ordinary partition-Schur nonnegative finite positive-spectrum identities, **125** matching Toeplitz embeddings, and **5** exact finite-column theta integral formulas (atomic measure models). The \(\frac34\delta_0+\frac14\delta_1\) positive measure gives negative 3×3 Schur minor \(-7/23040\) and negative log trace \(-1/192\).
- The earlier direct true-Xi numeric Fourier/Taylor checks cover 8,884 small Toeplitz minors, none robustly negative. They are exploratory and not rigorous all-rank certificates. The existence of a **genuine nonnegative formula for (7) valid for ALL partitions** is the exact, RH-equivalent, unresolved analytic step.
- The new Lean source \`XiThetaSchurSource.lean\` contains **seven source-level algebra proof candidates** for the Schur determinant formula, normalized a0=1 return, 2×2 and 3×3 raw-moment numerators, low-order log trace and hostile source. The actual Fourier/theta moment equality, Littlewood–Richardson reduction, Edrei classification, Stieltjes existence and prime/gamma/pole resolvent are **NOT FORMALIZED OR KERNEL-CHECKED** by that file.
- The external 2026 RH claim is consulted only for context/direction. **NO external RH theorem is an axiom, premise, import, or supplied source positivity certificate**. The presently constructed positive trace-class operator is CONDITIONAL. Full independent RH/GRH is NOT established.

**Decisive continuation**: prove one of the following against the literal (1)/(11), with a source-independent analytic argument: (a) \(s_\lambda[a]\ge0\) for every partition λ; (b) the true \(G_\xi\) is a Stieltjes transform of a positive measure; (c) a complete Weil quadratic/form trace identity with a positive Hilbert operator. These are equivalent in RH-strength but differ in proof mechanisms. A finite computation or ordinary theta-moment positivity cannot discharge any of them.
