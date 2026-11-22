# Exact mirrored prime-Jacobi graph and nonnegative square

**Maintained Lean source:** [PrimeJacobiParitySquare.lean](PrimeJacobiParitySquare.lean).  
**Mathematical consumer:** [math #1849](https://github.com/grwtsk/math/issues/1849), independent prime-only Hilbert–Pólya operator investigation.  
**Input source:** [PrimeKnotJacobiArithmetic.lean](PrimeKnotJacobiArithmetic.lean), actual `Nat.nth Nat.Prime` offdiagonal; no imported Alpöge proof, zeta-zero table or source-indexed diagonal.

## Source operator and proof

Let \(p_0=2,p_1=3,\ldots\) be the actual primes, and let \(J_N\) act on \(\mathbb R^N\) by the weighted path graph

\[
(J_N f)_i=p_{i-1}f_{i-1}+p_if_{i+1},
\]

with absent endpoint terms omitted. The finite matrix is real symmetric; all nonzero offdiagonal entries are \(p_i>0\).

Define \((\Gamma_N f)_i=(-1)^if_i\). Since every nonzero matrix entry joins indices differing by exactly one, the parity signs at its endpoints are opposite. Consequently the following are **exact algebraic identities for every finite N and every f**:

\[
\Gamma_N^2=I,\qquad J_N\Gamma_N=-\Gamma_N J_N,
\quad J_N^2\Gamma_N=\Gamma_NJ_N^2.
\]

**Proof:** for the \(i\)-th coordinate, \((J_N\Gamma_N f)_i=\sum_jJ_{ij}(-1)^j f_j\). Every nonzero summand has \((-1)^j=-(-1)^i\), giving \(-( \Gamma_NJ_Nf)_i\). Multiply once more by \(J_N\) to obtain commutation of \(J_N^2\) with \(\Gamma_N\). The inversion \(\Gamma_N^2=I\) follows from \((-1)^{2i}=1\).

If \(J_Nf=\lambda f\), then \(J_N(\Gamma_N f)=-\lambda(\Gamma_Nf)\), and \(\Gamma_Nf\ne0\) for \(f\ne0\). Therefore the REAL finite point spectrum is symmetric under \(\lambda\mapsto-\lambda\).

For the genuine squared source operator:

\[
\langle f,J_N^2 f\rangle
=\langle J_Nf,J_Nf\rangle
=\sum_{i=0}^{N-1}(J_Nf)_i^2\ge0.
\]

Equality holds precisely when \(J_N f=0\). This does NOT make the adjacency \(J_N\) itself positive. It does not establish sign positivity of an arithmetic Weil functional; a graph matrix's positive square is not an arithmetic explicit-formula source return.

## Exploiting Alpöge's proof architecture without importing its conclusion

The source release's endgame first establishes right-half-plane zero-free conditions for actual Dirichlet \(L\)-functions and then uses the actual \(\zeta\) functional equation and character duals to eliminate the reflected half-plane. This is not the same statement as parity symmetry of a graph, but it suggests the **right separation of work**: construct a source-arithmetic object, prove its exact reflection/intertwining, and only then attempt a theorem identifying its spectral observables with the actual original arithmetic \(L\)-function.

A parity involution guarantees \(\pm\lambda\) pairs; it does **not** guarantee that a scalar characteristic determinant is completed \(\xi\), that all zeta zeros are real heights, or that prime-power logarithmic-derivative terms match. These missing bridges remain open.

## Mathematical status and hostile controls

The signed \(J_N\) pairing and nonnegative \(J_N^2\) statements follow from elementary real linear algebra and actual prime bonds. Their **new Lean source proof bodies are candidates pending pinned elaboration and kernel replay**, not yet checked.

Test \(\Gamma^2 f=f\), \(J\Gamma f=-\Gamma Jf\), \(J^2\Gamma f=\Gamma J^2f\), \(\langle f,J^2f\rangle=\|Jf\|^2\), and mirror pairs at multiple finite dimensions with exact integer arithmetic. Always distinguish a positive \(J^2\) heat generator from the zeta/Weil source. The existing related code is already a SOURCE_PROOF_CANDIDATE, and its local verification has not been promoted by this work.
