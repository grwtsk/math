# Zeta zero-abscissa from the growing prime-free causal energy

Local mathematical attribution: grwtsk contributors.
Research date: 2026-10-31.

**Analytic status:** Quantitative source-exact zero-abscissa reduction using established classical mathematics, not a new proof of the missing arithmetic saving or RH. No Lean compilation, fresh kernel checking, expected-type verification or transitive axiom audit was run. Those statuses remain NOT_RUN.

## Exact objects

Use the original Möbius signs and original causal response
\[
r_n(u)=2(n^{-1/2}-e^{-u/2})\,\mathbf1_{u\ge\log n},\quad
F_\mu(u)=\sum_{n\le e^u}\mu(n)r_n(u),\quad
H(T)=\int_0^T F_\mu(u)^2du.
\]
For each outer T>=2, freeze the prime set P_T={p prime:p<=T}, its product Q_T, and the actual P_T-rough waveform
\[
U_T(u)=\sum_{\substack{n\le e^u\\(n,Q_T)=1}}\mu(n)r_n(u),
\qquad V(T)=\int_0^T U_T(u)^2du.
\]
Do NOT vary P_T inside the integral or treat the changing Euler product as one fixed Dirichlet series. Write t_j=j log 2 and
\(\Theta=\sup\{\Re\rho:\zeta(\rho)=0,\,0<\Re\rho<1\}\), so 1/2<=Theta<=1.

## Quantitative zero-abscissa theorem

From the exact finite-prime factorization and the contraction of causal translations in L2(0,T),
\[
\prod_{p\le T}(1-p^{-1/2})^2V(T)
\le H(T)\le
\prod_{p\le T}(1+p^{-1/2})^2V(T). \tag{1}
\]
PNT and partial summation yield
\(\sum_{p\le T}p^{-1/2}\sim2\sqrt T/\log T\); the square corrections sum to \(O(\log\log T)\). Hence the logarithms of the left and right norm allowances have magnitudes
\((4+o(1))\sqrt T/\log T\). In particular
\[
\big|\log(1+H(T))-\log(1+V(T))\big|
=O(\sqrt T/\log T)=o(T). \tag{2}
\]
The allowance is not a new arithmetic saving and mixed parity sectors are not deleted.

**Exact growth-exponent identity:**
\[
\boxed{\limsup_{j\to\infty}\frac{\log(1+V(t_j))}{t_j}
=2\Theta-1.} \tag{3}
\]

Proof of the upper inequality: use the **classical** zero-free-half-plane / Mertens-abscissa theorem: for each theta>Theta,
\(M(x)=\sum_{n\le x}\mu(n)=O_\theta(x^\theta)\). For theta>1 the bound is trivial. Exact causal Abel summation gives
\[
F_\mu(u)=\int_0^u e^{-v/2}M(e^v)\,dv
=O_\theta(e^{(\theta-1/2)u}),
\quad H(T)=O_\theta(e^{(2\theta-1)T}).
\]
Together with (2), let theta decrease to Theta to obtain limsup<=2Theta-1.

For the lower inequality, suppose a zero rho has beta=Re rho>1/2, but the limsup of log(1+H(t_j))/t_j were <2beta-1. Choose gamma strictly between them. Monotonicity of H and bounded dyadic time gaps transfer H(t_j)=O(e^(gamma t_j)) to all T. Therefore for any sigma>gamma, the weighted energy integral \(\int_0^\infty e^{-\sigma u}|F_\mu(u)|^2du\) converges. Cauchy--Schwarz makes the Laplace transform holomorphic for Re z>sigma/2. But the *original exact source* has, initially for Re z>1/2,
\[
\int_0^\infty e^{-zu}F_\mu(u)\,du
=\frac{1}{z(z+1/2)\zeta(z+1/2)}.
\]
Choose gamma<sigma<2beta-1. Then z=rho-1/2 is in the holomorphic half-plane and is a genuine pole of the right-hand side. Contradiction. Take beta up to Theta. If Theta=1/2, the lower inequality is automatic since log(1+H)>=0. This proves (3). The classical Mertens-abscissa theorem is an explicit imported analytic input, not an assumption disguised as a novel proof.

## Direct Liouville signed-count identification

Set lambda(n)=(-1)^Omega(n) and L(N)=sum_(n<=N)lambda(n). Complete ordered Putnam-style double counting gives
\[
C_\lambda(N)=\sum_{\substack{m,n\le N\\m\ne n}}
\lambda(m)\lambda(n)=L(N)^2-N. \tag{4}
\]
The exact square-divisor count
\(L(N)=\sum_{d^2\le N}M(N/d^2)\) and the preceding classical Mertens-abscissa theorem show \(|L(N)|=O_\theta(N^\theta)\) for every theta>Theta (sum_d d^(-2theta) is finite). Conversely \(\sum\lambda(n)n^{-s}=\zeta(2s)/\zeta(s)\) initially for Re s>1. At any zeta zero with real part >1/2 its numerator is nonzero, so Abel summation rules out a smaller power bound for L. When Theta=1/2, the pole of zeta(2s) at s=1/2, with zeta(1/2) nonzero, gives the same lower exponent 1/2. Thus
\[
\limsup_{N\to\infty}\frac{\log(1+|L(N)|)}{\log N}=\Theta,
\]
and, using (4),
\[
\boxed{
2\Theta-1
=\limsup_{N\to\infty}
\frac{\log(1+N+C_\lambda(N))}{\log N}-1.
} \tag{5}
\]
This is a direct complete **signed arithmetic counting** connection to the same zero abscissa, not merely an unspecified Fourier-frequency relationship.

## Original endpoint return, conditional on its source-candidate comparison

If the source-specific endpoint approximation E(T) and complete ordered signed cross term X(T) have the previously written properties
\[
H(T)=D(T)+X(T),\quad 0\le D(T)\le2T^2,\quad |E(T)-X(T)|\le1/4,
\]
then \(E(T)_+\le H(T)+1/4\) and \(H(T)\le E(T)_++2T^2+1/4\). Here \(E_+=\max(E,0)\) is formed **after** all signs, births, mixed channels, and curvature are accounted for. Therefore
\[
\boxed{
\limsup_{j\to\infty}
\frac{\log(1+E(t_j)_+)}{t_j}=2\Theta-1.
} \tag{6}
\]
The prior endpoint Lean source is NOT newly accepted by this analytic calculation.

## Sharp thresholds and hypothetical-zero consequences

For any fixed 0<=delta<1, a uniform upper bound
\(V(t_j)\le C_\delta e^{\delta t_j}\) at all sufficiently large j would imply
\(\zeta(s)\ne0\) for Re s>(1+delta)/2. By the functional equation all nontrivial zeros would then lie in
\((1-\delta)/2\le\Re\rho\le(1+\delta)/2\).
Conversely, every delta>2Theta-1 admits such an upper bound by the proof above. At the critical exponent delta=2Theta-1 no endpoint bound is asserted.

If RH is false and there is a zero rho with beta>1/2, then for every 0<=delta<2beta-1,
\[
\limsup_{j\to\infty}e^{-\delta t_j}V(t_j)=+\infty.
\]
Using the historic endpoint comparison, the same assertion holds with \(V(t_j)\) replaced by \(E(t_j)_+\). Thus a bad zero forces **positive spikes of the complete original signed endpoint**; negative prime-star or doubling subfamilies cannot by themselves conceal it. This is a conditional obstruction, NOT a proof that such zeros exist.

## Unconditional logarithmic floor and open supplier

For \(0\le u\le\log T\) with T>=2, any integer 2<=n<=e^u<=T has a prime factor <=T, so U_T(u)=r_1(u)=2(1-e^(-u/2)). Hence
\[
\boxed{
V(T)\ge\int_0^{\log T}r_1(u)^2du
=4\log T-12+16T^{-1/2}-4T^{-1}.
} \tag{7}
\]
An O(1) energy bound is false even under RH. Under RH, equation (3) gives \(\lim_{j\to\infty}\log(1+V(t_j))/t_j=0\), since the ratio is nonnegative. That limit criterion is RH-equivalent, NOT newly established.

The earlier unconditional Vinogradov--Korobov-type estimate
\(V(T)\ll\exp(T-cT^{3/5}/(\log(e+T))^{1/5})\) has exponent 1-o(1), not any fixed delta<1. Equations (3),(5),(6) specify the exact unsupplied arithmetic saving; they do not supply it. The unchanged original Problem P and RH therefore remain OPEN.

## Provenance, novelty boundary, verification

Previous exact-source documentation: signed-prime-star-and-prime-free-causal-filter.md (blob d67d35851cff3c033fdbc2447219383c393b9460); growing-prime-free-vinogradov-korobov-signed-count.md (blob 6ca7dd92de09bff6b72fdc462d6ffbfde23bf0fa); liouville-putnam-ordered-pair-residue-counting.md (blob e8c729644d878a955ba3d5023dd01f17380d7c73). Existing RH issues: #334, #1406, #1527, #1528, #1529, #1530 and #1531. External classical background: DLMF 25.10 for zero symmetry (https://dlmf.nist.gov/25.10), the standard Möbius power-abscissa criterion (Montgomery--Vaughan, Multiplicative Number Theory I; comparator https://mathoverflow.net/questions/341916/on-the-dirichlet-series-for-1-zetas-for-real-s-and-the-zeros-of-zeta), PNT, Cauchy--Schwarz and Euler products. No global theorem novelty is asserted for those results. The quantitative three-way connection is source-specific synthesis, not a new independent arithmetic estimate.

No new Lean code, root import, source coefficient, Mathlib pin, native verifier, CI, controller or scheduler is changed. The inherited source proof candidates retain COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN and TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No all-height claim rests on finite numerical experiments.
