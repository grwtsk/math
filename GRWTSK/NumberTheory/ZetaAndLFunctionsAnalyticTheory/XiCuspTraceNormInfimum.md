# A rank-one dissipative shift, the Volterra quotient, and the sharp trace-norm infimum

For a modular cusp truncation \(1\le Y<4\pi e^{-\gamma_E}\), let \(B=B_Y\) be the centered Hilbert–Schmidt operator with determinant \(\xi(1/2+iz)/\xi(1/2)\). Let \(N_Y\) be its exact normal realization, and \(E_m\) the projection onto the first \(m\) geometric modes on both copies. Write \(\ell=\log Y\). Then
\[
 \boxed{\ \lim_{m\to\infty}\inf_{S_m>0}
  \left\|\Im\big((S_m\oplus I)B(S_m\oplus I)^{-1}\big)\right\|_1
        =\|\Im N_Y\|_1+\frac{\ell}{2}.\ }                                        \tag{1}
\]
Here \(S_m\) is any positive invertible matrix on \(E_m\mathcal H\), and the norm includes the full operator outside the finite corner. The infimum is unattained. At \(Y=1\) the generalized eigenspaces of \(B\) span a dense subspace unconditionally. At \(Y>1\) the quotient by that closed span is boundedly similar to the Volterra integration operator multiplied by \(-i\) on an interval of length exactly \(\ell\). Thus there is an entire infinite-dimensional quotient when \(Y>1\), although its regularized determinant is one. [Geometric pencil, (7)–(9)](XiModularCuspSpectra.md) · [Endpoint at \(Y=1\)](XiCuspEndpointResolvent.md) · [Lower bound and nonattainment](XiCuspMetricInfimum.md)

## The metric and a second spectral center

In the noncuspidal surface space set \(Q=G^{1/2}\), \(e=(h,0)\), \(D=Y e\otimes e\), where \(G\) is the Green operator and \(h\) the truncation indicator. Use the real spectral parameter \(d\) to denote
\[
 T=\begin{pmatrix}G&-Q\\Q&0\end{pmatrix}-D,\quad
 B(d)=\frac i2 T(I-dT)^{-1},\qquad B=B(1/4).
\]
Both \(d=1/4,1/2\) are regular, as \(\xi(1/2),\xi(1)\ne0\). The primary geometric input gives \(G\) positive trace class and \(\|Q\|<2\). Put
\[
 U=I-T,\qquad W_0=\begin{pmatrix}I&-Q/2\\-Q/2&I\end{pmatrix},
 \qquad W=W_0+D/2,\qquad S=W^{1/2}.
\]
The bound \(W\ge(1-\|Q\|/2)I>0\) gives a bounded inverse. Since \(W-I\) is Hilbert–Schmidt, so is \(S-I=(W-I)(S+I)^{-1}\). The exact energy identity is
\[
 U^* W U-W=\tfrac12(I+U)^*D(I+U).                                                \tag{2}
\]
For example, put \(U_0=U-D\). Multiplying the two-by-two blocks gives \(U_0^*W_0U_0=W_0\), \(U_0^*W_0e=(I+U_0^*)e/2\), and \(\langle W_0e,e\rangle=\|e\|^2\). Expansion proves (2). Equivalently (2) is an identity of noncommutative blocks for any self-adjoint \(Q\) and upper-left damping coefficient. [Müller, *A spectral interpretation of the zeros of the constant term of certain Eisenstein series*, Theorem 0.1 and §2](https://arxiv.org/abs/math/0703340)

Define \(R=SB(1/2)S^{-1}\) and \(L=SBS^{-1}\). In the weighted metric the Cayley transform \(B(1/2)=i(I-U)(I+U)^{-1}\) has imaginary form \((I+U)^{-*}(W-U^*WU)(I+U)^{-1}\). Therefore
\[
 \Im R=-\frac Y2(S^{-1}e)\otimes(S^{-1}e),\qquad
 L-R=\frac i2 LR,\qquad L=R(I-iR/2)^{-1}.                                      \tag{3}
\]
The sign and the half are essential. The spectral map sends each zero \(\rho\) to \(\mu=i/(\rho-1)\) for \(R\) and to \(\lambda=i/(\rho-1/2)\) for \(L\). Both count algebraic multiplicities, by the shifted pencil determinant. The fractional transform in (3) is invertible on the two spectra and has nonzero derivative there. Hence \(R,L\) have identical generalized eigenspaces under this matching. All nonzero eigenvalues of \(R\) have negative imaginary part by the critical strip.

At the centered operator the sign can be described more precisely. Set \(F=I-iR/2\), \(v=\sqrt{Y/2}\,S^{-1}e\), and \(u=F^{-*}v\). Using \(LF=R\), one obtains \(F^*(\Im L)F=\Im R+R^*R/2\), or
\[
                    \Im L=\tfrac12 L^*L-u\otimes u.
\]
The centered imaginary part in this explicit metric has exactly one negative direction and infinitely many positive ones. Indeed \(L\) is injective, so the form is strictly positive on \(u^\perp\); its trace is \(-\ell/2\), which forces a negative eigenvalue even when \(\ell=0\). This one-negative-direction statement concerns the imaginary part as a self-adjoint operator. It does not bound the number of centered spectral parameters in a half-plane.

## The missing root space

Let \(M\) be the closed span of all nonzero generalized eigenspaces of \(R\) and \(P\) its orthogonal projection. Both \(R\) and \(L\) preserve \(M\). Write \(R_q,L_q\) for their quotient operators represented by compression to \(M^\perp\), and put \(\alpha=\xi'(1)/\xi(1)=1+\gamma_E/2-\log(4\pi)/2\). The shifted modular trace yields
\[
 \operatorname{Tr}\Im R=-\ell/2-\alpha .
\]
This trace is invariant under the change \(S-I\in\mathcal S_2\), since \(B(1/2)\in\mathcal S_2\) and the trace of the difference is zero by cyclicity. As an independent normalization check, the upper-left Schur complement of \(W\) is \(I-G/4+Yh\otimes h/2\). With \(m=\langle(I-G/4)^{-1}h,h\rangle\) its inverse gives \(Y\|S^{-1}e\|^2/2=(Ym/2)/(1+Ym/2)\). The scalar pencil determinant at \(v=1/2\) gives \(1+Ym/2=\xi(1)/F_{\ell}(0)=2/(\log(4\pi)-\gamma_E-\ell)\), yielding the same \(\ell/2+\alpha\). [Green determinant and its normalization](XiModularCuspSpectra.md) · [Trace at every regular center](XiCuspMetricInfimum.md)

The compressions of \(\Im R\) to increasing finite sums of generalized eigenspaces converge to \(P\Im R P\) in trace norm. Each finite compression has trace the sum of the imaginary parts of its eigenvalues with multiplicities. This yields
\[
 \operatorname{Tr}(P\Im R P)
    =-\sum_\rho\frac{1-\Re\rho}{|1-\rho|^2}=-\alpha,\qquad
 \operatorname{Tr}\Im R_q=-\ell/2 .
\]
For the arithmetic sum, logarithmically differentiate the even Hadamard product paired by \(\rho,1-\rho\) at \(s=1\). Each logarithmic derivative gives \(1/(1-\rho)\) from that zero. The real parts are positive and absolutely summable by the strip and the reciprocal-square bound. This argument uses no assertion about critical-line location. The part of the dissipative vector in \(M^\perp\) consequently satisfies \(Y\|(I-P)S^{-1}e\|^2=\ell\).

The compact \(R_q\) is quasinilpotent. Indeed the diagonal-block multiplicities of an upper triangular compact operator add at each nonzero eigenvalue. One proof uses a small Riesz contour around it: the resolvent is block triangular, and the trace of its finite-rank Riesz projection is the sum of the two diagonal ranks. At regular nonzero parameters invertibility of the two diagonal blocks is equivalent to invertibility of the whole block, by the Fredholm index zero of each diagonal. Every nonzero algebraic multiplicity of \(R\) is already present in \(M\). Moreover \(R_q^*=R^*|_{M^\perp}\) is injective by injectivity of the adjoint geometric pencil.

If \(Y=1\), the nonpositive \(\Im R_q\) has zero trace and hence vanishes. A compact self-adjoint quasinilpotent operator is zero, so adjoint injectivity gives \(M^\perp=0\). Density transfers under \(S\) to the original \(B\). This does not give a basis with bounded spectral projections. The projection-norm calculation, using the same endpoint identities, is compatible with complete root spaces at height one. [Projection formula](XiCuspResonanceProjections.md)

If \(Y>1\), \(\Im R_q\) is negative of rank one with magnitude \(\ell/2\). A reducing subspace on which \(R_q\) is self-adjoint must be a zero summand by quasinilpotence, and adjoint injectivity excludes it. The Livšic uniqueness theorem for completely nonselfadjoint rank-one dissipative Volterra operators thus identifies \(R_q\), up to unitary equivalence, with \(-iV\), where \(Vf(x)=\int_0^x f(t)\,dt\) on \(L^2(0,\ell)\). The imaginary part of this model is \(-\tfrac12\mathbf1\otimes\mathbf1\), fixing the length. [Livšic, *On spectral decomposition of linear nonselfadjoint operators* (1954)](https://www.mathnet.ru/eng/sm5241) · [Arlinskii and Tsekanovskii, *Non-self-adjoint Jacobi matrices with rank one imaginary part*, §7](https://arxiv.org/abs/math/0602033)

Here is a direct verification of this use of uniqueness. For a quasinilpotent Hilbert–Schmidt \(A=C-ih\otimes h\) with \(C=C^*\), \(\|h\|^2=m\), the determinants \(\det_2(I-zA)\) and \(\det_2(I-zA^*)\) are both identically one by their eigenvalue products. The relative determinant of \((I-zA)(I-zA^*)^{-1}\) is \(e^{2imz}\). This follows by finite-rank compression and the regularized determinant identity, since the trace-class difference \(A-A^*\) converges in trace norm under that compression. Near zero the rank-one determinant identity independently gives the relative determinant as \((1+izk(z))/(1-izk(z))\), where \(k(z)=\langle(I-zC)^{-1}h,h\rangle\), with inner product linear in the first variable. Thus \(k(z)=\tan(mz)/z\). The span of \(p(C)h\) is dense if there is no self-adjoint reducing summand, because its orthogonal complement reduces \(C\), annihilates \(h\), and there \(A=C\). The Taylor coefficients of \(k\) fix all inner products of these polynomial vectors. Two such operators of mass \(m\) are consequently unitarily equivalent by sending corresponding vectors to each other. The operator \(-iV\) on \((0,2m)\) has the required rank, is injective together with its adjoint, and is quasinilpotent by \(\|V^n\|\le (2m)^n/n!\) from the integral kernels. This proves the asserted identification in precisely the class used here.

Applying (3) on the quotient gives
\[
 L_q=-iV(I-V/2)^{-1},\qquad
 (L_qf)(x)=-i\int_0^x e^{(x-t)/2}f(t)\,dt .
\]
Multiplication by \(e^{-x/2}\) conjugates \(L_q\) to \(-iV\). It and its inverse are bounded since \(\ell<\infty\). In particular the optimal trace norm of the residual sector alone is attained by this change, and equals \(\ell/2\). For the lower bound here, any similarity whose difference on the quotient is trace class with trace zero preserves the imaginary trace; arbitrary bounded similarities need not be assumed in this assertion. For the displayed multiplier the difference is trace class, a bounded factor times \(V^2\), with trace zero by quasinilpotence. The space referred to is the quotient by the generalized root span. The orthogonal complement need not be invariant under the original operator.

## The root-carrying part is independent of height

Write \(v=\sqrt{Y/2}\,S^{-1}e\), with components \(v_M,v_q\) in \(M\oplus M^\perp\), and let \(R_1,v_1\) denote the height-one construction. Then \(R|_M\) with its distinguished vector \(v_M\) is unitarily equivalent to \(R_1,v_1\). Indeed \(\Im(R|_M)=-v_M\otimes v_M\), \(\|v_M\|^2=\alpha\), and this restriction has all the nonzero eigenvalues, with their algebraic multiplicities, of the height-one operator. It is prime: any reducing self-adjoint part would be compact with no nonzero real eigenvalue and hence zero, and the restriction is injective. The determinants \(\det_2(I-zR|_M)\) and \(\det_2(I-zR_1)\) agree by their absolutely convergent eigenvalue products, and so do the adjoint determinants. Their ordinary relative determinants are identical because the trace of the rank-one skew part is identical. The rank-one ratio argument above therefore identifies the same scalar \(k(z)\) near zero for both real parts. The cyclic polynomial-vector isometry gives the claimed equivalence, taking \(v_M\) to \(v_1\).

On identifying \(v_q\) with \(\mathbf1/\sqrt2\) in the Volterra model by the same cyclic isometry, the shifted operator at height \(Y>1\) has the block form
\[
 R\ \simeq\
 \begin{pmatrix}R_1&-\sqrt2\,i\,v_1\otimes\mathbf1\\
                 0&-iV_{(0,\ell)}\end{pmatrix},\qquad
 (u\otimes v)f=\langle f,v\rangle u.
\]
Invariance of \(M\) determines the strict block from \(R-R^*=-2i\,v\otimes v\); its trace norm is \(\sqrt{2\alpha\ell}\). This is an explicit coupling, not an orthogonal direct sum of reducing operators. In particular \(B_Y\) restricted to its closed generalized root span is boundedly similar to the entire height-one \(B_1\), by applying the same fractional transform to the restrictions and undoing their two bounded metrics. Varying the height changes the Volterra quotient and this coupling. [Full shifted characteristic function and real-part spectral measure](XiCuspClarkSpectrum.md)

## Approximation in the full trace norm

For an admissible finite geometric change, \(\operatorname{Tr}\Im B=-\ell/2\) is invariant. Compression to finite sums of invariant upper-half-plane root spaces gives \(\operatorname{Tr}(\Im B)_+\ge\sum_{\Im\lambda>0}\Im\lambda\); the identical inequality holds after similarity. Conjugate spectral symmetry shows that twice this sum is \(\|\Im N_Y\|_1\). Thus (1) has the indicated lower bound. The known strict inequality at every individual admissible metric follows from the unbounded norms of the simple real Riesz projections. [Trace-norm lower bound](XiCuspMetricInfimum.md)

Here is the upper approximation. Take finite sums \(M_n\) of whole generalized eigenspaces increasing densely to \(M\), with projection \(P_n\). In the orthogonal decomposition
\[
            M_n\ \oplus\ (M\ominus M_n)\ \oplus\ M^\perp
\]
the matrix of \(L\) is upper triangular by invariance of \(M_n,M\). Its strict upper blocks are trace class: each is twice \(i\) times the corresponding block of \(\Im L\). On \(M_n\), choose a finite-dimensional Schur basis and weight its successive vectors by \(u^j\), \(u\to\infty\). The strict upper entries shrink; the imaginary part approaches in trace norm the diagonal of \(\Im\lambda\) for the selected roots, including Jordan multiplicities. The middle diagonal block satisfies
\[
 \|(P-P_n)(\Im L)(P-P_n)\|_1\longrightarrow0
\]
since \(P-P_n\to0\) strongly and \(\Im L\) is trace class. On the last block use the positive multiplier just constructed. Its resulting imaginary part has trace norm \(\ell/2\). At height one the last space is absent.

After these three diagonal changes are fixed, apply separate scalar weights \(1,v,v^2\) to the three blocks. Every strict upper block tends to zero in trace norm as \(v\to\infty\). This removes inter-block terms while controlling their full trace norm. Thus the transformed imaginary part can be approximated arbitrarily well in trace norm by the finite Schur diagonal and the rank-one residual imaginary part, with the middle error tending to zero. This uses no basis bounds for the root system.

It remains to put those changes on the prescribed geometric cutoffs. Let \(B_0=(i/2)\left(\begin{smallmatrix}0&-Q\\Q&0\end{smallmatrix}\right)\). Then \(B_0=B_0^*\), \(E_m B_0=B_0 E_m\), and \(B-B_0\) is trace class since \(T^2\) and the upper diagonal of \(T\) are trace class. Denote the three-block positive change just constructed by \(J\). It satisfies \([J,L]\in\mathcal S_1\): the strict blocks are trace class, the first diagonal acts in finite dimension, the second change is scalar, and the third sends the weighted Volterra to \(-iV\), with difference a bounded multiple of \(V^2\). Since \(L-B_0\in\mathcal S_1\), it follows that \([J,B_0]\in\mathcal S_1\). Also \([S,B_0]\in\mathcal S_1\) because \(S-I,B_0\in\mathcal S_2\).

For \(K=J,S\), write \(K_m=E_m K E_m+I-E_m\). These positive invertibles and their inverses have uniform bounds and converge strongly to \(K,K^{-1}\), respectively. The identity \([K_m,B_0]=E_m[K,B_0]E_m\) gives trace-norm convergence of the commutators. For \(A_m=J_mS_m'\), where \(S_m'=E_m S E_m+I-E_m\), the product rule now gives \([A_m,B_0]\to[JS,B_0]\) in trace norm. All left and right multiplications here preserve convergence because both the bounded factors and their adjoints converge strongly, and finite-rank operators are dense in trace norm. Thus
\[
 A_m B A_m^{-1}-B_0
   = A_m(B-B_0)A_m^{-1}+[A_m,B_0]A_m^{-1}
   \longrightarrow JSB(JS)^{-1}-B_0 \quad\text{in }\mathcal S_1 .
\]
The left unitary factor in the polar decomposition of \(A_m\) preserves the objective. Its positive factor acts only on \(E_m\), as required. Taking first the root truncation, then the finite weights and finally a sufficiently large geometric corner proves the upper bound in (1). The infima over the nested geometric corners decrease.

## One sequence for all Schatten exponents

For \(1<p\le\infty\) the exact analogue of (1) has right side \(\|\Im N_Y\|_p\). A single sequence of admissible geometric changes gives these limits together with (1). It also recovers both signs of the [reciprocal slice profile](XiCuspReciprocalSlices.md):
\[
 \operatorname{Tr}\big(\pm\Im(A_m B A_m^{-1})-bI\big)_+
     \longrightarrow U(b),\qquad b>0.                                           \tag{4}
\]
Here the \(A_m\) may be taken positive after polar decomposition. Both signs have the same \(U(b)\) by the symmetry of the reciprocal divisor.

To see the distinction between \(p=1\) and \(p>1\), divide the Volterra interval into \(k\) equal pieces. Order the pieces from right to left so integration is upper triangular. The diagonal blocks are smaller Volterra operators; the strict cross-interval blocks have constant kernels and rank one. Attenuate the strict blocks by positive scalar weights increasing along this ordered list. The resulting imaginary part approaches \(k\) orthogonal negative eigenvalues of size \(\ell/(2k)\), together with zero, in trace norm. These weights multiply the previous positive scalar function on the interval and still give a trace-class commutator there. Unequal interval lengths likewise give the corresponding partition of the residual trace.

Choose \(k,n\to\infty\) and all preceding approximation errors tending to zero in trace norm. The resulting imaginary parts differ, up to unitary conjugacy, by a trace-norm error tending to zero from finite diagonal operators listing the selected \(\Im\lambda\), together with the \(k\) negative masses \(-\ell/(2k)\). This states the approximation of spectral data and retains the full ambient tails. The latter masses have combined trace norm \(\ell/2\) and \(p\)-norm \((\ell/2)k^{1/p-1}\) for \(1<p<\infty\), with operator norm \(\ell/(2k)\). This proves the upper limits for all exponents. For a fixed \(b>0\) the cutoff eliminates those masses eventually. The threshold traces are Lipschitz in trace-norm difference by their finite-rank projection variational formula, proving (4). A sequence initially selected on an increasing subsequence of geometric corners can be repeated in the intervening corners.

For the matching lower bounds at \(b>0\), compress \(\pm\Im L-bI\) to any finite invariant sum of root spaces with \(\pm\Im\lambda>b\). Its trace there is the sum of \(\pm\Im\lambda-b\) with multiplicity, which is bounded by the trace of its positive part on the full space. This trace lower bound applies to all the finite changes and gives \(U(b)\) for each sign. Integrating the two bounds against \(p(p-1)b^{p-2}\,db\) proves the \(p\)-norm lower bound by the scalar layer identity for \(|t|^p\). The operator-norm lower bound follows by testing an eigenvector. These arguments give one model for the concentration of the residual negative trace at zero while all positive-threshold profiles converge.

A Galerkin check illustrates the need for the trace-ideal estimates. Compress \(V\) to normalized indicators of \(n\) equal intervals, in their usual order, writing \(h=\ell/n\). Its matrix has \(h\) strictly below the diagonal and \(h/2\) on the diagonal, by integration over the triangle in a single cell. Its product by \(-i\) has imaginary part \(-h\mathbf1\mathbf1^*/2\), of trace \(-\ell/2\) at every \(n\). Discarding the diagonal changes the Hilbert–Schmidt norm by only \(\ell/(2\sqrt n)\), but the change of imaginary parts has trace norm \(\ell/2\) for every \(n\), and the new imaginary trace is zero. Thus Hilbert–Schmidt approximation alone would not detect the residual trace term.

At \(Y=1\) the absence of a Volterra quotient and dense root span remove the height term in (1). They do not locate the geometric eigenvalues: \(\|\Im N_1\|_1\) can vanish in this argument only after the arithmetic transverse contribution is shown to be zero. Completeness of root vectors and normality in an equivalent Hilbert norm are separate statements.

The [Lean module](XiCuspTraceNormInfimum.lean) proves the noncommutative block energy identity, the signed Cayley pullback, the strict-block identity for the skew part, and the two algebraic identities for recentering and interval compression. The Hilbert-space decomposition, Volterra identification, trace-class approximations and arithmetic conclusions are analytic results here.

At Lean source blob `4ae8e5d3f0a681cdb8b04d67e455a8c3d77d0522`, all eight public declarations built and passed explicit fresh kernel replay. Their transitive axiom audits returned only subsets of `propext`, `Classical.choice` and `Quot.sound` with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact rational checks separately verified 24 noncommuting shifted block pencils and four Volterra cell compressions. No independent external review is recorded.
