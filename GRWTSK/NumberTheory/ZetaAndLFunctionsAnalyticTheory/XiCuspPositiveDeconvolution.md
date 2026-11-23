# Positive recovery of the theta measure and a finite-window obstruction

The finite-time modular scattering trace gives the positive measure \(\mu=\sum_{n\ge1}h_n^2\delta_{\log n}\), where \(h_n=\varphi(n)/n\). It is half the distributional second derivative of the logarithmic singular trace after removing the geometric delay \(L=\log Y\). This note recovers the theta heat sum by a positive convolution on the time axis. It also identifies an obstruction: every finite truncation of the ensuing symmetric Riemann integral has infinitely many nonreal frequency zeros and unbounded negative index in its Newton Hankel forms, even though the truncations converge to the exact central function on each compact set. [Modular scattering trace, equation (1)](XiCuspScatteringImpulse.md)

## The positive convolution inverse for the Euler correction

For each prime put \(a_p=2/p-1/p^2\), and extend \(b(p)=a_p\) completely multiplicatively, with \(b(1)=1\). Then \(0<a_p<1\). Set \(B=\sum b(n)\delta_{\log n}\). On every bounded interval its convolution with \(\mu\) is a finite calculation. At the atom indexed by \(p^k\) the resulting mass is
\[
 a_p^k+(1-a_p)\sum_{j=0}^{k-1}a_p^j=1 ,
\]
since every positive power has scattering weight \((1-1/p)^2\). Factoring the finite sum over divisors prime by prime gives
\[
 B*\mu=\sum_{n\ge1}\delta_{\log n}.
\]
In particular, integrating \(e^{-\pi v e^{2t}}\) against this recovered measure gives \(\psi(v)=\sum_{n\ge1}e^{-\pi n^2v}\) for every \(v>0\). Recovery up to any finite index uses only the trace fronts at and below that index; a time horizon strictly above the last front suffices. This step does not involve analytic continuation. One may equally read the masses and indices directly from the known trace; the positive convolution specifies its exact linear conversion.

There is a sharp scale for the total weight of this inverse. Let \(\alpha=\log(4/3)/\log2\). Define
\[
 J(s)=\prod_p\frac{(1-p^{-1-s})^2}{1-a_p p^{-s}}.
\]
For \(0<\eta<\alpha\), its Dirichlet coefficients \(j_d\) satisfy \(\sum |j_d|d^\eta<\infty\). To see this, subtract one from each local factor: the numerator of the difference is \(p^{-2}(p^{-2s}-p^{-s})\). The geometric denominator is bounded in absolute-coefficient norm by \((1-a_p p^\eta)^{-1}\). The factor at 2 is admissible by the definition of \(\alpha\), at 3 because \((5/9)\sqrt3<1\), and for \(p\ge5\) because \(a_p\sqrt p<2/\sqrt p<1\). The sum of the remaining local norms converges since \(\eta<1/2\). At zero every factor equals one.

Write \(t=\log X\) and let \(\gamma,\gamma_1\) denote the Euler and first Stieltjes constants in the usual zeta convention. Then
\[
 B([0,t])=\tfrac12t^2+(2\gamma+J'(0))t+
 \gamma^2-2\gamma_1+2\gamma J'(0)+\tfrac12J''(0)+O_\eta(e^{-\eta t})
 \qquad(t\ge0).
\]
Indeed the transform of \(B\) is \(\zeta(1+s)^2J(s)\) for \(\Re s>0\). For \(x\ge1\) the summatory function of the coefficients of \(\zeta(1+s)^2\) is \(P(\log x)+O(x^{-1/2}(1+\log x))\), where \(P(u)=u^2/2+2\gamma u+\gamma^2-2\gamma_1\). Split the sum \(\sum_{ab\le x}1/(ab)\) at \(m=\lfloor\sqrt x\rfloor\) to get \(2\sum_{a\le m}H_{\lfloor x/a\rfloor}/a-H_m^2\). Insert \(H_k=\log k+\gamma+O(1/k)\) and \(\sum_{a\le m}\log a/a=(\log m)^2/2+\gamma_1+O((1+\log m)/m)\); the second follows by sum–integral comparison of the tail in the definition of the Stieltjes constant. Convolve with \(j_d\). The absolute coefficient estimate at any exponent between \(\eta\) and \(\alpha\) absorbs the polynomial when extending the main sum to all \(d\), and the divisor-sum remainder is \(O_\eta(X^{-\eta})\). Expanding \(\sum j_dP(t-\log d)\) gives the formula. [Zeta expansion and Stieltjes constant convention](https://dlmf.nist.gov/25.2#ii)

No estimate \(O(e^{-(\alpha+\epsilon)t})\) holds with the same polynomial, for any \(\epsilon>0\). Such a bound, by Laplace integration of the remainder of the distribution function, would analytically continue the transform across \(-\alpha\) with only its known pole at zero. Instead the Euler denominator at 2 has a simple zero at \(-\alpha\). The product away from 2 is holomorphic and nonzero in a neighborhood of that point by the preceding local estimates with a slightly larger exponent below \(1/2\), and \(\zeta(1-\alpha)\ne0\) by the alternating series. This determines the supremal power-saving exponent without any information on the nontrivial zeta zeros.

One can also attain the endpoint exponent and isolate its oscillation. Delete the Euler factor of 2 from \(B\) to obtain the measure on odd indices. Its transform is \(\zeta(1+s)^2(1-2^{-1-s})^2 J_{p\ne2}(s)\). The same coefficient proof gives its cumulative mass \(B_o(t)=P_o(t)+O_\eta(e^{-\eta t})\) for each \(\alpha<\eta<1/2\), with a quadratic polynomial \(P_o\). Extend \(B_o(t)=0\) for \(t<0\), set \(l=\log2\) and \(F_o(t)=e^{\alpha t}(B_o(t)-P_o(t))\). This function decays exponentially at both ends (up to a polynomial at the negative end). Complete multiplicativity gives \(B([0,t])=\sum_{k\ge0}(3/4)^k B_o(t-kl)\). The same sum of shifted \(P_o\)'s is a quadratic polynomial, necessarily the polynomial \(P\) already found since their difference tends to zero by the following bound. Uniformly periodizing the decaying function gives
\[
 B([0,t])=P(t)+e^{-\alpha t}\sum_{k\in\mathbb Z} F_o(t-kl)+O_\eta(e^{-\eta t}).
\]
Indeed the omitted terms with \(k<0\), before multiplication by \(e^{-\alpha t}\), are \(O_\eta(e^{-(\eta-\alpha)t})\). The sum is bounded and \(l\)-periodic. The jumps of \(B\) at \(t=k\log2\) are exactly \((3/4)^k\), so the error from a continuous polynomial cannot be \(o(e^{-\alpha t})\). This checks the obstruction directly on the positive measure.

## Symmetric truncation on the critical line

For \(N\ge1\) let \(\psi_N(v)=\sum_{n=1}^N e^{-\pi n^2v}\). Use the recovered atoms in Riemann's symmetric integral:
\[
 X_N(s)=\frac12+\frac{s(s-1)}2\int_1^\infty\psi_N(v)
       (v^{s/2}+v^{(1-s)/2})\frac{dv}{v}.
\]
Every \(X_N\) is entire, real on the real axis and invariant under \(s\mapsto1-s\). Poisson summation for the full Gaussian lattice gives \(1+2\psi(v)=v^{-1/2}(1+2\psi(1/v))\). Splitting the Mellin integral of \(\psi\) at one gives the identical full formula for \(\xi\); the two constant terms below one give \(1/(s-1)-1/s\) before completion. This recovers the normalized central entire function from the infinite scattering trace. [Riemann, *On the Number of Prime Numbers less than a Given Quantity* (1859), theta integral](https://web.williams.edu/Mathematics/sjmiller/public_html/1/addcomments/RiemannPaper_1859_EZeta.pdf)

For \(|s-1/2|\le R\), put \(b=\max(0,(R+1/2)/2-1)\). When \(\pi(N+1)^2>b\), an explicit bound is
\[
 |\xi(s)-X_N(s)|\le
 \frac{(R+1/2)^2 e^{-\pi(N+1)^2}}
 {(\pi(N+1)^2-b)(1-e^{-\pi(2N+3)})}.
\]
Indeed \(v^b\le e^{b(v-1)}\) on the integration interval, and successive Gaussian tails have ratio at most \(e^{-\pi(2N+3)}\). The time needed to recover those \(N\) atoms is just beyond \(L+\log N\). Cauchy estimates give the same locally uniform convergence for each fixed derivative. Since \(X_N(1/2)\ge\xi(1/2)>0\), center normalization is harmless. The same positivity holds throughout real \(0<s<1\), where removing positive summands increases the expression and the alternating zeta series gives \(\xi(s)>0\). For real \(s\notin(0,1)\), positivity follows directly from the integral.

Nevertheless, **every finite \(N\) has only finitely many real frequency zeros and infinitely many nonreal ones**. To prove this let \(s=1/2+it\) with \(t\) real, and put \(f_N(u)=e^{u/2}\psi_N(e^{2u})\). Substitution in the integral gives
\[
 X_N(1/2+it)=\tfrac12-2(t^2+1/4)\int_0^\infty f_N(u)\cos(tu)\,du.
\]
All derivatives of \(f_N\) are integrable and vanish at infinity. Integrating by parts four times gives the integral \(-f_N'(0)/t^2+O_N(t^{-4})\). For the full function \(f\), the theta relation gives \(f(-u)=f(u)+\sinh(u/2)\), so \(f'(0)=-1/4\). Differentiating its absolutely convergent Gaussian series now gives the strictly positive limit
\[
 \lim_{|t|\to\infty}X_N(1/2+it)
 =\frac12+2 f_N'(0)=\sum_{n>N}(4\pi n^2-1)e^{-\pi n^2}>0 .
\]
Therefore it has no real frequency zeros beyond a finite threshold, and analyticity gives finitely many on the remaining compact interval.

In contrast \(X_N(1/2+it)\) is an entire function of order at most one. On \(|t|\le R\) the defining integral is bounded by a polynomial in \(R\) times \(1+\int_1^\infty e^{-\pi v}v^{R/2+1}dv\), of logarithm \(O(R\log(R+2))\). It is not a polynomial: for large positive real \(s\) the first Gaussian term integrated over \([s/(2\pi),s/(2\pi)+1]\) grows faster than any power of \(s\). If it had finitely many zeros, Hadamard factorization would make it a polynomial times \(e^{a+bt}\). Evenness, or the equal finite nonzero limits at both ends of the real axis, forces \(b=0\) (the polynomial can be taken even by pairing its zeros). This contradicts the growth just proved. Real \(s\) is zero-free, so the infinitely many remaining zeros form genuine nonreal frequency quadruples. In particular even exact finite recovery of this positive measure and imposition of the functional equation cannot produce the requested self-adjoint determinant by this truncation.

## Consequence for the original all-rank moment test

Put \(P_N(w)=X_N(1/2+\sqrt w)/X_N(1/2)\), interpreted by evenness. This is entire of order at most \(1/2\) and has a genus-zero product with inverse nodes \(\lambda=-1/w_j\), where the zeros \(w_j\) are repeated with multiplicity. Thus \(\sum|\lambda|<\infty\). The Newton forms obtained from the logarithmic derivative are the real quadratic forms \(\sum_\lambda \lambda q(\lambda)^2\) on real polynomials \(q\). They have arbitrarily large negative index for *each* fixed finite truncation.

Indeed select any \(k\) distinct pairs of nonreal conjugate nodes. Pick a radius \(r\) below their smallest modulus and separate off all nodes of modulus greater than \(r\); this is a finite set. For each selected pair choose conjugate values \(v,\bar v\) with \(\Re(\lambda v^2)<0\). Give the other outer nodes zero values. Interpolate these data by real polynomials of the form \(z^m Q_m(z)\), using Lagrange interpolation for the values divided by the corresponding \(m\)-th powers. For each of the \(k\) resulting polynomials the coefficients of \(Q_m\) are \(O(a^{-m})\), with \(a\) the minimum modulus of the selected nodes. Thus on the inner disk the polynomials are uniformly \(O((r/a)^m)\). Absolute summability bounds the contribution of that disk to the entire \(k\)-by-\(k\) Gram matrix by \(O_k((r/a)^{2m})\). The outer matrix is strictly negative diagonal, including positive integer multiplicities. For large \(m\) the form is negative definite on a \(k\)-dimensional subspace. This is the signed-divisor interpolation argument applied to the actual finite scattering reconstructions. [Original-Xi Newton forms and the inertia comparison](XiNewtonMomentHilbertPolya.md)

Each fixed Newton matrix of the truncations converges to the corresponding matrix of the true \(\xi\), by local convergence of the logarithmic derivatives on a disk around zero free of zeros of the limit. The negative subspaces above depend on \(N\) and their polynomial degrees are unrestricted. They do not refute any fixed-rank positivity assertion for \(\xi\). Conversely neither compact convergence nor positive prime weights supplies its missing positivity at all ranks.

At 400-bit working precision, interval evaluations of the incomplete-gamma integral certified one zero of \(X_1(1/2+it)\) in the radius \(10^{-19}\) disk around \(22.9154657705608233141274895177+4.66590202692456909193940590848i\), and one for \(X_2\) around \(41.1895478429846621352719251071+1.46198671336516741309707783009i\). At both centers the defining integral bounds the modulus by 1000 on the unit disk, using the real parts in the two powers of \(v\). The symmetric difference with step \(h=10^{-17}\) estimates the derivative within \(1000h^2/(1-h^2)\) by Cauchy's estimate. At radius \(r=10^{-19}\), the derivative lower bound times \(r\) exceeds the center modulus plus \(1000r^2/(1-r)\), proving the count by Rouché. These examples check the obstruction independently of the general factorization argument.

An independent ball calculation exhibits where the first finite moment tests fail. For the leading matrix \((\tau_{i+j+1})_{0\le i,j<d}\), the first negative elimination pivot occurs at **rank 6 for \(X_1\)** and **rank 14 for \(X_2\)**, with all preceding pivots strictly positive. For the **actual completed zeta function**, all first 12 pivots are strictly positive. The calculation scales the entry of index \(i+j+1\) by \(256^{i+j+1}\), a positive scalar and diagonal congruence preserving inertia. It evaluates the even Taylor coefficients by a 640-point discrete Cauchy sum on the centered circle of radius 4. The bound on the radius-8 circle is below 1000, since the integral of \(v^4 e^{-\pi n^2 v}\) on \((0,\infty)\) is \(24/(\pi n^2)^5\). The coefficient of degree \(m<640\) has aliasing error at most \(4^{-m}1000/(2^{640}-1)\). For the true function the twelve-term heat sum uses in addition the explicit uniform Gaussian tail bound above. Interval arithmetic at 1,024 bits encloses the gamma evaluations, Newton recurrence, and elimination with every pivot separated from zero. This finite-rank check supplies no uniform lower bound as the rank grows. [Reproducible zero and Newton certificates](../../../scripts/verify_xi_finite_theta_windows.py)

The Lean components establish [positive prime weights and divisor convolution](XiCuspPositiveDeconvolution.lean) and [theta boundary derivatives and signs](XiFiniteThetaBoundary.lean). The operator-to-measure identification, asymptotics, infinite-zero and negative-index theorems above are analytic arguments. A single self-adjoint operator with the exact central determinant, and unconditional universal Newton positivity, remain open.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. XiCuspPositiveDeconvolution at 3f097ce1534a1688d6f939e521e5e946231cc2e6, XiFiniteThetaBoundary at c2f9474cbc7ec77ae59eddcbd748d1589d1cdcd8.
