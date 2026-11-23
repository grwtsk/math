# Counting nonreal xi zeros from integer samples in the Euler-product half-plane

Write \(X(z)=\xi(1/2+iz)\) and let \(\mathcal I\) be any increasing set of positive integers with \(\sum_{n\in\mathcal I}1/n=\infty\). The primes alone suffice. Put
\[
 \ell_n=\frac{\xi'(n+1/2)}{\xi(n+1/2)},\qquad
 C_{nm}=\frac{\ell_n+\ell_m}{n+m}.
\]
The supremum of the negative inertia of finite principal submatrices of \(C\) on **every tail** of \(\mathcal I\) equals the number of distinct upper-half-plane zeros of \(X\), with infinity allowed. Thus each off-critical four-element symmetry orbit contributes two negative directions, irrespective of the common zero multiplicity. The entries involve only real gamma values and absolutely convergent prime series. Explicitly, for \(s=n+1/2\),
\[
 \ell_n=1/s+1/(s-1)-\tfrac12\log\pi+
 \tfrac12\psi(s/2)-\sum_{j\ge2}\Lambda(j)j^{-s}.
\]
Here \(\psi\) is the logarithmic derivative of gamma. A shifted version below counts pole multiplicities. The arithmetic formulas defining the matrices use no zero list. Their signatures are identified by divisor arguments.

## The central count

Let \(A\) be the set of distinct zeros of \(X\), including both signs, and \(m_a\) their multiplicities. The strip theorem gives \(|\Im a|<1/2\), and \(\sum_A m_a/(1+|a|^2)<\infty\) by the zero-counting estimate. Write \(v_z(a)=\sqrt{m_a}/(a-z)\) and \((Jv)(a)=v(\bar a)\) on \(\ell^2(A)\). The even paired Hadamard product of \(X\) gives the polarized identity
\[
 \frac{h(z)-\overline{h(w)}}{z-\bar w}
 =\sum_{a\in A}\frac{m_a}{(a-z)(a-\bar w)}
 =\langle v_z,Jv_w\rangle,\qquad h=-X'/X .
\]
The differentiated pair at \(a,-a\) cancels the possible constant in the logarithmic derivative, and the displayed divided difference is absolutely summable. The inner product is linear in the first entry. At \(z=in\) one has \(h(in)=i\ell_n\). Each real zero contributes a positive coordinate for \(J\); each distinct conjugate pair contributes a two-dimensional swap with exactly one negative square. This proves the upper bound for the sampled inertia. [Paired entire-function product and strip](XiCuspReciprocalSlices.md) · [Earlier single-point Pick bounds for the squared-variable function](XiThetaSignedHalfPlane.md)

The sample vectors span a dense subspace. If a vector is perpendicular to their span, its coefficients give a Cauchy transform \(F(z)=\sum_a c_a\sqrt{m_a}/(a-z)\) vanishing at the sample points. The series converges locally uniformly away from the poles by Cauchy–Schwarz. On \(\Im z>1\), \(|a-z|>1/2\) and \(1+|a|\ll(1+|z|)|a-z|\), so \(|F(z)|\ll\|c\|_2(1+|z|)\). Thus \(F(z)/(z+2i)^2\) is bounded analytic there. The sample zeros \(in\) violate the half-plane Blaschke condition because \(\sum 1/n\) diverges even after deleting a finite prefix. Bounded analytic zero-set uniqueness gives \(F=0\); meromorphic continuation and the residues give \(c_a=0\) for each \(a\). For each finite-dimensional negative subspace of \(J\), approximate a basis simultaneously by finite linear combinations of the sample vectors. Strict negative definiteness persists by continuity of the finite Gram matrix. The index of a real symmetric matrix is the same over the real and complex scalars, proving the claimed count.

## A finite shift retains multiplicities

Fix \(\omega>0\), choose a tail where \(n+1/2-\omega>1\), and define
\[
 r_\omega(n)=\frac{\xi(1/2+n-\omega)}{\xi(1/2+n+\omega)},\qquad
 P_{nm}(\omega)=\frac{1-r_\omega(n)r_\omega(m)}{n+m}.
\]
Every entry uses two ordinary Euler products on their half-plane of absolute convergence. The supremum of the sampled negative inertias equals
\[
 D(\omega)=\sum_{\Im a>\omega}
     \big(m_a-m_{a-2i\omega}\big)_+,                                      \tag{1}
\]
where the sum is over distinct zeros and an absent multiplicity is zero. The subtraction matters if two zeros lie on the same vertical line at separation \(2\omega\). Outside the countable set of such positive half-separations, (1) is the full multiplicity count above \(\Im a=\omega\). Along *any* sequence \(\omega\downarrow0\), \(D(\omega)\) tends to the number of upper-half-plane zeros with multiplicity. For any fixed finite list of them, eventually their shifts clear zero and avoid all cancellations, by local isolation of the divisor; the total multiplicity is always an upper bound.

For the proof, set \(E(z)=X(z+i\omega)\) and \(\Theta(z)=X(z-i\omega)/E(z)\). At \(in\) the functional equation gives \(\Theta(in)=r_\omega(n)\). The paired product gives a quotient \(\Theta=U/V\) of coprime Blaschke products up to a unit scalar. To see the factorization directly, truncate the paired zeros in conjugation-stable finite sets. For each zero \(b\) of the truncated \(E\), its contribution to \(E^\#/E\), normalized at zero, is \((b/\bar b)(z-\bar b)/(z-b)\). It is a normalized upper-half-plane Blaschke factor or its inverse, according to the half-plane of \(b\); real factors cancel. For \(z\) in a fixed compact set and large \(|b|\) the difference of this factor from one is \(O_{z,\omega}(|b|^{-2})\), because \(|\Im b|\) is bounded. The separation into two convergent products and subsequent cancellation are therefore legitimate. \(E(0)=\xi(1/2+\omega)>0\) fixes the normalization. The denominator degree is exactly (1). This uses the general relation of generalized Schur functions and negative squares in an explicit xi factorization. [Bolotnikov, Kheifets and Rodman, *Functions with Pick matrices having bounded number of negative eigenvalues*](https://arxiv.org/abs/math/0206153) · [Suzuki's shifted quotient and its inner-function criterion](https://arxiv.org/pdf/1204.1827v2)

Write \(K_B=H^2\ominus B H^2\) in the upper half-plane and let \(Q_B\) be its orthogonal projection. With Hardy kernel \(k(z,w)=i/(z-\bar w)\), the kernel of \(Q_U-Q_V\) is \((V(z)\overline{V(w)}-U(z)\overline{U(w)})k(z,w)\). Thus its matrix on the Hardy evaluation kernels at \(in\) is diagonally congruent to the sampled \(P(\omega)\). No pole lies at a sample. The negative index is at most \(\dim K_V=\deg V\). Conversely, take finitely many zeros of \(V\), including their derivative evaluation kernels through order one less than the respective multiplicities. They span a space of that total dimension in \(K_V\), by polynomial jet interpolation after dividing by a sufficiently high power of \(z+i\). On this subspace the form is \(-\|M_U^*f\|^2\), where \(M_U\) is multiplication by \(U\). Its adjoint acts triangularly on each selected jet chain with diagonal \(\overline{U(b)}\ne0\), so the form is strictly negative. The kernels at the sample points themselves have dense span in \(H^2\) by the same Blaschke zero-set uniqueness, now for Hardy functions. Approximating the jet spaces proves (1), also when \(\deg V=\infty\).

Entrywise, \(P_{nm}(\omega)/(2\omega)\to C_{nm}\). This confluence explains why the pole order in the logarithmic derivative loses repeated multiplicity. The argument for \(C\) above identifies its exact index directly, without interchanging an index supremum with a limit.

## An unconditional obstruction for every fixed order

Fix \(k\ge1\) and \(B>1\). There exists \(N_0(k,B)\) such that for **all** \(N\ge N_0\), every set of at most \(k\) distinct real samples in \([N,BN]\) gives a positive definite \(P(\omega)\) for \(0<\omega\le1/2\), and a positive definite central \(C\). Thus passing a bounded-order test on increasingly remote intervals of fixed multiplicative width is unconditional, simultaneously for all these shifts. A negative eigenvalue on such remote intervals requires growing order, or a choice of windows whose multiplicative width grows.

Here the data formulas extend to a real sample \(u\) by replacing \(n\) with \(u\). Write \(u=Nx\), \(1\le x\le B\), \(L=\log(N/(2\pi))\), and \(d=e^{-\omega L}\). On a fixed bounded complex neighborhood of \([1,B]\) inside \(\Re x>0\), uniformly for \(0\le\omega\le1/2\), the logarithmic derivative of the gamma factor, the rational prefactor and the exponentially converging Euler series yield
\[
 \log r_\omega(Nx)=-\omega(L+\log x)+O_B(\omega/N).
\]
Indeed integrate \(-\xi'/\xi\) from \(Nx+1/2-\omega\) to \(Nx+1/2+\omega\); its integrand is \(-\tfrac12\log(Nx/(2\pi))+O_B(1/N)\). The logarithm uses the right-half-plane branch. For \(\omega>0\) the kernel \(N P_{Nx,Ny}(\omega)/(1-d^2)\) is therefore \(1/(x+y)+O_B(1/L)\) on a slightly smaller complex product neighborhood. Indeed \(x^{-\omega}y^{-\omega}-1=O_B(\omega)\) there and \(\omega d^2/(1-d^2)\le1/(2L)\). At zero shift take \(NC_{Nx,Ny}/L\) and the same estimate follows by taking the limit. Cauchy's inequalities give all mixed derivatives through any fixed order with constants depending only on \(k,B\).

For clarity about nearly colliding samples, change the trial basis by taking the successive divided differences at the initial strings of nodes \(x_1, (x_1,x_2),\dots,(x_1,\ldots,x_r)\), \(r\le k\). This is an invertible congruence for distinct ordered nodes. After applying the divided differences in each variable, the error remains \(O_{k,B}(1/L)\) by the derivative estimate and the divided-difference mean value bound. The transformed limiting Cauchy matrix is the Gram matrix of the divided differences of \(e^{-xs}\) in \(L^2(ds)\) on \(0<s<\infty\). It extends continuously to repeated nodes. Those vectors remain linearly independent everywhere on the closed ordered simplex: their Laplace transforms in \(s\) at parameter \(p>0\) are
\[
 \frac{(-1)^{j-1}}{\prod_{i=1}^j(p+x_i)},\qquad 1\le j\le r.
\]
After multiplication by the common denominator their numerators have distinct degrees. The continuous smallest Gram eigenvalue therefore has a strictly positive minimum on the simplex. Comparison proves the assertion, with no spacing condition on distinct samples. [Stirling and arithmetic shift estimates used for the modular resolvent](XiCuspHorizontalResolvent.md)

## The diagonal fails a Bernstein positivity test and resolves individual prime powers

Set \(S_{n,k}=(-1)^k\Delta^{k+1}\ell_n\) for forward difference \(\Delta\). With \(k=\lfloor 3n/2\rfloor\),
\[
 \frac{S_{n,k}}{\mathrm B(n,k+2)}\longrightarrow
 \frac4{21}\sqrt{2/5}-\sqrt{5/2}<0.                                              \tag{2}
\]
Consequently the logarithmic-derivative sequence fails complete alternation on every tail. A Bernstein-function representation of these samples would require all these differences to be nonnegative, by its positive Laplace representation. This fails even though positivity of the Cauchy matrices remains possible.

There is also a local arithmetic limit. For an integer \(q\ge2\), \(b\in\mathbb R\), and \(k=\lfloor(q-1)n+b\sqrt n\rfloor\),
\[
 \lim_{n\to\infty}\frac{S_{n,k}}{\sqrt n\,\mathrm B(n,k+2)}
 =\frac{\Lambda(q)}{\sqrt{2\pi(q-1)}}\exp\!\left(-\frac{b^2}{2q(q-1)}\right).      \tag{3}
\]
This recovers the amplitude of one prime-power contribution directly from the scalar samples. The value is zero at integers which are not prime powers.

To prove both formulas, differentiate the explicit expression for \(\ell_y\) at real \(y>1/2\). The Laplace integral of the trigamma function and the two rational terms give the continuous density \(u g(u)\), where
\[
 g(u)=\frac{e^{-u/2}}{e^{2u}-1}-e^{u/2}.
\]
The prime series contributes atoms of mass \(\Lambda(j)\log(j)/\sqrt j\) at \(u=\log j\). Integration in \(y\) over a unit interval and taking the remaining finite differences give the absolutely convergent identity
\[
 S_{n,k}=\int_0^1 x^{n-1}(1-x)^{k+1}g(-\log x)\,dx+
 \sum_{j\ge2}\frac{\Lambda(j)}{\sqrt j} j^{-n}(1-1/j)^{k+1}.
\]
Let \(k/n\to\alpha>0\). The normalized integral is a beta expectation concentrating at \(x_*=(1+\alpha)^{-1}\). It tends to \(g(-\log x_*)\). For justification at the endpoints, \(|g(-\log x)|\ll x^{-1/2}+(1-x)^{-1}\); the second moment of this bound is bounded uniformly as \(n\to\infty\) by the beta integral with parameters reduced by one or two. The concentration and uniform integrability suffice.

Off any neighborhood of \(x_*\), the function \(\log x+\alpha\log(1-x)\) is separated from its maximum. Stirling's formula for the beta denominator then suppresses all atomic weights there exponentially: reserve one factor \(j^{-1}\) to sum \(\Lambda(j)j^{-3/2}\), and maximize the remaining exponent with \((k+1)/(n-1)\to\alpha\). At \(x_*=2/5\) no reciprocal integer occurs in a sufficiently small neighborhood, giving (2). At \(x_*=1/q\), only the \(q\)-term can survive the extra normalization in (3). To evaluate it, divide the beta density at \(1/q\) by \(\sqrt n\). Stirling's formula around its maximizing point \((n-1)/(n+k)\), with a Taylor expansion of the log density, gives the limit
\[
 \sqrt{\frac{q^3}{2\pi(q-1)}}\,e^{-b^2/(2q(q-1))}.
\]
Indeed the displacement of \(1/q\) from that maximizing point is \(b/(q^2\sqrt n)+O(1/n)\), and the second derivative of the log density there is \(-nq^3/(q-1)+O(\sqrt n)\); the cubic remainder is \(O(n^{-1/2})\). Multiplying by the additional \(1/q\) in the atom and its weight gives (3).

## The string behind the admissible shifted samples

For \(\omega\ge1/2\), let \(m(t)>0\) be the arithmetic canonical-system coefficient, \(p=m^2\), \(q=m^{-2}\), \(c=\xi(1/2+\omega)\). The canonical-system boundary theorem gives \(M=\int q=\xi'(1/2+\omega)/c\) and \(\int p(v)\int_v^\infty q(u)du\,dv=\xi''(1/2+\omega)/(2c)\). On \(L^2(q\,du)\) the explicit kernel
\[
 G(s,u)=\int_0^{\min(s,u)}p(v)dv
\]
defines a positive trace-class operator. It factors as \(T^*T\), where \((Tf)(v)=\int_v^\infty f(u)q(u)du\) maps to \(L^2(p\,dv)\); the second identity is exactly its squared Hilbert–Schmidt norm. With \(A(z)=(E(z)+E^\#(z))/2\) and \(B(z)=i(E(z)-E^\#(z))/2\), one has
\[
 \det(I-z^2G)=A(z)/c,\qquad
 \langle(I-z^2G)^{-1}\mathbf1,\mathbf1\rangle=B(z)/(zA(z)).
\]
For the first identity, the \(j\)-th elementary symmetric coefficient of \(G\) is the integral of its Gram determinant over \(0<u_1<\cdots<u_j\). This follows by finite-rank approximation of the Hilbert–Schmidt factor and the exterior-power Gram formula. The Gram determinant of the nested indicators equals \(\prod_{i=1}^j\int_{u_{i-1}}^{u_i}p(v)dv\), with \(u_0=0\). These are exactly the iterated coefficients of the canonical Volterra equation (5.10) integrated from its constant limiting value \(c\); the trace bound gives absolute majorant \(\exp(|z|^2\operatorname{Tr}G)\). Alternatively, for the Weyl identity, subtract that equation at zero time from the one at time \(s\) to get \((I-z^2G)A_{\cdot}(z)=A(z)\mathbf1\), then integrate against \(q\) using (5.9). The family \(A_s(z)\) is uniformly bounded for fixed \(z\) by the boundary theorem. The quotient is understood at regular points with removable values taken by continuity. In the resistance coordinate \(x=M\int_0^s p\), pushing forward \(q\,du/M\) gives a probability measure and the unitarily equivalent kernel \(\min(x,y)\). [Howe, Huffman, Kohlmeyer and Kruer, November 7, 2026, Theorem 1.1 and (5.9)–(5.10)](https://hexagonmath.org/pdf/2611.00315v1) · [Finite-window ratio and its arithmetic normalization](XiCuspSignedHankel.md)

The normalized vector spectral transform for this probability measure is \(B(z)/(M z A(z))\). Independently of whether a positive string exists at a small shift, its scalar expression has the locally uniform meromorphic limit, away from poles,
\[
 \lim_{\omega\downarrow0}\frac{B(z)}{M z A(z)}
 =\frac{-X'(z)}{\kappa zX(z)},\qquad \kappa=\xi''(1/2)/\xi(1/2)>0,
 \qquad M=\xi'(1/2+\omega)/\xi(1/2+\omega).
\]
Indeed \(M=\kappa\omega+O(\omega^3)\), \(A=X+O(\omega^2)\), and \(B=-\omega X'+O(\omega^3)\) by evenness and Taylor expansion; the theta moment gives strict positivity of \(\kappa\). If all zeros are real, each positive ordinate \(\gamma\) contributes the elementary Stieltjes atom at \(1/\gamma^2\) of mass \(2m_\gamma/(\kappa\gamma^2)\) by the paired product. The mass retains the multiplicity that the central negative index cannot distinguish. At the admissible half-shift the positive string is unconditional; continuing its positivity to a sequence of shifts down to zero would resolve the central obstruction.

The shifted positive string accounts for an even average of two xi values. The central count instead derives from the actual unshifted logarithmic derivative. Proving that its integer-sampled forms have zero negative index at unbounded orders remains an RH-equivalent obligation.

## Finite arithmetic and cancellation checks

At 2,048-bit Arb precision all 24 elimination pivots were positive for the actual central matrix and for \(\omega=1/2,1/16,1/1024\), on both the first 24 primes and the consecutive integers 1000 through 1023. For the remote consecutive samples with \(\omega=1/1024\) the last pivot is between \(1.99792\times10^{-113}\) and \(1.99793\times10^{-113}\). Direct alternating sums also give \(-0.02636<S_{12,18}/\mathrm B(12,20)<-0.02634\), already excluding complete alternation. The evaluation uses real gamma, digamma, zeta and its first Taylor coefficient in the absolutely convergent half-plane.

Exact rational controls distinguish repeated zeros and exact cancellation. Let \(P_b(z)=((z-3)^2+b^2)((z+3)^2+b^2)\). For \(X=P_{3/8}^2\), the first twelve prime samples give central negative index two and shifted index four at \(\omega=1/8\). For \(X=P_{1/8}P_{3/8}\), the shifted negative index is zero at \(1/8\) by cancellation and four at \(1/16\). These controls use exact symmetric elimination and expose why a single exceptional shift can miss zeros above it.

## Verification scope

The [Lean component](XiIntegerPickInertia.lean) differentiates the displaced ratio and each pairwise entry, proves the finite Cauchy divided-difference identity, the swap-form signature identity, and the diagonal congruence for clearing a quotient kernel. The sampling, convergence, complete inertia, beta limits and string statements use the analytic arguments above.

At Lean source blob `148a8985c1174569944001a4d0719e3fc87a51df`, all six public declarations built and passed explicit fresh kernel replay. Their transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound` with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Independent external review has not been recorded.
