# The self-adjoint Hardy determinant from four xi evaluations

Let \(Y(d)=\xi(1/2+d)/\xi(1/2)\) and \(X_0(z)=Y(iz)\). For \(1/2\le a\le1\), let \(T_a=i(S^{-1}-I)/(2a)\) be the **single-inner-factor** arithmetic operator of the [Hardy quotient construction](XiHardyQuotient.md). Its determinant is \(X_0\). On its usual Hilbert space \(A_a=(T_a+T_a^*)/2\) is compact, self-adjoint and Hilbert–Schmidt. Its entire regularized determinant has the following expression. Set \(v_\pm=(iz\pm\sqrt{4a^2-z^2})/2\), and put
\[
 U=Y(v_+-a)Y(v_-+a),\qquad V=Y(v_--a)Y(v_++a).
\]
Then
\[
 \det\nolimits_2(I-zA_a)=\mathcal F_a(z)
 =\tfrac12(U+V)+a\,\frac{U-V}{v_+-v_-}.                               \tag{1}
\]
At a coincident root the divided difference is taken by continuity. The right side continues to all complex \(a,z\), is even in each variable, and \(\mathcal F_0=X_0\). In particular the real-rooted determinants at \(1/2\le a\le1\) connect analytically to xi. Preservation of real-rootedness down to zero remains the mathematical obstacle.

## Finite disk model and two boundary conditions

For the proof, take a finite nonempty multiset of centered zeros \(d_\nu=\rho_\nu-1/2\) closed under complex conjugation and negation, retaining all multiplicities for the selected orbits. Put
\[
 Y_N(s)=\prod_\nu(1-s/d_\nu),\quad
 \omega_\nu=d_\nu/(d_\nu+2a),\quad Q(w)=\prod_\nu(1-\bar\omega_\nu w).
\]
These are verification devices. The infinite operator is defined by the multiplier \((s-1)\zeta(s)/(s+2)^8\), before any finite divisor is used. The finite model space consists of \(p(w)/Q(w)\) with \(\deg p<N\). This follows from the one-factor kernels and the orthogonal product splitting \(K_{BC}=K_B\oplus B K_C\), including repeated factors. Write \(P_0=\prod(1-w/\omega_\nu)\), \(Q_1=Q/[w^N]Q=\prod(w-1/\bar\omega_\nu)\). In these polynomial coordinates one has
\[
 S_N^{-1}p=(p-P_0p(0))/w,\qquad (S_N^{-1})^*p=wp-Q_1[w^{N-1}]p .
\]
For the first identity multiplication by \(w\) recovers \(p\) modulo the inner ideal. For the second, in actual disk functions \(S^{-1}f=S^* f-\langle f,k_0\rangle h/\theta(0)\) with \(h=(\theta-\theta(0))/w\) and \(k_0=1-\overline{\theta(0)}\theta\). The compression of \(wf\) subtracts \(\langle f,h\rangle\theta\). Taking the adjoint of the inverse formula consequently subtracts only a constant from \(wf\) (choose \(\theta(0)>0\)). In numerator coordinates this is a multiple of \(Q\), necessarily the one that cancels the leading degree. No orthogonality of the polynomial coefficient basis is assumed.

Write \(c=iz/(4a)\), \(q(w)=cw^2+w-c\). For \(z\ne0\) with two distinct roots \(r,t\), \(rt=-1\). On polynomials of degree at most \(N+1\) compare the coefficients of
\[
 (p,\alpha,\beta)\longmapsto q p+cP_0\alpha-cwQ_1\beta .
\]
First put \(\alpha=p(0)+\alpha'\), \(\beta=[w^{N-1}]p+\beta'\). The rows of degree 0 and \(N+1\) then give \(c\alpha'\) and \(-c\beta'\). When \(\alpha'=\beta'=0\), the interior rows are the numerator of \(w(I-zA_{a,N})p\) read in degrees 1 through \(N\). Moving the constant row behind those \(N\) rows gives determinant \((-1)^{N+1}c^2\det(I-zA_{a,N})\). Second, in the output basis \(q,qw,\ldots,qw^{N-1},1,w\), of determinant \(c^N\), only the two remainders of the final columns modulo \(q\) contribute another determinant. Evaluation at \(r,t\) on remainders of degree at most one has determinant \(t-r\). The result is
\[
 \det(I-zA_{a,N})=(-c)^N
     \frac{tP_0(r)Q_1(t)-rP_0(t)Q_1(r)}{t-r}.                          \tag{2}
\]
This derivation tracks the endpoint signs and works with algebraic multiplicity and nongeneric choices of the finite zeros. The temporary restrictions on \(z\) disappear by continuation.

For \(w=r,t\) write \(d(w)=2aw/(1-w)\) and \(v(w)=d(w)+a\). The two values of \(v\) are the roots of \(v^2-izv-a^2=0\). The identity \((-c)(1-r)(t-1)=1\) follows from \(q(r)=0\) and \(rt=-1\). Hence the first product in (2), including \((-c)^N\), is \(Y_N(d(r))Y_N(d(t)+2a)\). Indeed one divides each factor by \(1-r\) or \(t-1\), uses conjugation invariance, and finally the evenness of \(Y_N\). The second product is the same with \(r,t\) interchanged. The weights are
\[
 t/(t-r)=1/(1+r^2)=\tfrac12+a/(v(r)-v(t)),\qquad -r/(t-r)=1-t/(t-r).
\]
This proves the finite version of (1). The finite real part has trace zero by negation symmetry of the original centered reciprocals, so its ordinary and regularized determinants agree.

## Passage to the arithmetic operator and motion at zero width

Choose increasing finite products exhausting the disk inner factor. The adjoint model shift leaves their model spaces invariant. Its restriction is invertible in each finite space and hence the adjoint inverse restricts there as well. The finite \(A_{a,N}\) therefore coincide with the orthogonal compressions of \(A_a\), and converge in Hilbert–Schmidt norm after extension by zero, since the projections increase strongly to the identity. Their regularized determinants converge locally uniformly. On the function side the symmetric partial Hadamard products converge locally uniformly to \(Y\), by the order-one product and its evenness. This proves (1) on its full disk-model range.

The apparently multivalued terms in (1) are a symmetric entire function of the two roots \(v_+,v_-\). The antisymmetric numerator is divisible holomorphically by their difference (expand about their midpoint). The resulting symmetric Taylor series involves only even powers of that difference, proving the joint continuation even at coalescence. Reversing \(a\) exchanges \(U,V\); negating \(z\) negates the roots as an unordered pair and uses the evenness of \(Y\). At \(a=0\) the roots are \(0,iz\) and both products specialize to \(X_0(z)\). At all real widths strictly greater than the supremum of the horizontal displacements of the zeros, the same pure-inner-factor proof applies for \(0<a\le1\). At equality the real-zero property follows by locally uniform limits (the value at zero is one). Continuing the four evaluations below that threshold still defines an entire function; the disk construction there omits the escaped factors.

For fixed \(z\ne0\), the root near \(iz\) is \(iz+a^2/(iz)+O(a^4)\), the other \(-a^2/(iz)+O(a^4)\). Taylor expansion in (1) yields the first width derivative
\[
 \left.\partial_{a^2}\mathcal F_a(z)\right|_{a=0}
 =-\tfrac12X_0''(z)+X_0'(z)/z-\tfrac12 X_0''(0)X_0(z).
\]
There is a removable value at \(z=0\). At a real zero \(t\) of order \(m\), the local splitting is explicit:
\[
 a^{-m}\mathcal F_a(t+a u)\ \longrightarrow\
 \frac{X_0^{(m)}(t)}{m!}\,\frac{(u+i)^m+(u-i)^m}{2}
\]
locally uniformly in \(u\). The two near-\(it\) arguments in (1) differ from \(i(t+au)\) by \(\pm a+O(a^2)\); their partner arguments tend to zero and both weights tend to \(1/2\). The limiting roots are the \(m\) distinct real cotangents \(\cot((2k-1)\pi/(2m))\), \(1\le k\le m\). Rouché's theorem on disjoint small disks about them gives one simple root of the scaled determinant in each; conjugation makes these actual roots real for small positive real widths. This shows why finite checks near already verified real zeros leave the global question open. A nonreal zero persists near its initial position by the same local-uniform convergence.

A two-point control illustrates the limitation of continuation. For \(Y(d)=1-d^2/b^2\), real \(b>0\), the original spectral pair lies at \(\pm ib\). Formula (2), or the trace and squared-norm relations for the two-dimensional model, give \(\mathcal F_a(z)=1-(a^2-b^2)z^2/b^4\). Every width \(a>b\) gives real roots and \(a=0\) recovers the nonreal pair. This test concerns the continuation argument only. The actual \(\xi\) has no such imaginary-axis pair.

The [Lean module](XiHardyFourPoint.lean) proves the two-boundary determinant, endpoint and normalization identities, the change of interpolation weight, and the invariant in the two-point test. The infinite determinant and root-splitting assertions are manuscript results. The [finite Gram and arithmetic checks](../../../scripts/verify_xi_hardy_four_point.py) compare (1) against actual matrix determinants and evaluate the expression on completed zeta. External independent review is unrecorded.

At 384 bits, 70 companion-matrix comparisons and 42 independent reproducing-kernel Gram comparisons passed, including 20 companion evaluations at the removable double-root parameters. The arithmetic expression had certified sign changes in three disjoint rational intervals of width \(2^{-42}\) for each of the two widths. The lowest sampled sign change occurred near 13.967468336897 at \(a=1/2\) and 13.412046064973 at \(a=1\). These brackets certify existence; the finite grid gives no count of zeros between the brackets.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiHardyFourPoint at 626cbd94cf9329504c7a68d318bf2f40b199771c. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
