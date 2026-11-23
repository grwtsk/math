# A harmonic-mass lower bound for negative xi Pick witnesses

Put \(L(z)=\xi'(1/2+z)/\xi(1/2+z)\). For real \(x>1\) and \(0<\omega\le1/2\) put \(r_\omega(x)=\xi(1/2+x-\omega)/\xi(1/2+x+\omega)\). For distinct positive nodes \(x_i\), write
\[
G_{ij}=1/(x_i+x_j),\quad C_{ij}=(L(x_i)+L(x_j))G_{ij},\quad
P_{ij}(\omega)=(1-r_\omega(x_i)r_\omega(x_j))G_{ij}.
\]
For every \(0<\eta<1/128\) there exists \(N_0(\eta)\) such that **every finite set** of nodes with \(\min x_i\ge N_0(\eta)\) and \(\sum_i1/x_i\le\eta\) satisfies
\[
 C\succeq \tfrac18 G,\qquad
 P(\omega)\succeq(1-e^{-\omega/4})G\quad(0<\omega\le1/2).                  \tag{1}
\]
There is no restriction on spacing, span or order. The positive Cauchy comparison retains its meaning for nearly colliding nodes. In particular any \(k\le\eta N\) distinct nodes in \([N,\infty)\) satisfy (1) once \(N\ge N_0(\eta)\). For any negative witnesses with minimum node tending to infinity, the reciprocal masses have liminf at least \(1/128\). In particular the whole consecutive integer block \([N,BN]\) passes both tests for all sufficiently large \(N\) if \(1<B<e^{1/128}\), since its reciprocal sum tends to \(\log B\). The constant is an explicit sufficient bound obtained below. For \(\eta=1/256\) one may already take \(N_0=16384\).

For an increasing unbounded integer sampling sequence with convergent reciprocal sum, all sufficiently remote tails are positive, simultaneously in the central and displaced problems. The negative index on its entire admissible sequence is at most the size of a removed prefix, by restriction to the subspace with those coordinates zero. For divergent reciprocal sum the [integer sampling theorem](XiIntegerPickInertia.md) identifies the central negative index on **every** tail with the count of distinct nonreal conjugate pairs of \(X(z)=\xi(1/2+iz)\), and its displaced version counts specified uncancelled poles. Together these statements distinguish convergent and divergent sampling when the underlying negative index is nonzero. The proof of (1) uses gamma and the Euler series directly and requires no information about the disposition of zeros in the critical strip.

## Completing the initial time interval of the arithmetic data

Fix \(b=1/64\). On \(\Re z>1/2\) one has
\[
 L(z)=\tfrac12\log((z+16)/(2\pi))+
 \int_0^\infty h(t)e^{-zt}\,dt-\sum_{n\ge2}\Lambda(n)n^{-1/2}e^{-z\log n},
\quad
 h(t)=\frac{e^{-16t}}{2t}-\frac{e^{-t/2}}{e^{2t}-1}+e^{t/2}.                \tag{2}
\]
Differentiate the gamma and rational factors of xi. The derivative of their logarithmic derivative has Laplace density \(t(e^{-t/2}/(e^{2t}-1)-e^{t/2})\), using the trigamma integral. Subtract the derivative of the explicit logarithm and integrate back using \(L(x)-\tfrac12\log(x/(2\pi))\to0\) as real \(x\to\infty\). The Euler series contributes the last term with the displayed negative sign. All terms converge absolutely after the cancellation at zero in \(h\). [Digamma integral, DLMF §5.9(ii)](https://dlmf.nist.gov/5.9.ii) · [Logarithmic derivative of the Euler product, DLMF 27.4.12](https://dlmf.nist.gov/27.4.E12)

Define \(A(z)\) by retaining the logarithm and the integral over \([0,b]\) in (2). On \(0<t\le b\) one has \(|h(t)|\le12\). Indeed \(0\le[1-e^{-16t}]/(2t)\le8\), and
\[
 \frac{e^{-5t/2}}{2t}\le \frac{e^{-t/2}}{e^{2t}-1}\le\frac1{2t},
\]
so the middle term differs from \(1/(2t)\) by at most \(5/4\). The remaining \(e^{t/2}\) is less than two. On \(\Re z\ge-1/2\) use the principal logarithm to get
\[
 \Re A(z)\ge \tfrac12\log(15.5/(2\pi))-12b e^{b/2}>1/8.
\]
The prime support begins at \(\log 2>b\). The remainder \(H=L-A\) is holomorphic and satisfies \(|H(z)|\le C e^{-b\Re z}\) on \(\Re z\ge2\): extract this exponential from the integral on \([b,\infty)\) and the Euler series, using absolute convergence on the line \(\Re z=2\). For the shifted observations apply the same construction to the average of \(L(z+v)\) over \(-\omega\le v\le\omega\). Its averaged model \(A_\omega\) has real part greater than \(1/8\) on \(\Re z\ge0\). Its residual obeys the same exponential bound, with one uniform constant on \(\Re z\ge3\). We use \(A_0=A\). Exponentiating minus \(2\omega\) times the averaged exact logarithmic derivative gives precisely \(r_\omega\) at the nodes.

## Interpolating a small tail without a separation hypothesis

Consider any holomorphic residual \(H\) on \(\Re z>2\) satisfying the above bound on \(\Re z\ge3\). For the given finite nodes \(x_i\ge N\), set
\[
 B(z)=\prod_i\frac{z-x_i}{z+x_i},\qquad T=\sqrt N .
\]
On \(T\le u=\Re z\le2T<N\) the modulus of each reciprocal factor is largest at \(\Im z=0\). Consequently
\[
 \log |B(z)|^{-1}
 \le\sum_i\log\frac{x_i+u}{x_i-u}
 \le\sum_i\frac{2u}{x_i-u}
 \le\frac{2u\eta}{1-2T/N}.                                                \tag{3}
\]
For any fixed \(\eta<b/2\), put \(d=(b-2\eta)/2>0\). For all sufficiently large \(N\) the ratio \(|H/B|\) on this entire vertical strip is at most \(C e^{-dT}\). Repeating a node as a factor in \(B\) counts its multiplicity in (3). The leading constant two is exact for this strip estimate. At positive real \(u<\min x_i\), the inequality \(\log((1+v)/(1-v))\ge2v\) for \(v=u/x_i\) gives \(\log |B(u)|^{-1}\ge2u\sum_i1/x_i\). Thus for \(u=o(N)\) the quotient by \(u\) is \((2+o(1))\sum_i1/x_i\), with a relative error uniform in the nodes. This does not establish optimality of the harmonic threshold in (1).

To turn the strip estimate into exact interpolation, take a smooth cutoff \(\chi(u)\) vanishing for \(u\le T\), equal to one for \(u\ge2T\), with derivative bounded by \(2/T\). Extend \(\chi H\) by zero on the left. Put \(f=H\bar\partial\chi/B\) on the transition strip and zero elsewhere. A bounded solution of \(\bar\partial U=f\) on the right half-plane is
\[
 U(z)=\frac1\pi\iint f(w)\left(\frac1{z-w}-\frac1{z+\bar w}\right)\,dA(w).
\]
Indeed the first kernel is the fundamental Cauchy kernel for \(\bar\partial\), and the reflected kernel is holomorphic there. The integral converges absolutely and has norm \(\ll T\|f\|_\infty\). For \(|\Im(z-w)|>T\), the kernel difference is at most \(4T/|\Im(z-w)|^2\), integrated over a strip of width \(T\). In the remaining rectangle use \(2/|z-w|\) on the disk of radius \(4T\) and \(1/(2T)\) outside it, since \(|z+\bar w|\ge\Re w\) and \(|z+\bar w|^2-|z-w|^2=4\Re z\Re w\ge0\). These bounds justify the distributional identity locally by truncating in the imaginary direction. Thus
\[
 H_*(z)=\chi H(z)-B(z)U(z)
\]
is holomorphic on the half-plane, by the distributional Cauchy–Riemann equation, has norm \(\ll C e^{-dT}\), and agrees with \(H\) at each node. Near a node, \(U\) is holomorphic, so repeated factors even match the corresponding Taylor jets. The bound is uniform in the number and mutual distances of the nodes. This use of a cutoff exploits the smallness and analyticity of these prescribed data. General bounded data on closely clustered nodes need not admit such a bounded interpolant. For classical bounded interpolation and the role of separation see [W. K. Hayman, *Interpolation by bounded functions*, 1958](https://www.numdam.org/articles/10.5802/aif.81/).

Applying the construction separately for each \(\omega\), with the uniform constants already proved, gives an interpolant \(F_\omega=A_\omega+H_*\) of the actual averaged data with \(\Re F_\omega\ge1/16\) once \(N\) is sufficiently large. For \(\omega=0\), the positive-real kernel for \(F_0-1/16\) gives the central inequality in (1). For \(\omega>0\), the analytic function \(e^{-2\omega F_\omega}\) has norm at most \(e^{-\omega/8}\). Multiplication by its rescaling by \(e^{\omega/8}\) contracts the Hardy space of the right half-plane, whose evaluation kernels have Gram matrix proportional to \(G\); the resulting kernel inequality yields (1). The positive-real kernel follows from the same argument by the Cayley transform. Distinct positive nodes give strictly positive definite \(G\), the Gram matrix of the independent exponentials \(e^{-x_i t}\).

For the stated numerical threshold take \(T=N/8\) and \(\eta=1/256\). On \(t\ge b\), \(|h(t)|\le1/t+e^{t/2}\), so \(\int_b^\infty |h(t)|e^{-2t}dt\le32+2/3\). Also \(\sum_{n\ge2}\Lambda(n)n^{-5/2}\le\sum_{n\ge2}n^{-3/2}\le2\). Including the factors \(e^{2b}\) and \(e^{b/2}\) for real-part extraction and shifting gives the common residual constant \(C=40\). Now \(2T/N=1/4\), so (3) gives \(d=1/192\). The integral norm above is at most \(20T\|f\|_\infty\): the disk, remaining near rectangle and far strip contribute at most \(16\pi T,T,8T\) before division by \(\pi\). Hence \(\|H_*\|_\infty\le840 e^{-N/1536}<1/16\) for \(N\ge16384\).

For an infinite sequence of convergent reciprocal sum one can even choose a single interpolant per shift on the entire sufficiently remote tail. Apply the finite construction along increasing initial segments of the tail and take a locally uniformly converging subsequence of the uniformly bounded corrections by Montel's theorem. Every prescribed sample is eventually fixed. The interpolant is allowed to depend on the sampling set. If a finite matrix has \(d>0\) negative eigenvalues, deleting any \(d-1\) node coordinates still leaves a negative vector by dimension. Thus for deep nodes under the threshold in (1) the sum of the reciprocals remaining after deleting the \(d-1\) largest reciprocals must exceed \(\eta\). Condition (3) is precisely where an unrestricted divergent sampling set falls outside the argument. Positivity there, the unconditional central self-adjoint determinant and the Riemann Hypothesis remain open. The [Lean component](XiPickHarmonicBudget.lean) proves the vertical comparison, the lower and upper individual and finite logarithmic bounds, and their combination with exponential tail decay. The arithmetic completion, the integral solving the interpolation problem and the spectral consequences are analytic arguments.


On such an infinite central tail the common positive-real completion does give a self-adjoint realization of the sampled response. Average \(F_0(z)\) with \(\overline{F_0(\bar z)}\) to preserve its real samples and its margin. The half-plane Herglotz representation, in the normalization where the constant \(c\) has boundary measure \((c/\pi)dt\), yields an even measure \(\mu\ge dt/(16\pi)\) with \(\int(1+t^2)^{-1}d\mu<\infty\) and
\[
 F_0(x)/x=a+\int_{\mathbb R}(x^2+t^2)^{-1}\,d\mu(t),\qquad x>0,\quad a\ge0.
\]
Along the unbounded samples, \(L(x)/x\to0\) by (2), and dominated convergence gives \(a=0\). On \(L^2(d\mu/(1+t^2))\) let \(J\) be real coordinate multiplication on its maximal domain and let \(e=1\). Then for **every sampled** \(x\),
\[
 L(x)/x=\langle (I+J^2)(x^2+J^2)^{-1}e,e\rangle .
\]
The multiplier inside this pairing is bounded. The Lebesgue component forces continuous spectrum and excludes compact resolvent for this realization. Thus exact self-adjoint agreement on the entire convergent tail is compatible with the unresolved central determinant. [Herglotz representation and uniqueness, Gesztesy and Tsekanovskii, Theorem 2.2](https://arxiv.org/abs/funct-an/9712004)

As a failure control, multiply \(\xi(1/2+z)\) by \((2+\cosh(4z))/3\). This preserves the entire imaginary-axis divisor. It adds infinitely many zeros at \((\pm\operatorname{arcosh}2+(2k+1)\pi i)/4\), all inside \(|\Re z|<1/2\). Its contribution to the sampled logarithmic derivative is \(4(1-q^2)/(1+4q+q^2)\), \(q=e^{-4z}\). The positive constant four augments the model, and the residual is uniformly \(O(e^{-4\Re z})\) far to the right, including the bounded shifts. The proof therefore still gives positivity on every convergent-reciprocal tail in this example with infinite transverse divisor. This uses the elementary cosine-factor controls independently examined in the [Poisson-gap study](XiPoissonGap.md). It illustrates the role of the divergent-set obligation in the central determinant problem.

At source blob `80c53c7c731884c7ac08da0271a4d9fcdb25f30b`, the six Lean declarations passed native compilation, explicit fresh kernel replay, and transitive axiom auditing on Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The reported axioms were `propext`, `Classical.choice` and `Quot.sound`. At 3072 bits, independent Arb calculations certified eight strictly positive surplus matrices of orders 8, 27 and 64, subtracting the full right side of (1) before elimination. The order-64 cases used the consecutive integers 16384 through 16447 at the center and at half-shift. Finite calculation gives a check of those instances. External independent review of the analytic theorem is unrecorded.
