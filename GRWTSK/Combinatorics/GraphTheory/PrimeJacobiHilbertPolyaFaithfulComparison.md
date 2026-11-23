# Hilbert–Pólya completeness audit of the prime-Jacobi / Weil / native Gm proof chain

**Mathematical consumer and coordination:** grwtsk/math [#1849](https://github.com/grwtsk/math/issues/1849) (actual prime-only Jacobi), [#1850](https://github.com/grwtsk/math/issues/1850) (native Alpöge intermediate Gm), [#124](https://github.com/grwtsk/math/issues/124) (operator-ideal / determinant / divisor return), [#1819](https://github.com/grwtsk/math/issues/1819) (signed Weil observations), and [#1828](https://github.com/grwtsk/math/issues/1828) (actual RH/GRH targets).

**Pinned project source:** grwtsk/math main before this comparison at ec37b6c0d5aee1241fa4cb66140fb534a91d4aa4, Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Source paths and Git blobs:
- PrimeKnotJacobiArithmetic.lean, 2759dc76c224e3214e8a1c8d9abd054f37edacab (true primes p_n=Nat.nth Nat.Prime n, symmetric zero-diagonal J_N, its continuant and the odd-zero lemma; reciprocal-prime non-summability);
- PrimeJacobiMomentGram.lean, 9e9138c09b110d6ce4f5808d87a3e06873ede037 (true root Krylov / Hankel Gram);
- PrimeJacobiHankelInverse.lean, 6c1f9be478b9cbd9d83b71381bf2b7224fc489aa (inverse moment Gram as inverse Krylov coefficients);
- PrimeJacobiPolynomialCoefficientContraction.lean, 30ad8aeb55bfb031c55ff5e99cf9ce1949063910 (proposed uniform source coefficient contraction; NOT_RUN in Lean);
- WeilFinitePrimeObservations.lean, a1d3a6350d9bf3a66bdebee6977962c2545e2d9b (actual finite von Mangoldt/√n source);
- PrimeJacobiGmArithmeticReturn.lean, 58f73c23c615bf7192e6934f2a5d9bd6e48454d7 (finite true-prime observation into separately typed Gm analogue).
The isolated ORIGINAL Alpöge Lean v4.33.1 / Mathlib 0df444a3 package remains in docs/adaptations/environments/alpoge-gm-native/, especially SmoothedMertensTail.md, SevenEighthsIntegratedTail.md and their source candidates. It is not imported into root v4.34.1.

**Original source and comparison literature.** Jeffrey Lagarias, *Hilbert Spaces of Entire Functions and Dirichlet L-Functions*, https://websites.umich.edu/lagarias/doc/debranges-houches.pdf (de Branges spaces / Hilbert–Pólya operators under explicitly conditional assumptions); Masatoshi Suzuki, *On the Hilbert space derived from the Weil distribution*, https://arxiv.org/abs/2301.00421 (Weil Hilbert space conditional on RH, an unconditionally defined precursor is distinguished from the RH realization); Alain Connes, *Trace formula in noncommutative geometry and the zeros of the Riemann zeta function*, https://arxiv.org/abs/math/9811068 (critical zeros as absorption spectrum and hypothetical off-line zeros as resonances); Ryszard Szwarc, *Inhomogeneous Jacobi Matrices on Trees*, Constr. Approx. 48 (2018), Theorem 16, https://math.uni.wroc.pl/~szwarc/pdf/Jacobi-final.pdf (Carleman essential self-adjointness); Jeffrey Lagarias, *The Riemann Hypothesis: Arithmetic and Geometry*, https://www.math.lsa.umich.edu/~lagarias/doc/mt-holyoke-rev.pdf (Weil positivity criterion); Riemann–von Mangoldt zero count, https://mathworld.wolfram.com/Riemann-vonMangoldtFormula.html. Consult actual hypotheses; literature mentions of an operator are not source identities.

**Attached Langlands comparison sources inspected:** Gaitsgory–Raskin, *Proof of the Geometric Langlands Conjecture I: Construction of the Functor* (2024, functor.pdf); Arinkin–Beraldo–Chen–Færgeman–Gaitsgory–Lin–Raskin–Rozenblyum, *II: Kac–Moody Localization and the FLE* (Loc.pdf); Campbell–Chen–Gaitsgory–Raskin, *III: Compatibility with Parabolic Induction* (Eis.pdf); Arinkin et al., *IV: Ambidexterity* (ambidex.pdf); Gaitsgory–Raskin, *V: The Multiplicity One Theorem* (multone.pdf). These are geometric Langlands over algebraic curves in de Rham/Betti characteristic-zero contexts, NOT an arithmetic automorphic spectral theorem for zeta over Q or an RH proof. The relevant structural analogy is Hecke/automorphic-spectral compatibility, Eisenstein/constant-term and continuous-spectrum bookkeeping, duality, and an exact source-to-spectral functor. Categorical ambidexterity does not supply a positive Hilbert adjoint; categorical multiplicity one does not assert simplicity of zeta zeros.

## 1. Two genuinely complete, equivalent-in-purpose Hilbert–Pólya targets

Let \(\xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s)\) and \(\Xi(z)=\xi(\frac12+iz)\). The actual xi function is even, entire, \(\Xi(0)\ne0\), and its zeros correspond with multiplicity to ALL nontrivial zeta zeros under \(s=\frac12+iz\). Nothing here assumes their locations. The actual RH target is \(\Xi(z)=0\Rightarrow z\in\mathbb R\).

**A. Exact spectral-determinant return.** Construct, from genuine arithmetic source and independently of any supplied zeta-zero list, a positive self-adjoint invertible operator \(H_+\) on a Hilbert space such that \(K=H_+^{-2}\) is POSITIVE TRACE CLASS. Define the genuine Fredholm determinant \(D_H(z)=\det_{\mathrm{Fr}}(I-z^2K)\). Then:
- the determinant is entire and \(D_H(0)=1\);
- its zeros are precisely \(z=\pm\lambda\), for positive discrete eigenvalues \(\lambda\) of \(H_+\), counted with eigenspace multiplicity;
- EVERY zero is real; multiplicities and the whole divisor are explicit.

The **decisive, separately unproved arithmetic supplier** is an entire-function identity
\[
\boxed{\Xi(z)=\Xi(0)\,E(z)\,\det_{\mathrm{Fr}}(I-z^2H_+^{-2})
\quad\text{for every }z\in\mathbb C,}\tag{HP-DET}
\]
where \(E\) is entire, nowhere zero and normalized \(E(0)=1\). This source-identified identity, if genuinely established against the actual independently defined xi, IMPLIES RH by the preceding spectral theorem. It also enforces matching multiplicities. It is not a theorem already provided by prime-Jacobi self-adjointness, finite moments or the source model. It is effectively the hard RH-strength theorem; do not create a K from known xi zeros, or assume HP-DET as evidence of its own proof.

The trace-class regime is meaningful: the ACTUAL zero counting law \(N_\zeta(T)\sim\frac{T}{2\pi}\log(T/2\pi)-\frac{T}{2\pi}\) implies (under a complete positive-ordinate spectral identification) summability of \(\sum_j\gamma_j^{-2}\), but NOT of \(\sum_j\gamma_j^{-1}\). Thus inverse-square trace class is the faithful possibility for an even determinant, whereas a naive trace-class determinant of \(I-zH_+^{-1}\) is generally unjustified. If a full signed spectrum is used, select the positive sector only or account for ± duplication: applying \(H^{-2}\) to BOTH signs doubles root multiplicities. The demanded \(H_+^{-2}\in S_1\), compact resolvent, and counting law have NOT been established for the source prime-Jacobi closure.

**B. Exact full Weil trace / positive form.** On the ACTUAL admissible compactly supported smooth tests \(f\), including the two pole-annihilating Mellin conditions, define the genuine Weil quadratic \(Q_\zeta(f)\) from the complete signed prime-power, Archimedean gamma, conductor/parity (for Dirichlet), and pole contributions. Construct a genuinely positive Hilbert map \(T\) such that
\[
\boxed{Q_\zeta(f)=\langle Tf,Tf\rangle_\mathcal H
\quad\text{for every admissible }f,}\tag{HP-WEIL}
\]
with the EXACT Weil source normalization and adequate analytic test-domain continuity. Then \(Q_\zeta(f)\ge0\) for all tests and the classical Weil criterion implies RH. The right side cannot be substituted for the original signed Weil form until HP-WEIL itself is independently proved. Positive Gram matrices at finite test grids, Dirichlet-heat positivity and original Jacobi root Gram positivity are NOT HP-WEIL.

The source-equality route may be organized through a FULL Guinand–Weil trace identity \(W_\zeta(f)=\operatorname{Tr}\widehat f(H)\) for a sufficient test class, accounting for operator trace class and poles; a trace formula involving only the on-line zeros is inadequate because possible off-line zeros must be ruled out rather than silently omitted. Connes' absorption/resonance distinction demonstrates why the completeness condition is essential. For Dirichlet GRH, work per primitive character with its genuine conductor, parity, root number, trivial-character pole, and reflection \(\chi\leftrightarrow\bar\chi\); a single even zeta determinant does NOT identify the zero divisor of every complex-character L-function.

## 2. What the actual prime-Jacobi source does and does not establish

The prime-only adjacency operator has bond \(a_n=p_n\), zero diagonal and domain c_00 on \(\ell^2(\mathbb N)\). Pinned Mathlib proves \(\sum_n1/p_n=\infty\) and classical Carleman gives essential self-adjointness for this tridiagonal operator. The full \(\ell^2\) closure/domain and Carleman transport are NOT yet kernel-checked in grwtsk/math. Even after they are:
- self-adjointness gives **real spectrum**, NOT automatically discrete spectrum, compact resolvent or the actual zeta spectral counting \(N(T)\);
- the root spectral measure \(\mu_{e_0}\) is a positive PROBABILITY measure, while the raw actual zeta zero-counting measure has INFINITE total mass; a trace, weighted transform or renormalization has to be specified before equating them;
- the exact root Gram \((\langle J^ie_0,J^je_0\rangle)\) and inversion of original prime moments reconstruct the source p_n but do not identify its spectral divisor with the xi divisor;
- the graph Laplacian's positive energy is a DIFFERENT operator than the symmetric, generally indefinite adjacency Jacobi; finite heat flow and character-phase-covariant diffusion are not RH positivity;
- numerical input heights from zeros1.txt are **approximate observational data**, not certified completeness or a source-independent operator construction.

**Exact odd-section obstruction already encoded in the genuine source:**
\[
P_0(z)=1,\ P_1(z)=z,\quad
P_{n+2}(z)=zP_{n+1}(z)-p_n^2P_n(z).
\]
Therefore \(P_{2k+1}(0)=0\) for ALL k, exactly the existing PrimeKnotJacobiArithmetic.continuant_odd_zero theorem. But \(\Xi(0)=\xi(1/2)\ne0\). Consequently a sequence of arbitrary **nowhere-vanishing entire rescalings of ALL ODD raw prime-Jacobi characteristic polynomials cannot converge locally uniformly to \(\Xi\)**: evaluation at z=0 is always zero. This does NOT prohibit an even-section/subspace construction or a different regularized determinant; it prohibits a particularly easy but false source identification. The even ranks have nonzero determinant at zero (source continuant_even_ne_zero), so the parity issue is precise.

**Hostile prefactor:** A factor \(1+z^2\) adds nonreal zeros ±i to an otherwise real-rooted determinant. A factor in HP-DET must be entire AND nowhere zero, not merely holomorphic, parity-symmetric or numerically close to one.

**No free determinant from a compact resolvent:** if \(K\) is merely compact and not trace class, the ordinary Fredholm determinant is not justified. Choose a valid Schatten regularization \(\det_p\) with the corresponding growth and zero-divisor theorems. Even if finite \(D_N\) are entire and real-rooted, pointwise agreement is not sufficient for locally uniform convergence; source-normalized zero-divisor transport needs operator-ideal error bounds, a zero-free contour and Hurwitz/Rouché, as tracked by #124.

## 3. Stronger faithful link to the genuine Gm / Chebyshev-tail proof

Keep the original Alpöge intermediate source (actual Level, Level.Nt, Level.wt, primitive conductors, gamma/pole and \(L'/L(1,\chi)\) affine corrections). The previous mathematical normalization yields, after classical fixed-modulus PNT and true L'/L centering,
\[
\boxed{\mathcal L.Gm(x)
=-x\int_x^\infty
  \frac{\Psi_\mathcal L(t)-t}{t^2}\,dt.}\tag{Gm-TAIL}
\]
The source's signed Chebyshev coefficient is \(\Lambda(n)c_\mathcal L(n)\), not the physical \(\Lambda(n)/\sqrt n\) Weil weight; an exact Mellin/Fourier transformation is needed before treating the two distributions as identical.

If a **complete HP realization** has been independently established for actual zeta and EVERY retained primitive Dirichlet L-function (not merely real self-adjointness for the prime Jacobi operator), the full explicit formula and the standard zero-count bounds give, for each FIXED original Level, a genuine
\[
|\Psi_\mathcal L(x)-x|
\le C_\mathcal L\, x^{1/2}
(\log(q_\mathcal L x))^2
\quad (x\ge X_\mathcal L),
\]
with fixed \(q_\mathcal L\ge2\) chosen to dominate the finitely many genuine conductors. The constants depend on the fixed Level. Retain the finite prime powers and all ramified local Euler factors; an imprimitive character must first be returned to the primitive source plus finite corrections.

Insert this in (Gm-TAIL) to get an EXPLICIT POSITIVE error budget:
\[
\begin{aligned}
\left|\int_x^\infty \frac{\Psi_\mathcal L(t)-t}{t^2}dt\right|
&\le C_\mathcal L\int_x^\infty
  t^{-3/2}(\log(q_\mathcal L t))^2dt\\
&=\frac{2C_\mathcal L}{\sqrt x}
 \left((\log(q_\mathcal L x))^2+
 4\log(q_\mathcal L x)+8\right).
\end{aligned}\tag{HP-TAIL}
\]
This implies \(\mathcal L.Gm(x)=O_\mathcal L(\sqrt x\,\log^2x)\) and hence, for EVERY \(\theta>1/2\), the eventual original one-sided inequality \(\mathcal L.Gm(x)\le x^\theta\). The limiting exponent \(\theta=1/2\) with coefficient one does NOT follow by absorbing the logarithms. This is an EXACT conditional return to the original intermediate Landau/HasWindows theorem, without importing Alpöge's final RH theorem; the HP realization is an OPEN supplier, not independently completed by the GRWTSK source.

**Noncircularity warning:** The implication COMPLETE HP ⇒ \(R_\Lambda(x)=O_\Lambda(\sqrt x\log^2x)\) ⇒ the native \(G_m\) bound ⇒ the native Landau zero-free theorem is an excellent consistency/normalization test, but it is NOT a second independent RH proof: the COMPLETE HP premise already implies RH by HP-DET or HP-WEIL. The only independent RH route is to construct and prove the prime-built spectral/Weil source identity **without using RH, GRH, the actual zero divisor as an input, or an equivalent accepted positivity assumption**. A spectral model built *from* the actual zeta zero ordinates is logically circular as a proof of their critical-line location; a learned fit or finite data trace is not a substitute for source equality.

The independently published 2026 OpenAI 7/8 half-plane result (openai/math Nonvanishing.lean, blob 46c67f4000906b1391a471d6e6396ac0da3c16a5, Lean 4.34.1) is a SEPARATE narrower source claim. Its cross-version admission into Alpöge v4.33.1 and the actual explicit-formula transfer were NOT_RUN here. Even if fully admitted, it gives only \(\theta>7/8\), not the complete HP target \(\theta>1/2\).

## 4. Function-field and geometric Langlands checks: structural analogy ONLY

For a smooth proper curve over \(\mathbb F_q\), the genuine arithmetic zeta function has a **cohomological Frobenius determinant** built from \(H^0,H^1,H^2\), with alternating signs, and Deligne/Weil control of Frobenius weights. That is the successful function-field benchmark for a spectral/trace/positivity correspondence. A categorical functor from automorphic to spectral sheaves in the attached **geometric** Langlands papers is not, without additional number-field comparison, a self-adjoint Hilbert operator on which xi's zero divisor has been realized.

Concrete faithful connections from the five attached papers:
- *Functor*: source-defined automorphic→spectral construction and compatibility with spectral action suggest a commuting arithmetic-to-operator diagram; **must provide the actual source map**.
- *Loc*: Kac–Moody localization and spectral action provide categorical comparison machinery, **not** an analytic L-function trace or measure.
- *Eis*: Eisenstein/constant-term compatibility flags the need to retain continuous spectrum, scattering, the pole at s=1, gamma and exceptional terms; cannot omit those to force a positive spectrum.
- *ambidex*: categorical ambidexterity is a duality/adjunction phenomenon; it does **not** prove self-adjointness in a positive-definite Hilbert space.
- *multone*: categorical multiplicity-one is NOT a theorem that nontrivial zeta zeros are simple. A faithful xi spectral divisor must preserve every analytic zero multiplicity, repeated or not.

## 5. Proof dependency graph, acceptance gates, and course correction

Source-side alternatives:

(A) actual primes → J on c_00 → Carleman closure → **compact/discrete spectral type + correct counting** → trace-ideal regularized determinant → **entire exact identity HP-DET with \(\Xi\) and nonvanishing factor** → original Mathlib RH.

(B) complete original signed Weil prime-power/gamma/pole distribution → **full source-exact Hilbert Gram/trace realization HP-WEIL on EVERY admissible test** → Weil positivity on the original domain → original Mathlib RH.

(C) actual primitive Dirichlet character families, conductor/parity/gamma/poles → complete per-character HP identity or positive Weil return → GRH family. The zeta-only operator does NOT prove GRH.

(D) established external 7/8 zero-free (if admitted) → genuine Chebyshev AP power at \(\beta>7/8\) → native Gm-TAIL → native Landau zero-free \(\theta>7/8\); this is a valid **weaker** corridor, not completion of (A) or (B).

Independent proof barriers, not implementation conveniences:
1. Build \(H\) from genuine source without supplying an actual zero-list as its definition or training target.
2. Prove its full operator domain and spectral type; do not confuse Carleman essential self-adjointness with compact resolvent.
3. Prove operator-ideal estimates and locally uniform determinant convergence; bound spectral pollution and tails.
4. Prove an arithmetic-to-spectral **identity** preserving gamma/pole/conductor/parity/trivial zeros, every prime power and its weight, and all zero multiplicities, not just a visually plausible analogy or the local one-sided Gm statistic.
5. For Weil, maintain the correct indefinite signed Hermitian source and its admissible test-domain/pole annihilation; no square-norm replacement before source equality.
6. For Xi, preserve the entire-function normalization, nonvanishing factor and all zeros at every height, including zeros off the line whose exclusion is the target.
7. Independent target, Lean elaboration, transitive axiom audit, fresh kernel replay and specialist review: all NOT_RUN in this session.

**Mathematical disposition:** The conditional HP-DET→RH and HP-WEIL→RH arguments are complete classical implications. The explicit Gm consequence HP-TAIL is mathematically proved **conditional** on an actual complete spectral realization. Original prime-Jacobi self-adjointness does not provide HP-DET, HP-WEIL, zero counting, or the spectral source trace formula. The odd-section obstruction is **unconditional finite algebra**, independently checked on 20 true prime sections. No RH/GRH proof and no globally novel theorem are claimed. Source publication and proof acceptance remain separate.


## Exact Taylor coefficient PF-infinity criterion (independent source gate)

The full mathematical result and original-source definitions are now at
[XiToeplitzHilbertPolyaCriterion.md](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiToeplitzHilbertPolyaCriterion.md),
with the [Lean source candidate](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiToeplitzHilbertPolyaCriterion.lean).
For the ACTUAL \(\xi\), define
\(F(w)=\xi(1/2+\sqrt w)/\xi(1/2)=\sum a_nw^n\).
The Edrei theorem plus the unconditional order \(1/2\) of \(F\) gives the exact classical equivalence

\[
\text{ALL source Xi Toeplitz minors nonnegative}
\Longleftrightarrow
F(w)=\prod_j(1+\lambda_jw),\ \lambda_j\ge0,\ \sum_j\lambda_j<\infty
\Longleftrightarrow
\Xi(z)=\Xi(0)\det_{\rm Fr}(I-z^2H_+^{-2}),
\]

where \(H_+\) is a positive self-adjoint inverse-square-trace-class
operator. This also is equivalent to RH. **The independent universal
all-minor positivity proof is not supplied.** Alpöge's externally
verified RH theorem is used only as contextual direction, not as a
premise or imported theorem. Thus this is a complete CONDITIONAL
operator construction and a precise independent proof target.

A direct root-moment identification with the source prime Jacobi
operator is false: its first odd moment is exactly zero, whereas the
candidate trace of the positive Xi spectral operator is \(a_1>0\).
The odd-rank zero-at-origin obstruction proved earlier remains.
A nontrivial, exact, source-preserving prime-to-Xi coefficient map is
still required; no such map is inferred from finite moment recovery.

The all-minor array requirement is stricter than positive Xi Fourier
coefficients, positive Hankel moments, finite Gram matrices or heat
damping. A positive Fourier measure \(3\delta_0/4+\delta_1/4\)
gives an entire cosine-hyperbolic transform with a **negative**
shifted Toeplitz 3×3 minor \(-7/23040\). This hostile example
disproves the tempting inference from ordinary positive moment
kernels to Hilbert–Pólya. Finite exploratory Xi minors are evidence
only, not a universal proof.

## The inverse of the even prime-Jacobi sections

Let \(p_0=2,p_1=3,\ldots\) be the successive primes and let \(J\) be the
closure of the zero-diagonal Jacobi operator of §2 on \(\ell^2(\mathbb N_0)\).
The Carleman condition \(\sum_n1/p_n=\infty\) ensures that the minimal
closure equals the maximal Jacobi operator. In particular its domain
consists of the square-summable sequences for which the three-term
expression is square-summable. [Szwarc, Theorem 16](https://math.uni.wroc.pl/~szwarc/pdf/Jacobi-final.pdf).

Define a triangular array by setting \(g_{kj}=0\) for \(k<j\) and
\[
 g_{kj}=\frac{(-1)^{k-j}}{p_{2j}}
 \prod_{r=j+1}^k\frac{p_{2r-1}}{p_{2r}}\quad(k\ge j),\qquad
 S_m=2\sum_{k=0}^{m-1}\sum_{j=0}^k g_{kj}^2,\qquad S=\lim_m S_m .
\]
Then \(J\) has an everywhere-defined Hilbert–Schmidt inverse exactly
when \(S<\infty\), in which case \(\operatorname{Tr}(J^{-2})=S\).

**Finite sections.** For the first \(2m\) sites order the even basis
vectors first and the odd ones second. In this order the upper-right
block \(A_m\) of \(J_{2m}\) is lower bidiagonal, with diagonal \(p_{2k}\)
and subdiagonal \(p_{2k-1}\) in row \(k\). The lower-left block is \(A_m^*\).
Solving \(A_m G_m=I\) recursively gives \(G_m=(g_{kj})_{0\le k,j<m}\).
Thus \(J_{2m}^{-1}\) has lower-left block \(G_m\), upper-right block
\(G_m^*\), and zero diagonal blocks. Its squared Hilbert–Schmidt norm
is \(S_m\). The entries at existing sites are independent of the section size.

The Lean parity equivalence identifies these blocks entrywise with the original
`jacobiMatrix (2 * m)`, including the empty section. Its inverse formula
and the exact four- and sixteen-site sums use Mathlib’s enumeration of
the primes. [Finite Green formulas](PrimeJacobiGreen.lean) ·
[Reindexing of the original matrix](PrimeJacobiGreenComparison.lean)

**Infinite operator.** The parity involution \(\Gamma e_n=(-1)^n e_n\)
anticommutes with \(J\) on the core. Boundedness of \(\Gamma\) and closure
of the graph extend this relation to its domain. If a bounded inverse exists,
it therefore has zero same-parity entries. The equations in the even rows of
\(JJ^{-1}e_{2j}=e_{2j}\) fix its odd-even entries by the same recursion as
for \(G_m\). Self-adjointness fixes the other block. The Hilbert–Schmidt norm
formula now gives necessity.

Conversely, if \(S<\infty\), the indicated entries define a bounded
self-adjoint Hilbert–Schmidt operator \(B\). Its compressions
\(B_m=J_{2m}^{-1}\), extended by zero, converge to \(B\) in
Hilbert–Schmidt norm since \(\|B-B_m\|_2^2=S-S_m\). For every finitely
supported \(v\), choose \(m\) large enough to contain both \(v\) and
\(Jv\) among the first \(2m\) coordinates. Then \(B_m Jv=v\) for
all such \(m\), hence \(BJv=v\). Approximation in the graph norm of
the core extends this equality to every \(v\in\operatorname{Dom}J\).
For arbitrary \(f\in\ell^2\) we obtain
\(\langle Jv,Bf\rangle=\langle v,f\rangle\) on that domain. Thus
\(Bf\in\operatorname{Dom}J^*=\operatorname{Dom}J\) and \(JBf=f\).
This proves sufficiency, including the operator-domain condition.

The normalized even-section polynomials are
\(D_m(z)=\det(I-zJ_{2m}^{-1})=\det_2(I-zB_m)\) because the inverse
has trace zero. If \(S<\infty\), continuity of the regularized determinant
in Hilbert–Schmidt norm gives compact-uniform convergence to
\(\det_2(I-zJ^{-1})\). If \(S=\infty\), then \(D_m''(0)=-S_m\to-\infty\)
by the finite determinant expansion. Cauchy's integral formula precludes
locally uniform convergence on any neighborhood of zero, even along a
subsequence tending to infinite size. This dichotomy concerns the displayed
normalization and uses no distributional hypothesis on prime gaps.
[Simon, *Notes on infinite determinants of Hilbert space operators*](https://doi.org/10.1016/0001-8708(77)90057-3).

**Comparison with the specified xi determinant.** A real scaling \(H=cJ\)
with \(c\ne0\) that realizes \(\Xi(z)/\Xi(0)=\det_2(I-zH^{-1})\) must have
\[
 S/c^2=(\log\xi)''(1/2).
\]
Indeed the quadratic coefficient of the logarithm on the right is
\(-\operatorname{Tr}(H^{-2})/2\), while the substitution \(s=1/2+iz\)
gives the coefficient \(-(\log\xi)''(1/2)/2\) on the left.
For \(\psi(x)=\sum_{n\ge1}e^{-\pi n^2x}\) the classical theta integral is
\[
 \xi(1/2+t)=\tfrac12+(t^2-\tfrac14)
 \int_1^\infty \psi(x)x^{-3/4}\cosh(t\log x/2)\,dx .
\]
Write \(I\) for the integral at \(t=0\). From \(n^2\ge n\) and \(x\ge1\)
we get \(I<1/[\pi(e^\pi-1)]<1/57\), since \(\pi>3\) and
\(\sum_{k=0}^8 3^k/k!=89641/4480>20\). The exponential tail permits two
differentiations under the integral. By symmetry \(\xi'(1/2)=0\), while
\(\xi(1/2)=1/2-I/4\) and
\(\xi''(1/2)=2I-\frac1{16}\int_1^\infty\psi(x)x^{-3/4}(\log x)^2dx\).
Consequently \((\log\xi)''(1/2)<2I/(1/2-I/4)<8/113\).
[Riemann, 1859, theta integral after splitting at \(x=1\)](https://www.claymath.org/collections/riemanns-1859-manuscript/).

The four-site inverse has \(g_{00}=1/2,\ g_{10}=-3/10,\ g_{11}=1/5\).
Thus \(S_2=19/25\) and any such scaling satisfies \(c^2>2147/200\).
For a stronger exact check put \(b_k=\sum_{j=0}^k g_{kj}^2\). The
product formula gives
\[
 b_0=1/4,\qquad
 b_{k+1}=\frac{1+p_{2k+1}^2 b_k}{p_{2k+2}^2}.
\]
Using the primes from \(2\) through \(47\) gives
\(S_8=2\sum_{k=0}^7 b_k=172553655273874304/150028243823119475>128/113\).
The exact determinant is therefore impossible for every real \(c\) with
\(0<|c|\le4\), both for the infinite operator and as a locally uniform
limit of its normalized even sections. In the latter case one can apply
the same comparison directly to \(-D_m''(0)/c^2=S_m/c^2\).

**Computer-assisted sixth-moment bound.** Put
\(\tau_3=-6[z^6]\log(\Xi(z)/\Xi(0))\). For the proposed determinant this
equals the full trace \(\operatorname{Tr}((cJ)^{-6})\), counting both
parities. The first 24 sites compress \(J^{-1}\) to \(J_{24}^{-1}\)
by the entry equations above. Left and right multiplication by an
orthogonal projection contract the Schatten-6 norm. Thus
\[
 |c|^6\tau_3\ \ge\ \operatorname{Tr}(J_{24}^{-6})
 = 2\operatorname{Tr}(M^3)>3/10,\qquad M=G_{12}G_{12}^{*}.
\]
The finite inequality can be checked in rational arithmetic using the
23 primes from 2 to 83. With the displayed \(g_{ij}\) put
\(M_{ij}=\sum_{h=0}^{\min(i,j)}g_{ih}g_{jh}\). Then
\(\lfloor 2\cdot10^6\sum_{i,j,k=0}^{11}M_{ij}M_{jk}M_{ki}\rfloor=305690\).
A second calculation gives the same fraction from
\(-6[z^6]\log(P_{24}(z)/P_{24}(0))\), using \(P_0=1,\ P_1=z\) and
\(P_{n+1}=zP_n-p_{n-1}^2P_{n-1}\).

For the analytic upper bound let \(m_k=\int_0^\infty u^{2k}\Phi(u)\,du\),
where
\[
 \Phi(u)=4e^{5u/2}\sum_{n\ge1}q_n(2q_ne^{2u}-3)e^{-q_ne^{2u}},
 \qquad q_n=\pi n^2.
\]
Set \(x=e^{2u}\) in the theta integral above and integrate twice by
parts to obtain \(\Xi(z)=\int_0^\infty\Phi(u)\cos(zu)\,du\). Here
\(f(u)=e^{u/2}\psi(e^{2u})\) satisfies \(\Phi=2(f''-f/4)\) and
\(f'(0)=-1/4\) by theta inversion. With \(a_k=m_k/((2k)!m_0)\), the
logarithm gives \(\tau_3=6a_3-6a_1a_2+2a_1^3\).

For \(0\le k\le3\) truncate to \(n\le6\) and \(0\le u\le3\).
After substituting \(t=e^{2u}\), each positive integrand is bounded by
\(40 n^4t^8e^{-\pi n^2t}\,dt\), since
\((\log(t)/2)^{2k}t^{5/4}\le t^8\) for \(t\ge1\).
For \(n\ge7\), integrating with \(t^8\le e^{8(t-1)}\) bounds this tail
by \(40\sum_{n\ge7}n^4e^{-3n^2}\le80\cdot7^4e^{-147}\) because
successive majorants decrease by at least a factor of two. For \(n\le6\)
and \(t\ge e^6>400\) use \(t^8\le e^t\), giving a remaining tail
at most \(40\cdot6^5e^{-800}\). Their sum is below \(10^{-56}\).

To reproduce the finite integrals in python-flint 0.8.0 set
`ctx.prec = 160`. For each \(k=0,1,2,3\), call
`acb.integral(lambda u, _: u**(2*k) * Phi6(u), 0, 3)`, where
`Phi6` evaluates the six displayed summands with `arb.pi()` and ball
exponentials. The truncated integrand is entire. Add
`arb(0, "1e-56")` to the real part of each enclosure, then evaluate the
formula for \(\tau_3\) in ball arithmetic. The resulting enclosure lies
in \((2.88347,2.88349)\cdot10^{-7}\). Together the rational lower bound
and this certified quadrature imply \(|c|>10\). The same exclusion
holds for a compact-uniform limit of scaled even sections, since the
24-site compression agrees for every larger even section and the
logarithmic coefficients converge on a small zero-free disk about zero.
The quadrature uses Arb's integration error bounds.
[Johansson, *Numerical integration in arbitrary-precision ball arithmetic*](https://arxiv.org/abs/1802.07942).

The convergence of the prime series \(S\) and the behavior of larger
scalings remain open here. The exclusion uses the exact determinant
normalization. A free entire nonvanishing prefactor can alter its
logarithmic curvature. For the infinite Jacobi inverse equivalence,
the differentiated theta integral and the sixth-moment comparison,
Lean elaboration, fresh kernel replay,
transitive axiom auditing and external independent review are `NOT_RUN`.
