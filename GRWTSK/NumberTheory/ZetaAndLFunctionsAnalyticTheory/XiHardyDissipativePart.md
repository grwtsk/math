# An exact xi determinant with a trace-minimal imaginary part

Put \(X(z)=\xi(1/2+iz)\). An arithmetic Hardy space on the half-plane to the right of the critical line, together with a real-axis measure obtained from the theta integral, gives a compact operator \(K\) with
\[
 \det\nolimits_2(I-zK)=X(z)/X(0),\qquad
 \mathrm{rank}(\Im K)\le2,\qquad \|\Im K\|_1=2D.
\]
Here \(D\ge0\) is specified below by one integral of the arithmetic boundary values of zeta. Every Hilbert–Schmidt realization of this exact determinant with trace-class imaginary part has imaginary trace norm at least \(2D\). The inverse of \(K\) on its range is closed and densely defined. It is self-adjoint precisely if \(D=0\). A variant splits all multiplicities into independent eigendirections while preserving the optimal trace norm. Unconditional estimates give \(D<7.40\cdot10^{-13}\); its vanishing has not been established.

## The right-half-plane operator

In \(H^2(\mathbb D)\), with \(d=(1-w)/(1+w),\ s=1/2+d\), take the inner factor \(B\) of the bounded arithmetic multiplier
\[
 f(d)=(s-1)\zeta(s)/(s+2)^8 .
\]
Define \(\mathcal K=H^2\ominus BH^2,\ S=P_{\mathcal K}M_w|_{\mathcal K}\), and \(L=i(I+S)(I-S)^{-1}\). If \(B\) is constant, use the zero space. The multiplier is bounded by Euler–Maclaurin as in the [Hardy quotient construction](XiHardyQuotient.md). The only possible singular inner support is at \(w=-1\). At any other boundary point \(f\) continues holomorphically; if it vanishes one can divide out its finite-order boundary zero, an outer factor. Along the radius approaching \(-1\), \(f\) has only polynomial decay in \(d\), excluding a singular atom there. Thus \(B\) is a pure Blaschke product. It extends holomorphically and nonvanishingly across \(w=1\): the zeros accumulate only at \(-1\), by the bounded zero strip and discreteness, and there is no singular part. Also \(f(0)\ne0\) in the half-plane coordinate by the alternating eta series.

Here are details for the bounded inverse. For a finite or infinite pure Blaschke product analytic across \(1\) and unimodular there, \((1-B(w)/B(1))/(1-w)\) is bounded analytic in the disk. Multiplication by this function modulo \(BH^2\) is an inverse to \(I-S\). The identity on the quotient transfers isometrically to its orthogonal representative space. Since \(S\) is a contraction with \(I-S^*S\) of rank one on a nonzero model space, direct multiplication gives
\[
 V=\Im L=(I-S^*)^{-1}(I-S^*S)(I-S)^{-1}\ge0.
\]
For the rank assertion, \(w g\) for \(g\in\mathcal K\) is orthogonal to \(wBH^2\). Its projection onto \(BH^2\) is its component on the line spanned by \(B\); the resulting functional on \(g\) is represented by \((B(w)-B(0))/w\), nonzero unless \(B\) is constant. This proves the defect identity including its sign. Rank-one dissipative functional models have a classical theory. The arithmetic multiplier, its reflected copy and the trace comparison are essential to the present application. [Arlinskii and Tsekanovskii, *Non-self-adjoint Jacobi matrices with a rank-one imaginary part*](https://arxiv.org/abs/math/0602033)

Use finite partial products only to verify the resulting spectrum. The successive one-dimensional model-space differences from a listing of the zeros of \(B\), including multiplicities, have dense span by inner divisibility. In their orthonormal basis \(L\) is lower triangular: the finite model spaces are invariant under \(S^*\), with diagonal entries the conjugates of the successive disk zeros. The rational functional calculus gives the diagonal of \(L\) as \(\lambda=i/(\rho-1/2)\) for \(\Re\rho>1/2\). The rank-one formula yields
\[
 D=\mathrm{Tr}V=\sum_{\Re\rho>1/2}m_\rho
      \frac{\Re\rho-1/2}{|\rho-1/2|^2}.
\]
The diagonal of \(L\) is square summable by the zero count. For \(i>j\) its matrix entry is \(2iV_{ij}\) (here \(i\) in the scalar denotes the imaginary unit), so \(L\) is Hilbert–Schmidt. The finite adjoint restrictions exhaust the Hilbert space and hence their compressions converge in Hilbert–Schmidt norm. Their regularized determinants give exactly the factors \((1-z\lambda)e^{z\lambda}\) in the limit. This proves the nonzero spectral multiplicities algebraically. Neither \(S^*\) nor \(S\) can have eigenvalue \(-1\). The backward-shift coefficient recurrence would give nonsummable coefficients for a nonzero such eigenvector of \(S^*\); for \(S\), equality in the contraction estimate would give an eigenvector of multiplication by \(w\) on \(H^2\). In particular \(L,L^*\) are injective with dense ranges.

## Completing the reflected and real parts

For the central component use the real-axis part of the [theta-jet measures](XiJetDivisorMeasures.md). Explicitly, in terms of \(J=(X')^2/((X')^2-XX'')\) and \(b_j(t)=\min(1,\max(0,t-j))\), take the vague limits of \(b_j(|J(t)|)\epsilon|X'(t)|dt/(\pi(\epsilon^2+X(t)^2))\) on \(\mathbb R\) for \(j\ge0\). Define \(K_c\) as multiplication by \(1/t\) on the orthogonal sum of the corresponding \(L^2\) spaces. Locally at a real zero of order \(m\), \(J\) tends to \(m\) and the change of variable \(u=X(t)\) on the two half-intervals gives total mass one per layer \(j<m\). Away from zeros the compactly restricted densities vanish in the limit. This gives the critical divisor with its geometric multiplicities; its reciprocal ordinates are square summable. This construction and the model shift above use functions specified before inspecting the divisor.

Set \(K=K_c\oplus L\oplus L^*\). Reflection \(\rho\mapsto1-\bar\rho\) conjugates \(\lambda\), so these three determinants account for the complete divisor with its analytic multiplicities. The even genus-one product gives the stated normalized xi determinant. The direct summands are injective with dense ranges. The imaginary part is \(0\oplus V\oplus(-V)\). For any Hilbert–Schmidt competitor \(C\) with the same determinant, every finite selection of its generalized eigenspaces with positive imaginary eigenvalues has trace of its compressed \(\Im C\) equal to the sum of those imaginary parts with multiplicities, by invariance and finite-dimensional trace. That sum is at most \(\mathrm{Tr}(\Im C)_+\). The analogous bound holds for the negative part. Taking increasing finite selections proves \(\|\Im C\|_1\ge2D\) whenever this norm is finite. In particular the construction attains the infimum, including when it is positive.

If geometric multiplicity is also required off the line, replace \(B\) by its orthogonal layers: form the common inner factors of \(H,H',\ldots,H^{(j-1)}\), for \(H=(s-1)\zeta(s)\) with each derivative divided by \((s+2)^8\), and take the quotient of successive factors as in [the differentiated Hardy construction](XiHardyQuotient.md). Each simple layer has a complete family of eigenvectors and adjoint eigenvectors and supplies one copy per spectral point it contains. Its upper block has rank-one imaginary part with trace \(D_j\), and \(\sum_jD_j=D\). The direct sum is Hilbert–Schmidt: the sum of the diagonal squares is finite and the squared off-diagonal norms are bounded by \(4\sum_jD_j^2\le4D^2\). Both total trace-norm and exact determinant persist. The bound of two on the rank is for the single upper block and its adjoint. At a multiple off-line point that unsplit block has geometric multiplicity one; in the split version the rank bound is two per nonzero layer.

## A critical-line arithmetic formula for the obstruction

In half-plane coordinates let \(b(x)=|B((1-x)/(1+x))|\). Removing the pure inner factor from \(f\) and taking the Poisson mean of the outer logarithm gives
\[
 -\log b(x)=\frac{x}{\pi}\int_\mathbb R\frac{\log|f(it)|}{x^2+t^2}\,dt-\log|f(x)|.
\]
The Blaschke formula for the same expression is \(\sum_{\Re d_\rho>0}m_\rho\log|(x+\bar d_\rho)/(x-d_\rho)|\), \(d_\rho=\rho-1/2\). Its derivative at zero is \(2D\), by absolute domination of the large ordinates by a constant times \(m_\rho/|d_\rho|^2\) near zero. Since \(f\) is real and nonzero at the origin, \(\log|f(it)/f(0)|=O(t^2)\) there. The Hardy boundary logarithm is integrable with weight \((1+t^2)^{-1}\) and the finite-order boundary zeros only give locally integrable logarithms. Subtract the Poisson mean of the constant and take \(x\downarrow0\):
\[
 2D=\frac1\pi\int_\mathbb R\frac{\log|f(it)/f(0)|}{t^2}\,dt
       -\frac{f'(0)}{f(0)}.                                               \tag{1}
\]
Thus the exact trace defect can be read on the critical line. Proving the opposite of the already obtained inequality \(D\ge0\) requires an independent estimate. This differentiation is related to the [Balazard–Saias–Yor Jensen formula](https://denisevellachemla.eu/transc-Balazard-Saias-Yor-1999.pdf).

## A decreasing sequence of arithmetic upper bounds

Write \(g(w)=f((1-w)/(1+w))\) and set \(h(w)=(1-g(w)/g(1))/(1-w)\). The functions \(g,h\) are bounded and analytic in the disk. Near \(w=1\) this follows by holomorphic extension and \(g(1)\ne0\). For each \(n\ge1\) define
\[
 E_n=\min_{\deg p<n}\|h-gp\|_{H^2}^2 .
\]
Then \(E_n\downarrow D\). In particular the statement that for every \(\varepsilon>0\) some polynomial \(p\) satisfies \(\|h-gp\|_{H^2}^2<\varepsilon\) is equivalent to self-adjointness of the exact determinant realization. Both inputs to the minimization are specified by zeta before factorization.

To prove the limit, normalize the inner–outer factorization as \(g=BO\). The boundary reproducing kernel \(k_1^B(w)=(1-\overline{B(1)}B(w))/(1-w)\) belongs to \(\mathcal K\) with squared norm \(|B'(1)|\). Indeed the ordinary model kernels at real \(r\uparrow1\) have inner products \((1-\overline{B(r)}B(u))/(1-ru)\), which tend to \(B'(1)\overline{B(1)}\) as \(r,u\uparrow1\) by analytic extension and unimodularity; hence the kernels are Cauchy in norm. Logarithmic differentiation of the Blaschke product gives
\[
 |B'(1)|=\sum_{\omega}m_\omega\frac{1-|\omega|^2}{|1-\omega|^2}
 =\sum_{\Re d_\rho>0}m_\rho\frac{\Re d_\rho}{|d_\rho|^2}=D .
\]
The summation is legitimate since the zeros accumulate only at \(-1\) and satisfy the Blaschke condition. Meanwhile
\[
 h-k_1^B=B\,\frac{\overline{B(1)}-O/g(1)}{1-w}\ \in BH^2.
\]
Here \(O\) is bounded, continues across 1 and has value \(g(1)/B(1)\) there. The closure of the polynomial multiples of \(g\) is \(BH^2\) by outerness. Orthogonal projection now proves the asserted monotone limit. In the constant-inner case the same proof has zero kernel and \(D=0\).

For a direct coefficient calculation write \(g(w)=\sum g_jw^j\). The coefficients of \(h\) are \(h_k=1-\sum_{j=0}^k g_j/g(1)\). In the usual sequence scalar product \(\langle u,v\rangle=\sum\overline{u_k}v_k\), let \(G_{ij}=\langle w^i g,w^j g\rangle\) and \(b_i=\langle w^i g,h\rangle\) for \(0\le i,j<n\). Linear independence makes \(G\) positive definite and \(E_n=\|h\|^2-b^*G^{-1}b\). All scalar products are over the full coefficient sequences. Truncating a sequence for a proposed upper certificate needs a bound on its omitted squared tail. A finite polynomial cannot yield zero residual: the identity \(1=g(w)(1/g(1)+(1-w)p(w))\) would make \(g\) rational, whereas the meromorphic continuation of \((s-1)\zeta(s)/(s+2)^8\) has infinitely many trivial zeros and is nonzero at \(s=1\). Thus strict positivity of every finite minimum is compatible with a zero limit.

## A self-adjoint determinant with a controlled error

Let \(A=\Re K\). On the upper block write \(L=A_++iV\). With \(F_+=\det_2(I-zL)\) and \(F_-=\overline{F_+(\bar z)}\), one has
\[
 \det_2(I-zA_+)=\tfrac12(e^{-iDz}F_+(z)+e^{iDz}F_-(z)).
\]
For finite compressions this follows by the affine dependence of the ordinary determinant on the rank-one update \(iV\) and the exponential trace correction. Compressing to the finite model spaces gives Hilbert–Schmidt convergence and trace-norm convergence for \(V\); hence it holds for the infinite determinants. The two reflected self-adjoint blocks both equal \(A_+\). Set \(T_0=3\cdot10^{12}\). The finite-height theorem and reciprocal-square tail bound give
\[
 D <\tfrac14(2.960\cdot10^{-12})=7.40\cdot10^{-13}.
\]
Indeed only zeros above \(T_0\) in absolute ordinate can enter, the right half contains exactly one of each reflected off-line pair, and \(0<\Re\rho-1/2<1/2\). This imports the published finite-height result, with its computation unreplayed here. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765) · [Two-sided tail bound and Lehman constants](XiSechProjectionTransport.md)

After cancelling the central determinant, the following quotient extends analytically throughout \(|z|<T_0\):
\[
 \frac{\det_2(I-zA)}{X(z)/X(0)}=\cos^2\vartheta(z),\qquad
 \vartheta(z)=-Dz+\frac{\log F_+(z)-\log F_-(z)}{2i},
 \qquad |\vartheta(z)|\le\frac{|z|D}{1-(|z|/T_0)^2}.
\]
The logarithms vanish at zero. The coefficient at degree \(k\) of the phase is \(-\sum m_\rho\Im(\lambda^k)/k\), with the regularization's linear term restored. Even degrees vanish by \(\lambda\leftrightarrow-\bar\lambda\); \(|\Im(\lambda^k)|\le k|\lambda|^{k-1}\Im\lambda\) bounds the odd terms. At \(|z|\le1.5\cdot10^{12}\) the phase modulus is \(<1.48<\pi/2\). Thus the self-adjoint part has exactly the xi zeros, with the same multiplicities, **through this disk**. Restricting away from its possible zero kernel gives a densely defined self-adjoint inverse with the same determinant. For \(|z|\le1\) the relative determinant error after cancellation is \(<5.48\cdot10^{-25}\), using \(|\sin w|\le\sinh|w|\). At zero the relative quadratic coefficient is exactly \(-D^2\); an all-plane identity would force \(D=0\).

## The additional real spectrum at all heights

For real \(t\), the upper determinant has no zeros. Continue its argument from zero along the whole real axis and put \(b(t)=-\vartheta(t)/\pi\). Write \(\rho=1/2+\sigma+i\gamma\) for right-half zeros, so \(\sigma>0\). Differentiating the regularized product and restoring its linear phase gives
\[
 \pi b'(t)=\sum_{\sigma>0}m_\rho\frac{\Im\lambda}{|1-t\lambda|^2}
          =\sum_{\sigma>0}m_\rho\frac{\sigma}{(t-\gamma)^2+\sigma^2}.
\]
On every bounded real interval the tail is dominated by a constant times the summable transverse trace; all finite terms have positive denominators. The derivative is therefore strictly positive at every real point if there is any off-line zero. In this case, besides the exact central divisor, the self-adjoint determinant has a zero of order **two** wherever \(b(t)\) crosses a half-integer, adding two to the existing order if there is a coincidence. Indeed the upper mean formula on the real axis gives \(\det_2(I-tA_+)=|F_+(t)|\cos(\pi b(t))\), with simple zeros at those crossings. For every \(R>0\), the number of added positive spectral ordinates in \((0,R]\), counted with multiplicities, is exactly
\[
 2\lfloor b(R)+1/2\rfloor,\qquad
 \pi b(R)=\sum_{\sigma>0} m_\rho\left(
 \arctan\frac{R-\gamma}{\sigma}+\arctan\frac{\gamma}{\sigma}\right).
\]
If \(D=0\) both sides vanish identically. Thus the parity of the real multiplicity of the self-adjoint determinant agrees with that of xi at **every** real ordinate, unconditionally. Each conjugate pair of right zeros contributes a total of one to \(b(+\infty)\), counting its common multiplicity once, by integrating its two Poisson kernels. This also distinguishes finite and infinite extra spectra. The formula describes the real spectrum of the operator constructed above; its definition takes no list of these crossings as input.

There is also an all-plane resolvent formula in the same arithmetic Hilbert space. Write \(V=v\otimes v\), with \(\|v\|^2=D\), and choose \(v=0\) on the zero space. Let \(m(z)\) be the integral of \((1-zs)^{-1}\) against the positive spectral measure of the self-adjoint \(A_+\) at \(v\). The finite rank-one determinant formula and its trace correction give, off the reciprocal spectrum of \(A_+\),
\[
 F_\pm(z)=\det_2(I-zA_+)\,(1\mp iz m(z))\,e^{\pm iDz}.
\]
Indeed finite orthogonal compressions of \(A_+\) converge in Hilbert–Schmidt norm, their compressed vectors converge in norm, and the resolvents converge locally in norm wherever the limiting inverse exists. Multiplication and insertion of the central determinant give
\[
 \frac{X(z)}{X(0)}
   =\det_2(I-zA)\big(1+z^2m(z)^2\big).
\]
The product extends across every real pole by the upper and lower determinant identities. In fact every nonzero eigenspace of \(A_+\) has dimension one and nonzero spectral weight at \(v\): any eigenvector orthogonal to \(v\) would also be a real-eigenvalue eigenvector of \(L\), contradicting its nonzero divisor. Thus the two copies of its simple determinant zero precisely cancel the double pole of the correction, leaving any central multiplicity intact. The scalar correction is identically one exactly when \(D=m(0)=0\). This expresses the entire discrepancy using one self-adjoint operator and one positive spectral measure, whose mass is the decreasing arithmetic approximation limit above.

The [Lean declarations](XiHardyDissipativePart.lean) verify the noncommutative Cayley identity, the reflected product, the scalar transverse trace and the bound for splitting positive trace across layers. The Hilbert-space results and (1) are manuscript proofs. External independent review is unrecorded.

The [finite Gram and polynomial controls](../../../scripts/verify_xi_dissipative_part.py) reproduce the determinant mean and trace exactly for four rational displacements, and compare five complex or real evaluations at 384 bits. Twenty full-coefficient Toeplitz minima agree exactly with independent interpolation calculations. For \(g(w)=w-1/3\) their limit is 2; the boundary-only and exterior-only examples have strictly positive minima with limit zero. The explicit two-sided tail majorant gives \(D<7.398519\cdot10^{-13}\) and a relative error on the unit disk below \(5.473808\cdot10^{-25}\).

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiHardyDissipativePart at 795ab9d13e2806cd38f239c8d014fc2bbcdd191a. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
