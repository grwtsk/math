# A smooth original-Weil moving edge test and the dual-character primitive GRH criterion

Local attribution: grwtsk contributors. Edition 1, 2026-11-13 (America/Los_Angeles).
Primary MSC2020: 11M06, 11M26; secondary: 11N05, 30D35, 42A82.
Research coordination: grwtsk/math#1801, scope comment 6869432400.

**Evidence and theorem status:** COMPLETE_WRITTEN_ANALYTICAL_ARGUMENT with standard external classical inputs, an ACTUALLY_EXECUTED source-local exact rational moment/support/complex-character coefficient sanity audit, and no stronger numerical/formal claim. Mathlib/Lean source elaboration NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN, local complete L-zero computation NOT_RUN, independent analytical review NOT_RUN, novelty UNASSESSED. This is a source-exact EQUIVALENCE and a domain repair, NOT unconditional proof of RH, GRH, global Weil positivity, finite negative index, or the previously missing prime-discrepancy bound. No new sorry, admit, research axiom, imports, source pins or conjecture target changes.

**Canonical source and precise consumer.** This follows the maintained WeilEdgePrimePoleExplicitFormula.md (Git blob 9fa5533b431aa7af1fb23ca26e58b70a02f172a7), which supplies a q=1 zeta odd real two-bump prime/pole cancellation but uses a globally C^2 polynomial bump. The existing Admissible/C_c-infinity canonical test domain is described by WeilNegativeWitness, WeilSourcePrimeCorrelation and WeilGammaPhysicalReturn. We smooth the polynomial by the already-proved WFDG-1 infinitely convolved compact smooth dyadic probability bump, preserving NO-OFF-CRITICAL-TRANSFORM-ZEROS. Then prove source-exact short/far prime separation for EVERY primitive character (all true complex phases and prime powers), bounded gamma/pole remainders, a fully included trivial-zero smoothed Dirichlet explicit formula, and the true χ / conjugate χ reflected-zero cancellation audit. Conductor-one zeta remains EXPLICIT with both signed poles. The consumer is a single moving family of ORIGINAL odd smooth Weil tests that detects ALL hypothetical off-line primitive zeros through boundedness of its ACTUAL original-source arithmetic value.

**Live source and policy.** Inspected grwtsk/math/main at 10fe6b93f96c38c8996e3e5feb33bbd180e03215 (then refreshed after the adjacent executable fixture commit), root AGENTS.md, CONTRIBUTING.md, scoped AGENTS lookup (none found), and source declarations WeilSourcePrimeCorrelation.lean, WeilGammaPhysicalReturn.lean, DirichletLogDerivativeTail.lean, DirichletCompletedSourceDraft.lean (the latter is an IGNORED/NOT_ELABORATED draft and is NOT asserted as a checked supplier). Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The adjacent standard-library sanity script WeilPrimitiveSmoothEdgeChecks.py is 2549 UTF-8 bytes, Git blob 64af60075c9a84883437e5342fa26d6c44f6565d, SHA256 6da1f534123963a30890334f56b55d8d262a4193e769db331be9cd95fb332d6a; checked locally against the SAME blob source with Python 3.13.5, exit 0. Its scope is explained in §7.

## WPSE-1. Repair to a genuine C_c-infinity test without hiding off-line zeros

Define the original compactly supported polynomial beta bump
\[
 b(u)=u^3(1-u)^3\,\mathbf1_{[0,1]}(u).
\tag{1}
\]
It is globally C^2 but not C^infinity; the previous beta two-bump source calculations use its first two vanishing boundary jets. Let phi be the maintained WFDG-1 REAL EVEN nonnegative C_c-infinity mass-one dyadic density, supported on [-1/2,1/2], with entire bilateral transform
\[
 \Phi(z)=\int_{\mathbb R}\phi(y)e^{zy}dy
 =\prod_{j\ge1}\frac{\sinh(2^{-j-1}z)}{2^{-j-1}z}.
\tag{2}
\]
Its only zeros lie on the imaginary axis, by normal convergence and the explicit factors; \(\Phi(0)=1\). Fix once and for all
\[
 \epsilon=\frac1{32},\qquad
 q_\epsilon(u)=\epsilon^{-1}\phi(u/\epsilon-1/2),\qquad
 b_\epsilon=b*q_\epsilon,\qquad \ell=1+\epsilon=\frac{33}{32}.
\tag{3}
\]
The genuine probability density \(q_\epsilon\) is C_c-infinity, nonnegative, supported on [0,epsilon] and has mass one. Thus \(b_\epsilon\in C_c^\infty(\mathbb R;\mathbb R)\), nonnegative, supported in [0,ell], has mass 1/140, and vanishes to ALL orders at its endpoints. Its bilateral Laplace transform obeys the EXACT entire identity
\[
\boxed{
 B_\epsilon(z)
 :=\int_{\mathbb R}b_\epsilon(u)e^{zu}du
 =B(z)e^{\epsilon z/2}\Phi(\epsilon z),
\quad B(z)=\int_0^1u^3(1-u)^3e^{zu}du.
}
\tag{4}
\]
This is exact convolution and scaling, not a numerical approximation.

The classical Bessel J_(7/2) zero product, e.g. NIST DLMF 10.21.15 and 10.32.2, gives
\[
 B(z)=\frac{e^{z/2}}{140}
      \prod_{j\ge1}\left(1+\frac{z^2}{4j_{7/2,j}^2}\right),
\tag{5}
\]
where all \(j_{7/2,j}\) are REAL positive zeros of J_(7/2). The normalized product has no off-imaginary zero. The factor \(e^{\epsilon z/2}\) is entire NONZERO and all zeros of each dyadic sinh factor are on the imaginary axis. Consequently
\[
 \boxed{B_\epsilon(z)\ne0\quad\text{whenever }\Re z\ne0.}
\tag{6}
\]
In particular, \(B_\epsilon(\rho-1/2)\) cannot vanish at ANY hypothetical nontrivial off-critical zero of ANY primitive L(s,chi), not just zeta.

The original bump's exact moments and derivative budgets are
\[
 \int b=\tfrac1{140},\quad
 \int b^2=\tfrac1{12012},\quad
 \int(b')^2=\tfrac1{770},\quad
 \int |b'|=\tfrac1{32}.
\tag{7}
\]
Young's inequality for convolution with the nonnegative probability q_epsilon yields
\[
 \int b_\epsilon=\tfrac1{140},\quad
 \|b_\epsilon\|_2^2\le\tfrac1{12012},\quad
 \|b_\epsilon'\|_2^2\le\tfrac1{770},\quad
 \|b_\epsilon'\|_1\le\tfrac1{32}.
\tag{8}
\]
Its actual first moments are \(B_\epsilon(0)=1/140\), \(B_\epsilon'(0)=33/8960\), \(B_\epsilon''(0)=5413/2580480\), useful independent normalizations. The dyadic law has mean zero and variance 1/36. All these exact rational identities are covered by the source-local finite checker except the analytical C-infinity convolution and entire product theorems.

The strict activation geometry
\[
 \boxed{\log2<\ell=33/32<\log3}
\tag{9}
\]
is an elementary TRUE inequality. For the right side, use \(e<11/4\) and \(e^{1/32}\le32/31\), giving \(e^\ell<88/31<3\); the left follows from \(\log2<1<\ell\). This permits precisely ONE short prime power n=2 while retaining EVERY distant prime power.

## WPSE-2. Real odd moving C-infinity sources and all primitive prime phases

Let \(a\ge1\) be a REAL MOVING LOCATION, and fix any physical support radius \(T_a>a+\ell\), for example \(T_a=a+\ell+1/8\). This \(a\) is unrelated to a character's parity. Put
\[
 \boxed{ f_a(t)=b_\epsilon(t-a)-b_\epsilon(-t-a).}
\tag{10}
\]
It is a REAL ODD C_c-infinity test of the ORIGINAL unmodified Weil domain, supported on \([a,a+\ell]\cup[-a-\ell,-a]\subset(-T_a,T_a)\). Because 2a>=2>ell, the two bumps are disjoint.

Define the actual smooth autocorrelation and convolution
\[
 A_\epsilon(r)=\int b_\epsilon(u)b_\epsilon(u+r)du,\quad
 h_\epsilon(v)=b_\epsilon*b_\epsilon(v)
 =\int b_\epsilon(u)b_\epsilon(v-u)du.
\tag{11}
\]
For EVERY r>=0, direct whole-line support geometry and REAL odd symmetry yield the exact identity
\[
 \boxed{\int_{\mathbb R}f_a(t)f_a(t+r)dt
        =2A_\epsilon(r)-h_\epsilon(r-2a).}
\tag{12}
\]
The A term is supported for 0<=r<=ell, while h_epsilon is supported in [0,2ell] and nonnegative. The far signed term is supported for r in [2a,2a+2ell], so it does not overlap the short source. Equation (9) means only n=2 has an active short contribution. No prime-power cutoff is silently shortened: the original inventory \(\{n\ge2:\log n<2T_a\}\) includes ALL far source terms because \(T_a>a+\ell\); any extra indices have identically zero correlation.

Let chi be a primitive Dirichlet character of its ACTUAL conductor q>=1. In the native original character-phase convention define the finite genuinely character-weighted far prime-power sum
\[
 \boxed{
 S_\chi(a)=\sum_{\substack{e^{2a}\le n<e^{2a+2\ell}}}
  \frac{\Lambda(n)\chi(n)}{\sqrt n}\,
  h_\epsilon(\log n-2a).
 }
\tag{13}
\]
Every prime power remains present, even at ramified primes where chi(n)=0, with its true complex phase and multiplicity as a von Mangoldt weight. The endpoints vanish because h_epsilon has ALL zero boundary jets.

Put \(w_2=\log2/\sqrt2\). For REAL f_a the genuine original finite-prime quadratic response is
\[
 \boxed{
 P_\chi(f_a)=4w_2\,(\Re\chi(2))\,A_\epsilon(\log2)
              -2\Re S_\chi(a).
 }
\tag{14}
\]
For q=1 chi=1, this reads \(P_\zeta=P_{\rm short}-2S_\zeta\). For complex chi no imaginary part has been discarded before forming the ORIGINAL Hermitian real physical value; its phase appears in (13) and the true Hermitian correlation is the real part in (14). If the canonical implementation uses conj chi(n) with the reflected autocorrelation convention, (14) is unchanged for this REAL f_a, since only Re chi(n) occurs.

## WPSE-3. The genuine physical Weil value: q>1 and conductor-one zeta separately

Let \(\kappa_\chi\in\{0,1\}\) denote the TRUE parity of chi, and use the ORIGINAL archimedean constant
\[
 c_{\chi}=\log(q/\pi)+\psi(1/4+\kappa_\chi/2),\qquad
 \Gamma_\kappa(f)=\int_0^\infty
 \frac{e^{-(\kappa+1/2)r}}{1-e^{-2r}}\,
 \|f(\cdot+r)-f\|_2^2dr.
\tag{15}
\]
The physical finite test energy and derivative satisfy for ALL moving a>=1
\[
 E_\epsilon=\|f_a\|_2^2=2\|b_\epsilon\|_2^2\le\tfrac1{6006},
 \quad D_\epsilon=\|f_a'\|_2^2=2\|b_\epsilon'\|_2^2\le\tfrac1{385}.
\tag{16}
\]
Since \(\|f(\cdot+r)-f\|_2^2\le r^2D_\epsilon\) by the usual H^1 translation estimate and is also <=4E_epsilon, the ORIGINAL parity gamma is uniformly bounded:
\[
 \boxed{
 0\le\Gamma_\kappa(f_a)
 \le\tfrac7{12}D_\epsilon+
       4K_{1/2}(1)E_\epsilon
 \quad(\forall a\ge1,\ \kappa=0,1),
 }
\tag{17}
\]
where \(K_{1/2}(1)=\int_1^\infty e^{-r/2}/(1-e^{-2r})\,dr<\infty\).
Indeed for 0<r<=1, \(\kappa_{\rm gamma}(r)\le (1+2r)/(2r)\) from \(e^{-2r}\le1/(1+2r)\), so \(\int_0^1r^2\kappa_{\rm gamma}(r)\le7/12\). The tail is paid by the full K_(1/2)(1), not discarded. By Cauchy, \(|A_\epsilon(\log2)|\le\|b_\epsilon\|_2^2\le1/12012\). Thus all physical remainders displayed next are uniformly bounded in a for EACH fixed chi, with no q-uniform constant asserted.

**Nonprincipal primitive q>1.** There are NO completed L-function poles. Using the unchanged physical source \(Q_\chi(f)=c_\chi E+\Gamma_{\kappa_\chi}(f)-P_\chi(f)\) and (14),
\[
 \boxed{
 Q_\chi(f_a)=2\Re S_\chi(a)+R_\chi(a),\qquad
 R_\chi(a)=c_\chi E_\epsilon+\Gamma_{\kappa_\chi}(f_a)
       -4w_2\Re\chi(2)A_\epsilon(\log2),
 \quad \sup_{a\ge1}|R_\chi(a)|<\infty.
 }
\tag{18}
\]
The original true conductor q, parity and short complex phase are retained in the remainder.

**Conductor-one q=1: analytically continued zeta.** Put \(M_+=B_\epsilon(1/2)>0\), \(M_-=B_\epsilon(-1/2)>0\). The ACTUAL signed odd-pole moment is
\[
 m(f_a)=\int f_a(t)\sinh(t/2)dt
       =e^{a/2}M_+-e^{-a/2}M_-,
\tag{19}
\]
and the zeta-specific physical pole is exactly \(-2m(f_a)^2\), NOT positive moment squares. Define the complete source-centered finite prime discrepancy
\[
 F_\zeta(a)=S_\zeta(a)-e^a M_+^2.
\tag{20}
\]
Then combining the ORIGINAL pole and prime terms gives
\[
 \boxed{
 Q_\zeta(f_a)=2F_\zeta(a)+R_\zeta(a),
 }
\tag{21}
\]
with
\[
 R_\zeta(a)=c_{1,0}E_\epsilon+\Gamma_0(f_a)
 -4w_2A_\epsilon(\log2)+4M_+M_-
 -2e^{-a}M_-^2 .
\tag{22}
\]
Its absolute value is uniformly bounded for a>=1 by (16)--(17) and e^-a<=e^-1. Both true zeta pole orientations are retained; their large negative \(e^a\) part cancels exactly against the continuous far prime-density term below, not via an RH assumption or an artificially positive pole model.

## WPSE-4. Exact prime-density discrepancy and one unconditional PNT-level bound

Let \(\psi(x,\chi)=\sum_{n\le x}\chi(n)\Lambda(n)\) (complex-valued for complex chi), and \(\psi(x)=\psi(x,1)\) in the conductor-one case. Put \(X=e^{2a}\). The continuous far-prime-density mass is
\[
 \int_X^{e^{2\ell}X}x^{-1/2}h_\epsilon(\log(x/X))dx
 =e^a\int_0^{2\ell}e^{v/2}h_\epsilon(v)dv
 =\boxed{e^a B_\epsilon(1/2)^2},
\tag{23}
\]
using the ACTUAL h_epsilon=b_epsilon*b_epsilon convolution product. This is the exact term canceled by the original zeta pole (19)--(22).

Define \(w_a(x)=x^{-1/2}h_\epsilon(\log(x/X))\). The true finite prime sum is the Stieltjes integral of w_a against \(d\psi(x,\chi)\). Since h_epsilon and all its boundary jets vanish at both endpoints, honest integration by parts gives for q>1
\[
 \boxed{
 S_\chi(a)=-e^{-a}\int_0^{2\ell}
 e^{-v/2}\psi(Xe^v,\chi)
 \bigl(h_\epsilon'(v)-\tfrac12h_\epsilon(v)\bigr)dv.
 }
\tag{24}
\]
For q=1 the SAME formula for F_zeta uses \(\psi(Xe^v)-Xe^v\) in place of \(\psi(Xe^v,\chi)\). This is an exact source identity, not a PNT approximation.

As q_epsilon is a nonnegative probability, Young and (7)--(8) give
\[
 \|h_\epsilon\|_1=(1/140)^2=1/19600,\qquad
 \|h_\epsilon'\|_1\le(1/32)(1/140)=1/4480,
\]
so, with the SAME numerical constant as the original unsmoothed polynomial,
\[
 \boxed{
 \|h_\epsilon'\|_1+\tfrac12\|h_\epsilon\|_1
 \le\frac{39}{156800}.
 }
\tag{25}
\]
Consequently the COMPLETE native far-prime sums obey the unconditional fixed-character bounds
\[
 \boxed{
 |S_\chi(a)|\le\frac{39}{156800}e^{-a}
       \sup_{X\le x\le e^{2\ell}X}|\psi(x,\chi)|
       \quad(q>1),
 }
\tag{26}
\]
\[
 \boxed{
 |F_\zeta(a)|\le\frac{39}{156800}e^{-a}
       \sup_{X\le x\le e^{2\ell}X}|\psi(x)-x|.
 }
\tag{27}
\]
The PNT in fixed arithmetic progressions gives \(\psi(x,\chi)=o_\chi(x)\) for q>1; the ordinary PNT gives \(\psi(x)-x=o(x)\). Hence from (18),(21),(26),(27),
\[
 Q_\chi(f_a)=o_\chi(e^a)\quad(a\to\infty)
\]
for EACH fixed primitive chi, including zeta. **This does NOT imply boundedness**, nor any o(e^{eta a}) for eta<1. The arithmetic gap required for GRH remains a much stronger COMPLETE smoothed-prime cancellation; no universal result is smuggled in from PNT.

## WPSE-5. True smoothed Dirichlet explicit formula, ALL zeros and dual characters

For q>1 primitive, the standard Euler-region analytic identity is
\[
 -\frac{L'}{L}(s,\chi)=
 \sum_{n\ge1}\frac{\Lambda(n)\chi(n)}{n^s}
 \qquad(\Re s>1).
\tag{28}
\]
It is used ONLY in its genuine region of absolute convergence; the analytically continued L-function, NOT a totalized series outside that half-plane, supplies the contour source. The compact-smooth B_epsilon transform is entire and rapidly decays on each bounded vertical strip, so for any real c>1,
\[
 \boxed{
 S_\chi(a)=\frac1{2\pi i}
 \int_{\Re s=c}
 -\frac{L'}{L}(s,\chi)\,
 e^{(2s-1)a}B_\epsilon(s-1/2)^2\,ds.
 }
\tag{29}
\]
Mellin inversion of the genuine convolution h_epsilon, including the complete n^-1/2 normalization, proves (29). The usual standard logarithmic-derivative contour shift (on horizontal segments avoiding all actual zeros, with zero counts and decay paid) returns the true zero-divisor formula. For nonprincipal primitive chi let \(\kappa_\chi\in\{0,1\}\) be its parity and define
\(\mathcal T_\chi=\{-\kappa_\chi-2j:j=0,1,2,\ldots\}\),
its TRUE simple trivial zeros. Then
\[
 \boxed{
 \begin{aligned}
 S_\chi(a)={}&-\sum_{\rho\in Z_\chi^{\rm nontriv}}m_\chi(\rho)
       e^{(2\rho-1)a}B_\epsilon(\rho-1/2)^2\\
 &-\sum_{j\ge0}e^{-(2\kappa_\chi+4j+1)a}
       B_\epsilon(-\kappa_\chi-2j-1/2)^2 .
 \end{aligned}}
\tag{30}
\]
Distinct nontrivial zero locations are counted once with their ACTUAL positive integer multiplicity m_chi(rho). This includes possible exceptional real zeros, central zeros and off-line complex zeros. There is NO q>1 pole at s=1. The trivial-zero series includes s=0 when chi is primitive EVEN; this actual term must not be silently dropped.

For q=1, the pole of -zeta'/zeta at s=1 contributes the exact +e^a B_epsilon(1/2)^2 canceled in F_zeta. The true trivial zeros are at s=-2j,j>=1, giving
\[
 \boxed{
 F_\zeta(a)=
 -\sum_{\rho\in Z_\zeta^{\rm nontriv}}m_\rho
       e^{(2\rho-1)a}B_\epsilon(\rho-1/2)^2
 -\sum_{j\ge1}e^{-(4j+1)a}
       B_\epsilon(-2j-1/2)^2.
 }
\tag{31}
\]
There is no extra zeta trivial zero at s=0. The genuine pole orientation in the physical source has already been treated EXACTLY in (19)--(22).

The nontrivial zero sums in (30)--(31) converge ABSOLUTELY for every fixed a>=1 by vertical rapid decay of the smooth B_epsilon and standard unconditional L-zero counting \(N_\chi(T)=O_\chi(T\log(q(T+2)))\). The trivial sums converge geometrically since a>=1 and B_epsilon(z) is bounded on the negative real half-line (b_epsilon>=0 supported on nonnegative u). All these zero positions and multiplicities remain complex and signed in their true squared transform coefficients; there is no ordinate projection or invalid modulus-square replacement.

**Dual-character audit.** For a REAL test kernel h_epsilon and real moving a,
\[
 S_{\bar\chi}(a)=\overline{S_\chi(a)},\qquad
 \Re S_\chi(a)=\tfrac12(S_\chi(a)+S_{\bar\chi}(a)).
\tag{32}
\]
A nonprincipal primitive complex chi is NOT self-dual in general. DLMF 25.15.5 and mathlib's native primitive functional equation relate its completed zero divisor to that of bar chi under s<->1-s, with its genuine root number retained. Conjugation maps each chi zero rho to a bar-chi zero bar(rho); the completed functional equation maps each chi zero rho to a bar-chi zero 1-rho. These are the TRUE dual-character statements used below; no assertion that each individual complex chi has a real-even zero spectrum is made.

## WPSE-6. A SINGLE original smooth moving physical source detects all off-line zeros

**Theorem (fixed-character criterion, unconditional EQUIVALENCE, not GRH itself).** For EVERY primitive nonprincipal chi of its ACTUAL conductor q>1, define its original physical Weil value on the TRUE odd smooth test (10), using any fixed positive open-window slack \(T_a=a+\ell+1/8\). Then
\[
 \boxed{
 [\forall\rho,\ L(\rho,\chi)=0,\ 0<\Re\rho<1
                   \Rightarrow\Re\rho=1/2]
 \iff
 \sup_{a\ge1}|Q_\chi(f_a)|<\infty .
 }
\tag{33}
\]
For conductor-one q=1 the same criterion with the ORIGINAL signed-pole Q_zeta is exactly RH:
\[
 \boxed{
 \mathrm{RH}\iff\sup_{a\ge1}|Q_\zeta(f_a)|<\infty.
 }
\tag{34}
\]
Consequently, retaining EVERY individual q and chi quantifier,
\[
 \boxed{
 (\mathrm{RH}\ \text{and primitive Dirichlet GRH})
 \iff \forall q\ge1\ \forall\chi\text{ primitive of conductor }q,\
             \sup_{a\ge1}|Q_\chi(f_a)|<\infty.
 }
\tag{35}
\]
The bound is allowed to depend on the FIXED chi; no conductor-uniform constant is claimed. Primitive q=1 is the analytically continued Riemann zeta source, with both pole orientations. Imprimitive-character factors and broader L-families require separate transfer and are not included.

**Forward direction.** If chi satisfies its actual GRH target, then bar chi also does by complex conjugation. In (30), for every nontrivial zero beta+i gamma on Re beta=1/2, \(|e^{(2\rho-1)a}|=1\). Absolute summability of \(m_\chi(\rho)|B_\epsilon(i\gamma)|^2\) makes \(S_\chi(a)\) uniformly bounded for all a>=1; the trivial-zero tail is uniformly bounded too. Equation (18) has a uniformly bounded original gamma/conductor/short-prime remainder, so Q_chi(f_a) is bounded. For zeta, (31),(21) give the same forward direction with its TRUE pole cancellation.

**Reverse direction: pole cannot cancel between chi and its dual.** Suppose the real physical q>1 value Q_chi(f_a) is bounded on every real a>=1. Since R_chi is uniformly bounded by (17)--(18), the REAL scalar function
\(G_\chi(a)=\Re S_\chi(a)\) is bounded. Its one-sided Laplace transform
\[
 \mathcal L_\chi(w)=\int_1^\infty G_\chi(a)e^{-wa}da
\]
is holomorphic for \(\Re w>0\). In the initial half-plane \(\Re w>1\), the absolutely convergent true zero sums (30) for chi and bar chi give the MEROMORPHIC partial-fraction return
\[
 \begin{aligned}
 \mathcal L_\chi(w)=
 -\frac12\sum_{\rho\in Z_\chi^{\rm nontriv}\cup
                       Z_{\bar\chi}^{\rm nontriv}}
  [m_\chi(\rho)+m_{\bar\chi}(\rho)]\,
  B_\epsilon(\rho-1/2)^2\,
  \frac{e^{-(w-(2\rho-1))}}{w-(2\rho-1)}
 +\mathcal T_\chi(w),
 \end{aligned}
\tag{36}
\]
where each distinct zero in the UNION is written once, with multiplicity ZERO for a character if it has no zero at that location; \(\mathcal T_\chi\) is the equally explicit convergent trivial-zero partial-fraction sum from (30), holomorphic on Re w>0. The high-zero portion converges locally uniformly off its genuine poles by vertical rapid B_epsilon decay and the usual zero count; it analytically continues \(\mathcal L_\chi\) meromorphically into Re w>0.

If some actual nontrivial chi OR bar-chi zero rho lies RIGHT of the critical line, then
\(w_\rho=2\rho-1\) lies in Re w>0. Its exact residue in (36) is
\[
 \boxed{
 -\tfrac12[m_\chi(\rho)+m_{\bar\chi}(\rho)]\,
       B_\epsilon(\rho-1/2)^2\ne0
 }
\tag{37}
\]
because at least one true multiplicity is positive and (6) proves the entire transform does not vanish for Re rho!=1/2. **The positive INTEGER multiplicities ADD; complex character phases cannot cancel this true reflected source residue.** No different zero can have the SAME w_rho unless it is the SAME rho. Thus the meromorphic return has a genuine pole in the half-plane where the bounded original-source Laplace integral is holomorphic, a contradiction. So neither chi nor bar chi has a zero with Re rho>1/2. If chi had a zero to the LEFT, the genuine completed primitive DUAL-character equation would give a bar-chi zero at 1-rho RIGHT of the line, also excluded. Therefore every chi zero in the critical strip lies on Re=1/2. This proves the reverse implication without assuming GRH, falsely treating complex chi as self-dual, dropping multiplicities, or deriving a zero-free strip from convergence alone.

For zeta, bounded Q_zeta(f_a) implies bounded F_zeta via (21); the identical one-sided meromorphic Laplace argument for (31), its nonzero transform and the zeta functional-equation reflection prove RH. Conversely RH gives bounded Q_zeta as above. No partial-fraction identity has silently assumed that zero coefficients are absolute squares off the line.

**First still-unresolved premise:** Establish the REAL BOUNDEDNESS of these ORIGINAL physical or finite smoothed arithmetic sources for every moving a and every primitive chi WITHOUT first assuming GRH. The unconditional PNT(AP) only gives \(Q_\chi(f_a)=o_\chi(e^a)\) and does not supply boundedness or the all-test lower Weil sign. Therefore (33)--(35) are exact necessary/sufficient criteria, not an unconditional GRH argument. An analogous primitive source return for imprimitive characters would require their extra Euler factors and is not implied here.

## WPSE-7. Verification, falsification and paper-to-source provenance

**Locally executed exact check:** The adjacent WeilPrimitiveSmoothEdgeChecks.py contains source-local standard-library Fraction assertions only. Actual commands run locally in Python 3.13.5:
\[
 \texttt{python /mnt/data/WeilPrimitiveSmoothEdgeChecks.py} \quad\text{EXIT 0, SMOOTH_PRIMITIVE_EDGE_EXACT_CHECK: PASS;}
\]
\[
 \texttt{python -m py_compile /mnt/data/WeilPrimitiveSmoothEdgeChecks.py}\quad\text{EXIT 0.}
\]
The script establishes b's EXACT polynomial moments (7), H1/L2 source envelopes (16), the first Taylor moments of B_epsilon, the rational inequality \(1+\epsilon<\log3\), and a finite coefficientwise chi/bar-chi sanity audit for the genuinely COMPLEX primitive character modulo 5 with chi(2)=i, chi(3)=-i. It does NOT evaluate infinitely many L-function zeros, prove the Bessel real-zero theorem or the entire dyadic product, derive the physical correlation (12) formally, prove the Dirichlet explicit formula (30), or check (33) in Lean. The scalar check's source Git blob must agree with the executed local git hash-object; its SHA256 and Git blob appear above.

**Hostile failure modes and exact exclusions:**
1. **C2 versus C-infinity:** The earlier polynomial bump is only globally C^2, whereas canonical Admissible expects C_c-infinity. This source uses the actual C_c-infinity convolution b_epsilon and hence needs no unproved C2-to-Cinfinity source-domain transfer. Smoothing changes b and every coefficient CONSISTENTLY; one cannot reuse unsmoothed numeric prime sums as if the test were unchanged.
2. **No zeros hidden by smoothing:** Both factors in (4) separately have only purely imaginary zeros by the stated classical theorems. A generic compact bump may vanish at a hypothetical off-line L zero and would destroy the converse criterion; our source's nonvanishing requirement is proved, not assumed.
3. **Complex character pairing:** For chi!=bar chi, the zero divisor is NOT assumed self-dual; (36) uses BOTH true chi and bar-chi sets and their positive multiplicities, and left-side exclusion invokes the DUAL functional equation with its genuine root number. Ignoring one character or retaining only absolute-square ordinates would invalidate the residue proof.
4. **Trivial zeros / pole:** Even primitive q>1 has a trivial zero at 0 and it is retained in (30). The q=1 zeta source instead has the s=1 pole AND trivial zeros at -2,-4,... and its actual signed odd test pole term is kept in (19)--(22). No false principal-conductor comparison is made.
5. **All prime powers and finite endpoints:** The COMPLETE far sum is over n from X to exp(2ell)X with the source's original Lambda(n), including ALL powers and character phases. Only short correlations with n>=3 vanish by the true support bound (9). Endpoint weights vanish because b_epsilon and h_epsilon have zero jets.
6. **PNT is not RH:** PNT(AP) permits a source discrepancy o_chi(e^a), which is still exponentially large compared with the O_chi(1) criterion. Neither the boundedness nor a uniform zero-free strip follows from (26)--(27) alone.
7. **Exact statement scope:** Each primitive conductor q and each chi is quantified separately in (35), including the conductor-one zeta source. No common numerical bound C across q is inferred, no imprimitive character transfer, and no assumption of RH/GRH in the unconditional baseline.
8. **Analytic/Formal verification:** Bessel product and Dirichlet functional equation are externally classical, the contour shifts and source identities here are WRITTEN and not independently reviewed, the exact scalar audit was RUN, Lean kernel/axiom audits were NOT_RUN, novelty UNASSESSED. Publication, a hash, or passing a finite script is not an analytic theorem accepted by the Lean kernel.

**Primary dated locators and source attribution:**
- NIST DLMF §10.21(i),(iii), especially 10.21.15: all J_(7/2) zeros real and exact infinite product; §10.32.2: modified Bessel integral for the polynomial beta weight. Consumer (5)--(6), then each residue (37).
- NIST DLMF §25.15(i),(ii), especially 25.15.2, 25.15.5 and 25.15.7: actual primitive Euler logarithmic derivative in its convergence region, conjugate-character functional equation, and parity-dependent trivial zero positions. Consumers (28)--(37). Root numbers remain part of the true functional equation; they are NOT treated as 1.
- Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (2026), printed pp.1--2: full pole-inclusive additive zeta Weil source and original test domain. grwtsk/math WeilSourcePrimeCorrelation.lean / WeilGammaPhysicalReturn.lean and the maintained WeilEdgePrimePoleExplicitFormula.md map (10)--(22) to the original actual prime/gamma/pole form.
- E. Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), 183--233, sections 1,8,12: classical source and localized Weil positivity; the present boundedness equivalence is a standard Weil/explicit-formula application, novelty UNASSESSED, no priority claim.
- The maintained WFDG-1 dyadic smooth probability product in WeilFixedBumpNegativeDepth.md is the SECOND factor in (4), and the latest WeilEdgePrimePoleExplicitFormula.md provides the original polynomial beta bump and zeta-only signed pole cancellation. This edition's new source-local consumer is the REAL primitive chi/bar-chi zero-pair test return, not proof of the global sign.

**Unresolved obligations for the actual RH/GRH target:** Prove the ALL-a arithmetic cancellation or all-window genuine Weil positivity without GRH hypotheses; independently audit contour/zero multiplicities/dual FE in a second argument; then formalize source convolution/transform and primitive smoothed explicit formula at the unchanged Lean/mathlib pins, with a fresh kernel replay, axiom audit and exact statement correspondence. No Noe-dependent proof automation, cross-chat messaging, scheduler or browser workflow was invoked: the required noe-proof-automation SKILL.md at grwtsk/noeaaeue/main revision f8a87650cbfa6fe1743d8e773c10802e0626a124 returned HTTP 404. Ordinary authorized GitHub mathematical source publication remains separate from that unavailable workflow.
