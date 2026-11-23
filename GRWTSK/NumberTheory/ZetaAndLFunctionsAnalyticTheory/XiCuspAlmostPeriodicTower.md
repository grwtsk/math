# A self-adjoint operator from almost-periodic modular orbits

Fix a truncation height \(1<Y<4\pi e^{-\gamma_E}\) of the modular surface. Let \(B=(i/2)T(I-T/4)^{-1}\) on the doubled noncuspidal Hilbert space \(E\), where \(T\) is the block operator determined by the Green operator, its positive square root, and the indicator of the truncated surface. This arithmetic input determines a new Hilbert space and a densely defined self-adjoint operator \(H_Y\) on it. The spectrum of \(H_Y\) consists exactly of the real ordinates of the critical-line zeros of zeta, with their full analytic multiplicities. Its construction uses almost-periodic time evolution of the surface operator and a finite backward shift at each level. No zeros are supplied to define any space, inner product or operator. [Geometric construction of \(B\), (7)–(9)](XiModularCuspSpectra.md)

## The orbit inner product

For \(k\ge0\), on \(E^{k+1}\) define a bounded operator
\[
 (L_k x)_j=B x_j-x_{j+1},\qquad x_{k+1}=0 .
\]
Call \(x\) admissible if \(f_x(t)=e^{itL_k}x\), for real \(t\), is a uniform limit on the whole line of finite sums \(\sum_\lambda e^{it\lambda}u_\lambda\), where every frequency is real and \(u_\lambda\in E^{k+1}\). These vectors form a linear subspace. Give it the positive semidefinite form
\[
 [x,y]_k=\lim_{R\to\infty}\frac1{2R}\int_{-R}^{R}
         \langle f_x(t),f_y(t)\rangle\,dt .
\]
For finite sums this limit exists by the integral of a single exponential. Uniform approximation and boundedness extend it to admissible vectors. Quotient by vectors of zero seminorm and complete to obtain \(V_k\). Translation gives a unitary action on \(V_k\) since the mean is invariant under translation and inverse translations exist. This is the Bohr uniform almost-periodic class with its mean-square inner product. [Bohr, *Zur Theorie der fastperiodischen Funktionen*, I (1925)](https://doi.org/10.1007/BF02395468)

**Fourier decomposition.** In the mean-square completion of the vector trigonometric polynomials, their coefficients give a unitary onto \(\ell^2(\mathbb R_{\rm disc};E^{k+1})\). This follows first for finite sums by orthogonality, then by density. The coefficient \(u_\lambda\) of any admissible orbit is the norm limit of the vector averages of \(e^{-it\lambda}f_x(t)\), by uniform approximation. Since \(e^{isL_k}\) is bounded for each fixed \(s\), translating the average yields \(e^{isL_k}u_\lambda=e^{is\lambda}u_\lambda\). Differentiation at zero gives \(L_ku_\lambda=\lambda u_\lambda\). Conversely every vector in that eigenspace gives a single-frequency admissible orbit. The finite partial sums of the Fourier coefficients therefore belong to the orbit space and converge in the mean norm. In particular
\[
 V_k\simeq\bigoplus_{\lambda\in\mathbb R}\ker(L_k-\lambda)
\]
with the inherited norm on each individual eigenspace. Its unitary action is multiplication by \(e^{is\lambda}\) in the respective summand. This computation does not require completeness of the root vectors of \(B\) in the old norm.

## Multiplicities and determinant

The isometry \(x\mapsto(x,0)\) intertwines \(L_k,L_{k+1}\) and their exponentials. It gives isometric inclusions of the \(V_k\). Let \(V\) be the Hilbert completion of their union. The frequency spaces are compatible and mutually orthogonal under these inclusions. At each level the equations of a single frequency are
\[
 x_j=(B-\lambda)^j x_0,\qquad (B-\lambda)^{k+1}x_0=0.
\]
Thus its dimension equals \(\dim\ker(B-\lambda)^{k+1}\). At zero this is zero because \(B\) is injective. For real \(\lambda\ne0\), compactness of \(B\) implies that the generalized eigenspace stabilizes at its finite algebraic multiplicity. The isometric inclusions are then surjective on this frequency. The limit has pure point spectral measures, since the finite-level frequency vectors span a dense subspace. Zero can still be a spectral accumulation point. These arguments also cover nontrivial Jordan blocks. For example, \(B=J_2(1)\oplus[i]\) gives one dimension at frequency one on level zero, two on level one and thereafter, and none at any other real frequency.

As all frequencies satisfy \(|\lambda|\le\|B\|\), the resulting unitary group is norm continuous and equals \(e^{itA_Y}\) for a bounded self-adjoint generator \(A_Y\). On each summand it acts by the indicated real frequency. Nonzero frequencies accumulate only at zero with finite multiplicity, so \(A_Y\) is compact and injective. Its Hilbert–Schmidt sum is bounded by the corresponding eigenvalue sum of the Hilbert–Schmidt operator \(B\) counting algebraic multiplicities (Weyl's inequality). The inverse \(H_Y=A_Y^{-1}\), with domain \(\operatorname{ran}A_Y\), is densely defined and self-adjoint by the spectral theorem. Its domain consists precisely of coefficient families whose squared norms weighted by \(|\lambda|^{-2}\) are summable.

Write \(X(z)=\xi(1/2+iz)\). The geometric identity \(\det_2(I-zB)=X(z)/X(0)\) identifies the algebraic multiplicity at \(\lambda\ne0\) with the zero order at \(a=1/\lambda\). The extraction just proved therefore gives
\[
 \det_2(I-zH_Y^{-1})
   =\prod_{\substack{a>0\\X(a)=0}}(1-z^2/a^2)^{\operatorname{ord}_a X}.
\]
Pairing opposite real frequencies cancels their regularizing exponentials. The complementary factor of \(X(z)/X(0)\) is precisely the product of the regularized factors \((1-z/a)e^{z/a}\) over all nonreal \(X\)-zeros with multiplicity, by absolute normal convergence and the determinant of \(B\). Hence the exact target identity for \(H_Y\) holds if and only if RH. This construction supplies the arithmetic definition, full critical-line multiplicity, operator ideals and domain. It leaves the nonreal factor unresolved. The [residue bounds](XiCuspResonanceProjections.md) explain why an equivalent norm on the entire old space cannot account for this extraction. A previous [jet-measure construction](XiJetDivisorMeasures.md) starts from the divisor of the analytic function; the orbit construction starts from the modular Green operator.

The [Lean companion](XiCuspAlmostPeriodicTower.lean) proves the finite chain equivalence over any semiring and the nesting of the zero-extended chains. The mean-space construction, spectral theorem application and identification with the modular cusp determinant are analytic arguments here. No independent external review is recorded.

At source blob `2409f16a30af975ca956c0c6f8cdd2f3f3e1b627`, all four public declarations built with Lean 4.34.1 and passed explicit fresh kernel replay. The transitive audit returned only `propext` and `Quot.sound`, with Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`.
