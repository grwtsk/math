# The low eigenvalues on divergent arithmetic samples

grwtsk contributors

Put \(X(z)=\xi(1/2+iz)\), \(L(u)=\xi'(1/2+u)/\xi(1/2+u)\). For a finite multiset of real nodes \(E\subset[s,\infty)\), \(s>1/2\), take the ordinary \(L^2(0,\infty)\) trial space spanned by \(t^h e^{-xt}\), \(0\le h<\operatorname{mult}_E(x)\). The polarized arithmetic Weil form there is obtained by differentiating \((L(x)+L(y))/(x+y)\) in the two node variables, and the metric by differentiating \(1/(x+y)\), with signs \((-1)^{h+k}\). Write \(\lambda_1(E)\le\cdots\le\lambda_n(E)\) for its generalized eigenvalues, \(n=|E|\) with repetitions. Let \(\kappa\) be the number, possibly infinite, of **distinct** zeros of \(X\) in the open upper half-plane. For every such sequence of arrays with \(\sum_E 1/x\to\infty\) and every fixed \(j\),
\[
 \lambda_j(E)\longrightarrow
 \begin{cases}-\infty & j\le\kappa,\\0 & j>\kappa,\end{cases}
 \qquad \lambda_{n-j+1}(E)\longrightarrow+\infty.                        \tag{1}
\]
The nodes may cluster or remain in a fixed bounded interval. If \(\kappa\) is finite, every sufficiently large array in the sequence has precisely \(\kappa\) negative eigenvalues and all the others are strictly positive. The scale required for this exact statement depends on the divisor. Repeating a single \(x>1/2\) gives the arithmetic Taylor sections below.

## Simultaneous approximation in time and at the divisor

For each distinct zero \(a\) write \(m_a\) for its multiplicity, \(A\) for their set, and \(Jd(a)=d(\bar a)\). Use the time space \(H=L^2(0,\infty)\). For a trial function with Laplace transform \(F(z)\) define \(Df(a)=\sqrt{m_a}F(ia)\). The polarized form and metric are
\[
 Q(f,g)=\langle Df,JDg\rangle,\qquad G(f,g)=\langle f,g\rangle .
\]
The [paired logarithmic derivative and the arithmetic formula for \(L\)](XiIntegerPickInertia.md) prove this first for single exponentials and then for jets by differentiation. In every fixed neighborhood of rates \(>1/2\) the summands for any finite jet order are bounded by a constant times \(m_a/(1+|\Re a|^2)\), a summable majorant by the zero count. Thus the divisor identity uses the same gamma, pole and Euler data as the arithmetic entries. Compare Bombieri's compact **physical support** negative-index theorem and the earlier inertia supremum over selected integer submatrices. Here the whole generalized spectrum at fixed index is tested along arbitrary moving arrays, in the ordinary time metric. [Bombieri, *Remarks on Weil's quadratic functional*, I, §§8–12](https://www.bdim.eu/item?fmt=pdf&id=RLIN_2000_9_11_3_183_0)

Choose an open interval of reference rates in \((s,2s^2)\). In \(H\oplus\ell^2(A)\) take the closed complex linear span \(\mathcal G\) of all \((e^{-vt},D e^{-vt})\) over these reference rates. It contains every \((0,d)\) supported on \(\Im a\ge0\). To prove this let \((h,c)\) annihilate the graph span. Using the inner product linear in the first entry, one gets
\[
 \int_0^\infty e^{-zt}\overline{h(t)}\,dt
       =-\sum_a\frac{\overline{c_a}\sqrt{m_a}}{z+ia}
\]
initially at the real reference rates. The sum continues meromorphically with locally normal convergence off its discrete poles by Cauchy–Schwarz and the above summability. The left side is holomorphic on \(\Re z>0\) and bounded by \(\|h\|/\sqrt{2\Re z}\). The identity theorem forces each residue at an interior pole to vanish. At a boundary pole \(z=-ia\), multiply by \(\epsilon\) on the radius \(z=-ia+\epsilon\) and take \(\epsilon\downarrow0\); the same bound again forces a zero residue. Therefore \(c_a=0\) for every indicated \(a\). Taking the double orthogonal complement proves the graph assertion. At a lower-half-plane zero the Laplace evaluation is a bounded functional of \(f\in H\); a pure coordinate there with zero time component cannot occur. Under RH the whole graph is dense in \(H\oplus\ell^2(A)\), since the time components alone also have dense span by Laplace uniqueness.

For any \(j\) choose distinct reference exponentials, giving a positive definite time Gram. Subtract all their graph coordinates on \(\Im a\ge0\) by the preceding assertion. This gives a \(j\)-dimensional comparison space in \(\mathcal G\) with the same time Gram and identically zero Weil pairing. If \(j\le\kappa\), choose \(j\) distinct upper zeros. The lower-side evaluation matrix of those reference exponentials at the \(j\) conjugates is invertible by the Cauchy determinant (the multiplicity square roots are nonzero row factors). Add upper coordinates equal to \(-M\) times the corresponding lower coordinates, supported only at these \(j\) selected points. The resulting form is \(-2M\) times their positive definite lower-side Gram. Its maximal quotient tends to \(-\infty\). Alternatively, put \(M\) times \(j\) orthogonal unit real-zero coordinates on the \(j\) basis vectors to obtain arbitrarily large positive minimum quotients. There are infinitely many distinct real zeros by Hardy's theorem. These are comparisons inside the graph closure: they can be approximated by finitely many actual reference exponentials in both component norms, preserving strict finite-dimensional inequalities.

Now transfer each fixed reference family to *every* array in (1). With \(B_E(z)=\prod_{x\in E}(x-z)/(x+z)\), the ordinary projection of \(e^{-vt}\) onto the trial space has transform
\[
 K_E(z,v)=\frac{1-B_E(z)B_E(v)}{z+v}.
\]
It is proper rational with poles at the allowed negatives of at most the stated orders. When \(v\) is a node the formula returns \(e^{-vt}\). Otherwise the extra pole at \(-v\) cancels; the difference from \(1/(z+v)\) vanishes to the full prescribed orders at the nodes, proving projection by Laplace evaluation and its derivatives. Its squared time error is \(B_E(v)^2/(2v)\), by evaluating at \(v\). For \(\Re z\ge-1/2\) every normalized factor satisfies
\[
 \left|\frac{x-v}{x+v}\frac{x-z}{x+z}\right|\le r_v(x)
 =\frac{|x-v|(x+1/2)}{(x+v)(x-1/2)}<1 .
\]
The last strict inequality follows from \(v>1/2,\ x^2>v/2\), considering both orders of \(x,v\). Also \(r_v(x)^x\to e^{1-2v}<1\) at infinity. Continuity therefore gives \(d_v>0\) with \(r_v(x)\le e^{-d_v/x}\) uniformly for \(x\ge s\). The product error throughout the strip is at most \(\exp(-d_v\sum_E 1/x)\). Since \(\sum_a m_a/|v+ia|^2<\infty\), convergence to the unprojected reference vector holds in both graph components. Applying min–max to the three comparison spaces proves all one-sided bounds in (1). The upper bound on the number of negatives is the swap index \(\kappa\). For finite \(\kappa\), imposing the \(\kappa\) vanishing lower-side evaluations leaves a strictly positive form on that kernel: the remaining sum over real zeros vanishes only if the rational transform vanishes at infinitely many points and hence identically. This proves strict positivity beyond index \(\kappa\) and the other side of the zero limit. The same proof with any fixed strict negative threshold shows that eventually exactly \(\kappa\) eigenvalues fall below it when \(\kappa<\infty\).

The same low-eigenvalue dichotomy applies directly to the original arithmetic Weil operator on \((0,T)\) as \(T\to\infty\). In the comparison spaces replace each reference \(e^{-vt}\) by \(e^{-vt}1_{[0,T]}\). Its Laplace error at each divisor point is at most \(e^{-(v-1/2)T}/|v+ia|\), so approximation holds in both graph components. These cut exponentials belong to the interval form domain by their \(O((1+|\zeta|)^{-1})\) Fourier decay. On smooth compact tests the Weil pairing is the reflected divisor form by the explicit formula. The orthogonal sum of the squared signed differences at the finitely many exceptional pairs bounds its negative index by \(\kappa\) when \(\kappa<\infty\); equivalently, on a smooth negative subspace the selected \(\kappa\) evaluations must be injective. Approximation of a finite set in the interval form norm by smooth core elements extends this index bound to the closed operator. The variational argument now yields \(\nu_j(T)\to-\infty\) if \(j\le\kappa\), and \(\nu_j(T)\to0\) otherwise. This directly relates the divergent samples to the expanding physical windows without exchanging two spectral limits. [Interval form, its core and norm](XiPickWeilLimit.md)

## Growth rates at one arithmetic Taylor center

Fix \(x>1/2\) and repeat it \(n\) times. In the orthonormal Laguerre basis \(\sqrt{2x}e^{-xt}L_j^{(0)}(2xt)\), \(0\le j<n\), the matrix is the real symmetric Toeplitz matrix \(T_n(x)=(t_{|j-k|})\), with
\[
 t_0=2L(x),\qquad t_m=[u^m]\,L\!\left(x\frac{1+u}{1-u}\right)\quad (m\ge1).
\]
Indeed the Laguerre generating function replaces the two arguments of \(C\) by \(x(1+u)/(1-u),x(1+v)/(1-v)\) and multiplies by \(2x/((1-u)(1-v))\); the resulting kernel is \((L(x(1+u)/(1-u))+L(x(1+v)/(1-v)))/(1-uv)\). The metric becomes \(1/(1-uv)\), proving orthonormality directly. The entries can be calculated at \(x+1/2>1\) using differentiated absolutely convergent Euler series. The matrix is distinct from the upper triangular square-variable array used for total nonnegativity. Related Li coefficients use Möbius power sums on the same divisor. [Other coefficient array](XiToeplitzHilbertPolyaCriterion.md) · [Bombieri and Lagarias, *Complements to Li's criterion*, §§2–4](https://websites.umich.edu/~lagarias/doc/bombieri.pdf)

Define
\[
 b_a=\frac{ia-x}{ia+x},\qquad w_a=\frac{2xm_a}{x^2+a^2}.
\]
The Laplace transform of the \(j\)-th basis vector is \(\sqrt{2x}(z-x)^j/(z+x)^{j+1}\) by its generating function. Since \(b_a\overline{b_{\bar a}}=1\), the matrix entry at row \(j\), column \(k\) is \(\sum_a w_a b_a^{j-k}\), absolutely convergent for each fixed \(j,k\). For \(\Im a>0\), \(\rho_a=|b_a|>1\). List these \(\rho_a\) decreasingly with one entry per distinct upper zero. Every threshold \(>1\) sees only finitely many since \(\rho_a\to1\) as \(|\Re a|\to\infty\). Writing eigenvalues increasingly, for every \(j\le\kappa\)
\[
 \lim_{n\to\infty}(-\lambda_j(T_n))^{1/n}
 =\lim_{n\to\infty}\lambda_{n-j+1}(T_n)^{1/n}=\rho_j(x).                 \tag{2}
\]
The signs on the left are the eventual signs. This yields an unconditional test for each individually ranked exceptional pair even if infinitely many exist.

For a proof take a finite leading group \(F\) of upper zeros down through all those tied at a selected radius. A conjugate pair contributes \(w_a U_a V_a^*+\overline w_a V_a U_a^*\) with \(U_a(j)=b_a^j,\ V_a(j)=\bar b_a^{-j}\). The column matrix \(S\) of the \(U_a/b_a^{n-1}\) and \(V_a\) has all singular values between two fixed positive constants for sufficiently large \(n\). Reversing the row order in the first family's own Gram yields the Gram of truncated powers of \(b_a^{-1}\); the second family uses powers of \(\bar b_a^{-1}\). The respective limiting Gram matrices are positive definite by the finite Vandermonde minors. The cross blocks tend to zero since the two normalized families are geometrically localized at opposite ends, for example by splitting the rows at \(n/2\). The finite-group contribution is \(S M S^*\), where the off-diagonal block of \(M\) is diagonal with entries \(w_ab_a^{n-1}\), its other block the adjoint and its diagonal blocks zero. Its positive eigenvalues and negative magnitudes are therefore within fixed constant factors of the ordered numbers \(|w_ab_a^{n-1}|\). In detail, the nonzero spectrum is that of \((S^*S)^{1/2} M (S^*S)^{1/2}\); in min–max its Rayleigh denominator is comparable to the usual one on each strictly positive or negative subspace. The remainder has norm at most \(n r^{n-1}\sum_a|w_a|\), where \(r<\min_{a\in F}\rho_a\) is the next radius or 1. This follows entrywise and includes the entire real divisor. The Hermitian norm perturbation bound and then \(n\)-th roots prove (2). Exact ties cannot be dropped before estimating the error.

When \(\kappa<\infty\), list \(h_j\) decreasingly from the **distinct real** zeros with weights \(h(a)=2xm_a/(x^2+a^2)>0\). Then
\[
  \lim_{n\to\infty}\lambda_{n-\kappa-j+1}(T_n)/n=h_j .
\]
The real contribution divided by \(n\) is \(\sum h(a) e_a e_a^*\), \(e_a=(b_a^j)_{j<n}/\sqrt n\) on the unit circle. Finite sets of distinct phases are asymptotically orthonormal by geometric summation; the omitted tail has norm at most its total mass. For nonempty finite \(F\) comprising the whole upper divisor, projection of any \(e_a\) onto \(\operatorname{ran} S\) has norm \(O_F(n^{-1/2})\), uniformly in the phase, by the geometric bounds and the lower singular value of \(S\). Removing the cross and compressed real terms involving \(\operatorname{ran} S\) thus changes the normalized operator by \(o(1)\). The remaining direct sum has \(\kappa\) positive and \(\kappa\) negative eigenvalues escaping to infinity from \(S M S^*/n\); the sorted eigenvalues of the complementary part converge to the \(h_j\) by the finite-phase approximation just proved. The same argument with empty \(F\) gives the assertion under RH.

As \(x\) varies, (2) determines each exceptional location up to reflection of its real part. Writing \(a=t+iy\), one has
\[
   \frac{\rho_a(x)^2-1}{\rho_a(x)^2+1}=\frac{2xy}{x^2+|a|^2}.
\]
Two nonidentical rational curves here cross at most once for \(x>0\). In a neighborhood of any fixed finite anchor, only finitely many curves exceed any fixed positive transformed threshold, by the zero strip and discreteness. Away from isolated crossings one can therefore follow each branch locally; two different squared anchors identify \(y\) and \(|a|^2\). Identical branches have the same \(y,|t|\), as required by symmetry. At one anchor the actual signed arithmetic diagonals now also recover the individual residues: subtract previously recovered faster conjugate pairs from \(t_m\). For each \(a\) of the largest remaining radius the Cesàro mean of the residual divided by \(b_a^m\) tends to \(w_a\), since all other tied phases average to zero, and the smaller growth is strictly separated. Thus \(m_a=w_a(x^2+a^2)/(2x)\) is recovered as well. Each particular exceptional pair occurs after finitely many such steps. This diagnoses the possible nonreal divisor from arithmetic data. It does not remove it or supply the target self-adjoint determinant.

## Unconditional negative trace bound for the genuine Taylor sections

With \(T_0=3\cdot10^{12}\) and \(C_0=2.960\cdot10^{-12}\), the following bound holds at every \(x>1/2,\ n\ge1\):
\[
 \frac{1}{n}\mathrm{Tr}\big((T_n(x))_-\big)
 \ \le\ \frac{x C_0}{3}(n^2-1)
       \left(\frac{x}{T_0^2}\right)^2 \exp(2nx/T_0^2).                   \tag{3}
\]
Here the negative part has eigenvalues \(\max(0,-\lambda_j)\). For \(x=1,\ n\le10^{12}\) its **entire trace** is less than \(1.3\cdot10^{-26}\). This is an analytic bound on possible losses in the whole space at those orders. Even a tiny negative eigenvalue would still violate positivity.

For one upper zero and its conjugate, write \(\ell=\log |b_a|>0,\ w=w_a,\ U=U_a,\ V=V_a\). The negative eigenvalue of this rank-at-most-two contribution, or zero in the one-dimensional case, has magnitude
\[
 \sqrt{n^2(\Re w)^2+|w|^2(\|U\|^2\|V\|^2-n^2)}-n\Re w .
\]
Indeed \(V^*U=n\); the pair has trace \(2n\Re w\) and the product of its two spectral roots is \(-|w|^2(\|U\|^2\|V\|^2-n^2)\), by its two-column representation. Since \(\Re w>0\), rationalizing bounds the magnitude by \(|w|^2(\|U\|^2\|V\|^2-n^2)/(2n\Re w)\). Now
\[
 \frac{\|U\|^2\|V\|^2}{n^2}-1
 =\frac1{n^2}\sum_{j,k=0}^{n-1}\{\cosh(2(j-k)\ell)-1\}
 \le \frac{n^2-1}{3}\ell^2 e^{2n\ell},
\]
by \(\cosh u-1\le u^2e^{|u|}/2\) and \(\sum(j-k)^2=n^2(n^2-1)/6\). Further,
\[
 \ell=\tfrac12\log(1+4xy/((x-y)^2+t^2))\le x/t^2,\qquad
 |w|^2/(2\Re w)=xm_a/(x^2+t^2-y^2)\le xm_a/t^2 .
\]
Platt and Trudgian's verified zero-height theorem excludes every such pair with \(|t|\le T_0\). Lehman's reciprocal-square tail estimate at \(T_0\), summing zeros of both signs with multiplicities, is below \(C_0\). Thus the sum over the unknown upper zeros of \(m_a/|t|^6\) is bounded by \(C_0/T_0^4\). The real-zero matrix is positive, and the negative trace is subadditive by its variational formula \(\sup_{0\le P\le I}-\mathrm{Tr}(P T)\). Summing the bounds gives (3). The sum of pair matrices converges in norm for each fixed \(n\) by the entrywise summable majorant. All zeros beyond the independently verified finite height are included in this error. [Platt and Trudgian, Theorem 1](https://arxiv.org/pdf/2004.09765) · [Lehman tail and evaluated constant](XiSechProjectionTransport.md)

## Collapse of the bulk of the arithmetic Taylor spectrum

Write \(s_1(T_n)\ge\cdots\ge s_n(T_n)\) for the singular values in decreasing order, that is, the absolute eigenvalues sorted without signs. Unconditionally, for fixed \(x>1/2\) and \(0<\delta<1\),
\[
 \limsup_{n\to\infty}\frac{\log s_{\lceil\delta n\rceil}(T_n(x))}{n\log n}
 \le -\delta .                                                           \tag{4}
\]
Use \(\log 0=-\infty\). Thus all but an arbitrarily small fraction of the eigenvalues are smaller in absolute value than \(\exp(-(\delta-o(1))n\log n)\) when that fraction is \(\delta\). The large eigenvalues in (2) can coexist with this decay.

For \(n\) large set \(T=n/(\log n)^2\). The contribution of all distinct zeros with \(|\Re a|\le T\) has rank at most their number \(r=O(T\log T)=o(n)\), by the classical zero count. Keep this entire contribution exactly, regardless of its size or sign. On the remaining divisor,
\[
 |b_a-1|=\frac{2x}{|ia+x|}\le\frac{2x}{T}=q,\qquad
 |b_a^{-k}|\le\exp(nx/T^2)\quad(0\le k<n).
\]
The second inequality uses the previous log-radius bound on a zero or its conjugate. Approximate \(b_a^j\) in every row by the first \(D\) terms of \((1+(b_a-1))^j\). These truncated vectors, over the **whole** remaining divisor, all lie in the \(D\)-dimensional span of the columns \((\binom{j}{h})_{j<n}\), \(0\le h<D\), taking zero for \(h>j\). Their uniform absolute error is at most
\[
 \sum_{h\ge D}(nq)^h/h!\le e^{nq}(e n q/D)^D .
\]
Multiplying the true column factors \(w_a b_a^{-k}\) and summing gives an entrywise error bounded by this quantity times \(\exp(nx/T^2)\sum_a|w_a|\). The operator norm is bounded by \(n\) times the entrywise bound. Set \(D=\lceil\delta n\rceil-1-r\), eventually positive. The approximant of rank at most \(r+D\) need not be Hermitian, since the singular-value variational inequality applies directly. Now \(D/n\to\delta,\ nq=2x(\log n)^2\) and \(\log(e n q/D)=-\log n+2\log\log n+O_{x,\delta}(1)\). Dividing the log bound by \(n\log n\) gives (4). This estimate uses the real and hypothetical nonreal zeros together. It obtains size control, and does not determine the signs of exponentially small eigenvalues.

## Checks and remaining obligations

At 4,096-bit Arb precision, differentiating the logarithm of the actual xi product at \(x(1+u)/(1-u)+1/2\) and dividing by the derivative of this argument produced the arithmetic Taylor entries. Interval symmetric elimination certified strictly positive pivots at \(x=1,2,8\), at orders \(8,16,24,40\). At order 40 the final pivots were \(1.26306\cdot10^{-118},6.82746\cdot10^{-95},3.02092\cdot10^{-48}\), respectively, to six significant digits. Independent shifted interval elimination bracketed the smallest eigenvalues at \(x=1,\ n=8,16,40\) between consecutive powers of two with lower exponents \(-71,-162,-467\). At \(x=2,\ n=80\) the bracket was \((2^{-873},2^{-872})\), and at \(x=8,\ n=80\) it was \((2^{-556},2^{-555})\). The lower endpoint passed positive-definite elimination on \(T_n-\lambda I\); the upper endpoint produced a strictly negative pivot after positive predecessors. These are finite checks. As a hostile check, a rational conjugate pair \(a=\pm iy\) gives \(w(r^{j-k}+r^{k-j})\), \(r=(y+x)/(y-x)\), whose two nonzero eigenvalues are \(w(n\pm\|U\|\|V\|)\) when \(n\ge2\). Three rational anchors and pair heights gave the predicted sign through order 128; twelve exact matrix characteristic polynomials at orders 2, 3, 5 and 8 agreed, including the full power of the zero root. This control is a different divisor.

The [Lean source](XiPickLaguerreEscape.lean) establishes strict strip contraction, the geometric and Toeplitz diagonal identities, disk Gram denominator, squared radius and two-anchor recovery, and the double-orthogonal-complement step from a vanishing residue limit. The graph approximation, spectral limits (1) and (2), zero-height application (3), bulk estimate (4) and divisor recovery are manuscript arguments. They supply neither universal positivity nor a self-adjoint arithmetic operator with the requested xi determinant. Independent external review and priority of the spectral limits are unassessed.

At Lean source blob e1a13dd585718bc32525936ab9e27f472a5d0f6a all eight public declarations passed native elaboration, fresh kernel replay and transitive axiom auditing using Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The reported axioms were propext, Classical.choice and Quot.sound.
