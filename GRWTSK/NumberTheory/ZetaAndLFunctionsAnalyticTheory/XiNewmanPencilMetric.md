# An optimal metric defect for finite theta heat pencils

grwtsk contributors

Consider the Jacobi-free sequence of calibrated theta polynomials \(P_n\) at \(T=1/2\) from [finite first collisions](XiNewmanJensenThreshold.md). On the monomial basis below degree \(2n\), let \(A_n\) be multiplication by the coordinate modulo the monic normalization of \(P_n\), and \(D_n\) ordinary differentiation. At physical time zero form the real finite matrix
\[
 B_n=(A_n-(T/2)D_n)^{-1}.
\]
It exists for all sufficiently large \(n\). This uses the local convergence at the origin and positivity of xi there. For a singular exceptional index one can declare its cost \(+\infty\). Every matrix entering the definition is obtained from theta coefficients and finite polynomial operations. We show that
\[
 \lim_{n\to\infty}\ \inf_{G=G^{\mathsf T}>0,\ G\ \mathrm{rational}}
 \frac14\operatorname{Tr}\!\left(G^{-1}E_n^{\mathsf T}G^{-1}E_n\right)
   = \sum_{X(\alpha)=0} m_\alpha\,(\Im(1/\alpha))^2,\qquad
 E_n=GB_n-B_n^{\mathsf T}G ,
\]
where \(X(z)=\xi(1/2+iz)\) and the sum is over distinct zeros. The left side contains no zeta-zero input. Its vanishing is equivalent to RH. In contrast to a finite simple-real-spectrum requirement, it permits defective finite matrices and small nonreal errors tending to zero. The remaining task is to construct metrics with vanishing weighted residual along unbounded ranks.

## A finite optimization over inner products

For any real finite matrix \(B\) and \(S=G^{1/2}\), direct multiplication shows that the displayed cost is the squared Frobenius norm of the imaginary part of \(SBS^{-1}\), with \(\Im C=(C-C^*)/(2i)\). Indeed \(SBS^{-1}-(SBS^{-1})^*=G^{-1/2}(GB-B^{\mathsf T}G)G^{-1/2}\). The trace formula follows by cyclicity. Polar decomposition shows that minimizing over positive definite \(G\) permits all real changes of basis; the remaining orthogonal conjugation preserves the cost. Continuity and density allow restriction to rational positive definite symmetric matrices.

The infimum equals the sum of the squared imaginary parts of the eigenvalues counted with algebraic multiplicity. For the lower bound take a unitary Schur basis for any similar representative. A diagonal entry \(\lambda\) costs \((\Im\lambda)^2\); each strictly upper triangular entry \(b\) costs \(|b|^2/2\) from the two off-diagonal positions. For the matching upper bound over *real* basis changes start from real block upper triangular Schur form. By a real change within each irreducible diagonal block, an eigenpair \(a\pm ib\) gives the normal block with rows \((a,-b),(b,a)\), using the real and imaginary parts of an eigenvector. Leave real one-dimensional diagonal blocks intact. With \(k\) blocks, conjugate by the block diagonal matrix with scalars \(\epsilon^{k-j}\) in position \(j\); an upper off-block entry is multiplied by \(\epsilon^{j'-j}\) when its column block is \(j'>j\). Thus the cost tends to the diagonal-block cost. This also treats nontrivial real Jordan blocks. For instance the two-dimensional nilpotent Jordan block has infimum zero and no positive minimizing metric. [Schur triangularization, Schur, Math. Ann. 66 (1909)](https://doi.org/10.1007/BF01450045)

## Uniform control of the tails

Write \(Q_n=U_{T/2}P_n\) at the target time. The pencil identity identifies the eigenvalues of \(B_n\) with the reciprocals of the roots of \(Q_n\), counting algebraic multiplicities. The heat-transport estimate gives \(Q_n\to F_0=X/8\) locally uniformly. This alone would allow escaping zeros carrying nonvanishing squared reciprocal mass, so a separate estimate is needed.

For \(|z|\le R\), the theta representation of the Jensen section and its Gaussian transport bound \(|Q_n(z)|\) by a constant times
\[
       \int_0^\infty \Phi(u)\exp(Cu^2+2Ru)\,du
\]
with \(C\) independent of \(n,R\). Indeed \(|1\pm2iwu/N|^N\le e^{2|w|u}\), the shift is bounded by a fixed multiple of a standard Gaussian, and its absolute exponential moment is at most twice its one-sided Gaussian moment bound. Absorb \(Cu^2\) and the theta prefactors in a portion of \(e^{-c e^{4u}}\). Substitution of \(v=c'e^{4u}\) gives a bound by a constant times \((c')^{-R/2}\Gamma(R/2)\) for \(R\ge2\). Since \(Q_n(0)\) tends to a positive value, Jensen's formula on the doubled disk gives
\[
 \#\{\alpha:Q_n(\alpha)=0,\ |\alpha|\le R\}
             \ll R\log(2+R)
\]
uniformly at all sufficiently large ranks. The same estimate holds for \(F_0\). Consequently the squared reciprocal mass beyond \(R\) is \(O(\log(2+R)/R)\) by dyadic summation, uniformly for these polynomials and for the limit. Local uniform convergence and the argument principle match each bounded cluster with its true multiplicity. For any disk with zero-free boundary, any continuous function of a reciprocal coordinate sums to its correct limit on the finite cluster. There is a uniform zero-free neighborhood of the origin at large ranks. Combining this fact with the tail estimate proves the claimed metric-defect limit. The argument preserves an arbitrary finite multiplicity without assuming simplicity of xi zeros.

One form of the remaining proof obligation uses only matrices over the reals and rational tests. For each integer \(m\ge1\), there must exist \(n\ge m\) with \(B_n\) defined and a symmetric positive definite rational \(G\) for which the displayed trace divided by four is less than \(1/m\). This is necessary and sufficient by the optimization and the existence of the limit. Failure of an unweighted commutator bound in an ill-conditioned basis would not resolve the test.

## A specific near-optimal real metric and an arithmetic witness

There is an explicit positive metric with dimension-independent error. Let \(C=B_n^{-1}\), and label by \(a\) the distinct roots of its finite characteristic polynomial, with multiplicities \(m_a\). Use the quotient identification to represent a vector by a polynomial \(p\) of degree \(<2n\) at the target time. In the anchor monomial input basis the polynomial representatives of the basis vectors are \(U_{T/2}z^j\). For \(\epsilon>0\) use the norm
\[
   \sum_a\sum_{j=0}^{m_a-1}\epsilon^{2j}
                 |p^{(j)}(a)/j!|^2 .
\]
Hermite interpolation identifies these scaled jets with all coordinates in the direct sum: a polynomial in the kernel is divisible by the full characteristic polynomial, and dimensions agree. The Gram matrix is positive definite and real on the real basis by conjugation. In these isometric coordinates \(C\) has at \(a\) the single lower block \(aI+\epsilon L\), with \(L\) the unit subdiagonal shift. The product rule proves this action, and reducing modulo the characteristic polynomial preserves the jets. The finite geometric inverse has subdiagonal \(j\) equal to \((-\epsilon)^j/a^{j+1}\). Thus its cost above the exact infimum is
\[
 \frac12\sum_a\sum_{j=1}^{m_a-1}
             (m_a-j)\epsilon^{2j}|a|^{-2j-2}.
\]
For all large \(n\), choose the common zero-free radius \(r>0\) from the compact convergence argument. The excess is at most
\(\frac12 \sum_a m_a |a|^{-2}\,(\epsilon/r)^2/(1-(\epsilon/r)^2)\) for \(0<\epsilon<r\). The uniform tail and bounded interior cluster counts give a common bound on the sum. In particular \(\epsilon=1/n\) produces an explicit sequence with cost differing from the optimum by \(O(n^{-2})\). Its root inputs are only the finite arithmetic pencil's algebraic spectral data; proving the limiting cost is zero remains the same open estimate.

For the tested simple real spectra, a root-free formula is more practical. In the polynomial representatives \(p_i=U_{T/2}z^i\), use \(G^0_{ij}=\operatorname{Tr}(p_i(C)p_j(C))\). This is the unscaled real evaluation Gram matrix, hence positive for simple real spectra. The moment matrix of the original monomial basis has entries \(\operatorname{Tr}(C^{i+j})\). Conjugating by the heat coefficient matrix gives \(G^0\). The trace identity makes \(G^0 B=B^{\mathsf T}G^0\) exactly. Its positivity in a general rank is not established. The fixture rounds its entries symmetrically to multiples of \(2^{-180}\), then verifies positive leading principal minors and the weighted residual using interval arithmetic. At ranks 2, 4 and 8 the resulting upper bounds are respectively below \(3.65\cdot10^{-115},\,4.25\cdot10^{-114},\,3.13\cdot10^{-113}\). The rational matrices can be regenerated without numerical root lists.

## Normal realization and the self-adjoint comparison

The same estimates define a spectral measure arithmetically if desired. From the algebraic eigenvalues \(b\) of each finite pencil inverse form \(\mu_n=\sum_b |b|^2\delta_b\), counting copies. The estimates above prove weak convergence to a finite positive measure \(\mu\) on a common compact disk by splitting at large \(|\alpha|\). They give zero mass at \(b=0\), since the mass for \(|b|<1/R\) tends to zero uniformly. Identification of the limit shows \(\mu(\{b\})=m_\alpha|b|^2\) at \(b=1/\alpha\). Define the \(j\)-th layer as \(L^2\) of \(\mu\) restricted to the nonzero points with \(\mu(\{b\})\ge j|b|^2\), \(j\ge1\). On their orthogonal sum, let \(K\) multiply by \(b\). These definitions use the limit of finite matrices. The identification proves that \(K\) is injective, normal and Hilbert–Schmidt, and has dense range. Its inverse has the maximal multiplication domain. The signed paired Hadamard product gives \(\det{}_2(I-zK)=X(z)/X(0)\) for all complex \(z\), with all multiplicities. The operator \(\Re K\) is self-adjoint; its kernel is zero since purely imaginary xi zeros are excluded by the positive theta-cosh integral. Its inverse therefore supplies a densely defined self-adjoint comparison.

The squared Hilbert–Schmidt distance from \(K\) to \(\Re K\) is exactly the limiting metric cost. Equivalently the self-adjoint comparison's log determinant has second derivative \(-\sum(\Re b)^2\) at zero, whereas the normalized xi log derivative of order two is \(-\sum b^2\). Conjugation makes the difference (xi minus comparison) equal to \(\sum(\Im b)^2\). The exact xi identity for a *self-adjoint* inverse still requires this quantity to vanish. [Related normal operator obtained from regularized divisor measures](XiJetDivisorMeasures.md) · [Monotone central Jensen defect](XiJensenAppell.md)

At ranks 2, 4 and 8 an [interval fixture](../../../scripts/verify_xi_newman_pencil_metric.py) checks the finite matrix characteristic determinant at four evaluation points against the independently transported polynomial. At those ranks all its roots are certified real and simple by Sturm counts, so the optimal cost is exactly zero. The unscaled monomial basis instead gives costs in \((1.61,1.62)\), \((8.27,8.28)\), and \((12222,12223)\). The example exhibits a large finite basis effect even with exactly zero intrinsic defect. The [Lean source](XiNewmanPencilMetric.lean) verifies the diagonal and off-diagonal Frobenius contributions, the finite lower bound and trace-gap algebra. The operator, compactness, and global limiting statements are manuscript arguments.

At Lean source blob 1f06886928e5d4e901c701f53f2a52f729f4bec2, all 4 named public declarations passed elaboration and fresh kernel replay (4 roots, 14473 declarations). Their transitive axioms are subsets of propext, Classical.choice and Quot.sound. The analytic argument has not had independent external review.
