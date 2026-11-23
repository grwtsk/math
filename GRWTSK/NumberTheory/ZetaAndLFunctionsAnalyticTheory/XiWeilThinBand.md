# Negative eigenvalues of Weil matrices in a shrinking Fourier band

grwtsk contributors

Let \(I_L=[-L/2,L/2]\) and let \(W_{L,N}\) be the Hermitian matrix of the original prime-defined Weil form in the ordinary orthonormal Fourier modes of indices \(-N,\ldots,N\) on \(I_L\). Fix **any** \(C>0\), and set
\[
 N=\left\lceil C L/\log L\right\rceil,\qquad L>1 .
\]
The largest retained physical frequency \(2\pi N/L\) tends to zero. Nevertheless these matrices retain the full growth rate of the most negative eigenvalue of the cubic sections. In particular, an unbounded sequence of these much smaller matrices with a common lower bound would suffice for the [conditional Gaussian Hilbert–Pólya construction](XiWeilThetaCluster.md). Establishing such a bound is open in this argument.

There is a result at each fixed index. Write \(X(z)=\xi(1/2+iz)/\xi(1/2)\). Take the unordered pairs \(\{\alpha,\bar\alpha\}\) of distinct nonreal zeros of \(X\), and give each pair the displacement \(b=|\Im\alpha|\). A repeated zero changes the positive weight of its pair in the Weil form, while the pair supplies at most one negative direction. For \(k\ge1\) let \(b_k\) be the supremum of positive \(t\) for which at least \(k\) distinct pairs have \(b>t\), taking zero for an empty set. With the eigenvalues \(\lambda_k\) of the full matrix counted in increasing order with multiplicities,
\[
 \lim_{L\to\infty}\frac{\log(1+\max(0,-\lambda_k(W_{L,N})))}{L}=b_k.
 \tag{1}
\]
Thus if the number of nonreal conjugate pairs is finite, the negative index of these particular matrices is eventually exactly that number. If there are infinitely many, their negative indices tend to infinity. These conclusions make no assumption that the supremal displacement is attained. For \(k=1\) the paired real Hadamard product and the multiplication-operator construction require a separate independent arithmetic bound that would give \(b_1=0\).

## The exact form and its small grid

Put \(h=2\pi/L\), \(x_n=nh\), \(D(z)=\prod_{n=-N}^N(z-x_n)\). For \(v=L^{-1/2}\sum c_n e^{ix_n x}\) extended by zero, direct integration gives
\[
 \widehat v(z)=\frac{2}{\sqrt L}\sin(Lz/2)R(z),\qquad
 R(z)=\sum_{n=-N}^N\frac{(-1)^n c_n}{z-x_n}.
 \tag{2}
\]
The centered basis introduces the signs relative to the translated basis of Connes–Consani–Moscovici. The removable values at the nodes are understood. Eventually no node can be a zero of \(X\), since \(X(0)=1\) and all nodes tend to zero. For every polynomial \(Q\) of degree at most \(2N\), the rational function \(Q/D\) is realized exactly in (2) by the residues \(c_n=(-1)^nQ(x_n)/D'(x_n)\). This follows by subtracting the partial fractions and clearing the denominator: the resulting polynomial of degree at most \(2N\) vanishes at \(2N+1\) distinct nodes.

The polarized Weil explicit formula gives the quadratic form as
\[
 \sum_{\alpha} m_\alpha\widehat v(\alpha)\overline{\widehat v(\bar\alpha)}.
 \tag{3}
\]
The sum is over distinct zeros with multiplicities \(m_\alpha\). The zero strip and the Riemann–von Mangoldt count give \(\sum m_\alpha(1+|\alpha|)^{-2}<\infty\). For each finite Fourier section the terms in (3) are absolutely summable by bounded variation. The prime and archimedean terms define the matrix used in (1); the zeros appear in the proof. [Connes, Consani and Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, §§3–4 and Proposition 5.9](https://arxiv.org/html/2511.22755v1#S5.SS6) · [Cubic-section bounds and normalization](XiWeilThetaCluster.md)

For the upper bound on the rate, fix \(\delta>0\). At most \(k-1\) pairs have displacement greater than \(b_k+\delta\), by the definition using strict superlevels. On a subspace of codimension at most \(k-1\), kill the transform at one zero from each such pair. Its partner then contributes zero too. On the remaining divisor apply
\[
 |\widehat v(\alpha)|\le (1+L)^{O(1)} e^{(b_k+\delta)L/2}
                         (1+|\Re\alpha|)^{-1}\|v\|_2 .
\]
This follows from the \(L^1\) bound for the vector, the \(L^1\) derivative bound \(2\pi N\|v\|_2/\sqrt L\), and the endpoint bound \(\sqrt{(2N+1)/L}\|v\|_2\) in integration by parts. Summability in (3) and the variational characterization of \(\lambda_k\) give a limsup at most \(b_k+\delta\). If there are fewer than \(k\) nonreal pairs, the same elimination makes the whole form nonnegative on that subspace. In particular \(\lambda_k\ge0\) in this case. An infinite family of positive displacements always gives \(b_k>0\) for each finite \(k\).

## Interpolation with a controlled norm

Suppose \(b_k>0\). Fix \(0<\delta<\min(b_k,C)\) and choose \(k\) fixed distinct pairs of displacement greater than \(b_k-\delta\). Denote their representatives by \(\alpha_j\) and also retain \(\bar\alpha_j\). Put \(T=L/(\log L)^3\). Let
\[
 P(z)=\prod_\beta (1-z/\beta)
\]
where \(\beta\) ranges over all distinct zeros of modulus at most \(T\) except the \(2k\) selected points. Then \(m=\deg P=O(T\log T)=o(N)\). The products need only the distinct zeros in this step. Their multiplicities still enter (3).

Here are the size bounds on this varying polynomial. All zeros have modulus at least a fixed positive \(r\). Dyadic summation using the zero count gives \(\sum_{|\beta|\le T}1/|\beta|\ll\log^2(2+T)\). Therefore \(\log |P(x)|\le O(\log^2 T)\) for \(|x|\le1\). At each fixed selected point \(a\), factors with \(|\beta|>2|a|\) satisfy \(\log|1-a/\beta|\ge-2|a|/|\beta|\); the remaining finitely many unremoved factors have a fixed positive product in modulus. In particular \(|P(a)|^{-1}\le e^{O(\log^2 T)}\). This proof permits the selected pairs to omit the corresponding opposite pairs. On \(|z|>T\), the crude bound \(|P(z)|\le (1+|z|/r)^m\) suffices.

For \(u\in\mathbb C^k\) prescribe
\[
 R(\alpha_j)=\frac{\overline{S_j}}{S_j}u_j,\qquad
 R(\bar\alpha_j)=-u_j,\qquad S_j=\sin(L\alpha_j/2).
\]
The factors \(S_j\) are nonzero. Choose \(Q=PJ\) with \(J\) the Lagrange interpolant of degree at most \(2k-1\) at these fixed nodes using the values \(D(a)R(a)/P(a)\). This depends complex-linearly on \(u\). Eventually \(m+2k-1\le2N\), so (2) supplies a trial vector \(v(u)\). At any selected \(a\), \(|D(a)|\le(|a|+1)^{2N+1}\), and the fixed Lagrange basis is independent of \(L\). Hence the sum of the absolute values of the coefficients of \(J\) is at most \(e^{O(N+\log^2 T)}\|u\|_2\). The construction is injective in \(u\) by its prescribed evaluations.

On the grid,
\[
 |D'(x_n)|=h^{2N}(N+n)!(N-n)!\ge h^{2N}(N!)^2 .
\]
The last product is minimal at \(n=0\) by the ratio of successive products. Using \(N!\ge(N/e)^N\) and the preceding numerator bounds gives
\[
 \|v(u)\|_2=\|c\|_2
 \le \exp\!\big(2N\log(L/N)+O(N+\log^2 T+\log N)\big)\|u\|_2
 =e^{o(L)}\|u\|_2.
 \tag{4}
\]
This is the cost in the matrix's actual inner product for sampling remote zeros with clustered Fourier nodes.

## Suppressing the unselected divisor

The selected pairs contribute exactly
\[
 -\frac{8}{L}\sum_j m_{\alpha_j}|S_j|^2 |u_j|^2
\]
to (3). Indeed their two transform values in (2) are opposite. Since \(|\sin(x+iy)|\ge|\sinh y|\), this is at most \(-c L^{-1}\exp((b_k-\delta)L)\|u\|_2^2\) for all large \(L\). Every unselected zero of modulus at most \(T\) has zero transform. Beyond \(T\) the displacements are at most \(b_k+\delta\) eventually, because all pairs of larger displacement form a fixed set of at most \(k-1\) pairs.

For \(|z|>T\) and large \(L\), \(|D(z)|\ge(|z|-1)^{2N+1}\ge (|z|/2)^{2N+1}\). Thus
\[
 |R(z)|\le e^{O(N+\log^2 T)} \|u\|_2\,|z|^{-(2N+2-m-2k)} .
\]
The exponent is \(2N-o(N)\). To bound the total contribution from this region in absolute value, keep two inverse powers of \(|\alpha|\) for the convergent zero sum. Bounding the others by powers of \(T^{-1}\), (2)–(3) give
\[
 |Q_{\rm tail}(v(u))|
 \le \exp\!\big((b_k+\delta)L-(4N-o(N))\log T+o(L)\big)\|u\|_2^2
 =\exp\!\big((b_k+\delta-4C+o(1))L\big)\|u\|_2^2 .
\]
The estimate holds on the entire \(k\)-dimensional trial subspace. Since \(\delta<C\), the tail is exponentially smaller than the selected negative contribution. Combining with (4), the variational principle gives \(-\lambda_k\ge\exp((b_k-\delta-o(1))L)\). Letting \(\delta\) decrease proves (1), including for displacements approached at unbounded ordinates.

## A fixed cutoff if a largest displacement is attained

If \(B=b_1>0\) is attained, one sufficiently large **fixed** integer \(N_0\) detects the full rate \(B\). Choose one maximizing pair \(a,\bar a\), and then fix \(T>4(|a|+1)+4\) containing that pair. Use the preceding numerator with \(k=1\), deleting all other distinct zeros inside this fixed disk. The polynomial \(P\), its values at \(a,\bar a\), and the interpolation basis are now fixed. For all \(L\) with \(2\pi N/L<1\), the coefficients of the linear interpolant satisfy \(\|J\|_{\ell^1}\le C_{a,T}(|a|+1)^{2N+1}\) at \(u=1\). In the outer region \(|D(z)|\ge(|z|/2)^{2N+1}\); thus for \(2N>m+2\),
\[
 \sum_{|\alpha|>T}m_\alpha |R(\alpha)R(\bar\alpha)|
 \ \le C_{a,T}'\left(\frac{2(|a|+1)}{T}\right)^{4N}
                    \sum_\alpha m_\alpha(1+|\alpha|)^{-2}.
\]
All factors involving \(m,T\) but independent of \(N,L\) have been absorbed in \(C_{a,T}'\). The quotient in parentheses is less than one. First fix \(N_0\) sufficiently large that, after the factor \(4e^{BL}/L\) from (2), this bound is smaller than half the main negative pair for large \(L\). Then let \(L\to\infty\) with \(N=N_0\). The coefficient norm grows only as \(O_{a,T,N_0}(L^{2N_0})\). The preceding upper bound and this negative trial prove the full rate. No assertion of attainment is used for the growing cutoff (1).

For real zeros the constant Fourier mode already has Rayleigh quotient at most \(4\sum m_\alpha|\alpha|^{-2}/L\). It follows that a common lower bound for the least eigenvalues of **each fixed** cutoff along a single cofinal sequence would exclude an attained positive maximum, and in particular exclude any nonempty finite off-line divisor. Without the attainment hypothesis, (1) gives the stronger unrestricted implication from a common lower bound along the specified growing cutoff. An exact self-adjoint spectral operator still requires an independent arithmetic estimate. The condition here addresses the sign of the Weil form. Convergence of the full scaling-operator determinants imposes the different necessary size \(N/L^2\to\infty\) because those determinants also contain the exterior modes. [Free determinant contribution](XiFreeSpectralTail.md)

## Total transverse displacement from a finite determinant

For a Hermitian matrix \(W\), write \(W_-=(|W|-W)/2\). For every fixed threshold \(t\ge0\), the same arithmetic sections satisfy the extended-real limit
\[
 \lim_{L\to\infty}\frac1L\log\det(I+e^{-tL}(W_{L,N})_-)
       =\sum_{\{\alpha,\bar\alpha\}\,\mathrm{nonreal}}
                    (|\Im\alpha|-t)_+ .
 \tag{5}
\]
At \(t=0\) this is the sum of all transverse displacements of distinct pairs without a summability hypothesis. These are finite determinants of a nonlinear function of the Hermitian Weil matrix. The target Hilbert–Schmidt determinant identity for a single limiting operator remains conditional.

For a conjugate pair \(j\), let \(h(v)=\widehat v(\alpha_j)\), \(\ell(v)=\widehat v(\bar\alpha_j)\). Its contribution to (3) is
\[
 \tfrac12m_j\big(|h(v)+\ell(v)|^2-|h(v)-\ell(v)|^2\big).
\]
Denote the positive matrix of the second square, including its coefficient, by \(A_j\); it has rank at most one. Setting \(A=\sum_j A_j\), the full signed form satisfies \(-W_{L,N}\le A\), since all real zero terms are also nonnegative. For large \(L\), \(\max|x_n|\) is less than half the zero-free radius about zero. Cauchy–Schwarz on (2) gives
\[
 \operatorname{Tr}A_j\le a_{j,L}e^{|\Im\alpha_j|L},
 \qquad a_{j,L}=\frac{K(2N+1)}{L}\frac{m_j}{|\alpha_j|^2}
\]
with an absolute \(K\). Indeed the squared norm of each evaluation functional is at most \(16(2N+1)e^{|\Im\alpha_j|L}/(L|\alpha_j|^2)\). Both \(\sum_j a_{j,L}\) and \(\operatorname{Tr} A\) are finite at each \(L\), since the strip is bounded and \(\sum m_\alpha/|\alpha|^2<\infty\). The small physical bandwidth makes \(\sum_j a_{j,L}=O(N/L)\).

Put \(q=e^{-tL}\). Min-max eigenvalue comparison gives \(\lambda_i(W_-)\le\lambda_i(A)\) with both lists in decreasing order, even though operator monotonicity of the positive-part map is not available. For a positive matrix \(U\) and a rank-one increment \(vv^*\), the matrix determinant lemma gives
\[
 \det(I+U+vv^*)=\det(I+U)\big(1+v^*(I+U)^{-1}v\big)
 \le \det(I+U)(1+\|v\|^2).
\]
Consequently \(\log\det(I+q W_-)\le\sum_j \log(1+q\operatorname{Tr}A_j)\), using finite partial sums and trace convergence. The last sum is at most
\[
 L\sum_j(|\Im\alpha_j|-t)_++\sum_j a_{j,L}
\]
by \(1+a e^x\le e^{\max(0,x)}(1+a)\). This gives the upper bound in (5) whenever the proposed limit is finite. For the lower bound retain the first \(k\) negative-part eigenvalues, padding by zero, and apply (1) to each. For \(x\ge0\) the two numbers \(\log(1+e^{-tL}x)\) and \((\log(1+x)-tL)_+\) differ by at most \(\log 2\). Increasing \(k\) gives \(\sum_{i\ge1}(b_i-t)_+\); this equals the divisor sum in (5) by integrating the superlevel counts over levels greater than \(t\). The proof also covers an infinite limit.

## Finite checks and formal scope

The [interval fixture](../../../scripts/verify_xi_weil_thin_band.py) computes the actual archimedean, pole, and prime-power matrix at \(C=1\) with 192-bit ball arithmetic. It verifies the ceiling and bounds the minimum separately on each parity by shifted principal minors.

| \(L,N\) | Even minimum | Odd minimum |
| --- | --- | --- |
| \(4,3\) | \((2.1408351,2.1408353)\,10^{-16}\) | \((1.1224795,1.1224797)\,10^{-13}\) |
| \(8,4\) | \((1.3817594,1.3817596)\,10^{-23}\) | \((1.8480977,1.8480979)\,10^{-20}\) |
| \(12,5\) | \((1.4564874,1.4564876)\,10^{-31}\) | \((1.0687440,1.0687442)\,10^{-27}\) |

The analytic reduction uses the exact arithmetic form and arbitrary multiplicities. Its global asymptotic statement, the cofinal lower bound, the identification of xi with a self-adjoint determinant and Mathlib RH have no Lean verification here. Independent external review is outstanding. The [Lean companion](XiWeilThinBand.lean) formalizes finite rational interpolation on a fixed grid, the exterior nodal-product bound, and the negative conjugate-pair phase identity.

The three supporting declarations at Lean blob `55bef6a6b703b31c8d8c751fb305aef53b0d40ff` passed elaboration with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, followed by fresh kernel replay over 18,006 declarations. Each transitive audit found only `propext`, `Classical.choice` and `Quot.sound`.
