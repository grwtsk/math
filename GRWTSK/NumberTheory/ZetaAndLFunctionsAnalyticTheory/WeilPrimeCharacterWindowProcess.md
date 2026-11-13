# Functional Gaussian window limit for the original primitive-character prime source

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06, 11N05, 11N13, 60F17.

EVIDENCE: WRITTEN_ANALYTICAL_ARGUMENT; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; CERTIFIED_COMPUTATION_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN; NOVELTY_UNASSESSED. This is an unconditional theorem about AVERAGES over growing prime conductors, NOT a fixed-character all-height estimate, finite negative Weil index, finite off-line zeta zeros, RH, or primitive Dirichlet GRH.

Canonical dependencies and consumer: WPCM-1--5 in WeilPrimeCharacterMoments.md (exact even/odd primitive-character moments); WFDG-1 in WeilFixedBumpNegativeDepth.md (fixed dyadic smooth bump); W2S-1 in WeilTwoScaleArithmeticShiftCriterion.md (original signed finite-shift correlation); WPSQ-1--3 in WeilPrimeSquareTail.md (ALL prime powers and exact asymptotic correction); PPCG-1/2 in PrimitivePrimeSourceConductorBounds.md (original primitive Dirichlet L-function arithmetic source). These are arithmetic finite-place components of the COMPLETE Weil explicit formula, whose conductor, gamma/parity terms, dual-character equation, and conductor-one zeta poles remain separate. Work on canonical grwtsk/math/main; the original inspected head was 8fed237e7b97a7f42955e932f3f3aaaf4ce4a6a2, with intervening concurrent mathematical commits preserved and source dependencies rechecked at d4dc880859bd43071a33a4f2cebe59084dd08568. Lean toolchain leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 unchanged. Coordination issue #1801, comment 6841876696.

## Exact source and character parity

Let phi be the real even smooth nonnegative mass-one dyadic convolution bump supported in [-1/2,1/2]; put h=phi*phi. Then h is smooth, even, nonnegative, supported in [-1,1], integral one, with ||h||_2>0. Fix U>=0, and for t>U+2 define for characters chi modulo a RATIONAL PRIME q:
\[
S_\chi(t+u)=\sum_{p\ {\rm prime}}\chi(p)\frac{\log p}{\sqrt p}h(\log p-t-u),\quad
X_{t,\chi}(u)=\frac{S_\chi(t+u)}{\sqrt t},\quad u\in[-U,U].
\tag{1}
\]
These are finite actual prime sums, with nonzero contributions only for e^(t-U-1)<=p<=e^(t+U+1). For primitive q>1 this is the actual ordinary-prime logarithmic-derivative Weil source; it does NOT include the completed L-function's gamma/conductor pieces. The conductor-one zeta pole is handled separately in WFDG/PPCG.

For epsilon in {+1,-1} put X_epsilon(q)={chi mod q: chi(-1)=epsilon}, each of size (q-1)/2. Every odd character is primitive; the only even nonprimitive character at a prime modulus is the principal character. Classical parity-projected character orthogonality gives for units a,b mod q:
\[
\mathbb E_{\chi\in X_\epsilon(q)}\chi(a)\overline{\chi(b)}
={\bf1}_{a\equiv b\bmod q}+\epsilon{\bf1}_{a\equiv-b\bmod q}.
\tag{2}
\]
No pseudoindependence assumption or GRH enters this identity.

## WPCP-1: exact covariance and quantitative PNT return

**Theorem (unconditional).** If q>2e^{2(t+U+1)}, then for either parity, and all u,v in [-U,U],
\[
\boxed{
\mathbb E_\epsilon X_{t,\chi}(u)\overline{X_{t,\chi}(v)}
=\frac1t\sum_p\frac{(\log p)^2}{p}
h(\log p-t-u)h(\log p-t-v),}
\tag{3}
\]
\[
\boxed{\mathbb E_\epsilon X_{t,\chi}(u)X_{t,\chi}(v)=0.}
\tag{4}
\]
Define C(u,v)=int_R h(s-u)h(s-v)ds=(h*h)(u-v), and eta(y)=sup_{x>=y}|theta(x)-x|/x, where theta(x)=sum_{p<=x}log p. There is C_{h,U}<infinity independent of t, q and parity with
\[
\boxed{
\sup_{|u|,|v|\le U}\big|
\mathbb E_\epsilon X_t(u)\overline{X_t(v)}-C(u,v)
\big|\le C_{h,U}(t^{-1}+\eta(e^{t-U-1})).
}
\tag{5}
\]

**Proof.** Expanding (3), prime indices p,r are below e^(t+U+1)<q/2, so (2) forces p=r and the negative congruence is impossible. For (4), each product pr lies strictly between 1 and q/2; it is congruent neither to 1 nor -1 modulo q. To prove (5), set f_{uv}(s)=h(s-u)h(s-v), uniformly smooth and supported in [-U-1,U+1]. The prime sum is a Stieltjes integral of (log x)/(t x) f_{uv}(log x-t) against dtheta(x). Replacing dtheta by dx gives C(u,v)+(1/t)int s f_{uv}(s)ds. The signed error uses E(x)=theta(x)-x with |E(x)|<=x eta(e^(t-U-1)). Integration by parts has zero boundary terms and yields an error at most
\[
\frac{\eta(e^{t-U-1})}{t}\int_{-U-1}^{U+1}
(|1-t-s||f_{uv}(s)|+(t+s)|f'_{uv}(s)|)\,ds.
\]
Uniform L1 bounds on f_{uv}, f'_{uv} prove (5). PNT makes eta(y)->0 unconditionally. Also C(u,u)=||h||_2² and C(u,v)=0 for |u-v|>=2 by disjoint support. QED.

## WPCP-2: exact ALL fixed mixed moments and functional Gaussian limit

Let q=q(t) be ANY sequence of prime conductors satisfying
\[
\boxed{\log q(t)/t\longrightarrow\infty.}
\tag{6}
\]
This is materially weaker than q>e^(t²), the sufficient regime in WPCM-4. The compact shift interval [-U,U] is fixed before taking the limit.

**Exact mixed moment matching.** Fix r shifts u_1,...,u_r in [-U,U] and any mixed monomial in m of the variables X_t(u_i) and n of their complex conjugates. Put d=max(m,n,1). If q>2e^{d(t+U+1)}, its parity-character average is EXACTLY the corresponding expectation for
\[
Y_t(u)=t^{-1/2}\sum_p\frac{\log p}{\sqrt p}h(\log p-t-u)V_p,
\tag{7}
\]
where V_p are independent uniformly distributed unit complex phases. Indeed, expand both products. Their integer prime products A,B obey 1<=A,B<q/2; orthogonality (2) detects only the equality A=B, and unique factorization equates precisely the prime multisets. The independent-phase expectation detects EXACTLY the same multisets. This proves equality of every fixed mixed moment, separately for both parities.

**Theorem (unconditional).** With chi uniform among primitive characters of EITHER parity at q(t),
\[
\boxed{X_{t,\chi}(\cdot)\Longrightarrow G(\cdot)
\quad\text{in }C([-U,U];\mathbb C),}
\tag{8}
\]
where G is a centered circular complex Gaussian field with
\[
\mathbb E G(u)\overline{G(v)}=C(u,v),\qquad
\mathbb E G(u)G(v)=0.
\tag{9}
\]
The limit is stationary with finite dependence range 2. A realization is the Gaussian white-noise convolution G(u)=int h(s-u)dW(s), which has a continuous modification.

**Proof.** For any fixed finite shifts, Y_t in (7) is a finite sum of independent centered bounded complex vectors. Each individual summand divided by sqrt(t) is bounded by O_{U,h}(sqrt(t)e^{-(t-U-1)/2})->0, and the covariance tends to (9) by (5). Multivariate Lindeberg--Feller gives the complex circular Gaussian finite-dimensional limit. Its fixed polynomial moments converge as well, because independent bounded phases have uniform sub-Gaussian moments when their total variance is bounded. Under (6), the exact mixed moment matching condition holds eventually for EACH fixed moment degree. Therefore the character-vector mixed moments converge to the Gaussian ones. The Gaussian distribution is moment-determinate, and bounded second moments give finite-dimensional tightness; the method of moments gives convergence of the character-vector laws.

Functional tightness is independent of any finite-dimensional Gaussian approximation. The exact second-moment formula for the difference and the mean-value estimate for h give
\[
\begin{aligned}
\mathbb E_\epsilon|X_t(u)-X_t(v)|^2
&=\frac1t\sum_p\frac{(\log p)^2}{p}
|h(\log p-t-u)-h(\log p-t-v)|^2\\
&\le |u-v|^2\frac{||h'||_\infty^2}{t}
\sum_{e^{t-U-1}\le p\le e^{t+U+1}}
\frac{(\log p)^2}{p}
\le C_{h,U}|u-v|^2.
\end{aligned}
\tag{10}
\]
The last prime sum is O_U(t) by the same unconditional Stieltjes-PNT argument. Also E|X_t(0)|²<=C. The standard Kolmogorov one-dimensional tightness criterion (second moment increment exponent 2>1) proves tightness in the continuous-function space. The finite-dimensional limit (9) identifies its only possible weak limit and supplies a continuous Gaussian modification.

At prime modulus, the odd parity class contains only primitive characters; the even class contains exactly one imprimitive principal character. Removing it changes either empirical law by at most 2/(q-1) in total variation. This tends to zero under (6) and proves the genuinely PRIMITIVE even and odd versions. QED.

## WPCP-3: independently prescribed signs in separated prime windows

Fix r>=1 and shifts u_1,...,u_r with |u_i-u_j|>=2 for i!=j, with all shifts in [-U,U]. Fix ANY prescribed signs epsilon_i in {-1,+1} and a>0. Then (8)--(9) imply, for EACH parity class of primitive characters,
\[
\boxed{
\frac{\#\{\chi:\ \epsilon_j\Re S_\chi(t+u_j)>a\sqrt t
\text{ for every }j=1,...,r\}}
{\#\{\chi\text{ primitive in that parity}\}}
\longrightarrow
\left(1-\Phi_{\mathrm{std}}\left(\frac{\sqrt2\,a}{||h||_2}\right)\right)^r>0.
}
\tag{11}
\]
Here Phi_std is the CDF of the standard REAL normal variable, not the dyadic-bump transform Phi. The Gaussian covariance is zero for nonoverlapping windows and the pseudocovariance is identically zero, hence their limiting complex Gaussian values are independent. Their real parts are centered normals of variance ||h||_2²/2; the event has Gaussian-null boundary, so convergence of the probabilities gives (11).

This holds for any FIXED r and shifts, not for a growing number of windows. Crucially it concerns MANY characters at a MOVING conductor q(t); it does NOT establish recurrent sign changes for any individual fixed chi, nor a zero off the critical line.

## WPCP-4: every nonzero fixed finite-shift Weil filter retains fluctuations

Let u_1,...,u_r be distinct fixed real shifts and b_1,...,b_r fixed complex coefficients, not all zero. Put
\[
F_{\chi,b}(t)=\sum_jb_j S_\chi(t+u_j),\quad
g_b(s)=\sum_jb_jh(s-u_j),\quad V_b=\int|g_b(s)|^2ds.
\tag{12}
\]
Then V_b>0: if g_b=0, its bilateral Laplace transform is H(z)sum_j b_j e^{u_jz}=0, with H(z)=Phi(z)^2 and H(0)=1. The exponential sum is zero on a neighborhood of zero; taking derivatives of orders 0,...,r-1 yields the Vandermonde system for distinct u_j and forces every b_j=0, contradiction.

**Theorem.** In the conductor regime (6), for either primitive parity,
\[
\boxed{
t^{-1/2}F_{\chi,b}(t)
\Longrightarrow \mathcal N_{\mathbb C}(0,V_b),\qquad
\lim_{t\to\infty}
\frac{\#\{\chi:|F_{\chi,b}(t)|>a\sqrt t\}}
{\#\{\chi\text{ primitive in parity}\}}=e^{-a^2/V_b}>0
}
\tag{13}
\]
for every fixed a>=0. The second equality is the radial tail of a circular complex Gaussian: |Z|²/V_b is exponential of mean 1. Therefore a purported uniform bound |F_{chi,b}(t)|<=C sqrt(t) for ALL primitive chi,q,t fails for every finite C. This does NOT contradict the GRH-compatible O(log(q+2)) bound, because log(q(t))/t->infinity in this experiment.

**Exact W2S finite autocorrelation consumer.** For nonzero real P(X)=sum_{j=0}^d a_jX^j and Delta>0, let f_{P,Delta}=sum_j a_j phi(.-jDelta) and g_{P,Delta}=f_{P,Delta}*tilde(f_{P,Delta})=sum_{j,k}a_ja_kh(.-(j-k)Delta). This is the ACTUAL W2S filtered correlation test. It is nonzero: its f transform is Phi(z)P(e^{Delta z}), not identically zero; hence g_{P,Delta}(0)=||f_{P,Delta}||_2²>0. The prime source
\[
\sum_p\chi(p)\frac{\log p}{\sqrt p}g_{P,\Delta}(\log p-t)
=\sum_{j,k}a_ja_k S_\chi(t+(j-k)\Delta)
\tag{14}
\]
is a fixed finite linear combination of original shifts (combine repeated shifts). Formula (13) gives a nondegenerate complex Gaussian with variance ||g_{P,Delta}||_2²>0. Even P(1)=0, which cancels the leading prime-square correction, does NOT make this source's q-aspect fluctuation vanish. This is a source-exact falsification of unjustified conductor-UNIFORM O(1) or fixed-C O(sqrt(t)) filter estimates, not a contradiction to the zeta-only W2S finiteness program.

## WPCP-5: restore ALL prime powers with a uniform sup-norm budget

Define the complete primitive finite-place arithmetic source
\[
S_{\chi,\mathrm{all}}(t+u)
=\sum_{k>=1,p}(\log p)\chi(p)^k p^{-k/2}h(k\log p-t-u).
\tag{15}
\]
Because h>=0 and |chi(p)|<=1, the full-minus-primes difference is deterministically bounded:
\[
\boxed{
\sup_{\chi\bmod q}\sup_{|u|\le U}
|S_{\chi,\mathrm{all}}(t+u)-S_\chi(t+u)|
\le\sup_{|u|\le U}B_{1,h}(t+u)
=\tfrac12+o(1).
}
\tag{16}
\]
This is WPSQ-1/2 applied with shifted height, UNCONDITIONAL and UNIFORM in q, chi and the COMPACT shift interval. Therefore after division by sqrt(t) the full-prime-power and prime-only processes are uniformly asymptotic in C([-U,U]). Functional convergence (8), sign-pattern probabilities (11), and fixed-filter limits (13)--(14) transfer to the complete arithmetic prime-power source. For a fixed signed correlation test g_{P,Delta}, the analogous higher-power difference remains O_{P,Delta,U}(1) by the absolute Stieltjes square estimate plus the exponentially small k>=3 tail.

**Source boundary:** (15) is the finite-place component of the complete Weil explicit formula, NOT a replacement full Weil distribution. Conductor/parity gamma terms, dual-character functional equation, multiplicities and both conductor-one zeta pole orientations remain in the original source. A character-AVERAGE Gaussian process in a growing-conductor regime does not imply RH/GRH or a fixed-character all-height bound.

## Prior art, falsification and open mathematical obligation

Primary character-orthogonality source: NIST DLMF §27.8, equation 27.8.6, https://dlmf.nist.gov/27.8. Related short Dirichlet polynomial moment techniques: L.-P. Arguin and N. Creighton, *Upper bounds on large deviations of Dirichlet L-functions in the q-aspect*, Journal of Number Theory 273 (2025), 96--158, DOI 10.1016/j.jnt.2025.01.009 (short-character-sum moments). Lindeberg--Feller, method of moments, and Kolmogorov tightness are classical probability tools; no novelty or theorem-priority claim is made. The actual fixed Weil prime and polynomial test sources are WFDG/WPCM/W2S/PPCG (adjacent canonical mathematical declarations/expositions); complete higher powers WPSQ-1/2.

Hostile checks:
- The q(t) growth condition (6) enforces exact product diagonalization for EVERY FIXED degree eventually. A fixed q≈e^{Ct} only gives finitely many exact degrees; a functional CLT does NOT follow by this argument alone.
- Including the even principal character in orthogonality is legitimate for the moment identity, but it is NOT primitive; it is explicitly removed in total variation for the primitive conclusion.
- Limiting independence across disjoint windows is ACROSS the character ensemble, not for one fixed character at successive heights.
- P(1)=0 deletes only the leading prime-square rank-one correction; it does not delete prime-source variance. This does not refute existence of a zeta-only all-height filter.
- Finite windows, finite moments, asymptotic Gaussian laws and positive-proportion statements do not prove the original universal all-test Weil sign inequality.

**First unresolved arithmetic premise:** Establish an all-height signed ordinary-prime cancellation estimate for the actual conductor-one zeta source (or finite-rank filter) or for EACH fixed primitive character, with explicit conductor and window dependencies, without assuming RH or GRH. The present growing-q average supplies an obstruction to certain proposed uniform bounds but does not discharge that premise.

Formal execution, independent review, novelty and numerical certification statuses remain as stated at the top. No new Lean declaration, root import, dependency pin, research axiom, sorry or admit was introduced. No Noe proof execution, cross-chat automation, messaging or scheduling was invoked.
