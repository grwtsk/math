# Arithmetic Hardy quotients with full xi multiplicities

Fix \(1/2\le a\le1\). The construction below uses scalar Hardy shifts, multiplication by regularized derivatives of \((s-1)\zeta(s)\), and orthogonal complements. It gives a densely defined closed operator with Hilbert–Schmidt inverse, exact xi determinant and the **geometric** as well as algebraic multiplicity at every nontrivial zero. Its natural Hilbert norm does not give a self-adjoint operator. There is an explicit bound for the norm of its imaginary part and no boundedly equivalent norm can make it normal. The [de Branges perturbation](XiDeBrangesRankOne.md) gives another exact determinant and an obstruction to bounded similarity. The construction here splits the multiple zeros into separate eigendirections by arithmetic differentiation.

## Specifying the spaces before examining their spectra

Write \(d=s-1/2,\ w=d/(d+2a)\). The disk is \(\Re s>1/2-a\), and \(s=1/2+2aw/(1-w)\). Put \(H(s)=(s-1)\zeta(s)\). For \(r\ge0\) use the bounded disk multipliers \(f_r(w)=H^{(r)}(s)/(s+2)^8\). They are specified by the ordinary Dirichlet series with its continuation, or by Euler–Maclaurin summation. For instance, Euler–Maclaurin through four Bernoulli corrections, started at one, gives polynomial growth of \(H\) on \(\Re s\ge-3/4\); to see the stated exponent eight, two corrections already suffice there: the remainder for zeta is bounded by a constant times \(|s(s+1)(s+2)(s+3)|\int_1^\infty t^{-\Re s-4}dt\). Multiplication by \(s-1\) costs one power. Cauchy's formula on fixed small circles gives the same polynomial exponent for each fixed derivative on \(\Re s\ge-1/2\). [Euler–Maclaurin representation, DLMF §25.2](https://dlmf.nist.gov/25.2)

In the usual \(H^2(\mathbb D)\) for \(j\ge1\) set
\[
 M_j=\overline{f_0H^2+\cdots+ f_{j-1}H^2}.
\]
These spaces are increasing. By Beurling each \(M_j=\theta_j H^2\) with an inner function determined up to phase. Define \(B_j=\theta_j/\theta_{j+1}\) for \(j\ge1\), \(\mathcal K_j=H^2\ominus B_j H^2\), \(S_j=P_{\mathcal K_j}M_w|_{\mathcal K_j}\). Constant factors give zero spaces. On the orthogonal sum use
\[
 T=\bigoplus_{j\ge1}T_j,\qquad T_j=\frac{i}{2a}(S_j^{-1}-I).
\]
Neither locations nor multiplicities of zeros are inputs to these definitions. For comparison define \(T_{\rm all}\) by the same rule with the single inner factor \(\theta_1\). [Beurling, *On two problems concerning linear transformations in Hilbert space*](https://doi.org/10.1007/BF02395019)

The analytic continuation of \(f_0\) is nonzero on every boundary arc away from \(w=1\): the boundary line is in \([-1/2,0]\) in real part, and the absence of zeta zeros on \(\Re s=0\) uses classical nonvanishing on \(\Re s=1\) and the functional equation. Its value at \(s=0\) is nonzero. Canonical factorization leaves at most a singular inner atom at \(w=1\). Such an atom would force exponential decay \(O(\exp(-c/(1-r)))\) on the radius \(r\uparrow1\) since the remaining bounded analytic factor is bounded by its boundary norm. There \(f_0\) decays only as a power, by the Dirichlet series at large real \(s\). Thus \(\theta_1\) is a pure Blaschke product, and so are its inner divisors. At an interior zero of \(H\) of multiplicity \(m\), the common inner factor of \(f_0,\ldots,f_{j-1}\) has order \((m-j+1)_+\). This follows by factoring all generators, taking the closure, and using closedness of vanishing of fixed Taylor jets at an interior point. The minimum analytic order is achieved by \(H^{(j-1)}\) if \(j\le m\), and by \(H^{(m)}\) otherwise. Hence \(B_j\) has simple zeros at precisely the transformed zeros of multiplicity at least \(j\). All nontrivial zeros lie in this disk, and none of the trivial zeros do.

## Norm and determinant

For a nonconstant inner factor \(B\) just constructed, put \(S=P_{\mathcal K}M_w|_{\mathcal K}\), \(\mathcal K=H^2\ominus BH^2\), \(b=|B(0)|>0\). There is no zero at \(s=1/2\), by the alternating eta series. The usual backward shift leaves \(\mathcal K\) invariant. Its restriction is \(S^*\) and \(SS^*=I-k_0\otimes k_0\) with \(k_0=1-\overline{B(0)}B\), \(\|k_0\|^2=1-b^2\). In particular \(S\) is onto. If \(w f\in BH^2\), then \(B(0)\ne0\) forces the quotient to vanish at zero, so \(f\in BH^2\); \(S\) is injective. Consequently
\[
 D=(S^{-1})^*S^{-1}-I=(SS^*)^{-1}-I\ge0,\quad
 \operatorname{rank} D=1,\qquad \mathrm{Tr}D=b^{-2}-1.                 \tag{1}
\]
Enumerate the zeros \(\omega_n\) of \(B\) for the purpose of *verifying* the construction, including repetitions for \(T_{\rm all}\). The successive differences of the nested model spaces for finite partial products are one-dimensional. Their normalized generators form an orthonormal basis: the orthogonal complement of the union in \(\mathcal K\) would be divisible by every finite partial product, hence by \(B\) by inner factorization. The adjoint compressed shift preserves each finite space, and acts on each one-dimensional successive quotient by \(\bar\omega_n\). This follows directly from the splitting \(K_{UV}=K_U\oplus U K_V\) and the reproducing kernel at the zero of a single Blaschke factor. The diagonal entries of \(S^{-1}\) in this basis are \(1/\omega_n\), by invertibility on the finite adjoint spaces. Therefore, summing the squared norms of the columns of \(S^{-1}-I\) yields
\[
 \|S^{-1}-I\|_2^2=\mathrm{Tr}D+2\sum_n(1-\Re(1/\omega_n))=b^{-2}-1.      \tag{2}
\]
Indeed \(1/\omega_n=1+2a/(\rho_n-1/2)\); the real parts in the sum are absolutely summable by the bounded zero strip and the classical \(O(U\log U)\) zero count. They cancel under \(\rho\leftrightarrow1-\rho\), which preserves every multiplicity layer. The two terms in (1)–(2) only involve scalar Hardy multiplication and arithmetic data.

For the full product, paired Hadamard factorization of the even function \(X(z)=\xi(1/2+iz)\) gives
\[
 b_{\rm all}^{-1}=\prod_\rho |1+2a/(\rho-1/2)|
 =\xi(1/2+2a)/\xi(1/2).
\]
Indeed each pair of centered arguments \(d,-d\) gives the modulus of \(1-(2a/d)^2\), and the even genus-one product has no residual exponential. Since \(\theta_1\) is a pure Blaschke product, \(b_{\rm all}=\prod_j|B_j(0)|\). The inequality \(\sum_j(v_j-1)\le\prod_j v_j-1\) for \(v_j\ge1\) now gives the exact layer norm and its upper bound
\[
 \|T\|_2^2=\frac1{4a^2}\sum_j(|B_j(0)|^{-2}-1)
 \le\|T_{\rm all}\|_2^2=\frac{(\xi(1/2+2a)/\xi(1/2))^2-1}{4a^2}.       \tag{3}
\]
If any multiple zero occurs, the inequality is strict. The source condition for equality is just \(M_2=H^2\).

On each layer the kernels at the zeros are complete (a vector orthogonal to all of them is divisible by the simple product \(B_j\)). The model conjugation \(f\mapsto B_j\bar w\,\bar f\) on boundary values gives the complete eigenvectors \(B_j(w)/(w-\omega_n)\) of \(S_j\); directly \(w B_j/(w-\omega_n)=B_j+\omega_n B_j/(w-\omega_n)\). Each nonzero spectral point of the compact \(T_j\) therefore has algebraic multiplicity one: its Riesz projection takes a dense span of eigenvectors into the corresponding one-dimensional span. The same argument on the direct sum gives precisely \(m_\rho\) independent directions at \(i/(\rho-1/2)\), with no generalized chains. Eigenvectors of both \(T\) and \(T^*\) span dense spaces and have nonzero eigenvalues; this implies that \(T\) is injective and has dense range. Its inverse on that range is closed and densely defined. The canonical eigenvalue product for the regularized determinant and the even paired Hadamard product now give, for every complex \(z\),
\[
 \det\nolimits_2(I-zT)=X(z)/X(0).
\]
The eigenvalues and their multiplicities were derived from the arithmetic generators of the spaces. The determinant agrees with the requested entire function without giving a self-adjoint inverse. [Classical xi product and zero symmetries, DLMF §25.10](https://dlmf.nist.gov/25.10)

## The imaginary part and the metric obstruction

For \(T_B=i(S^{-1}-I)/(2a)\), subtraction in (1) gives the trace-class identity
\[
 \Im T_B=\frac{D}{4a}-aT_B^*T_B.
\]
This in particular bounds the positive index of the imaginary part by one per layer. Its trace vanishes by (2). If \(\Im T_B=0\), then \(T_B\) has rank at most one. The first layer has infinitely many distinct eigenvalues, so the natural norm fails even if all the zeros lie on the line. The exact squared distance in Hilbert–Schmidt norm to the self-adjoint operators is
\[
 \|\Im T\|_2^2=\tfrac12\big(\|T\|_2^2-\xi''(1/2)/\xi(1/2)\big).
\]
This follows from \(\mathrm{Tr}\,T^2=-X''(0)/X(0)\) by differentiating the determinant, and expanding the square of the imaginary part. Equations (1)–(3) distinguish nonnormality of this realization from nonreal spectral points.

In fact the first-layer adjoint eigenvectors at close critical ordinates approach parallelism. For two distinct zeros \(\rho=1/2+it,\ \rho'=1/2+it'\), the modulus squared of the normalized reproducing-kernel overlap is \(1-|(\omega-\omega')/(1-\bar\omega'\omega)|^2=4a^2/(4a^2+(t-t')^2)\). The first layer contains all distinct critical zeros. The positive-proportion theorem for simple critical zeros and the zero count give distinct critical ordinates with gaps tending to zero: otherwise the number of such ordinates up to \(U\) would be \(O(U)\). Eigenvectors at distinct eigenvalues of a normal operator are orthogonal. An invertible bounded similarity cannot map normalized vectors approaching one another up to phase to orthogonal vectors with norms bounded below. This rules out bounded similarity to a normal operator even on the multiplicity-corrected direct sum. Removing the repeated-root chains solves one obstruction; a self-adjoint construction in an independently justified different completion remains open. [Bui, Conrey and Young, Theorem 1.1](https://arxiv.org/abs/1002.4127)

The orthogonal self-adjoint part \(A=(T+T^*)/2\) also fails the target determinant already in degree two: its \(z^2\) coefficient differs from that of \(X(z)/X(0)\) by \(-\|\Im T\|_2^2/2\). This uses \(\mathrm{Tr}(A^2)=\Re\mathrm{Tr}(T^2)+\|\Im T\|_2^2\). At \(a=1/2\) the unlayered squared Hilbert–Schmidt norm is \(0.04725547563661844\ldots\), and the squared distance to the self-adjoint part is \(0.00052274470289025\ldots\). The [320-bit interval checks](../../../scripts/verify_xi_hardy_quotient.py) evaluate the actual completed zeta and its second derivative, and independently compare the Gram-norm formula on nine finite examples.

## What happens when the Hardy boundary moves inside the critical strip

The first inner factor can be measured at any width \(0<a\le1\). Translate the disk center vertically to \(s_y=1/2+iy\), apply the same multiplier \(f_0\) with \(d=s-s_y\), and denote the modulus of its inner factor at zero by \(b(a,y)\). For the derivation choose \(y\) away from the ordinates of zeros. Finite boundary zeros still give no singular inner mass: on a neighborhood of each such point divide out the finite-order boundary polynomial, which is outer; the remaining analytic factor has nonzero extension there. The argument at \(w=1\) is unchanged. In particular the arithmetic value \(-\log b(a,y)\) can also be evaluated by the boundary mean of \(\log|f_0|\) minus its center value in logarithms. This is a Jensen calculation related to the [Balazard–Saias–Yor integral criterion](https://denisevellachemla.eu/transc-Balazard-Saias-Yor-1999.pdf).

Define \(E(a,y)=-\log b(a,y)-\log|\xi(s_y-2a)/\xi(s_y)|\). The genus-one product centered at \(s_y\) gives the log modulus of the second ratio as the sum over the **full** divisor of \(\log|1+2a/(\rho-s_y)|\). To see that the exponential terms cancel, the real part of \(\xi'/\xi(s_y)\) vanishes by critical-line reflection, and \(\sum_\rho\Re(1/(\rho-s_y))=0\) absolutely by reflection and the zero count. The inner factor selects exactly \(\Re(\rho-s_y)>-a\); points on the boundary have factor of modulus one. Thus
\[
 E(a,y)=\frac12\sum_{\rho=1/2-\sigma+i\gamma,\ \sigma>a}
 m_\rho\log\frac{\sigma^2+(\gamma-y)^2}{(2a-\sigma)^2+(\gamma-y)^2}.
\]
Every summand is positive. Vanishing at a width detects precisely containment of the divisor in the corresponding closed strip. Moreover the right derivative minus the left derivative of \(E\) at any \(0<\sigma<1/2\) is
\[
 \sum_{\rho=1/2-\sigma+i\gamma}\frac{2\sigma m_\rho}{\sigma^2+(\gamma-y)^2}.
\]
The one-sided derivatives pass through the sum by domination: for fixed allowed \(y\), large ordinates cost \(O_y((1+|\gamma|)^{-2})\) per copy, and only finitely many ordinates remain on a bounded interval. This works even if other horizontal distances accumulate at \(\sigma\). As a function of the vertical center \(y\), each nonempty jump has a meromorphic continuation with simple poles at \(\gamma\pm i\sigma\); normal convergence on compacta off these poles follows from the same bound. The upper-pole residue is \(m_\rho/i\). Hence the first-layer arithmetic boundary data resolve the height and multiplicity at every missed off-line point. Proving that no positive jump occurs at any positive distance would still require a new arithmetic estimate.

The [Lean module](XiHardyQuotient.lean) checks the scalar Cayley and paired-product identities, the order on successive layers, and the norm loss under splitting a finite product. The infinite-dimensional construction, spectral and norm assertions above are manuscript results. External independent review is unrecorded.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiHardyQuotient at c4c734b49615157725edee27b2d9270242dd455a. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
