# Two incommensurate arithmetic shifts and the finite-index zeta boundary

Local attribution: grwtsk contributors. Edition 1, 2026-11-12. MSC2020: 11M26; 42A82.

**Status:** WRITTEN_ANALYTICAL_ARGUMENT / LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN / NOVELTY_UNASSESSED. None of these statements constructs the required all-height prime inequality; finiteness of actual off-line zeta zeros, RH and primitive Dirichlet GRH remain UNPROVED.

**Owning source and consumer:** This is maintained mathematical source exposition in GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory, consuming the full, pole-inclusive actual zeta Weil distribution and the fixed bump of WeilFixedBumpNegativeDepth.md (WFDG-1--5), plus the Landau one-sided principle of WeilPolynomialOneSidedPrimeCriterion.md (WPOS-1--4). It gives a derivative-free arithmetic consumer for the unresolved WPOS-O1 / WFDG-O1 obligation. It is not a replacement zeta divisor or auxiliary positivity theorem.

**Pinned inspection:** grwtsk/math main d81a6ea43153e5afdd55d0e4b66a2cedefff2f82; existing source and root/scoped instructions inspected. Lean v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Neither pin nor imports are changed. Coordination issue #1801, scope comment 6836416459.

## 1. The exact two-pole source

Let W be the full additive Guinand--Weil zeta distribution of Suzuki (2026), p. 1, including the two orientations of the poles, ALL prime powers, the origin term, and the complete gamma contribution. Let phi be the real even smooth bump of WFDG-1, supported in [-1/2,1/2] and with bilateral Laplace transform Phi(z) != 0 for Re z != 0. Put h=phi*phi. Define, for t>1,
\[
D(t)=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h(\log n-t)-\Phi(1/2)^2e^{t/2}.
\tag{1}
\]
The sum is finite at each t, and the von Mangoldt weight includes every prime power. For K(t)=W(h(.-t)), the unfiltered exact source return is K(t)=-D(t)-G(t) for t>1, where G is the exponentially small signed-original gamma correction (in fact nonnegative for this particular h).

Fix Delta>0, d>=0, and a nonzero REAL polynomial
\[
P(X)=\sum_{j=0}^d a_jX^j,\qquad d=\deg P.
\]
Let T_u f(x)=f(x-u) and define
\[
f_{P,\Delta}(x)=\sum_{j=0}^d a_jT_{j\Delta}\phi(x),\qquad
h_{P,\Delta}=f_{P,\Delta}*\widetilde{f_{P,\Delta}}.
\tag{2}
\]
Then h_{P,Delta} is real, even and smooth, supported in [-R,R], R=1+d Delta. Its bilateral Laplace transform is
\[
\int h_{P,\Delta}(v)e^{zv}\,dv
=\Phi(z)^2P(e^{\Delta z})P(e^{-\Delta z}).
\tag{3}
\]
Unlike h, the shifted autocorrelation may have negative values away from the origin.

Define for t>R
\[
D_{P,\Delta}(t)=
\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h_{P,\Delta}(\log n-t)
-M_{P,\Delta}e^{t/2},\qquad
M_{P,\Delta}=\Phi(1/2)^2P(e^{\Delta/2})P(e^{-\Delta/2}).
\tag{4}
\]

## W2S-1: exact finite arithmetic stencil with full Weil return

**Theorem.** For t>1+d Delta,
\[
\boxed{
D_{P,\Delta}(t)=\sum_{j,k=0}^d a_ja_kD(t+(j-k)\Delta).
}
\tag{5}
\]
Moreover, with K_{P,Delta}(t)=W(h_{P,Delta}(.-t)),
\[
K_{P,\Delta}(t)=
\sum_{\rho\ \mathrm{distinct}}m_\rho\Phi(z_\rho)^2
P(e^{\Delta z_\rho})P(e^{-\Delta z_\rho})e^{z_\rho t},
\quad z_\rho=\rho-\tfrac12,
\tag{6}
\]
and
\[
\boxed{K_{P,\Delta}(t)=-D_{P,\Delta}(t)-G_{P,\Delta}(t),}
\tag{7}
\]
\[
G_{P,\Delta}(t)=\int_{-R}^R h_{P,\Delta}(v)
\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}\,dv.
\tag{8}
\]
For t>=R+1,
\[
|G_{P,\Delta}(t)|\le
\left(\sum_{j=0}^d|a_j|\right)^2
\frac{e^{-5(t-R)/2}}{1-e^{-2(t-R)}}.
\tag{9}
\]

**Proof.** The exact convolution identity
\[
h_{P,\Delta}(v)=\sum_{j,k=0}^d a_ja_k h(v-(j-k)\Delta)
\]
and the corresponding identity for its pole moment give (5). All the sample arguments exceed 1 because t>1+d Delta; no analytic approximation enters. Applying the full Weil explicit formula to the original smooth compactly supported h_{P,Delta} proves (6). Since h_{P,Delta}(.-t) has support on the positive half-line, its origin term and negatively oriented prime-power evaluations vanish by SUPPORT. Its two pole integrals yield M_{P,Delta}e^{t/2} and M_{P,Delta}e^{-t/2}, respectively. Splitting the gamma kernel exactly as
\[
\frac{e^{-u/2}}{1-e^{-2u}}=e^{-u/2}+\frac{e^{-5u/2}}{1-e^{-2u}}
\]
cancels the second pole contribution while the first matches the prime main term of (4), leaving (7)--(8). Thus NEITHER pole has been silently dropped. The positive kernel in (8) is bounded by its value at t-R; h_{P,Delta} may have either sign. Since h>=0 has integral one, its translated quadratic representation yields ||h_{P,Delta}||_1 <=(sum |a_j|)^2, proving (9). QED.

The degree-one case P(X)=X-a, a real, is particularly concrete:
\[
\boxed{D_{a,\Delta}(t)=(1+a^2)D(t)-aD(t+\Delta)-aD(t-\Delta).}
\tag{10}
\]
The matching h_{a,Delta}=(1+a^2)h-aT_Delta h-aT_(-Delta)h.

## W2S-2: two-scale zero counting

Let Delta_1,Delta_2>0 have irrational ratio (specifically, 1 and sqrt(2)). For j=1,2 let P_j in R[X]\{0}, d_j=deg(P_j), with D_j(t)=D_{P_j,Delta_j}(t).

For c>=0, define M_c to count distinct zeta quartets with Re(rho)>1/2+c, Im(rho)>0 (their other members follow by reflection and conjugation). No RH/zero-free strip assumption is made.

**Theorem.** Suppose that, for j=1 and 2, there are constants C_j and T_j such that
\[
D_j(t)\le C_je^{ct}\qquad\forall t\ge T_j,
\tag{11}
\]
where T_j>=2+d_j Delta_j. Then
\[
\boxed{M_c\le\left\lfloor\frac{d_1d_2}{2}\right\rfloor.}
\tag{12}
\]
More precisely, let r_j count the DISTINCT roots of P_j that are nonzero and not on the unit circle. Then M_c<=floor(r_1r_2/2). If any r_j=0, no exceptional zeta zero can have displacement larger than c.

**Proof.** Equation (7) and (9) transfer the one-sided bound (11) to K_{P_j,Delta_j}(t)>=-C'_je^{ct} at all large t. WPOS-1 is the classical Landau nonnegative-Laplace singularity argument: the meromorphic one-sided Laplace transform of the absolutely convergent zero expansion (6) has NO positive real-axis poles, because zeta has no nontrivial real zero for 0<s<1; thus an uncancelled nonreal pole with Re z>c would force two-sided oscillation of order exceeding e^{ct}, contradicting the lower bound. Hence every distinct off-line z with Re z>c satisfies, for each j,
\[
P_j(e^{\Delta_j z})P_j(e^{-\Delta_j z})=0.
\tag{13}
\]
Nonvanishing of Phi(z) off the critical line and positive multiplicity are indispensable in this inference.

For each such z and each j, select a root alpha_j of P_j satisfying alpha_j=e^{eps_j Delta_j z}, eps_j in {+1,-1}. Since Re z>0, necessarily |alpha_j| != 1. Moreover the sign eps_j is uniquely determined by alpha_j: eps_j=+1 if |alpha_j|>1, and eps_j=-1 if |alpha_j|<1. If a root of P_j in each side qualifies, choose either one by a fixed deterministic ordering. Thus every positive-real-part z maps to a pair (alpha_1,alpha_2) of roots in the finite sets counted by r_1,r_2.

This map is INJECTIVE. If z,z' map to the same two roots, their signs eps_j are the same (fixed by each root modulus), whence
\[
\Delta_1(z-z')=2\pi i n_1,\quad
\Delta_2(z-z')=2\pi i n_2,\qquad n_1,n_2\in\mathbb Z.
\]
Irrationality of Delta_1/Delta_2 forces z=z'. Therefore at most r_1r_2 distinct off-line zeros lie in the positive half of the z-plane with Re z>c. Those zeros occur in nonreal conjugate pairs (z,bar z), because zeta has no real zero inside its critical strip. Each off-line quartet supplies two such coordinates. Therefore 2 M_c <= r_1r_2 <= d_1d_2. QED.

In particular for c=0, (11) proves FINITENESS of the off-line zero set, with the explicit bound (12), but (11) is NOT established.

**Converse (conditional) and exact equivalence.** If zeta has exactly M<infinity distinct exceptional quartets, choose for each quartet z_k with Re z_k>0 and Im z_k>0. For each j=1,2 set
\[
P_j(X)=\prod_{k=1}^M
(X-e^{\Delta_j z_k})(X-e^{\Delta_j\overline{z_k}}).
\tag{14}
\]
Each real polynomial has degree 2M and annihilates every off-axis contribution in (6). The remaining critical-line contribution is
\[
\sum_{\Re z_\rho=0}m_\rho|\Phi(z_\rho)|^2
|P_j(e^{\Delta_j z_\rho})|^2e^{z_\rho t},
\]
a bounded positive-definite function. Equations (7)--(9) then give a constant upper bound on D_j for all sufficiently large t. The empty M=0 case uses P_j=1. Consequently,
\[
\boxed{\text{finitely many actual off-line zeta zeros}
\iff
\exists P_1,P_2\ne0\text{ real, }\exists C_1,C_2:
D_{P_j,\Delta_j}(t)\le C_j\text{ eventually for BOTH }j.}
\tag{15}
\]
This is an equivalent ARITHMETIC TARGET, not a proof of its existence side.

**Affine-filter RH-strength corollary.** If both d_1<=1 and d_2<=1, then floor(d_1d_2/2)=0. Thus two simultaneous eventual one-sided upper bounds on the three-point stencils (10), at spacings 1 and sqrt(2), imply RH. Conversely RH bounds EVERY fixed real shift filter, hence supplies such constants. The corollary does not claim that either bound has been proved unconditionally.

## W2S-3: genuine unconditional PNT comparison

Set R(x)=psi(x)-x+1, so R(1)=0, and write R_*=1+d Delta for the support radius of h_{P,Delta}. For t>R_*, exact Stieltjes integration by parts gives
\[
\boxed{
D_{P,\Delta}(t)=-
\int_{-R_*}^{R_*}e^{-(t+v)/2}R(e^{t+v})
\left(h_{P,\Delta}'(v)-\tfrac12h_{P,\Delta}(v)\right)\,dv .
}
\tag{16}
\]
Both endpoint terms vanish because the compact smooth h_{P,Delta} is zero at its support endpoints. This is the original signed arithmetic remainder; taking an absolute value is used only below to compare with known PNT bounds.

The unconditional prime number theorem psi(x)=x+o(x) now implies
\[
D_{P,\Delta}(t)=o_{P,\Delta}(e^{t/2}).
\tag{17}
\]
Using the classical Korobov--Vinogradov PNT remainder
\[
\psi(x)-x=O\bigl(x\exp(-b(\log x)^{3/5}/(\log\log x)^{1/5})\bigr)
\]
for some b>0 and sufficiently large x yields
\[
D_{P,\Delta}(t)=
O_{P,\Delta,\phi}\left(e^{t/2-b' t^{3/5}/(\log t)^{1/5}}\right)
\quad (t\to\infty)
\tag{18}
\]
for some b'>0 (which can be chosen uniformly over a unit Euclidean coefficient vector for a fixed degree d and Delta). Indeed,
\[
\left\|h_{P,\Delta}'-\tfrac12h_{P,\Delta}\right\|_1
\le \left(\sum|a_j|\right)^2
(\|h'\|_1+\tfrac12\|h\|_1)
\le(d+1)(\|h'\|_1+\tfrac12)
\]
for sum_j a_j^2=1, while |v|<=R_* is fixed.

This is an actual UNCONDITIONAL arithmetic estimate. It does NOT imply (11) for c<1/2: for every fixed c<1/2,
\[
e^{t/2-b't^{3/5}/(\log t)^{1/5}}/e^{ct}\longrightarrow\infty.
\]
So the usual PNT absolute-remainder method cannot discharge the required bound; retaining strong signed arithmetic cancellation is essential. This is a precise exponent-gap comparison, not a claim of an optimal impossibility theorem for every conceivable PNT-based argument.

## W2S-4: the single-spacing alias obstruction is real

A single finite shift polynomial does NOT, by abstract spectral logic alone, imply finitely many off-axis frequencies.

Fix Delta>0, 0<delta<1/2, gamma_0>0, and let z_k=delta+i(gamma_0+2pi*2^k/Delta), k>=1. Consider the synthetic, real even kernel
\[
K_{\mathrm{syn}}(t)=\sum_{k\ge1}2^{-k^2}
(e^{z_kt}+e^{\overline{z_k}t}+e^{-z_kt}+e^{-\overline{z_k}t}).
\tag{19}
\]
All derivatives converge locally normally. It has infinitely many distinct off-axis frequency quartets, with only O(log T) such ordinates of height <=T; hence sparsity itself does not remove the alias risk. Let alpha=e^{Delta(delta+i gamma_0)} and P(X)=(X-alpha)(X-overline(alpha)) be the real quadratic polynomial. Then for every k,
\[
e^{\Delta z_k}=\alpha
\]
and all corresponding positive and reflected frequencies are annihilated by P(e^{Delta partial})P(e^{-Delta partial}). Hence the filtered synthetic kernel is IDENTICALLY ZERO and positive definite despite infinitely many off-axis frequencies. This is a counterexample to a one-scale spectral reduction, NOT a counterexample to RH, not an actual zeta divisor, and not an arithmetic example.

With two incommensurate scales, the root-pair injection in W2S-2 prohibits this alias mechanism. Existing nonvanishing results on vertical arithmetic progressions, such as Martin--Ng, show many progression points are not zeros; they do not supply a theorem that a sparse infinite subset cannot consist of zeros. No such missing no-alias arithmetic theorem is assumed.

## W2S-5: exact synthetic sharpness of the root-product bound

The factor 1/2 in (12) cannot be improved in the general reflected, conjugation-symmetric exponential model without additional arithmetic information. Set Delta_1=1, Delta_2=sqrt(2), and z=1/4+i*pi (this is a SYNTHETIC frequency, NOT a zeta zero). Let
\[
P_1(X)=X+e^{1/4},
\qquad
\alpha_2=e^{\sqrt2 z},
\qquad
P_2(X)=(X-\alpha_2)(X-\overline{\alpha_2}).
\]
Then P_1 is real of degree 1 because e^z=-e^(1/4); P_2 is real of degree 2 because sin(pi sqrt(2)) !=0. Both filters annihilate the four frequencies z,bar z,-z,-bar z in the real even synthetic kernel
\[
K_{\rm syn}(t)=e^{zt}+e^{\bar zt}+e^{-zt}+e^{-\bar zt}.
\]
Thus both filtered kernels vanish identically, while the synthetic divisor has ONE off-axis quartet. Equation (12) gives floor(1*2/2)=1, achieved exactly. This checks the conjugation factor, the modulus-determined sign, and the essential distinction between a conditional model and the actual arithmetic zeta source. It does not solve (11).

## Prior art and unproved obligations

- [S] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (23 September 2026), printed pp. 1--2. Exact Weil distribution, two pole orientations, signed prime powers and archimedean term. The WFDG source derives the fixed smooth bump and two-pole cancellation.
- [B] Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rendiconti Lincei 11 (2000), printed Theorem 8 p. 213. Distinct nonreal-pair negative inertia, NOT unconditional finiteness of actual off-line zeros.
- [L] Classical Landau nonnegative-Laplace singularity principle and Ingham omega methods, as consumed with complete proof in WPOS-1, are prior art. W2S-2 merely uses that principle for the finite-shift arithmetic kernel; no new oscillation theorem is asserted.
- [MN] Greg Martin and Nathan Ng, *Nonzero values of Dirichlet L-functions in vertical arithmetic progressions*, Int. J. Number Theory 9 (2013), DOI 10.1142/S1793042113500140, Introduction/Theorem 1.1. The paper explicitly distinguishes abundant nonzero progression points from the unproved conjecture forbidding three exact progression zeros.
- [PNT] Classical Korobov--Vinogradov PNT error term, e.g. the cited primary references summarized in Tao et al., *Distribution of primes: long ranges*, theorem table https://teorth.github.io/expdb/blueprint/chap-prime_counting_function.html; used only for (18), which is weaker than the missing arithmetic sign bound.
- [PW] WFDG/WPD/WPOS in the same canonical subject directory supply the existing source-exact kernel and paper-to-declaration provenance. No duplicate Lean formalization or imported source adaptation is claimed here.

**First unresolved arithmetic premise:** Establish (11) for some pair of nonzero real finite-shift filters at incommensurate Delta_1,Delta_2, using actual signed prime-power cancellation and a support-independent bound in t. No proof of this premise is given. The existing PNT bound (18) cannot satisfy it for c=0. Even two degree-one filters would imply full RH, so that special case must not be presented as an easier proven theorem.

**Formal obligations:** Map (1)--(9) to the actual Weil source, prove finite convolution/translation identities in Lean, prove the injective nonunit-root pair map and irrational-scale argument, then discharge the source-dependent explicit formula and perform elaboration/kernel/axiom audits at the pinned toolchain. No Lean source is added in this edition; NOT_RUN is retained for every formal check. Mathematical originality and independent review remain UNASSESSED/NOT_RUN. No research axiom, sorry, admit, or unsupported GRH transfer.

**Automation boundary:** The canonical noe-proof-automation skill in grwtsk/noeaaeue/main was inaccessible by authorized GitHub read at revision 9897b3ecbe0273e75838f9ce065d61d86a21f8c6 (404), and no verified local skills checkout was present. Dependent proof automation was not invoked. Ordinary source publication is independent of that skill and conveys no execution authority.
