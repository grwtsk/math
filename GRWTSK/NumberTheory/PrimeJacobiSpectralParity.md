# Prime-knot continuant parity and the zero-mode obstruction

**Maintained Lean source:** [PrimeJacobiSpectralParity.lean](PrimeJacobiSpectralParity.lean).  
**Inputs:** [PrimeKnotJacobiArithmetic.lean](../Combinatorics/GraphTheory/PrimeKnotJacobiArithmetic.lean), [PrimeJacobiParitySquare.lean](../Combinatorics/GraphTheory/PrimeJacobiParitySquare.lean), [PrimeJacobiSpectralEnclosure.lean](PrimeJacobiSpectralEnclosure.lean).  
**Research issue:** [math #1849](https://github.com/grwtsk/math/issues/1849).

## Source-independent parity theorem

For \(p_n\) the actual \(n\)-th prime, set \(P_0(t)=1,P_1(t)=t\) and

\[
P_{n+2}(t)=tP_{n+1}(t)-p_n^2P_n(t).
\]

The source recurrence is independent of the zeros of \(\zeta\). By two-step induction,

\[
\boxed{P_n(-t)=(-1)^nP_n(t).}
\]

**Induction:** the result holds for ranks zero and one. Substitute it at ranks \(n,n+1\) in the three-term relation for \(P_{n+2}(-t)\), and use \((-1)^{n+2}=(-1)^n\). This gives the sign for every rank.

Thus every even truncation yields an even continuant and every odd truncation an odd one. At zero, the source's earlier recurrence proof establishes \(P_{2k+1}(0)=0\), while \(P_{2k}(0)\ne0\) because all \(p_n>0\). The first exact values are

\[
P_1(t)=t,\quad
P_2(t)=t^2-4,\quad
P_3(t)=t(t^2-13).
\]

The \(\Gamma\)-symmetry of the actual matrix proves \(\lambda\) is an eigenvalue iff \(-\lambda\) is. No zeta zeros or RH theorem are inputs to any of these claims.

## A falsifier for unqualified zeta spectral identifications

Every odd finite prime Jacobi section has a zero in its scalar characteristic continuant. It would be mathematically false to claim that **every** finite section's raw spectral zeros equal the nontrivial zeros of the completed zeta function, since the zero spectral height would correspond to \(s=1/2\), where the classical \(\zeta(1/2)\ne0\). This obstruction requires either a source-justified even-rank subsequence, a precise zero-mode subtraction or a different regularized determinant; a visual comparison of large eigenvalues is not enough.

A complete Hilbert–Pólya program requires a natural self-adjoint operator and an exact source-return map with correct analytic normalization, multiplicity and tail control. The source-only Jacobi parity theorem proves necessary structural symmetry, **not** the missing zeta determinant.

## Source comparison, novelty and next obligation

This is the standard bipartite Jacobi parity mechanism specialized to the actual arithmetic sequence \(p_0,p_1,\ldots\), not a new general theorem of spectral theory. Compare Teschl, *Jacobi Operators and Completely Integrable Nonlinear Lattices* (AMS 2000), and the pinned Lean Mathlib prime counting and reciprocal-prime divergence sources. Alpöge's original Lean proof instead derives a right-half-plane zero-free statement and reflects through the functional equation; no proof body or theorem from that release is imported here.

**Open:** formally prove \(P_N(t)=\det(tI-J_N)\), which currently is the intended scalar continuant but not a Lean-checked matrix-determinant identity. Prove the infinite-domain Carleman result in Lean, then study a properly normalized Fredholm/regularized determinant and source-equal von Mangoldt prime-power weights. All new Lean checks remain NOT_RUN.
