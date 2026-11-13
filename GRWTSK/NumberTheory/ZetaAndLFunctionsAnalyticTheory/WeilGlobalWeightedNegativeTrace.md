# Translation-covariant, all-support weighted Sobolev negative-trace bound for the actual zeta Weil form

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (zeta-function zero distribution), 46E35 (Sobolev spaces), 47B10 (trace ideals), 42A82 (positive definite functions).

**EVIDENCE:** WRITTEN_ANALYTICAL_ARGUMENT; LOCAL_EXACT_RATIONAL_CONSTANT_AUDIT_RUN (Python 3.13.5, exit 0); LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; LOCAL_ZETA_ZERO_ISOLATION_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; NOVELTY_UNASSESSED. Published zero-height verification and unconditional zero-counting are external mathematical premises, not local software runs. Neither this manuscript nor the finite rational audit proves RH, finite off-line zeta zeros, finite global negative index, or primitive Dirichlet GRH.

**Original arithmetic source and precise consumer:** WFDG-1/2 in WeilFixedBumpNegativeDepth.md identifies the COMPLETE pole-inclusive conductor-one zeta Weil distribution, its true compact smooth complex test domain and exact nontrivial-zero pairing. WST-1--5 in WeilSobolevNegativeTraceTail.md proved the support-dependent estimate on H_0^k(-A,A) with coefficient 2Ae^A. WDT-1/2 in WeilDyadicZeroTailFiniteHorizon.md identifies the externally certified height 2^41 and unconditional high-zero counting. The present source replaces the growing support factor by a fixed exponential weight on the WHOLE real line, supplies a true single-Hilbert-space trace-class statement and proves a TRANSLATION-COVARIANT CENTERED FAMILY of bounds for original Weil tests of arbitrary support diameter and location. The centered infimum is not a Hilbert metric: no false negative-index conclusion is inferred.

**Canonical revision and pins:** Live math/main inspected at 52fbea2005046447a2a164a3becd6a75ae22df41, with concurrent changes preserved by create-only publication on main; root AGENTS, CONTRIBUTING and the absence of narrower AGENTS inspected. Lean leanprover/lean4:v4.34.1 and mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 unchanged. Coordinate grwtsk/math issue #1801, scope comment 6843954996. No Lean declarations, imports, sorry, admit, research axioms, pins or CI modified.

## 1. The exact original full Weil form and weighted Hilbert metric

For any f,g in the original complex smooth compact-support domain \(\mathscr D=C_c^\infty(\mathbb R;\mathbb C)\), put
\[
\widetilde g(x)=\overline{g(-x)},\quad
Q(f,g)=W(f*\widetilde g),\quad Q(f)=Q(f,f).
\tag{1}
\]
Here W is the ORIGINAL complete zeta Weil distribution as printed by Suzuki (arXiv:2606.09096v3, p.1): BOTH zeta pole orientations, ALL von Mangoldt prime-power terms, the origin regularization and the complete archimedean gamma term. Its true spectral return is
\[
\boxed{
Q(f,g)=\sum_{\rho\in Z_{\rm distinct}}m_\rho
F_f(\rho)\overline{F_g(\tau\rho)},\quad
F_f(\rho)=\int_{\mathbb R}f(x)e^{(\rho-1/2)x}\,dx,\quad
\tau\rho=1-\overline\rho .
}
\tag{2}
\]
All nontrivial complex zero positions and their positive integer multiplicities are retained. The SAME zeta divisor is invariant under tau, including multiplicities. For an off-line zero, \(F_f(\rho)\overline{F_f(\tau\rho)}\) is a genuine signed reflected pairing, NOT \(|F_f(\rho)|^2\). On the critical line \(\tau\rho=\rho\), and the term is nonnegative. WFDG-1/2 supplies the complete source-return identity (2), not a substitute model.

Zeta has no real zero in the critical strip (in particular \(\zeta(1/2)\ne0\)). Every nontrivial zero therefore has \(z_\rho=\rho-1/2\ne0\), even if a hypothetical off-line zero exists. All zero sums below are absolutely convergent by the published zero count and the derivative estimates proved next.

Fix an exponential weight rate \(\alpha>1/2\), integer \(k\ge1\), and center \(c\in\mathbb R\). Define the actual norm on the original smooth test domain
\[
\boxed{
\|f\|_{\alpha,k,c}^2=
\int_{\mathbb R} e^{2\alpha|x-c|}|f^{(k)}(x)|^2dx
}
\tag{3}
\]
and let \(\mathcal H_{\alpha,k,c}\) be its abstract Hilbert completion. It is a norm, not just a seminorm: if the kth derivative of a compactly supported smooth function vanishes, the function is a polynomial of degree <k and compact support forces it to be zero. Different \((\alpha,k,c)\) define DIFFERENT Hilbert metrics and different representing operators; their eigenvalues cannot be identified without accounting for this.

## WGW-1. A uniform entire-line evaluation bound for every actual zeta zero

**Theorem (elementary, unconditional).** For every original test f, EVERY center c, EVERY \(z\in\mathbb C\) with \(z\ne0\) and \(|\Re z|<1/2\),
\[
\boxed{
\left|\int_{\mathbb R}f(x)e^{zx}dx\right|^2
\le
\frac{\alpha}{\alpha^2-(\Re z)^2}\,
\frac{e^{2(\Re z)c}}{|z|^{2k}}\,
\|f\|_{\alpha,k,c}^2 .
}
\tag{4}
\]
In particular at c=0, the completely support-independent envelope is
\[
\boxed{
|F_f(\rho)|^2
\le
\beta_\alpha |z_\rho|^{-2k}\|f\|_{\alpha,k,0}^2,
\qquad
\beta_\alpha:=\frac{\alpha}{\alpha^2-1/4}.
}
\tag{5}
\]

**Proof.** Smooth compact support makes all k integration-by-parts boundary terms identically zero:
\[
\int f(x)e^{zx}dx=(-z)^{-k}\int f^{(k)}(x)e^{zx}dx.
\]
Let \(\delta=\Re z\). Weighted Cauchy--Schwarz with weight \(e^{\alpha|x-c|}\) gives
\[
\left|\int f^{(k)}(x)e^{zx}dx\right|^2
\le
\|f\|_{\alpha,k,c}^2
\int_{\mathbb R}e^{2\delta x-2\alpha|x-c|}dx .
\]
Changing variables y=x-c and splitting at zero computes the remaining integral EXACTLY:
\[
\begin{aligned}
\int_{\mathbb R}e^{2\delta x-2\alpha|x-c|}dx
&=e^{2\delta c}\left(
\frac1{2(\alpha-\delta)}+\frac1{2(\alpha+\delta)}\right)\\
&=e^{2\delta c}\frac{\alpha}{\alpha^2-\delta^2}.
\end{aligned}
\]
The integral is finite because alpha>1/2>=|delta|. For c=0 its upper bound is beta_alpha uniformly over the entire critical strip, proving (4)--(5). No RH, zero-free substrip or assumption of small test support is used. QED.

**Important center restriction:** For the individual off-line zero evaluation, e^(2delta c) cannot be omitted when c!=0. We will obtain the centered bounds by translating the WHOLE original quadratic form, not by incorrectly claiming that each off-line evaluation is invariant under translation.

## WGW-2. All unknown zeros form one global trace-class correction

Let \(H=2^{41}=2\,199\,023\,255\,552<3\cdot10^{12}\). Platt--Trudgian's published rigorous verification shows that EVERY actual nontrivial zeta zero with |Im rho|<H lies on Re rho=1/2 (for negative ordinates use conjugation). Hence (2) splits EXACTLY as
\[
Q=Q_{\rm low}+Q_{\rm high},\qquad
Q_{\rm low}(f)=\sum_{|\Im\rho|<H}m_\rho|F_f(\rho)|^2\ge0,
\tag{6}
\]
with an explicit HIGH remainder consisting of EVERY remaining genuine zeta zero, whether on or off the line. No finite check has been promoted to universal zero coverage.

Set
\[
C_{k,N}=\sum_{\substack{\rho\in Z_{\rm distinct}\\|\Im\rho|\ge2^N}}
m_\rho|z_\rho|^{-2k}.
\tag{7}
\]
The unconditional Hasanalizade--Shen--Wong Riemann zero-counting theorem implies the deliberately coarse bounds \(N_\zeta(T)<T\log T<T^2\) for all T>=64. Consequently the positive and negative-ordinate zeros, COUNTED WITH MULTIPLICITY, number fewer than
\(2^{n+2}(n+1)\log2\) in each dyadic block \(2^n\le|\Im\rho|<2^{n+1}\), and also fewer than \(2^{2n+3}\). Since \(|z_\rho|\ge|\Im\rho|\),
\[
\begin{aligned}
C_{1,N}
&<4\log2\sum_{n\ge N}(n+1)2^{-n}
=\boxed{8(N+2)(\log2)2^{-N}},\\
C_{k,N}
&<8\sum_{n\ge N}2^{-2(k-1)n}
=\boxed{\frac{8\,2^{-2(k-1)N}}{1-2^{-2(k-1)}}}
\quad(k\ge2).
\end{aligned}
\tag{8}
\]
The first summation uses the exact identity
\(\sum_{n\ge N}(n+1)2^{-n}=(2N+4)2^{-N}\). The second is a geometric progression. They bound infinitely many high zeros, not a numerical truncation.

**Theorem (global trace-class original Weil source).** On ONE fixed Hilbert completion \(\mathcal H_{\alpha,k,0}\) of the original full smooth test space, the high-zero pairing (2) extends to a SELF-ADJOINT trace-class operator \(T_{\rm high}\) satisfying
\[
\boxed{
\|T_{\rm high}\|_1
\le\varepsilon_{\alpha,k}
:=\beta_\alpha C^{\rm up}_{k,41},
}
\tag{9}
\]
where \(C^{\rm up}_{1,41}=8\cdot43\log2\,2^{-41}\) and for k>=2,
\(C^{\rm up}_{k,41}=8\,2^{-82(k-1)}/(1-2^{-2(k-1)})\).
The full original Q extends to a compact self-adjoint trace-class operator
\(T_{\alpha,k}=T_{\rm low}+T_{\rm high}\),
where \(T_{\rm low}\) is FINITE RANK and POSITIVE SEMIDEFINITE.

**Proof.** Each actual zero evaluation functional
\(\ell_\rho(f)=F_f(\rho)\) is continuous on this completion by (5), with Riesz norm
\(\|\ell_\rho\|^2\le\beta_\alpha|z_\rho|^{-2k}\).
The true partner is \(\tau\rho=1-\overline\rho\), with \(z_{\tau\rho}=-\overline{z_\rho}\), hence \(|z_{\tau\rho}|=|z_\rho|\) and the same estimate applies. The source-exact contribution of rho in (2) is a rank-one cross-pairing of these two functionals. Its trace norm is at most
\(\|\ell_\rho\|\|\ell_{\tau\rho}\|\le\beta_\alpha|z_\rho|^{-2k}\).
Summation over ALL high zeros with their true multiplicities converges absolutely in trace norm by (8). Tau preserves the full high divisor and multiplicity; it interchanges each rank-one term with its adjoint, so the aggregate T_high is self-adjoint. The low zeros are finite in number and each has \(\tau\rho=\rho\); therefore T_low is a finite sum of positive rank-one operators and is positive semidefinite. Both operators are compact; their sum represents EXACTLY Q on the dense ORIGINAL smooth test domain, because (2) holds there and all terms converge. This proves (9). QED.

**No source substitution:** T_alpha,k is merely the representation of the ORIGINAL Q in the chosen global weighted derivative Hilbert metric; its eigenvalues depend on that metric. No imaginary-axis projection of off-line zeros or replacement by positive absolute squares was made.

## WGW-3. Dimension-independent all-support negative spectral mass, not negative INDEX

**Theorem.** Let \(\{\lambda_j<0\}\) denote the actual negative eigenvalues of \(T_{\alpha,k}\), with spectral multiplicity. Then
\[
\boxed{
\sum_{\lambda_j<0}|\lambda_j|
\le\varepsilon_{\alpha,k},\qquad
\#\{\lambda_j\le-\eta\}
\le\frac{\varepsilon_{\alpha,k}}{\eta}
\quad\text{for every }\eta>0.
}
\tag{10}
\]
Moreover for every original test \(f\in\mathscr D\),
\[
\boxed{Q(f)\ge-\varepsilon_{\alpha,k}\|f\|_{\alpha,k,0}^2.}
\tag{11}
\]
No restriction on the width or placement of supp(f) occurs in either assertion.

**Proof.** Since T_low>=0, for any finite orthonormal family of negative eigenvectors e_1,...,e_m of T_alpha,k,
\[
\sum_{j=1}^m(-\lambda_j)
\le\sum_j|\langle T_{\rm high}e_j,e_j\rangle|
\le\|T_{\rm high}\|_1
\le\varepsilon_{\alpha,k},
\]
using the standard trace-class diagonal bound. Supremize over finite families to obtain the first inequality; each eigenvalue <=-eta consumes at least eta of the total negative mass, proving the second. Inequality (11) follows independently from T_low positivity and the trace/operator norm bound on T_high. QED.

**Finite matrix consequence:** For any number m of ORIGINAL compact smooth tests f_1,...,f_m which are ORTHONORMAL IN THE FIXED GLOBAL weighted kth-derivative inner product, the true Hermitian Weil Gram matrix \(G_{ij}=Q(f_i,f_j)\) has total negative eigenvalue magnitude at most epsilon_alpha,k and # eigenvalues <=-eta at most epsilon_alpha,k/eta. For an arbitrary nonorthonormal family, the same statement applies to the GENERALIZED eigenvalues relative to its weighted Sobolev Gram matrix (provided the tests are linearly independent); no raw Euclidean coefficient norm is smuggled in. There is no matrix-size factor in the bound.

## WGW-4. Every center: a genuinely translation-covariant necessary witness constraint

The original physical Weil form is EXACTLY translation invariant:
\[
Q(f(\cdot+c))=Q(f),
\tag{12}
\]
because \((f(\cdot+c))*\widetilde{(f(\cdot+c))}
=f*\widetilde f\) as functions (the two translation phases cancel). Apply (11) to the translated ORIGINAL test \(g_c(y)=f(y+c)\), and substitute x=y+c. This yields for EVERY center c in R the SOURCE-EXACT bound
\[
\boxed{
Q(f)\ge-\varepsilon_{\alpha,k}
\int_{\mathbb R}e^{2\alpha|x-c|}|f^{(k)}(x)|^2dx
\quad
(\forall f\in\mathscr D,\ \forall c\in\mathbb R).
}
\tag{13}
\]
The same spectral bounds (9)--(10) hold in each centered completion \(\mathcal H_{\alpha,k,c}\): translation gives a unitary equivalence between these centered Hilbert realizations and intertwines the SAME original Q. This is an honest family of all-support theorems, not a hidden dependence on the support center.

Define the translation-invariant, but generally NONQUADRATIC, centered cost
\[
\mathcal W_{\alpha,k}(f)=
\inf_{c\in\mathbb R}\int_{\mathbb R}
e^{2\alpha|x-c|}|f^{(k)}(x)|^2dx.
\tag{14}
\]
For nonzero compact smooth f the infimum is positive and attained: the integrand in c is continuous, diverges as |c|->infinity, and its value is always at least ||f^(k)||_2²>0. The cost is shift invariant because c is optimized over all real centers. Taking the strongest of (13) gives
\[
\boxed{Q(f)\ge-\varepsilon_{\alpha,k}\mathcal W_{\alpha,k}(f).}
\tag{15}
\]
The optimization is made AFTER the correct translation-invariant original-source inequality; it is NOT obtained by incorrectly removing an off-line exponential factor from a single zero evaluation. Crucially \(\mathcal W_{\alpha,k}\) is an infimum of quadratic forms, in general fails the parallelogram law, and is NOT the squared norm of the single Hilbert space in WGW-2. Spectral conclusions (9)--(10) are made only for FIXED centers.

**Negative-witness severity (real arithmetic consequence).** Suppose an actual compact smooth zeta Weil test f satisfies, for some \(\delta>0\),
\[
Q(f)\le-\delta\|f\|_2^2.
\]
From (15) it necessarily follows that
\[
\boxed{
\mathcal W_{\alpha,k}(f)\ge
\frac{\delta}{\varepsilon_{\alpha,k}}\|f\|_2^2.
}
\tag{16}
\]
In particular, the explicit strict \(k=3,\alpha=1\) error budget below gives
\[
\boxed{
Q(f)\le-\delta\|f\|_2^2
\Longrightarrow
\inf_{c\in\mathbb R}\int e^{2|x-c|}|f'''(x)|^2dx
>2^{160}\delta\|f\|_2^2.
}
\tag{17}
\]
This does NOT rule out any negative Weil test; it gives a genuine quantified necessary regularity cost for every such test at a prescribed L2-normalized negative depth.

## WGW-5. Exact constants, locally RUN audit and absolute verification limits

The infinite arithmetic tail (8) and alpha=1 give \(\beta_1=4/3\). Thus
\[
\begin{aligned}
\varepsilon_{1,1}
&<\frac43\cdot8\cdot43(\log2)\,2^{-41},\\
\varepsilon_{1,2}
&<\frac43\cdot\frac{32}{3}\,2^{-82}
=\frac{128}{9}2^{-82},\\
\varepsilon_{1,3}
&<\frac43\cdot\frac{128}{15}\,2^{-164}
=\frac{512}{45}2^{-164}.
\end{aligned}
\tag{18}
\]
Using the rigorous rational inequality log2<7/10, exact rational comparisons establish
\[
\boxed{
\varepsilon_{1,1}<2^{-32},\quad
\varepsilon_{1,2}<2^{-78},\quad
\varepsilon_{1,3}<2^{-160}.
}
\tag{19}
\]
For a stronger rate alpha=2 (a stronger/incomparable weight metric), beta_2=8/15 and
\[
\boxed{\varepsilon_{2,3}<2^{-161}.}
\tag{20}
\]
As alpha->infinity the coefficient shrinks but the weighted derivative norm generally grows; taking that limit does NOT imply positivity of Q. Likewise sending k->infinity while changing the derivative norm is invalid for nonzero compact smooth tests (Paley--Wiener/analyticity obstruction).

**Exact rational audit:** Adjacent WeilGlobalWeightedTailConstants.py, 1782 UTF-8 bytes, local SHA-256 3604ab3547b1a42edb8185f5b01ed7df3687ef8704855ff12110f2eb7fed2b3d, Git blob 734596637a156a05b887082afb73776eaa4a3210 matching the locally executed file. Actual command run:
\[
\texttt{python /mnt/data/wgw/WeilGlobalWeightedTailConstants.py}
\]
Python 3.13.5; exit status 0, output:
WEIL_GLOBAL_WEIGHTED_CONSTANTS: PASS.
The script uses fractions.Fraction and verifies H=2^41<3*10^12, alpha factors 4/3,12/5,8/15, exact geometric tail formulas for k=2,3, and the three rational comparisons (19) plus (20). It does NOT prove the analytic source-return, infinite zeta-zero count or Hilbert trace-class theorem, and it does not run local interval-arithmetic zero certification.

**Explicit false conclusions excluded:**
1. A trace-class self-adjoint operator can have infinite negative index: on ell², diag(-epsilon*2^(-j-1)) for j>=0 has arbitrarily small total negative trace and infinitely many negative eigenvalues. Thus (10) is NOT finite-index control, and cannot prove RH.
2. The centered cost (14) is NOT one fixed Hilbert squared norm, so (15) does not provide a translation-invariant trace-norm spectral theorem in that optimized metric. The family of FIXED-center weighted Hilbert operators is valid and unitarily equivalent; their optimized infimum is distinct.
3. The exponentially weighted norm grows rapidly when a test is translated away from the chosen center. No unweighted L2, H1, or uniform support-free coercivity is inferred. On tests supported in [-A,A] one can recover a support-dependent estimate by bounding e^{2alpha|x|}<=e^{2alpha A}; this recovers rather than refutes the fixed-window dependence in WST.
4. Changing k, alpha or center changes the Hilbert reference metric; small negative eigenvalue MASS in that metric cannot count the negative directions in the original algebraic test space. In particular the support-width-independent coefficient is not an all-scale signed prime-cancellation theorem.
5. Every off-axis high zero and its complex reflected partner enters Q_high with true multiplicity and phase. Only known low zeros, certified below the stated FINITE height, are declared positive; no all-height RH assertion is made. For primitive Dirichlet characters, conductor/gamma/parity and dual-character zero counts require separate certified input and transfer theorems; no GRH follows.
6. The original W is the full POLE-INCLUSIVE zeta arithmetic distribution, not a gamma-free approximation. The zero-side expression (2) is the exact standard explicit-formula return; no divergent prime series outside the Euler region or positive auxiliary encoding is used.

**Primary prior-art and original-source locators:**
- Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to \(3\cdot10^{12}\)*, Bull. Lond. Math. Soc. 53 (2021), 792--797, DOI 10.1112/blms.12460: external rigorous low-zero verification ONLY.
- E. Hasanalizade, Q. Shen and P.-J. Wong, *Counting zeros of the Riemann zeta function*, J. Number Theory 235 (2022), 219--241, DOI 10.1016/j.jnt.2021.06.032, Corollary 1.2: unconditional total zero counts with explicit error; coarse N(T)<T log T and N(T)<T² for T>=64.
- M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), p. 1: complete source Weil distribution. WFDG-1/2 supplies exact divisor and pole source return.
- Predecessor WST-1--5, WeilSobolevNegativeTraceTail.md (this repository), support-dependent high-zero trace bound. WGW-1--5 are a full-line weighted-exponential variation of that classical Hilbert/trace argument; no novelty or independent verification is claimed.

**First unresolved arithmetic premise:** An ALL-SUPPORT, source-exact finite NEGATIVE INDEX or nonnegativity theorem for the original zeta Weil form in the unmodified test domain and corresponding primitive Dirichlet families, without assuming RH/GRH. Weighted negative trace mass alone, even with a translation-invariant optimized inequality, does NOT establish that premise. Lean formalization, fresh kernel replay, axiom audit and independent analytical review remain NOT_RUN; originality UNASSESSED. No Noe proof automation, scheduler, cross-chat messaging or browser-conversation orchestration was dispatched because its canonical skill source was inaccessible; manual authorized mathematical source publication is independent of that unavailable workflow.
