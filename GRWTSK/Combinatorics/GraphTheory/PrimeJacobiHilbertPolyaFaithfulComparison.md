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

**Original source and comparison literature.** Jeffrey Lagarias, *Hilbert Spaces of Entire Functions and Dirichlet L-Functions*, https://websites.umich.edu/lagarias/doc/debranges-houches.pdf (de Branges spaces / Hilbert–Pólya operators under explicitly conditional assumptions); Masatoshi Suzuki, *On the Hilbert space derived from the Weil distribution*, https://arxiv.org/abs/2301.00421 (Weil Hilbert space conditional on RH, an unconditionally defined precursor is distinguished from the RH realization); Alain Connes, *Trace formula in noncommutative geometry and the zeros of the Riemann zeta function*, https://arxiv.org/abs/math/9811068 (critical zeros as absorption spectrum and hypothetical off-line zeros as resonances); Janas–Szwarc, *Inhomogeneous Jacobi Matrices on Trees*, Constr. Approx. 48 (2018), Theorem 16, https://math.uni.wroc.pl/~szwarc/pdf/Jacobi-final.pdf (Carleman essential self-adjointness); Jeffrey Lagarias, *The Riemann Hypothesis: Arithmetic and Geometry*, https://www.math.lsa.umich.edu/~lagarias/doc/mt-holyoke-rev.pdf (Weil positivity criterion); Riemann–von Mangoldt zero count, https://mathworld.wolfram.com/Riemann-vonMangoldtFormula.html. Consult actual hypotheses; literature mentions of an operator are not source identities.

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
