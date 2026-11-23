# Shifted xi determinants and the two Hankel forms at zero shift

grwtsk contributors

The shifted de Branges operator has an unconditional, exact regularized determinant at every real shift \(a\ge 1/2\). Its inverse can be specified by division and evaluation of entire functions. The limit of the reproducing kernel after division by \(a\) identifies the two coefficient tests for the unshifted xi function. The positivity of that limit over the upper half-plane remains open. The mathematical consumer is the [independent operator problem](https://github.com/grwtsk/math/issues/1849).

## The shifted self-adjoint operator

Write \(X(z)=\xi(1/2+iz)\), with the usual entire completion and its functional equation. It is real entire, even, of order one, and \(X(0)>0\). Define
\[
 E_a(z)=X(z+ia)=\xi(1/2+a-iz),\qquad
 E_a^\#(z)=\overline{E_a(\bar z)}=X(z-ia),\qquad
 A_a=(E_a+E_a^\#)/2,\quad B_a=(E_a^\#-E_a)/(2i).
\]
For \(a\ge1/2\), \(E_a\) has no real zero and
\(|E_a(z)|>|E_a^\#(z)|\) in the upper half-plane. The zeros of \(A_a,B_a\) are simple, real and strictly interlace. These results include the endpoint. Lagarias gives both the modulus argument and its passage to the increasing boundary phase, together with the zero count and the de Branges spectral interpretation. [Lagarias, *Zero Spacing Distributions for Differenced L-Functions*, v2, Lemmas 2.1, 2.2, 6.1, Theorems 2.1, 3.1 and §6](https://arxiv.org/pdf/math/0601653v2).

Define \(\mathcal H(E_a)\) as the entire functions \(f\) with \(f/E_a,f^\#/E_a\in H^2(\mathbb C_+)\), equipped with squared norm \(\int_\mathbb R |f(t)/E_a(t)|^2\,dt\). On this space define
\[
 (T_af)(z)=\frac{f(z)-f(0)A_a(z)/A_a(0)}{z},
 \qquad H_a=T_a^{-1},\qquad D(H_a)=\operatorname{ran} T_a. \tag{1}
\]
Use the removable value at zero. Here \(A_a(0)=\xi(1/2+a)>0\), by the Euler factors and the positive continuous value at \(s=1\). All inputs of (1) come from \(\xi\).

To check the domain, let \(\Theta_a=E_a^\#/E_a\). Stirling's gamma ratio and \(\zeta(u)\to1\) give \(\Theta_a(iy)\sim (2\pi/y)^a\) as \(y\to+\infty\). Thus \(A_a(iy)/E_a(iy)\to1/2\). An upper half-plane \(H^2\) function has value \(O(y^{-1/2})\) at \(iy\) by Cauchy–Schwarz applied to its Cauchy integral. Consequently \(A_a\notin\mathcal H(E_a)\). The de Branges sampling theorem now gives a complete orthogonal family \(f_t(z)=A_a(z)/(z-t)\) for the real roots \(t\) of \(A_a\). The exceptional possibility in that theorem is exactly membership of \(A_a\) in the space. [de Branges, *Hilbert Spaces of Entire Functions*, 1968, Theorem 22, p. 55](https://www.math.purdue.edu/~branges/Hilbert%20Spaces%20of%20Entire%20Functions.pdf).

On this family (1) gives \(T_af_t=f_t/t\). Since \(A_a(0)>0\), its zero set has positive distance from zero. The diagonal action therefore extends boundedly and self-adjointly from this complete orthogonal family. Bounded point evaluation shows the extension agrees with (1) on all \(f\), first at \(z\ne0\), then at zero by removability. The extension is injective and its range contains the span of the family. The spectral theorem makes its inverse densely defined and self-adjoint with precisely the simple eigenvalues \(t\).

The zero count \(N_a(R)=O_a(R\log R)\) gives \(\sum_t |t|^{-2}<\infty\), so \(T_a\) is Hilbert–Schmidt. The genus-one product for the even entire function \(A_a\) pairs \(t,-t\); evenness eliminates its possible linear exponential. Consequently
\[
 \det\nolimits_2(I-zT_a)
 =\prod_{t>0}\left(1-\frac{z^2}{t^2}\right)
 =\frac{A_a(z)}{A_a(0)},\qquad
 \|T_a\|_{\rm HS}^2=-\frac{A_a''(0)}{A_a(0)}
 =\frac{\xi''(1/2+a)}{\xi(1/2+a)}. \tag{2}
\]
The trace formula follows by taking the coefficient of \(z^2\); the squared norm sums over both signs. This determinant realizes the symmetrically shifted xi function. Its spectrum includes the multiplicities of the shifted zeros.

## How small a shift admits this construction?

Let \(\delta=\sup_{X(\rho)=0}|\Im\rho|\le1/2\). For each \(a>\delta\) the strict upper half-plane inequality holds and \(E_a\) has no real zero. For \(0<a<\delta\) there is an upper half-plane zero of \(E_a\), which precludes the strict inequality. For \(a=\delta>0\) the strict comparison in the open upper half-plane still holds, while a zero attaining height \(a\) produces a common real zero of \(E_a,E_a^\#\).

Indeed the paired order-one product for \(X\) has no linear exponential since \(X\) is even. Use finite truncations invariant under conjugation and negation. For a zero \(\rho=u+iv\) of \(X\), the corresponding zero of \(E_a\) is \(u-i(a-v)\). After conjugate reindexing, its factor in the absolute quotient \(|E_a^\#/E_a|\) compares the distances from \(z\) to this point's reflection and to the point itself. For \(\Im z>0\) and \(v\le a\), the ratio is at most one, strictly below one for \(v<a\). Symmetric truncation cancels all normalizing constants. Retaining one strict factor as the product grows proves the strict bound in the limit, including when \(a=\delta>0\). Reflection symmetry ensures the existence of a zero with \(v<a\). At \(a\ge1/2\) the classical zero-free lines \(\Re s=0,1\) eliminate common real zeros.

Thus proving strict upper half-plane comparison at positive shifts tending to zero would already prove RH. Even the weaker assertion that \(A_{a_j}\) has only real zeros for a sequence \(a_j\downarrow0\) implies RH, since \(A_{a_j}\to X\) locally uniformly and Rouché's theorem preserves the zeros in a small disk around any off-real zero of \(X\). Conversely RH gives real shifted zeros for every \(a>0\) by the product argument. Taking \(a=0\) directly gives \(E_0=E_0^\#=X\) and zero reproducing kernel. This also explains the restriction on shift size in the original spectral construction. Suzuki studies an arithmetic realization of this shift family through canonical systems. [Suzuki, *A canonical system of differential equations arising from the Riemann zeta-function*, v2, §§1.2–1.3](https://arxiv.org/pdf/1204.1827v2).

For a finite check of the passage to zero shift, take the even real polynomial \(P(z)=((z-1)^2+1/16)((z+1)^2+1/16)\). It is strictly positive on the imaginary axis, and all four zeros have imaginary part of absolute value \(1/4\). Its symmetric shift at \(a=1/2\) is \(z^4-27z^2/8+425/256\). Its four roots are real and simple because their squares are \(27/16\pm\sqrt{19}/4>0\). Thus positivity on the imaginary axis and a real, simple divisor at this specific shift coexist with nonreal zeros at zero shift.

## The limiting kernel and the exact coefficient test

Use the analytic de Branges kernel expression for every \(a\), including shifts where its positivity has yet to be established,
\[
 K_a(z,w)=\frac{E_a(z)\overline{E_a(w)}
                 -E_a^\#(z)\overline{E_a^\#(w)}}
                 {2\pi i(\bar w-z)} .
\]
On compact subsets of \(\mathbb C_+\times\mathbb C_+\), Taylor expansion in \(a\) gives the locally uniform limit
\[
 \lim_{a\downarrow0}\frac{\pi}{a}K_a(z,w)
 =\frac{X'(z)\overline{X(w)}-X(z)\overline{X'(w)}}{\bar w-z}
 =:C(z,w).
 \tag{3}
\]
Where \(X(z)X(w)\ne0\), (3) equals \(X(z)\overline{X(w)}D(z,w)\) for
\[
 L=-X'/X,\qquad D(z,w)=\frac{L(z)-\overline{L(w)}}{z-\bar w}.
\]
The numerator and sign in (3) matter. Under RH, the paired Hadamard expansion gives \(D(z,w)=\sum_t m_t/((z-t)(\bar w-t))\) over distinct real zeros with multiplicities \(m_t\). The reciprocal-square tails converge normally, so this is a positive kernel. Conversely, if \(\rho\) is an upper half-plane zero of multiplicity \(m\), take \(z=\rho-i\epsilon\) with small \(\epsilon>0\). Then
\[
 \Im L(z)=-m/\epsilon+O(1),\qquad
 C(z,z)=|X(z)|^2\,\Im L(z)/\Im z<0.
\]
In particular a single negative diagonal value persists for \(K_a\) at all sufficiently small positive shifts. The argument also detects multiple zeros away from the critical line. It proves that upper half-plane diagonal nonnegativity of \(C\) alone is equivalent to RH.

To recover the exchange's coefficient data, define \(g(z^2)=X(z)/X(0)\) and \(p_k=-k[w^k]\log g(w)\) for \(k\ge1\) using the germ of the logarithm with value zero at the origin. Then \(L(z)=2\sum_{k\ge1}p_kz^{2k-1}\). Dividing the power series differences by \(z-\bar w\) shows that the coefficient at \(z^i\bar w^j\) in \(D\) is \(2p_{(i+j)/2+1}\) if \(i+j\) is even and zero otherwise. This expansion holds in any disk centered at zero of radius smaller than the distance to the nearest zero of \(X\). In a \(2n\)-dimensional section the even-even block is \(2(p_{i+j+1})_{i,j<n}\), the odd-odd block is \(2(p_{i+j+2})_{i,j<n}\), and the mixed blocks vanish. Thus the limiting analytic kernel recovers exactly both Newton forms. The finite parity identity and equivalence of positivity for each size are proved in [XiShiftedDeBranges.lean](XiShiftedDeBranges.lean). The [original xi Newton moment criterion](XiNewtonMomentHilbertPolya.md) supplies a separate Hamburger measure argument from all sizes to RH.

The operator, sampling, zero-divisor and locally uniform limit arguments above are analytic. The adjacent Lean module proves the finite matrix statements for any real sequence \(p_k\). The unshifted kernel positivity, independent inequality (M), and unshifted Hilbert–Pólya determinant remain unresolved.

The exact Lean source with SHA-256 `e71fc3ef2d05c6fb398e9d712a9ccbfdb9a036cd068c1db46e4ac7ce4e80376f` built with Lean 4.34.1 and passed a fresh kernel replay. Transitive axiom auditing of both theorems and both definitions found only `propext`, `Classical.choice`, `Quot.sound`. Independent mathematical review of the analytic synthesis is pending.

## What multiplicity survives the zero-shift limit?

For a Hermitian kernel let its negative index be the supremum of the numbers of strictly negative eigenvalues of its Gram matrices on finite sets of ordinary upper-half-plane points. Put \(m(\rho)=\operatorname{ord}_\rho X\), with value zero away from the divisor. For **every** \(a>0\) the expression above for \(K_a\), whether positive or indefinite, has negative index
\[
 \nu_-(K_a)=\sum_{\Im\alpha>0}
     \big[m(\alpha+ia)-m(\alpha-ia)\big]_+ . \tag{4}
\]
The difference of multiplicities matters when a zero of \(E_a\) and one of \(E_a^\#\) coincide. This formula concerns the kernel whose entries are evaluated from the original xi series. Its proof uses the divisor to identify the value of the index. The general relation between nonreal poles and negative squares belongs to generalized Nevanlinna and generalized Schur theory. [Dijksma, Langer, Luger and Shondin, factorization at a nonreal pole, 2000](https://research.rug.nl/en/publications/a-factorization-result-for-generalized-nevanlinna-functions-of-th-2/)

For the upper bound truncate the even paired product for \(X\) to the zeros with \(|\Re\rho|\le T\), keeping both signs and complex conjugates. This is finite because \(|\Im\rho|\le1/2\). These polynomials converge locally uniformly after the common normalization \(X(0)\), since the paired product converges absolutely on compacta. Vertical translation preserves \(\Re\rho\), so each truncation contains every possible cancellation above each included real coordinate. Its rational quotient \(\Theta=E^\#/E\) equals a unimodular constant times \(B/P\) for finite Blaschke products \(B,P\): cancel common factors and pair the remaining zeros with their reflected poles. The degree of \(P\) is the truncated sum in (4). Write \(k_0(z,w)=i/(z-\bar w)\) and \(k_U=(1-U(z)\overline{U(w)})k_0\). Then
\[
 P(z)\overline{P(w)}k_\Theta(z,w)=k_B(z,w)-k_P(z,w).
\]
For one Blaschke factor its kernel is positive of rank one by substitution, and \(k_{UV}=k_U+U(z)\overline{U(w)}k_V\). Hence \(k_B\) is positive and \(k_P\) is positive of rank at most \(\deg P\). Multiplication by the outer evaluation factors transfers the bound to the polynomial \(K_a\) wherever division is defined, and continuity extends it to all samples. For finite right side in (4), pass to the limit on each fixed Gram matrix using continuity of Hermitian eigenvalues. An infinite right side needs only the lower bound.

Select finitely many upper points in (4) with positive differences \(d_j\). Divide both \(E_a,E_a^\#\) by the common polynomial \(\prod_j(z-\alpha_j)^{m(\alpha_j-ia)}\). At \(\alpha_j\) the resulting first function vanishes to order \(d_j\) and the second is nonzero. Evaluate the resulting kernel and its mixed derivatives of orders \(0,\ldots,d_j-1\) at each center. The whole positive term from the first function vanishes. The negative term is strictly negative definite: multiplication by the nonvanishing second function is triangular and invertible on each jet, and the underlying Cauchy kernel has strictly positive jet Grams. Indeed
\[
 k_0(z,w)=\int_0^\infty e^{izt}\overline{e^{iwt}}\,dt .
\]
Its jet vectors are nonzero multiples of \(t^k e^{i\alpha_jt}\). A vanishing combination is identically zero, and its Laplace transform has distinct poles whose principal parts recover every coefficient. Finite differences at distinct nearby points approximate the jets; for sufficiently small spacing their Gram matrix is still strictly negative after the invertible finite difference change of basis. Choose the points off the common divisor and restore the canceled factors by diagonal congruence. This produces \(\sum_j d_j\) negative squares on ordinary point samples. Exhaustion proves (4).

Write \(M_+=\sum_{\Im\rho>0}m(\rho)\). Then \(\nu_-(K_a)\to M_+\) as \(a\downarrow0\), allowing \(+\infty\). It is always bounded above by \(M_+\). For any fixed finite selection of upper zeros \(\rho_j\), all sufficiently small \(a>0\) leave \(\rho_j-ia\) in the upper half-plane and \(\rho_j-2ia\) in a punctured zero-free neighborhood of \(\rho_j\). Their contributions to (4) then equal their full multiplicities. If \(M_+\) is finite, equality holds for all sufficiently small positive shifts.

In contrast, the limiting kernel \(C\) in (3) has index exactly the number of **distinct** upper zeros. To obtain the upper bound for \(D\), take the divided difference of the logarithmic derivative in its paired Hadamard expansion. A real zero contributes a positive rank-one term. A conjugate pair contributes \(m(uv^*+vu^*)\) on each finite sample, where \(u(z)=1/(z-\rho)\), \(v(z)=1/(z-\bar\rho)\). This form has at most one negative direction since it is half the difference of the positive outer products of \(u+v\) and \(u-v\), times \(m\). Convergence follows from the reciprocal-square sum. Congruence by \(X\), then continuity at exceptional points, gives the bound for \(C\). For the reverse bound choose distinct upper zeros \(\rho_j\) and sample at \(z_j=\rho_j-i m(\rho_j)\epsilon\). All samples avoid zeros for small \(\epsilon>0\). The pole residues give
\[
 \epsilon D(z_j,z_k)\longrightarrow -2i/(\rho_j-\bar\rho_k).
\]
This limiting matrix is strictly negative by the preceding exponential Gram argument. Congruence gives the same number of negative directions for \(C\) on these samples. The result explains precisely which multiplicity information can disappear on taking the confluent kernel limit. For example \(X(z)=(z^2+1)^2(z^2+9)^3\) has index five at shift \(1/3\), one at shift \(1\) after a cancellation at \(2i\), and two for \(C\). This polynomial tests (4) and the collision rule; it does not estimate the index for xi. Formula (4) and these index limits are manuscript results.

For the preceding polynomial, on the ten sample points \(5i,\ldots,14i\), rational Hermitian elimination gives inertias \((5,5,0)\) for \(K_{1/3}\), \((3,1,6)\) for \(K_1\), and \((2,2,6)\) for \(C\), ordered as positive, negative, zero. For \(K_a\) one may discard the positive common \(2\pi\) normalization. A separate cancellation example has \(X_0=(z^2+1)(z^2+9)\). At \(a=1\) the two functions are \(z(z^2+4)(z\pm4i)\). The reduced quotient is \((z-4i)/(z+4i)\); its kernel is positive of rank one even though both original functions vanish at \(2i\). Thus a test using only positivity of one shifted kernel must account for common zeros.
