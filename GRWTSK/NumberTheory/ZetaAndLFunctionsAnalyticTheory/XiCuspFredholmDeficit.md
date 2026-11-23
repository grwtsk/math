# A one-point Fredholm test on the modular almost-periodic space

Let \(X(z)=\xi(1/2+iz)\), and let \(A_Y=H_Y^{-1}\) be the
self-adjoint Hilbert–Schmidt generator obtained from the almost-periodic
orbits of the modular cusp operator. Fix \(1<Y<4\pi e^{-\gamma_E}\).
The target identity for every complex \(z\) is equivalent to one scalar
equality in the positive trace-class determinant
\[
 \boxed{\quad\sqrt{\det(I+\tfrac94 A_Y^2)}
                   =\frac{\pi}{6\,\xi(1/2)}.\quad}
\]
The left side is bounded above by the right side unconditionally.
The positive square root is essential because the trace-class
determinant counts both signs of each ordinate. This test requires a
lower bound or equality at a point of absolute Euler convergence. The
geometric construction gives an upper bound. [Almost-periodic modular
space and multiplicity theorem](XiCuspAlmostPeriodicTower.md)

**Proof.** The Fredholm product for \(A_Y\) includes the exact positive
real ordinates and their negatives with analytic multiplicities. The
full modular determinant of \(B_Y\) includes every zero.
Its normalization and the functional equation give
\(X(3i/2)/X(0)=\xi(-1)/\xi(1/2)=\pi/(6\xi(1/2))\).
Divide by the real-axis product, in which the exponentials of opposite
regularized factors cancel. The full normalized product converges
normally since the reciprocal ordinate squares are absolutely summable.
There are no imaginary-axis ordinates, because \(\xi(s)>0\) on the
real interval \([0,1]\) (e.g. the alternating eta series in the
interior). The omitted ordinates consequently occur in distinct
quartets \(a,-a,\bar a,-\bar a\), with \(a=x+iy\) chosen in the
first quadrant. In that quartet the quotient contributes
\[
  \left|1+\frac{b}{a^2}\right|^2 =
  1+\frac{2b}{|a|^2}
    +\frac{b(b-4y^2)}{|a|^4},\qquad b=\frac94.
\]
Every factor is strictly greater than one since \(0<y<1/2\)
unconditionally. Thus a single omitted quartet forces a strict
deficit, with no cancellation and no assumption of simple zeros.
Conversely an empty complement gives the entire identity. The
conclusion relies on the arithmetic identification of the spectrum of
the tower with every real ordinate including multiplicity.
[Full modular determinant and Schur complement](XiModularCuspSpectra.md)

More quantitatively let \(D\) be the right side divided by the left
side of the boxed display. Write \(N_{\rm off}(T)\) for the number of
omitted ordinates with \(|\Re a|\le T\), including all signs and
multiplicities. For \(T\ge0\),
\[
 N_{\rm off}(T)\ \le\
 \frac{4\log D}{\log\big(1+9/(2(T^2+1/4))\big)} .
\]
Each counted quartet has \(|a|^2\le T^2+1/4\); all other factors are
at least one. The bound follows by taking logarithms. A finite
upper bound on \(\log D\) yields only a finite-height exclusion when
it falls below the cost of one quartet. A proof that \(\log D=0\)
would establish the full determinant identity. The scalar quartet
identity and strict lower bound are proved in Lean. The infinite
product identification and the boxed equivalence use the manuscript
operator results. [Lean source](XiCuspFredholmDeficit.lean)

## An exact normal realization from all rotations of the surface evolution

For every \(\theta\in[0,\pi)\) apply the almost-periodic orbit and
finite-chain construction to \(e^{-i\theta}B_Y\), obtaining its Hilbert
space \(V_\theta\) and bounded self-adjoint time generator \(A_\theta\).
Take the Hilbert **direct sum** indexed by the discrete set of all
these angles, and define
\[
                N_Y=\bigoplus_{0\le\theta<\pi}e^{i\theta}A_\theta .
\]
Every direction is specified before any zeros are identified. A Lebesgue
direct integral would discard the nonzero summands.

The orbit Fourier calculation applies separately to every rotated
bounded operator. Injectivity excludes a zero-frequency chain. A
nonzero eigenvalue \(\lambda\) of \(B_Y\) occurs at the unique angle
modulo \(\pi\) for which \(e^{-i\theta}\lambda\) is real. Its signed
frequency there has its full algebraic multiplicity by exhaustion of
the kernels of powers by the finite chains. Conversely every nonzero
frequency arises this way. Compactness of \(B_Y\) implies countably
many active angle spaces and finitely many frequencies outside each
disk about zero. Thus \(N_Y\) is compact, normal and injective, with
\(\|N_Y\|_2^2\le\|B_Y\|_2^2\) by the Hilbert–Schmidt eigenvalue
inequality. Its inverse \(H=N_Y^{-1}\) multiplies by the reciprocal
complex frequencies, on the dense domain where the resulting squared
norms are summable. This proves closedness and normality, including
equality of the domains of \(H,H^*\). The absolutely convergent
regularized eigenvalue product now gives exactly
\(\det_2(I-zH^{-1})=X(z)/X(0)\) everywhere with all analytic
multiplicities, regardless of completeness of root vectors in the
original surface norm.

Self-adjointness of this particular exact normal realization is
equivalent to vanishing of the finite nonnegative quantity
\[
 D_\perp=\operatorname{Tr}((\operatorname{Im}N_Y)^2)
  =\sum_\theta\sin^2\theta\,\|A_\theta\|_2^2
  =\tfrac12\left(\|N_Y\|_2^2-\xi''(1/2)/\xi(1/2)\right).
\]
The first identities follow on the individual rays. Comparing second
logarithmic derivatives of the two determinants gives the last, since
\({\rm Tr}(N_Y^2)=\xi''(1/2)/\xi(1/2)\).
On a zero \(\beta+i\gamma\) the contribution is
\((\beta-1/2)^2/((\beta-1/2)^2+\gamma^2)^2\) times its multiplicity.
The critical strip and the Riemann–von Mangoldt count give the
unconditional tail \(O(T^{-3}\log T)\) by dyadic summation for
\(|\gamma|>T\). A finite tail estimate cannot prove exact vanishing.

There is a second test directly on the surface. Spectral mapping and
the spectral-radius formula give
\[
 \lim_{t\to+\infty}t^{-1}\log
   \max(\|\exp(itB_Y)\|,\|\exp(-itB_Y)\|)
       =\max_{\lambda\in\sigma(B_Y)}|\operatorname{Im}\lambda|.
\]
Apply the spectral-radius formula to the two exponentials at integer
times. The fractional part changes each log norm by at most
\(\|B_Y\|\), using bounded-time evolution in both directions. A
geometric upper bound \(e^{o(t)}\) for both signs would therefore imply
self-adjointness in the angular construction. Such a bound can
accommodate Jordan blocks and unbounded resonance projections.
The angular construction is an analytic normal realization. Vanishing
of its transverse trace, the geometric upper bound, and an
end-to-end Lean theorem are open.

A second self-adjoint comparison is supplied by \(H_{\rm ht}=\Re H\)
in the same spectral coordinates. Indeed \(\Im H\) is bounded by
\(1/2\) by the critical strip. Consequently \(\Re H\) is self-adjoint
on the full domain of \(H\). Every eigenvalue is a signed ordinate
\(\gamma\), with all multiplicities including off-line pairs; zero
is absent, and there is no finite accumulation. Its inverse is
Hilbert–Schmidt since \(|\gamma|\sim|\gamma+i(1/2-\beta)|\) at
infinity. For \(s=y^2>0,\ x=\gamma^2>0,\ q=(1/2-\beta)^2>0\),
a quartet contributes to the height determinant and the exact
determinant, respectively,
\[
 A=(1+s/x)^2,\qquad Z=1+\frac{2s(x-q)+s^2}{(x+q)^2}.
\]
Their difference is
\(q(6s+2sq/x+2s^2/x+s^2q/x^2)/(x+q)^2>0\).
Critical-line contributions agree. Thus at \(y=3/2\) there are
two independently defined geometric self-adjoint operators bracketing
the same number:
\[
 \det_2(I-\tfrac32 i A_Y)\ \le\ \frac{\pi}{6\xi(1/2)}
       \ \le\ \det_2(I-\tfrac32 i H_{\rm ht}^{-1}).
\]
Either equality forces both, by strictness at every omitted quartet.
This narrows the comparison to real positive determinants; their
equality has not been proved.

At Lean source blob **06873c77aca8a0eae481c6c05b97ed5a258a443a**, both scalar quartet declarations built with Lean 4.34.1, passed fresh kernel replay, and passed transitive axiom audit with only propext, Classical.choice and Quot.sound. The Hilbert spaces and operator comparisons above remain manuscript results.
