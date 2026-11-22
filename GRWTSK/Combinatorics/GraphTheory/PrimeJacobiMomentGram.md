# Exact prime-knot root moments, Hankel Gram matrices and inverse arithmetic reconstruction

**Maintained Lean source:** [PrimeJacobiMomentGram.lean](PrimeJacobiMomentGram.lean).  
**Mathematical consumer:** prime-spectral reconstruction and graph-certificate architecture, [math #1849](https://github.com/grwtsk/math/issues/1849).  
**Original arithmetic source:** actual `Nat.nth Nat.Prime`, with no external Alpöge/RH premise.  
**Prior art:** Gerald Teschl, *Jacobi Operators and Completely Integrable Nonlinear Lattices* (AMS, 2000), Chapters 2–3 on Jacobi spectral measures and inverse moment theory. This construction specializes classical results to an actual prime sequence; **prior-art novelty is not asserted**.

## A genuinely sourced spectral object, not a disguised zero list

Let \(a_n=p_n>0\) denote the \(n\)-th actual prime. The real Jacobi operator on finitely supported sequences has \(J_{n,n+1}=J_{n+1,n}=a_n\) and zero diagonal. This is constructed entirely from prime-knot adjacency, without known zeros of \(\zeta\).

For its root vector \(e_0\), define

\[
m_k=\langle e_0,J^ke_0\rangle.
\]

On any finite section of dimension \(N\), the \(N\times N\) Krylov matrix \(V\) has columns \(e_0,Je_0,\ldots,J^{N-1}e_0\), and the moment Hankel matrix is \(H_{ij}=m_{i+j}\) for \(0\le i,j<N\).

Finite symmetry of \(J\) gives an exact identity:

\[
\boxed{H=V^{\mathsf T}V,\qquad\det H=(\det V)^2\ge0.}
\]

This is the theorem established by the new source candidate: it uses **actual root-moment evaluations of the prime graph**, not an arbitrary learned positive kernel or a surrogate signed Weil functional.

## The stronger inverse-moment theorem: complete mathematical argument

A length-\(2k\) walk contributing to \(m_{2k}\) begins at ordinal zero, makes unit steps up/down among nonnegative ordinal vertices, and ends at zero. The weight of a walk is the product of the prime bond weights traversed. Any such closed walk reaches height at most \(k\). **Only one walk reaches height \(k\):** the monotone up path \(0,1,\ldots,k\) followed by the monotone down path \(k,\ldots,1,0\). Every edge \(j\to j+1\) on that walk is traversed twice, giving the unique new term \(\prod_{j=0}^{k-1}p_j^2\).

Every other path of length \(2k\) reaches height \(\le k-1\), so it involves only the earlier weights \(p_0,\ldots,p_{k-2}\). Consequently

\[
\boxed{
m_{2k}
=
\left(\prod_{j=0}^{k-1}p_j^2\right)
+R_k(p_0^2,\ldots,p_{k-2}^2)
}
\]

for a polynomial \(R_k\) determined by the other finite closed walks. Because all earlier prime bonds are strictly positive, \(p_{k-1}^2\) and then \(p_{k-1}>0\) are uniquely recoverable from \(m_{2k}\) and the previously reconstructed bonds. **Thus the full exact root moment sequence uniquely determines the original prime-bond sequence.**

There is also a determinant proof. The \(j\)-th Krylov vector \(J^je_0\) is supported only at indices \(0,\ldots,j\), while its coordinate at \(j\) equals \(p_0p_1\cdots p_{j-1}\): it is supplied by the single \(j\)-step outward path. The matrix \(V\) is triangular with these nonzero diagonal entries. Therefore, writing \(D_0=1\) and \(D_k=\det(m_{i+j})_{0\le i,j<k}\),

\[
\boxed{
D_k=\prod_{j=0}^{k-2}p_j^{2(k-1-j)}.
}
\]

In particular each \(D_k>0\) and

\[
\boxed{
p_n^2=\frac{D_{n+2}D_n}{D_{n+1}^2}.
}
\]

This formula is valid for a finite section with enough coordinates for the queried moments. It gives an exact inverse algorithm and a mathematically meaningful information-preservation theorem: **the root moment sequence is a lossless arithmetic encoding of the prime-knot weights**.

**Important formalization boundary:** The Lean source currently contains the exact \(H=V^{\mathsf T}V\) Gram equality and determinant nonnegativity; the general *triangularity, positive determinant formula and prime reconstruction* are analytically proved in this record and validated in finite integer controls, but their full general Lean formalizations remain OPEN. Do not call that stronger statement kernel-checked until its separate Lean implementation and audit pass.

## Exact finite controls, including constructive inverse recovery

With actual prime bonds \(2,3,5,7,\ldots\),

\[
m_0=1,\quad m_2=4,\quad m_4=52,\quad
m_6=1576,\quad m_8=98788.
\]

For \(k=1,2,3,4\), the Hankel determinants are \(D_1=1,D_2=4,D_3=144,D_4=129600\). Hence the inverse formula gives

\[
p_0^2=4,\quad
p_1^2=144/16=9,\quad
p_2^2=(129600\cdot4)/(144^2)=25,
\]

recovering the actual first three primes \(2,3,5\). An independent **exact integer** checker extended this through the first eight primes with no floating-point computations or zeta zero inputs, confirming both the determinant formula and the unique reconstruction.

This is a finite computational check of the stated algebraic identity, not an exhaustive proof of the infinite statement and not a Lean kernel check.

## Structural relationship to Alpöge's proof and a decisive open bridge

Alpöge's actual RH/Dirichlet-GRH development proves a one-sided zero-free half-plane using **source-faithful smoothed prime-power arithmetic bounds**, then reflects through the genuine \(L\)-function functional equation. The operator above encodes \(\{p_n\}\) losslessly at the root but its moments count *prime-ordinal path walks*, not the von Mangoldt prime-power coefficients \(\Lambda(n)\) in \(-\zeta'/\zeta\).

A new and difficult mathematical theorem must establish a valid transform from the root spectral measure \(\mu_J\), its Weyl/Stieltjes \(m\)-function or a regularized determinant to the ACTUAL completed \(\xi\)-function or signed explicit formula, including archimedean factors, trivial zeros, pole normalization, multiplicities and analytic continuation. **Encoding all primes in a spectral measure is not equivalent to encoding the nontrivial zeta zeros as eigenvalues.**

The source is appropriate for proof-carrying mathematical AI memory: source identity, finite moments, exact inverse reconstruction and eventual analytic transport are separable testable contracts. Physical memory improvements still require independent benchmarks.

## Evidence states and next proof steps

- Exact mathematical argument: the moment recovery and determinant formula above, using standard finite path/triangular Gram methods.
- Exact finite controls: first eight prime bonds recovered from their Hankel determinants with integer arithmetic; independent program checks available under `scripts/verify_prime_jacobi_moments.py`.
- Lean source candidate: Gram identity and determinant nonnegativity; **NOT_RUN** full Lean compilation/axioms/replay.
- Full inverse-moment theorem in Lean, infinite \(\ell^2\) essential-self-adjointness, and original zeta spectral comparison: **OPEN**.
- No claim of a new independent RH proof or that this classical inverse Jacobi fact is novel in general.
