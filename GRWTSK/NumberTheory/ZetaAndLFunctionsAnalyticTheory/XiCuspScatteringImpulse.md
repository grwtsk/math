# A logarithmic singular-value trace for finite-time modular scattering

Let \(1\le Y<4\pi e^{-\gamma_E}\), \(L=\log Y\). The critical boundary characteristic of the shifted modular operator is the inner function \(\Theta_Y(z)=e^{iLz}\xi(1+iz)/\xi(1-iz)\) in the upper half-plane. In Fourier–Laplace coordinates with kernel \(e^{izt}\), multiplication by this function defines an isometric causal convolution on \(L^2(0,\infty)\). Write \(D_T\) for its compression to input and output times \((0,T)\), \(T>0\). The singular values are in decreasing order and include multiplicity. Then
\[
 \boxed{\lim_{r\to\infty}\frac{1}{\log r}\sum_{j=1}^r s_j(D_T)^2
   =2\sum_{Yn<e^T}\left(\frac{\varphi(n)}n\right)^2
            (T-\log(Yn)).}                                                    \tag{1}
\]
If \(T\le L\), the compression vanishes. For \(T>L\) it is compact, in weak Schatten class \(S_{2,\infty}\), and belongs to \(S_p\) exactly for \(p>2\). The positive defect \(D_TD_T^*\) of the observation Gramian has the same right-hand side as its logarithmic eigenvalue trace. This concerns the critical *shifted* operator and uses its boundary data independently of any location or list of central zeros. [Boundary multiplier, equation (2)](XiCuspHorizontalResolvent.md) · [Observation projection and finite windows](XiCuspTimeObservation.md)

## The causal kernel

Put \(s=-iz\). For \(\Re s>1\), the functional equation and the Euler product yield
\[
 \Theta_Y(is)=Y^{-s}\frac{s-1}{s+1}
 \frac{\sqrt\pi\,\Gamma(s/2)}{\Gamma((s+1)/2)}
 \sum_{n\ge1}\frac{\varphi(n)}n n^{-s}.
\]
The Dirichlet series is \(\zeta(s)/\zeta(1+s)\), as one checks prime by prime. Substituting \(x=e^{-2t}\) in the beta integral gives the gamma quotient as the Laplace transform of \(2(1-e^{-2t})^{-1/2}\). Multiplication by \(1-2/(s+1)\) subtracts twice its causal convolution with \(e^{-t}\). The primitive after \(w=e^t\) is \(\sqrt{w^2-1}\). Thus the exact causal impulse at positive time is
\[
 K_Y(t)=\sum_{a_n<t}h_n k(t-a_n),\quad a_n=\log(Yn),\quad h_n=\varphi(n)/n,
 \qquad k(v)=\frac{2}{\sqrt{1-e^{-2v}}}-4\sqrt{1-e^{-2v}} .
\]
Take \(k=0\) on negative arguments. Each compact time interval sees a finite sum of locally integrable functions, with no point mass at a front. The exponentially weighted kernel is integrable on \(\Re s>1\) by absolute convergence there. Uniqueness of the Laplace transform identifies convolution on dense compactly supported inputs, hence the bounded window compression. The arithmetic kernel is the logarithmic-variable specialization at \(\omega=1/2\) of Suzuki's kernel, with the delay from \(Y\). We use its individual singularities to compute (1). [Masatoshi Suzuki, arXiv:1204.1827v2, §2, equations (2.1)–(2.4) and Proposition 2.1](https://arxiv.org/pdf/1204.1827)

## Localization at the translated fronts

Fix \(T\). Near zero on the right, \(k(v)=\sqrt2\,v^{-1/2}+O(v^{1/2})\); elsewhere on \((0,T]\) it is smooth. Let \(V\) be Volterra convolution by \(k\) on \((0,T)\). Identify this interval with the circle of circumference \(T\) for Fourier expansions, with orthonormal basis \(e_j(t)=T^{-1/2}e^{2\pi ijt/T}\). Take a smooth cutoff equal to one near zero, supported in \([0,T/2)\) on the positive half-line. Convolution on the circle by the periodization of \(\sqrt2\,v^{-1/2}\) times this cutoff differs from \(V\) by a Hilbert–Schmidt operator. Above the Volterra diagonal its spurious image at the boundary has squared integral bounded by a constant times \(\int_0^T\int_0^T(x+y)^{-1}dx\,dy\). Below the diagonal the difference is square integrable by the displayed expansion.

With unnormalized Lebesgue convolution this periodic operator in turn differs by a Hilbert–Schmidt operator from the Fourier diagonal \(J\) given by \(Je_0=0\) and, for \(j\ne0\),
\[
 Je_j=\sqrt{2\pi}\,e^{-i\operatorname{sgn}(j)\pi/4}
                |2\pi j/T|^{-1/2}e_j.
\]
Indeed the half-line transform of \(v^{-1/2}e^{-v}\) is \(\sqrt\pi(1+i\omega)^{-1/2}\). The difference between this profile and the cutoff times \(v^{-1/2}\) is absolutely continuous with integrable derivative and vanishes at both ends, giving \(O((1+|\omega|)^{-1})\) error at nonzero integer frequencies by integration by parts. The leading diagonal therefore has squared modulus \(T/|j|\). This argument also determines the coefficient at the first front without an asymptotic spectral assumption.

Let \(U_a\) translate by \(a\) on the circle, and let \(M_a\) be multiplication by the indicator of \((a,T)\). For \(a<T\), the compressed convolution with \(k(\cdot-a)\) is exactly \(M_a U_a V\), because the output cutoff removes the wrap. Consequently
\[
 D_T=BJ+E,\qquad B=\sum_{a_n<T}h_n M_{a_n}U_{a_n},\qquad E\in S_2 .
\]
The finite sum \(B\) is bounded. Since \(J\in S_{2,\infty}\), the same is true of \(D_T\), by the singular-value sum inequality and \(S_2\subset S_{2,\infty}\).

Write \(P_N\) for projection onto \(|j|\le N\). Evaluating the ordinary finite-dimensional squared norm on the Fourier basis gives
\[
 \|BJP_N\|_2^2
 =2\sum_{j=1}^N\frac{1}{j}\sum_{a,b}h_a h_b
        (T-\max(a,b))\cos(2\pi j(a-b)/T),
\]
where the indices are the distinct front times and \(h_{a_n}=h_n\). At unequal times the Fourier ratio differs from one because \(0\le a,b<T\). Its geometric partial sums are bounded, hence its harmonic partial sums are bounded by summation by parts. The diagonal terms give \(2\sum_a h_a^2(T-a)\log N+O_T(1)\), with constants at fixed \(Y,T\).

For \(r=2N+1\), put \(Q_r(A)=(\sum_{j=1}^r s_j(A)^2)^{1/2}\). Its variational characterization is the supremum of \(\|AP\|_2\) over projections of rank \(r\). This gives the triangle inequality and the lower bound \(Q_r(BJ)\ge\|BJP_N\|_2\). For the upper bound split off \(P_N\); the omitted term has \(Q_r\) at most \(\sqrt r\,\|B\|\sqrt{T/(N+1)}\). The error \(E\) changes \(Q_r\) by at most \(\|E\|_2\). Thus \(Q_r(D_T)=\|BJP_N\|_2+O_T(1)\), which proves (1) for odd ranks. Monotonicity gives the same limit at the intervening ranks. Since \(h_1=1\), the coefficient is positive whenever \(T>L\); there the Hilbert–Schmidt sum diverges.

## The arithmetic information in the trace

As a locally finite distribution in \(T\), extending the trace by zero to negative times, its second derivative is \(2\sum_{n\ge1}h_n^2\delta_{\log(Yn)}\). Every front and its positive arithmetic amplitude can thus be recovered from the singular traces. The first jump of the slope is exactly 2. As \(X=e^T/Y\) tends to infinity the trace equals
\[
 2 C X+O((1+\log X)^3),\qquad C=\prod_{p\ {\rm prime}}(1-2/p^2+1/p^3)>0 .
\]
Indeed \(h_n^2=\sum_{d\mid n}b_d\) with multiplicative squarefree-supported coefficients \(b_p=-2/p+1/p^2\). They satisfy \(|b_d|\le \tau(d)/d\). Summing the divisor convolution gives \(\sum_{n\le X} h_n^2=C X+O((1+\log X)^2)\): the floor errors are bounded by \(\sum_{uv\le X}1/(uv)\), and the tail by \(X\sum_{d>X}\tau(d)/d^2=O(1+\log X)\), by partial summation using \(\sum_{d\le x}\tau(d)\le x(1+\log x)\). Integrate the summatory formula against \(2\,dx/x\) from 1 to \(X\) to obtain the stated estimate.

## Return from the scattering trace to the unshifted critical strip

Write \(A(x)\) for the limit in (1) at \(T=L+x\), extended by zero for \(x\le0\). For \(\Re s>0\) define
\[
 G(s)=\prod_p\left(1-(2/p-1/p^2)p^{-s}\right),\quad
 F(s)=s^2\left(\frac{C}{s-1}+\frac12\int_0^\infty
     e^{-sx}\big(A(x)-2Ce^x\big)\,dx\right).
\]
The previous error bound gives absolute, locally uniform convergence for the subtracted integral and all its derivatives. Each Euler factor of \(G\) is nonzero, and the logarithms of its tail are absolutely locally uniformly summable there. Thus \(G\) is holomorphic and nowhere zero in this half-plane. For \(\Re s>1\), integrate each positive ramp (absolute convergence also for complex \(s\)) to get
\[
 F(s)=\frac{s^2}2\int_0^\infty e^{-sx}A(x)\,dx
 =\sum_{n\ge1}\frac{(\varphi(n)/n)^2}{n^s}
 =\zeta(s)G(s).
\]
The last identity follows by summing the powers of each prime: every positive power has weight \((1-1/p)^2\). Meromorphic continuation now identifies \(F/G\) with \(\zeta\) throughout \(\Re s>0\), with the residue at one normalized by \(C=G(1)\). In particular the zeros **with multiplicities** of the meromorphic transform \(F\) in the open critical strip are precisely those of the unshifted zeta function.

More explicitly, let \(s=1/2+iz\) and \(W(s)=s(s-1)\pi^{-s/2}\Gamma(s/2)/2\). On \(\Re s>0\), with removable values filled in,
\[
 \frac{W(s)F(s)G(1/2)}{W(1/2)F(1/2)G(s)}
   =\frac{\xi(1/2+iz)}{\xi(1/2)} .
\]
The denominator at the center is nonzero since the alternating Dirichlet series at \(1/2\) is positive. Continuation by the functional equation gives the entire centered function. Thus a statistic of **positive operators on finite time intervals** reconstructs the exact central target function through an arithmetic deconvolution and a Laplace transform. The positive operator whose eigenvalues are summed depends on \(T\). Positivity of its eigenvalues gives no real-zero theorem for the transform of this family. The missing operator step is a single densely defined self-adjoint realization having this centered function as its regularized characteristic determinant.

The Hilbert–Schmidt threshold here concerns a finite-time scattering compression. The desired central determinant uses the inverse of an independently defined self-adjoint generator, which is a different operator. Formula (1) supplies an exact return to the existing shifted operator through its observation Gramian. Deriving the universal height of its point frequencies or a self-adjoint central realization remains open. The companion Lean module proves the real kernel primitive, rational front simplification and the exact finite summation-by-parts identity used in the off-diagonal calculation. A [second module](XiCuspScatteringEuler.lean) proves multiplicativity of the squared totient weights and sums their exact prime Euler factor on the open unit disk. The operator limit and the number-theoretic mean above are analytic derivations pending independent review and end-to-end formalization.

As finite normalization controls, integrating the polynomial form of the kernel in the square-root variable gives Laplace values 2/3, 4/5, 32/45 and 131072/255255 at 2, 4, 8 and 20. For the leading singular kernels at the first two fronts on a window of length 1.5 log 2, exact cell-integration formulas evaluated on grids of 24,576 and 49,152 cells gave incremental squared-norm slope 2.2527134. Formula (1) gives 2.2527283. Three independent Dirichlet-series and corrected Euler-product truncations through 16,000 were compatible within their explicit tail bounds.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. XiCuspScatteringImpulse at 67cd46ab0c683a401ebb4da26472938fbfe09fed, XiCuspScatteringEuler at bea7b1f3b9795ddf8fc2b882da00f78b4c3cfb73.
