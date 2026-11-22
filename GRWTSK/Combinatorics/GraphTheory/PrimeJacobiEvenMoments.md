# All-order positive even moments of an arithmetic Jacobi operator

**Maintained Lean source:** [PrimeJacobiEvenMoments.lean](PrimeJacobiEvenMoments.lean).  
**Source:** [PrimeKnotJacobiArithmetic.lean](PrimeKnotJacobiArithmetic.lean), actual symmetric prime-weighted path action.  
**Consumer:** [PrimeJacobiMomentGram.lean](PrimeJacobiMomentGram.lean), a source-independent moment/Hankel route to inverse spectral theory.

Let \(J_N\) be the real symmetric prime-only Jacobi matrix. Define \(\mathrm{iter}(k,f)=J_N^kf\), using the exact finite graph action, and \(\langle f,g\rangle=\sum_i f_ig_i\). The source formalizes:

\[
J_N^{m+n}f=J_N^m(J_N^nf),\qquad
\langle J_N^kf,g\rangle=\langle f,J_N^kg\rangle.
\]

The first identity is induction on \(m\) and the recursion defining \(\mathrm{iter}\). The second is induction on \(k\) using \(J_N\)'s finite real symmetry and commutation of its powers with itself.

For **every** \(k\ge0\), not only the first four examples:

\[
\boxed{
m_{2k}(f):=\langle f,J_N^{2k}f\rangle
=\langle J_N^kf,J_N^kf\rangle
=\sum_{i=0}^{N-1}(J_N^kf)_i^2\ge0.
}
\]

The statement uses no zeta-zero data, no RH assumption and no external proof from Alpöge. It is a finite-dimensional formal foundation of a positive spectral moment functional. It does not yet prove an infinite \(\ell^2\) operator-domain theorem or the existence/identification of a source-complete zeta-zero spectral measure.

For the canonical root vector \(e_0\), the moment sequence has additional combinatorial meaning: each \(m_{2k}\) sums weights of length-\(2k\) walks that return to the initial prime ordinal. This is a known Jacobi moment mechanism and motivates the source-specific inverse theorem in the adjacent Gram record.

**Lean status:** source candidate; local Lean 4.34.1 compilation, transitive axiom audit, independent proof replay and specialist review NOT_RUN. Distinguish the mathematical proof bodies from executed verification.
