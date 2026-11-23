# An unconditional zero-independent trace-class Fredholm linearization of the actual Riemann Xi

**Attribution:** grwtsk contributors. **Source status:** complete classical analytic argument, independent mathematical review NOT_RUN; adjacent Lean proof candidates do NOT formalize the infinite determinant and their elaboration/kernel/axiom checks are NOT_RUN. The construction is an exact **non-self-adjoint** original-Xi operator, NOT a completed independent Hilbert–Pólya proof.

**Local pin before work:** grwtsk/math main at 9c57dfe930349319a7107c2e26cfe9de1cbdc6d7, root Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. **Canonical source:** [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean), original Mathlib completedRiemannZeta₀ and sourceXi; [XiThetaSchurSource.md](XiThetaSchurSource.md), true positive theta kernel and original even coefficients; [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md), conditional full-Hankel criterion and exact positive multiplicity lift; [AlpogeMainPrimeArithmetic.md](AlpogeMainPrimeArithmetic.md), exact finite original signed prime cells; [AlpogeXiSmoothedTrace.md](AlpogeXiSmoothedTrace.md), prime/gamma/pole Mellin identity and the older zero-indexed normal Fredholm model; [XiSelfAdjointDefect.md](XiSelfAdjointDefect.md), the original zero-indexed normal-operator skew defect.

**External source inspected for direction only:** Levent Alpöge, [*A remark*](https://alpo.ge/remark.pdf), 20 Nov 2026; original Lean proof in [leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005), especially Main.lean (blob dbd5db70bc11b35f18fa5751216ab335321e7bfc), Statements.lean (1cd1bce93344065936b2b392b23306254e0785ef), Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean (18deb7cb85d6f650a69f01fda6e0c789b9f04d89), Development/AutomorphicArithmetic/PrimitiveCosets/CoreAtH.lean (0ba3621036f19146e7e67fa9c0e8a1c38661a097), CoreGm.lean (3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d), and the original HasWindows predicate (099d96fec932b03a505ea79a81c45bcc3fbf0ea3). Rubinstein's [*The Alpöge–Claude proof ... explained*](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf), working draft 21 Nov 2026, explicitly identifies the theta-integrality, lattice/period, trace, Galois and weighted-assembly inputs on which its statement (M) depends. **No external RH conclusion or (M) is used as a mathematical premise below.**

**Prior mathematics:** classical order and genus of the completed zeta/Xi, rank-one (matrix determinant) lemma, trace-class Fredholm determinant continuity, Newton trace identities, and Hamburger/Stieltjes moment theory. The elementary weighted-shift plus rank-one realization is an operator linearization, not a claim of an unprecedented solution of RH. Reference: B. Simon, *Trace Ideals and Their Applications*, 2nd ed., for determinant continuity and the trace-log identity.

## Theorem: unconditional exact original-Xi Fredholm operator WITHOUT zeros as construction data

Define the original entire completed Riemann function and its normalized square-coordinate transform by
\[
\xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s),\quad
\Xi(z)=\xi(\tfrac12+iz),\quad
F(w)=\frac{\xi(\tfrac12+\sqrt w)}{\xi(\tfrac12)}
=\sum_{n\ge0}a_nw^n,\quad a_0=1.
\tag{1}
\]
The entire continuation across the square root is the original even Taylor expansion; no branch is chosen. The coefficients are also given by the **actual** Riemann theta density \(\Phi\), not by zeta-zero inputs:
\[
a_n=\frac1{(2n)!\,\Xi(0)}
\int_0^\infty u^{2n}\Phi(u)\,du.
\tag{2}
\]
The identity (2) and positivity of \(\Phi\) are classical analytic facts separately recorded in the canonical theta source. They are not yet Lean-formalized in this repository. The real entire \(F\) has order \(1/2\).

Let \(\mathcal H=\ell^2(\mathbb N_0)\), with canonical basis \(e_n\). Set
\[
q_n=(n+2)^{-3/2}>0,\quad
W_0=1,\quad W_n=\prod_{j=0}^{n-1}q_j=((n+1)!)^{-3/2},
\quad v_n=\frac{a_{n+1}}{W_n}.
\tag{3}
\]
Define the **coefficient-independent weighted shift** \(S\), the **coefficient-defined rank-one** operator \(V\), and the original-Xi companion \(K_\Xi\):
\[
Se_n=q_ne_{n+1},\qquad
Ve_n=v_ne_0,\qquad
\boxed{K_\Xi=-S+V.}
\tag{4}
\]
Every input in (3)–(4) is an explicit function of the original theta coefficients and rational/factorial weights. No zeros, zero heights, zero multiplicities, RH assertion or external result is an input.

**Claim 1 (trace class, without RH).** The order-\(1/2\) growth of \(F\) gives \(\sum_n|v_n|^2<\infty\). To see this explicitly, choose any growth exponent \(\rho\) with \(1/2<\rho<2/3\), e.g. \(\rho=3/5\). Cauchy's estimate and \(\log M_F(R)=O(R^\rho)\) give
\[
\log |a_n|\le-\rho^{-1}n\log n+O(n)
=-\tfrac53n\log n+O(n)
\quad(n\to\infty),
\tag{5}
\]
with the zero-coefficient case interpreted separately. Thus
\(\log(|a_{n+1}|((n+1)!)^{3/2})\le-\tfrac16n\log n+O(n)\), proving \(v\in\ell^2\). The real shift \(S\) has singular values \((q_n)\), with \(\sum_nq_n<\infty\), so \(S\) is trace class. The rank-one \(V=e_0\otimes v\) is trace class with trace norm \(\|v\|_2\). Hence \(K_\Xi\) is trace class and compact. This proof does not use a zero location theorem.

**Claim 2 (exact entire determinant).** Since the weights decrease,
\[
\|S^n\|=\sup_{k\ge0}\prod_{j=k}^{k+n-1}q_j
=W_n=((n+1)!)^{-3/2},\qquad
\lim_{n\to\infty}\|S^n\|^{1/n}=0.
\tag{6}
\]
Thus \(S\) is quasinilpotent, and \((I-wS)^{-1}=\sum_{n\ge0}w^nS^n\) converges in operator norm for every complex \(w\). Its Fredholm determinant is identically one: every finite principal compression is a strictly subdiagonal nilpotent matrix with determinant \(1\), and those compressions converge to \(S\) in trace norm.

The rank-one determinant lemma, applied on the actual \(\ell^2\) space, now gives
\[
\begin{aligned}
\det_{\mathrm{Fr}}(I+wK_\Xi)
&=\det_{\mathrm{Fr}}(I-wS+wV)\\
&=\det_{\mathrm{Fr}}(I-wS)\left(1+w\sum_{n=0}^\infty
 v_n W_nw^n\right)\\
&=1+\sum_{n\ge0}a_{n+1}w^{n+1}=F(w).
\end{aligned}
\tag{7}
\]
The series converges for all \(w\), and the two sides are equal as entire functions. Substituting \(w=-z^2\) yields the **exact actual source** identity
\[
\boxed{\Xi(z)=\Xi(0)\det_{\mathrm{Fr}}(I-z^2K_\Xi)}
\quad\text{for all }z\in\mathbb C.
\tag{8}
\]
Fredholm's analytic factorization theorem identifies nonzero eigenvalues \(\lambda\) of the compact \(K_\Xi\) with zeros \(w=-1/\lambda\) of the **true** \(F\), including algebraic multiplicity. This is a spectral CONSEQUENCE, not a spectral input. The full original \(\Xi\) divisor and multiplicities are preserved unconditionally.

## Exact finite-dimensional companion and quantified convergence

Let \(P_N\) project onto the **first N standard basis vectors**, and let \(K_N=P_NK_\Xi P_N\) act on that N-dimensional subspace. In the ordered basis, its only nonzero entries are
\[
(K_N)_{0j}=\frac{a_{j+1}}{W_j}\quad(0\le j<N),
\qquad
(K_N)_{j+1,j}=-q_j\quad(0\le j<N-1).
\tag{9}
\]
This is an explicitly coefficient-constructed Hessenberg matrix, not an eigenvalue-fit. The finite shift is nilpotent of order N. The same rank-one calculation, now a finite polynomial identity, proves
\[
\boxed{\det(I+wK_N)=\sum_{j=0}^Na_jw^j.}
\tag{10}
\]
In particular the determinant of the Nth companion is the **Nth genuine Xi Taylor polynomial**, and nothing about zeta zeros is required. The first two-dimensional instance is
\[
K_2=\begin{pmatrix}a_1&a_2/q_0\\-q_0&0\end{pmatrix},
\quad
\det(I+wK_2)=1+a_1w+a_2w^2.
\tag{11}
\]
These finite identities are independently tested in [../../../scripts/verify_xi_taylor_companion.py](../../../scripts/verify_xi_taylor_companion.py), with symbolic checks through N=6 and exact-rational checks through N=10.

The finite compressions converge in **trace norm** with the explicit source-defined bound, valid for every \(N\ge1\):
\[
\begin{aligned}
\|K_\Xi-P_NK_\Xi P_N\|_1
&\le \sum_{j\ge N-1}q_j+
      \left(\sum_{j\ge N}|v_j|^2\right)^{1/2}\\
&\le \boxed{\frac2{\sqrt N}+
\left(\sum_{j\ge N}|a_{j+1}|^2((j+1)!)^3\right)^{1/2}}.
\end{aligned}
\tag{12}
\]
The bound is unconditional. It proves the limit \(K_N\to K_\Xi\) in trace norm. Continuity of trace-class determinants gives uniform convergence of \(\det(I+wK_N)\) to \(F(w)\) on every compact subset of \(\mathbb C\). If a contour's boundary has positive \(F\)-modulus larger than the determinant approximation error, Rouché gives the exact count of zero multiplicities inside. These are **coefficient-driven finite sections**, in contrast to the previous zero-cutoff operators.

For every positive integer \(m\), the logarithm of the trace-class determinant near \(w=0\) proves
\[
\frac{F'(w)}{F(w)}
=\sum_{m\ge1}(-1)^{m-1}w^{m-1}\operatorname{Tr}(K_\Xi^m).
\tag{13}
\]
Comparing with the original source Newton recursion in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) gives the unconditional exact **arithmetic-to-trace** identity
\[
\boxed{\tau_m=\operatorname{Tr}(K_\Xi^m)\quad(m\ge1).}
\tag{14}
\]
It holds already at finite dimension N for every m≤N, with \(\operatorname{Tr}(K_N^m)=\tau_m\). The source-defined full Hankel condition is therefore **exactly**
\[
\boxed{
\sum_{i,j<N}c_ic_j\tau_{i+j+1}
=\operatorname{Tr}\!\left(K_\Xi p(K_\Xi)^2\right)
\ge0,\quad p(t)=\sum_{j<N}c_jt^j,\quad\forall N,c.
}
\tag{15}
\]
No zero coordinates or arbitrary guessed spectral measure occur in this criterion.

## The decisive independence boundary: K is not self-adjoint

The source-defined \(K_\Xi\) is trace class and has the exact determinant **regardless of RH**, but it is structurally **not self-adjoint**. For all \(n\ge1\),
\[
\langle K_\Xi e_n,e_{n+1}\rangle=-q_n\ne0,
\quad
\langle e_n,K_\Xi e_{n+1}\rangle=0
\tag{16}
\]
(up to the standard convention for which inner-product slot is linear). Both assertions follow directly from (4). They remain true even if all eigenvalues of \(K_\Xi\) happen to be positive. Thus neither the exact determinant nor a real spectrum automatically makes this particular realization positive self-adjoint.

Equation (15) is RH-equivalent for the **actual source** by the Hamburger/Cauchy-transform proof in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md). Positivity is not implied by the raw theta-moment Gram operator. A hostile order-\(1/2\) positive-coefficient source
\[
F_*(w)=\tfrac34+\tfrac14\cosh\sqrt w
\]
has \(a_n^*=1/[4(2n)!]>0\) for all n≥1 and admits the same unconditional trace-class companion, but its **Newton Hankel** 2×2 determinant is exactly \(-13/92160<0\). Therefore the missing positivity in (15) is real mathematical content; it cannot be injected through a general determinant or positive-theta assertion.

**Conditional true Hilbert–Pólya return.** If the genuine (15) is independently proved for every polynomial, the previous Hamburger-moment theorem constructs a finite positive measure \(\sigma\) from these **coefficient-defined** power traces. Its Cauchy transform equals the true \(F'/F\), so it is forced to be supported on positive real atoms with mass \(m(\lambda)\lambda\), where the integers \(m(\lambda)\) are the original analytic multiplicities. Define \(A_\sigma\) on \(\bigoplus_{\lambda>0}\mathbb C^{m(\lambda)}\) as multiplication by \(\lambda\). This *different*, canonical coefficient-moment operator is positive self-adjoint trace class; \(H_\sigma=A_\sigma^{-1/2}\) is densely defined positive self-adjoint; and (8) remains true with \(A_\sigma\) replacing \(K_\Xi\). The proof of this **conditional implication** uses no zero ordinates as construction input. It does not supply (15).

## Alpöge's (M): the exact open arithmetic input, without circularity

The original Lean proof, inspected at the pinned mirror, proves a conditional chain:
\[
\text{theta integrality / local factors / lattices /
trace / Galois / weighted map assembly}
\Longrightarrow \mathrm{CoreAtH}+\mathrm{EAtH}
\Longrightarrow \mathrm{core\_gm}
\Longrightarrow \text{source zero-freeness}.
\tag{17}
\]
The primary formal \(\mathrm{CoreAtH}\) includes \(\mathrm{HostAddCharCompatible}\), \(\mathrm{IdentU}\), \(\mathrm{SizeData}_2\), \(\mathrm{ErrWindows}\), \(\mathrm{BNBoundsU}\), \(\mathrm{SizesA}\), \(\mathrm{ThinScales}\), \(\mathrm{CostWindows}\) and \(\mathrm{RestSize}\); it is NOT supplied by the present operator construction. The original centered \(G(x)\), its character \(L'/L(1)\) terms, the exceptional ramified primes, the prime-power positive parts, real and archimedean terms, and the uniform conductor/height error budget remain source obligations.

The explanatory draft's (M) is **quoted from Lean, not independently proved in the draft**. The exact finite prime-cell signs and normalized error algebra have independently been reconstructed in [AlpogeMainPrimeArithmetic.md](AlpogeMainPrimeArithmetic.md). That work is a finite source check, NOT a proof of the deep main inequality, theta-kernel integrality, global lattice covolumes, trace estimates, or Galois-cohomology denominator bounds. Importing \(\mathrm{core\_gm}\) without its genuine sources, the endpoint \(\mathrm{everyCharacter}\), Alpöge's RH theorem, or a synonym of Newton PSD would be circular for the present task.

**Next mathematical gate:** independently prove the original (M), with all its stated hypotheses and error budgets, or prove (15) directly from the genuine \(\Phi\) theta source. Only then can the coefficient-defined canonical **positive self-adjoint** \(H_\sigma\) and the actual \(\Xi\) determinant be admitted as a completed independent Hilbert–Pólya proof.

## Independent controls and actual verification status

- Symbolic exact determinant controls of the general finite coefficient/weight companion passed for N=1,...,6 (SymPy, no zeros).
- The byte-pinned [finite checker](../../../scripts/verify_xi_taylor_companion.py) executed 123 exact-rational full determinants and finite Newton power-trace identities through N=10, plus explicit finite non-self-adjointness controls (PASS).
- An optional 65-digit mpmath check computed the first actual \(\Xi\) coefficients from the completed zeta derivatives and compared the finite Taylor models at w=1/2, with error decreasing to about \(1.3451523\times 10^{-15}\) at N=5 (PASS, **not certified**).
- The source order-\(1/2\) Cauchy estimate, infinite rank-one Fredholm identity, trace-norm and divisor transfer are mathematical analytic proofs, **not** Lean formalizations or independent peer-reviewed source acceptance.
- Lean proof candidates for the two/three-step algebra: elaboration NOT_RUN, kernel replay NOT_RUN, transitive axiom audit NOT_RUN. Full infinite \(\ell^2\) construction, trace ideal, genuine theta-source equality and positivity-to-Hilbert–Pólya transport remain NOT_FORMALIZED in Lean.
- No imported external RH proof; no conjectural positivity or accepted all-source (M); no source-independent self-adjoint operator is claimed **unconditionally**.

**Precise outcome:** An exact trace-class Fredholm determinant of the original \(\Xi\) is constructed unconditionally **from the actual arithmetic/theta coefficient data, without zero-indexing**. The extra self-adjointness condition required by an independent Hilbert–Pólya proof remains open, as does the full arithmetic (M).


## An exact one-dimensional cokernel and an unconditional bounded-similarity obstruction

**Independent mathematical advance (2026-11-22, original source unchanged):** The *same* coefficient-defined trace-class operator \(K_\Xi=-S+V\) from (3)–(4), which has the genuine exact Fredholm determinant (8), has an **unconditional one-dimensional adjoint kernel**, even though it is injective. This rules out **every boundedly invertible change of coordinates or bounded positive metric** that would make THIS operator self-adjoint or normal. It does not rule out the *different* coefficient-moment operator whose construction requires independent Newton PSD. Mathematical proof below; no RH or external Alpöge theorem used.

**Theorem (true-Xi companion is an injective non-dense-range operator).** On the actual \(\mathcal H=\ell^2(\mathbb N_0)\), with
\[
q_n=(n+2)^{-3/2},\quad W_n=((n+1)!)^{-3/2},
\quad v_n=a_{n+1}/W_n,
\quad (K_\Xi x)_0=\sum_{n\ge0}v_nx_n,\quad
(K_\Xi x)_{n+1}=-q_nx_n,
\tag{19}
\]
define
\[
y_0=1,\qquad
y_{n+1}=\frac{\overline{v_n}}{q_n}
=\overline{a_{n+1}}\,((n+2)!)^{3/2}.
\tag{20}
\]
Then \(y\in\mathcal H\setminus\{0\}\), and
\[
\boxed{
\ker K_\Xi=\{0\},\qquad
\ker K_\Xi^*=\mathbb C y,\qquad
\overline{\operatorname{Ran}K_\Xi}=y^\perp
\quad\text{(codimension one)}.
}
\tag{21}
\]

*Proof of summability.* Because the **actual** normalized square-Xi function \(F(w)\) is entire of order \(1/2\), for any \(\rho>1/2\) it admits the Cauchy growth estimate \(\log M_F(R)\le C_\rho R^\rho\) at large \(R\). Choose \(\rho=3/5<2/3\). Optimizing Cauchy's integral formula gives
\[
\log|a_n|\le-\frac53n\log n+O(n).
\]
The correction \(((n+1)!)^{3/2}\) in (20) contributes only \(+\frac32n\log n+O(n)\), leaving \(-\frac16n\log n+O(n)\). Thus \(\sum_n|y_n|^2<\infty\), without RH, any zero ordinates, or a conjectural spectral property.

*Kernel and cokernel.* Every \(q_n>0\), so \(K_\Xi x=0\) forces \(x_n=0\) from coordinate \(n+1\). Since the actual Xi \(a_n\) are real, standard Hilbert-space adjunction gives
\[
(K_\Xi^*z)_n=\overline{v_n}z_0-q_nz_{n+1}.
\]
Hence \(K_\Xi^*y=0\), and any \(z\in\ker K_\Xi^*\) is determined recursively by \(z_0\), proving (21). In particular, \(K_\Xi\) is compact, injective, and has **non-dense range**. This is NOT a claim that its range is closed or that it has a Fredholm index (a compact infinite-dimensional operator is not Fredholm).

**Corollary (no bounded self-adjoint or normal similarity).** Suppose a bounded invertible \(Q\) conjugated \(K_\Xi\) to a bounded normal operator \(N=Q^{-1}K_\Xi Q\). Injectivity of \(K_\Xi\) implies \(\ker N=0\), and normality implies \(\ker N^*=0\), so \(\overline{\operatorname{Ran}N}=\mathcal H\). A bounded invertible \(Q\) preserves density of the range under conjugation, contradicting (21). Thus
\[
\boxed{
K_\Xi\ \text{is not boundedly similar to any normal operator,
hence not to any self-adjoint operator.}
}
\tag{22}
\]
Equivalently, no bounded, boundedly invertible positive metric \(G\) can satisfy the quasi-Hermiticity equation \(K_\Xi^*G=GK_\Xi\), since it would imply \(\ker K_\Xi^*=G(\ker K_\Xi)=0\). An unbounded metric may have different domains and is **not** excluded by this theorem; nor is a genuinely distinct self-adjoint arithmetic construction.

**Exact finite-section instability.** Let \(P_N\) project onto the first \(N\) basis vectors, \(K_{\Xi,N}=P_NK_\Xi P_N\), and \(y^{(N)}=P_N y\). The finite companion determinant identity (10) gives
\[
\det K_{\Xi,N}=a_N.
\]
The original theta representation gives \(a_N>0\) for every \(N\ge1\), hence \(K_{\Xi,N}\) is invertible. From the same exact recurrence,
\[
K_{\Xi,N}^*y^{(N)}
=\overline{v_{N-1}}e_{N-1},
\qquad
v_{N-1}=a_N(N!)^{3/2}.
\]
Therefore
\[
\boxed{
\|K_{\Xi,N}^{-1}\|=\|(K_{\Xi,N}^*)^{-1}\|
\ge\frac{\|y^{(N)}\|_2}{|v_{N-1}|}
\ge\frac1{a_N(N!)^{3/2}}
\ \longrightarrow\ \infty.
}
\tag{23}
\]
The Cauchy estimate proves that the denominator tends to zero faster than any fixed geometric progression. These exact finite-section near-left-kernel vectors show severe **inverse-norm instability**. Such instability by itself does NOT rule out finite-dimensional self-adjoint similarities (positive compact self-adjoint matrices can also have diverging inverse norms). The actual prohibition of a bounded similarity for the infinite source operator comes from the rigorous kernel/range mismatch (21)–(22). The finite determinants themselves still converge correctly to \(F\); determinant convergence alone does not control metric stability.

**Hostile and independent controls.** The byte-pinned [verify_xi_taylor_companion.py](../../../scripts/verify_xi_taylor_companion.py) now runs **62 additional exact-rational** tests of the finite residual identity \(K_N^{\mathsf T}y^{(N)}=v_{N-1}e_{N-1}\) and of \(\det K_N=a_N\), across arbitrary nonzero rational shift weights and a genus-zero positive-coefficient toy source \(a_n=1/(n!)^4\), \(q_n=1/(n+2)^2\). The toy source makes \(v_{N-1}=1/(N!)^2\) and the inverse-norm lower bound at least \((N!)^2\) for **every** \(N\); the genuine Xi conclusion (21)–(23) comes from the **analytic** proof, not by substituting the toy source. The existing 123 finite determinant and Newton-trace tests and optional original-Xi numerical probe remain intact. A separate symbolic arbitrary-coefficient test verified (22)'s *finite residual algebra* for \(N=1,\ldots,7\); it cannot certify infinite-dimensional closure by itself.

**Return to source (M).** Alpöge's original \`CoreAtH\` and \`EAtH\` still depend on the genuine theta-kernel \`B0/B4\` integrality, Frobenius-compatible lattice divisibility, period/local Euler factors, character \`L'/L(1)\` corrections, trace/rank and Galois-cohomology bounds, and the fully averaged inequality (M) with all uniform error quantifiers. The present cokernel theorem is about the **true \(\Xi\) coefficient-defined Fredholm companion**, but it does not prove any of those arithmetic suppliers. The positive coefficient-moment Hilbert–Pólya return in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) still requires **all-rank true-Xi Newton Hankel PSD**, an independent RH-strength theorem. The impossibility (22) clarifies why a bounded similarity of the raw companion cannot replace that missing positivity; it is not a proof of RH.

**Evidence and trust:** complete mathematical argument here, independently checked elementary finite algebra and exact rational tests; no imported Alpöge final RH theorem or source-zero spectral definition. Lean elaboration, fresh kernel checking and transitive axiom auditing of this new infinite theorem are **NOT_RUN** (it is not formalized in Lean), and independent mathematical review is **NOT_RUN**. The distinction between the genuine source and toy finite checks is retained. Mathematical proof acceptance is separate from Git publication.
