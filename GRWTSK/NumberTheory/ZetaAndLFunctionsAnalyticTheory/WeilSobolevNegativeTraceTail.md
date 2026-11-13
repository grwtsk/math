# Arbitrary-test Sobolev trace bounds for the original zeta Weil form after verified zeros

Local mathematical attribution: grwtsk contributors. Edition 1, 2026-11-12.
Primary MSC2020: 11M26 (zeta-function zeros); secondary 46E35 (Sobolev spaces), 47B10 (trace class), 42A82 (positive definiteness).

**EVIDENCE:** WRITTEN_ANALYTICAL_ARGUMENT and LOCALLY_EXECUTED_EXACT_RATIONAL_CONSTANT_AUDIT (Python 3.13.5, exit 0). LOCAL_LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; LOCAL_ZETA_ZERO_VERIFICATION_NOT_RUN; NOVELTY_UNASSESSED. Independently published finite-height zeta verification and explicit zero-counting theorems are external mathematical inputs. This file neither proves RH, finite off-line zeros, finite global negative index, nor primitive Dirichlet GRH.

**Canonical input and consumer:** The original complete pole-inclusive zeta Weil distribution and exact complex-zero source in WeilFixedBumpNegativeDepth.md (WFDG-1/2); the verified-low-zero / unknown-high-zero decomposition and unconditional dyadic height 2^41 in WeilDyadicZeroTailFiniteHorizon.md (WDT-1--4). This new result extends finite-horizon estimates from a FIXED translate-generated family to ALL compact smooth tests on a fixed support interval. The original Weil distribution retains both zeta pole orientations, every prime power, all archimedean gamma contributions, the nontrivial zero MULTIPLICITIES and full complex off-axis pairings. The negative trace bound is stated in a specific Sobolev norm, NOT the original L² operator norm or an auxiliary positivity proof of RH.

**Repo pin and source inspection:** Inspect grwtsk/math/main and root/scoped policies and CONTRIBUTING before writing. Source base includes 59d79f153acb5d6474957016c80ff83dee4493d3 and the previously checked WFDG/WDT versions. Lean v4.34.1 (leanprover/lean4:v4.34.1); mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No Lean source, root import, research axiom, dependency pin or CI change. Coordination issue #1801, scope comment 6843306953. Adjacent companion exact rational audit WeilSobolevTailRationalAudit.py has Git blob 4249a2fd5450aa745f411ce4a481d567ea970049, matching the local Python 3.13.5 source, SHA-256 76dda6e8983c3c2246998dbc1549609402e6fd57b8718758128daa348d8f9cfe.

## 1. Exact zeta source and Sobolev test space

Fix A>0 and integer k>=1. Let
\[
\mathscr D_A=C_c^\infty((-A,A);\mathbb C)
\quad\text{and}\quad
H_A^k=\overline{\mathscr D_A}^{\,\|\cdot\|_{k,A}},
\qquad \|f\|_{k,A}=\|f^{(k)}\|_{L^2(-A,A)}.
\tag{1}
\]
By the Poincare inequalities for zero-boundary Sobolev spaces, this is precisely the complex Hilbert space H_0^k((-A,A)), with an equivalent norm to the conventional H^k norm. The displayed k-th derivative inner product is the ACTUAL reference Hilbert norm in all spectral statements below.

Let W be the COMPLETE additive zeta Weil distribution, with both pole orientations, every prime power, origin regularization and full gamma term (Suzuki 2026, printed p. 1; WFDG-1). For f,g in the original compact smooth test domain, put
\[
Q(f,g)=W(f*\widetilde g),\qquad
\widetilde g(x)=\overline{g(-x)},\qquad Q(f)=Q(f,f).
\]
The exact spectral identity is
\[
Q(f,g)=\sum_{\rho\in Z_{\rm distinct}}m_\rho
F_f(\rho)\overline{F_g(\tau\rho)},
\quad F_f(\rho)=\int_{\mathbb R}f(x)e^{z_\rho x}dx,
\quad z_\rho=\rho-\tfrac12,\quad \tau\rho=1-\overline\rho .
\tag{2}
\]
The sum counts DISTINCT nontrivial zeta zero locations once, with actual positive multiplicity m_rho; it is NOT projected to ordinates. The zeta functional equation and conjugation imply rho->tau rho preserves the divisor and multiplicities. In particular the sum is Hermitian, and on the critical line tau rho=rho so each term is m_rho |F_f(rho)|²>=0.

Platt and Trudgian (2021) proved, by independently published rigorous interval arithmetic, that all nontrivial zeros with 0<|Im rho|<=3*10^12 lie on Re rho=1/2. Set
\[
H=2^{41}=2\,199\,023\,255\,552<3\cdot10^{12}.
\tag{3}
\]
Zeta has no real nontrivial zeros in (0,1), so EVERY zero rho with |Im rho|<H lies on the critical line. Decompose the ACTUAL zero sum, without deleting unknown zeros:
\[
Q=Q_{\rm low}+Q_{\rm high},\quad
Q_{\rm low}(f)=\sum_{|\gamma_\rho|<H}m_\rho |F_f(\rho)|²\ge0.
\tag{4}
\]
The low sum is FINITE but may contain an enormous number of genuine zeros. Its positivity is an external certified finite-height fact, NOT RH.

## WST-1. Exact high-zero Sobolev evaluation and dyadic tail

For f in the original smooth test domain and every nontrivial zero with z_rho !=0, integration by parts k times is legitimate, with all support boundary terms ZERO:
\[
(-z_\rho)^kF_f(\rho)=\int_{-A}^A f^{(k)}(x)e^{z_\rho x}dx.
\]
Since |Re z_rho|<1/2, Cauchy--Schwarz gives the fully quantified bound
\[
\boxed{
|F_f(\rho)|\le
\frac{\sqrt{2A}\,e^{A/2}}{|z_\rho|^k}\,
\|f^{(k)}\|_2.
}
\tag{5}
\]
For tau rho the shifted coordinate is -conjugate(z_rho), so its modulus is the SAME and the identical bound holds. It applies to every high zero with |gamma|>=H>0, with no issue at a possible central zero. The finitely many low evaluation functionals are continuous on H_A^k by ordinary Sobolev/Poincare estimates even if some low z_rho=0.

Define for N>=6
\[
C_{k,N}=\sum_{|\gamma_\rho|\ge2^N}\frac{m_\rho}{|z_\rho|^{2k}}.
\tag{6}
\]
The sum counts ALL high zeros and their multiplicities, including any hypothetical off-line zeros.

**Theorem (unconditional explicit bounds):**
\[
\boxed{
C_{1,N}<8(N+2)\log2\;2^{-N},
}
\tag{7}
\]
and for each integer k>=2,
\[
\boxed{
C_{k,N}<
\frac{8\,2^{-2(k-1)N}}
{1-2^{-2(k-1)}}.
}
\tag{8}
\]

**Proof.** Use the unconditional explicit Riemann--von Mangoldt zero-counting bound N_zeta(T)<T log T for T>=64, with N_zeta counting positive ordinates INCLUDING multiplicities. This coarse bound follows directly from the explicit zero-count formulas of Hasanalizade--Shen--Wong (JNT 235, 2022) and the improvement by Bellotti--Wong (Math. Comp., electronically published November 2025). It also yields N_zeta(T)<T² for T>=64. For a dyadic block 2^n<=|gamma|<2^(n+1), n>=N>=6, both positive and negative ordinates contribute fewer than
\[
2N_\zeta(2^{n+1})<2^{n+2}(n+1)\log2
\quad\text{and separately}\quad
2N_\zeta(2^{n+1})<2^{2n+3}
\]
zeros counted with multiplicity.

As |z_rho|>=|gamma_rho|, for k=1 the block sum in (6) is <4(n+1)log2*2^{-n}. Summing and using the EXACT geometric identity
\(\sum_{n=N}^\infty(n+1)2^{-n}=(2N+4)2^{-N}\)
gives (7). For k>=2, the cruder count suffices: the block sum is less than \(8\cdot2^{-2(k-1)n}\). Sum the geometric progression from n=N to infinity to obtain (8). These are unconditional infinite-tail estimates, not finite zero enumeration or numerical heuristics. QED.

## WST-2. Full-original-Weil high part is TRACE CLASS on H_A^k

Let ell_rho:H_A^k->C be the continuous linear functional f->F_f(rho), and let u_rho be its Riesz representative. By (5),
\[
\|u_\rho\|_{H_A^k}^2\le
\frac{2A e^A}{|z_\rho|^{2k}}
\quad(|\gamma_\rho|\ge H).
\tag{9}
\]
The source-exact high-zero operator is the self-adjoint sum of rank-one cross-pairings
\[
T_{{\rm high},A,k}
=\sum_{|\gamma_\rho|\ge H}
m_\rho\,|u_\rho\rangle\langle u_{\tau\rho}|,
\tag{10}
\]
with the rank-one convention chosen to represent (2) in the displayed derivative Hilbert inner product. It is SELF-ADJOINT: tau permutes the entire high divisor, preserves multiplicity, and interchanges adjoint rank-one terms. Every rank-one summand has trace norm \(\|u_\rho\|\|u_{\tau\rho}\|\). Thus (7)--(9) imply ABSOLUTE convergence in trace-class norm and
\[
\boxed{
\|T_{{\rm high},A,k}\|_1
\le\varepsilon_{A,k}:=2Ae^A C^{\rm up}_{k,41},
}
\tag{11}
\]
where the explicit numerical upper envelopes are
\[
C^{\rm up}_{1,41}=8\cdot43\log2\cdot2^{-41},
\quad
C^{\rm up}_{k,41}=
\frac{8\,2^{-82(k-1)}}{1-2^{-2(k-1)}}\quad(k\ge2).
\tag{12}
\]
On the verified-low-zero side, the finite sum
\[
T_{{\rm low},A,k}=
\sum_{|\gamma_\rho|<H}m_\rho|u_\rho\rangle\langle u_\rho|
\]
is positive semidefinite and trace class. Therefore
\[
T_{A,k}:=T_{{\rm low},A,k}+T_{{\rm high},A,k}
\]
is a compact self-adjoint trace-class operator, and
\[
\langle T_{A,k}f,f\rangle_{H_A^k}=Q(f)
\quad(f\in\mathscr D_A).
\tag{13}
\]
This is the ORIGINAL Weil quadratic form viewed in a STRONGER Sobolev Hilbert metric, not an invented zeta model and not the original L² Weil operator.

**Theorem (all-test explicit almost-positivity).** For EVERY A>0, EVERY k>=1 and EVERY f in C_c^\infty(-A,A;C),
\[
\boxed{
Q(f)\ge-\varepsilon_{A,k}\|f^{(k)}\|_2^2.
}
\tag{14}
\]
This follows from T_low>=0 and \(\|T_{\rm high}\|_{\rm op}\le\|T_{\rm high}\|_1\le\varepsilon_{A,k}\). The inequality extends to the closure H_A^k. A common translation of f leaves Q and the derivative norm unchanged (the autocorrelation is translation-invariant), so it also holds for arbitrary smooth f whose support lies in ANY interval of length 2A after centering. No finite-dimensional restriction, modulation restriction or polynomial-filter ansatz is made.

## WST-3. ALL-RANK negative spectral MASS bound at fixed Sobolev resolution

Let \(\{\lambda_j(T_{A,k})\}_{\lambda_j<0}\) denote the negative eigenvalues of this compact self-adjoint operator, listed with their true spectral multiplicities.

**Theorem (unconditional):**
\[
\boxed{
\sum_{\lambda_j(T_{A,k})<0}|\lambda_j(T_{A,k})|
\le\varepsilon_{A,k},
\quad
\#\{\lambda_j(T_{A,k})\le-\eta\}
\le\frac{\varepsilon_{A,k}}{\eta}
\qquad(\eta>0).
}
\tag{15}
\]
The number bound may be sharpened by taking its integer floor; if epsilon<eta there are NO eigenvalues <=-eta.

**Proof.** Let e_1,...,e_m be any finite orthonormal set of genuine negative eigenvectors with eigenvalues lambda_j<0. Since T_low>=0,
\[
\sum_{j=1}^m(-\lambda_j)
=-\sum_j\langle(T_{\rm low}+T_{\rm high})e_j,e_j\rangle
\le\sum_j|\langle T_{\rm high}e_j,e_j\rangle|
\le\|T_{\rm high}\|_1
\le\varepsilon_{A,k}.
\]
The penultimate bound is the elementary trace-class diagonal inequality for any orthonormal system (or trace duality). Take the supremum over finite selections to obtain the full negative trace estimate. A negative eigenvalue <=-eta contributes at least eta to the sum, proving the counting statement. This bound is independent of matrix dimension and of a chosen basis. QED.

**Finite test matrix corollary, without a hidden dimension factor.** For ANY finite m and ANY functions f_1,...,f_m in H_A^k that are ORTHONORMAL in the k-th derivative inner product, form the actual Weil Gram matrix \(G_{ij}=Q(f_i,f_j)\). Its negative eigenvalues mu_j satisfy
\[
\boxed{
\sum_{\mu_j<0}|\mu_j|\le\varepsilon_{A,k},
\quad\#\{\mu_j\le-\eta\}\le\varepsilon_{A,k}/\eta.
}
\tag{16}
\]
Proof: compress T_low and T_high to the span; the low compression is positive, and the high trace norm cannot increase under orthogonal compression. Reapply the preceding argument. There is NO assertion that an arbitrary, non-orthonormal coefficient Gram matrix has this spectral bound in its raw Euclidean metric; its Sobolev Gram metric must be retained. This respects the normalization and matrix-size quantifiers.

## WST-4. Explicit rational numerical constants and executed audit

Set N=41. The general expressions (11)--(12) give
\[
\boxed{
\varepsilon_{A,1}=16Ae^A\cdot43\log2\cdot2^{-41},
\quad
\varepsilon_{A,2}=\frac{64}{3}Ae^A2^{-82},
\quad
\varepsilon_{A,3}=\frac{256}{15}Ae^A2^{-164}.
}
\tag{17}
\]
Using the elementary STRICT inequalities \(e<3\), \(\log2<7/10\), and \(\log2>2/3\) (so e^{10}<2^{15}), exact rational arithmetic proves
\[
\boxed{
\varepsilon_{1,1}<2^{-30},\qquad
\varepsilon_{1,2}<2^{-76},\qquad
\varepsilon_{1,3}<2^{-158},\qquad
\varepsilon_{10,3}<2^{-141}.
}
\tag{18}
\]
Thus for every NONZERO f supported in [-1,1], the original Q satisfies
\(Q(f)>-2^{-30}\|f'\|_2^2\) and \(Q(f)>-2^{-158}\|f'''\|_2^2\).
For support [-10,10] the analogous k=3 inequality is \(Q(f)>-2^{-141}\|f'''\|_2^2\).
For f=0 the proper relation is equality 0=0, so (14) retains non-strict inequality. Every bound is in the explicitly stated Sobolev norm.

**Executed source-local arithmetic audit:** The adjacent WeilSobolevTailRationalAudit.py uses Python standard-library Fraction and exact integer arithmetic only. Local command: python /mnt/data/weil_sobolev/WeilSobolevTailRationalAudit.py, Python 3.13.5, exit 0; output starts SOB_TRACETAIL_RATIONAL_AUDIT: PASS. It checks H0=2^41, the closed geometric-series constants and each strict comparison in (18) using rational upper estimates for e and log2. Source file Git blob SHA 4249a2fd5450aa745f411ce4a481d567ea970049, matching the locally executed file; SHA-256 76dda6e8983c3c2246998dbc1549609402e6fd57b8718758128daa348d8f9cfe. It DOES NOT independently certify zeta zeros, prove the transcendental inequalities or execute the trace-class analytic argument. All formal and independent mathematical checks are NOT_RUN.

## WST-5. Essential falsifications: small trace mass does NOT imply finite negative index

**First hostile countermodel.** On the unrelated Hilbert space ell², the diagonal compact self-adjoint operator
\[
S e_j=-\epsilon\,2^{-j-1}e_j,\qquad j=0,1,\ldots
\]
has trace norm epsilon, but it has INFINITELY MANY negative eigenvalues. Hence the source-exact estimate (15), no matter how tiny epsilon is, does NOT prove the negative Morse index of the original Q is finite. The exact unresolved zero-localization question is still capable of producing infinitely many negative eigenvalues tending to zero in this Sobolev metric.

**Second hostile check: do not pass k to infinity.** For fixed A, the scalar coefficient epsilon_{A,k} tends to zero rapidly as k->infinity. But the right-hand norm \(\|f^{(k)}\|_2\) DEPENDS on k, and there is no uniform geometric bound for nonzero compactly supported smooth f. In fact if \(\|f^{(k)}\|_2\le CB^k\) for all k, Plancherel implies its Fourier transform vanishes outside [-B,B], while compact support makes that Fourier transform entire; by the identity theorem f=0. Consequently one cannot take k->infinity in (14) to infer Q(f)>=0 for a nonzero compact test. Nor may one interpret the different operators T_{A,k} as sharing the same eigenvalues; their underlying Hilbert normalizations vary.

**Third hostile check: all support sizes.** The factor \(2Ae^A\) in epsilon_{A,k} grows with support half-width. Even at fixed k, the result is NOT uniform over A->infinity and cannot yield the original all-support RH or finite-index criterion. In particular finite externally verified zeros and their tiny high-zero tail at any given support do not replace the unproved actual prime cancellation at all scales.

**Fourth hostile check: true source and spectral identity.** Q_low uses only actual certified critical-line zeros (not a synthetic positive comparator). Q_high includes EVERY genuine unverified zero with its complex horizontal displacement and tau pairing; its trace-norm bound follows from integration by parts in the ORIGINAL zero-side formula. The source-return to Weil's signed arithmetic distribution, including conductor-one zeta poles, von Mangoldt prime powers and gamma terms, is the exact original explicit formula (2). There is no GRH/character-phase transfer without separate primitive completed L-function and conductor-dependent zero certification.

## Primary comparison, verification and first unresolved premise

- Platt and Trudgian, *The Riemann hypothesis is true up to \(3\cdot10^{12}\)*, Bulletin of the London Mathematical Society 53 (2021), 792--797, DOI 10.1112/blms.12460: certified all critical-line zeros and simplicity ONLY within the finite height, not RH in general.
- Hasanalizade, Shen and Wong, *Counting zeros of the Riemann zeta function*, Journal of Number Theory 235 (2022), 219--241, DOI 10.1016/j.jnt.2021.06.032: explicit zero count \(|N(T)-(T/(2\pi))\log(T/(2\pi e))|\le0.1038\log T+0.2573\log\log T+9.3675\), supplying N(T)<T logT and N(T)<T² for T>=64. Bellotti and Wong, *Improved estimates for the argument and zero-counting function of the Riemann zeta-function*, Mathematics of Computation, published electronically 2025-11-14, DOI 10.1090/mcom/4133, gives a sharper count but is not needed for the coarse constants here.
- Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), p. 1: precise original full Weil distribution and compact smooth complex test domain. WFDG-1/2 in this repository records the exact source identity, multiplicities and reflected complex pairing. The Hilbert-space trace bound uses standard trace ideals and Sobolev evaluation inequalities; it is a source-specific synthesis, with mathematical originality UNASSESSED and NO independent review.
- Exact source-script provenance and active GitHub publication receipt are recorded in coordinating issue grwtsk/math#1801; source SHA/pins stated above. No Lean elaboration, kernel replay, transitive axiom audit, new research axiom, sorry or admit.

**First unresolved substantive premise:** Establish a genuine ALL-SUPPORT source-exact bound on the NUMBER of negative directions (or positivity) of Q independent of Sobolev resolution, by controlling the actual signed arithmetic Weil form at every scale and returning to the analytically continued zeta zeros. WST-1--5 bound only TOTAL NEGATIVE SPECTRAL MASS at a specified Sobolev normalization, leaving arbitrarily many shallow negative directions possible. For primitive Dirichlet GRH, conductor-dependent zero counts and parity/gamma/dual-character details require new separate theorems and cannot be inferred from zeta finite-height verification.

No Noe proof-automation, browser chat, message or scheduler workflow was invoked; its canonical skill path was inaccessible by authorized reads. This is an ordinary source-local mathematical exposition and finite rational arithmetic check, not an operational automation run.
