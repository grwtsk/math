# A monotone spectral defect of the central Jensen polynomials

Write \(X(z)=\xi(1/2+iz)\), and \(g(w)=X(\sqrt w)/X(0)=\sum b_k w^k\).
Evenness makes \(g\) single-valued. Its coefficients are given by the
theta integral, with \(b_0=1\) and \((-1)^k b_k>0\).
For \(n\ge1\) set
\[
 P_n(w)=\sum_{k=0}^n b_k(n)_k w^k/n^k,\qquad
 A_n(t)=\sum_{k=0}^n b_k(n)_k t^{n-k},
\]
where \((n)_k=n!/(n-k)!\). Let \(r_{nj}\) be the roots of \(A_n\) divided
by \(n\), with algebraic multiplicities. These are the reciprocal roots
of \(P_n\). Both finite objects use only central Taylor coefficients.
[Central Jensen polynomials, Griffin–Ono–Rolen–Zagier, 2019](https://arxiv.org/abs/1902.07321)
[Theta coefficient normalization and center bound](XiCoefficientHankelOperator.md)

**Proposition.** The theta-coefficient numbers
\[
 d_n=\sum_{j=1}^n |r_{nj}|+b_1
\]
are nonnegative and nondecreasing. Their limit is finite and equals
\[
 \sum_{g(\alpha)=0}\left(|1/\alpha|-\Re(1/\alpha)\right),
 \tag{1}
\]
counting orders. It vanishes exactly when every nontrivial zeta zero is on
the critical line. For every \(n\), each reciprocal Jensen root lies in
the sector \(\Re r\ge(7/9)|r|\). The corresponding finite self-adjoint
diagonal matrices with entries \(\pm\sqrt{|r_{nj}|}\), padded by zeros
and arranged in decreasing magnitude within each sign, converge in
Hilbert–Schmidt norm. This conclusion holds without assuming the roots of
any Jensen polynomial are real.

**Monotonicity.** Coefficient comparison gives \(A_n'=nA_{n-1}\).
Write \(D=\mathrm{diag}(nr_{nj})\), and let \(P\) project onto the
orthogonal complement of the constant unit vector in \(\mathbb C^n\).
The characteristic polynomial of \(PDP\) on that hyperplane is
\(A_n'/n\): at a regular point the normalized sum of the diagonal
resolvents is \(A_n'/(nA_n)\), and the cofactor formula identifies the
numerator. Multiplication through by the denominator also treats
multiple roots. For \(n\ge2\), the sum of the eigenvalue moduli of this
compression is at most its trace norm (Schur triangularization and trace
duality). Factor \(D=|D|^{1/2}U|D|^{1/2}\) with commuting unitary polar
factor. The Hilbert–Schmidt product inequality gives
\[
 \|PDP\|_1\le\|P|D|^{1/2}\|_2\,\|U|D|^{1/2}P\|_2
   =\operatorname{tr}(P|D|)=(1-1/n)\operatorname{tr}|D|.
\]
Dividing by \(n-1\) proves the monotonicity. Vieta gives
\(\sum_j r_{nj}=-b_1\) exactly, hence nonnegativity.

**Sector bound.** The unconditional Hadamard product for the order-at-most-
one-half function \(g\) is \(g(w)=\prod(1-\lambda w)\),
\(\lambda=1/\alpha\), with \(\sum|\lambda|<\infty\). This product is used
to prove convergence and identify the answer. The finite sections themselves
are specified above by Taylor coefficients. Write \(\alpha=z^2\) with
\(X(z)=0\). The classical strip gives \(|\Im z|\le1/2\); also \(|z|>3/2\),
since coefficient positivity bounds \(|g(w)-1|\le \xi(2)/X(0)-1<1\)
on \(|w|\le9/4\), using \(X(0)>1/3\), \(\xi(2)=\pi/6\).
Thus \(\Re\lambda/|\lambda|=1-2(\Im z)^2/|z|^2\ge7/9\).
[Classical xi and strip](https://dlmf.nist.gov/25.10)
[Theta-integral estimate](XiCoefficientHankelOperator.md)

In a finite partial product apply its factors \(1-\lambda\partial_t\)
to \(t^n\). If a monic polynomial \(p\) has roots \(s_j\), the roots
of \(p-\lambda p'\) are the eigenvalues of
\(\mathrm{diag}(s_j)+\lambda\mathbf1\mathbf1^*\) by the determinant
lemma. Its numerical range lies in the sector whenever the \(s_j\) and
\(\lambda\) do, because this sector is a closed convex cone. Induct from
\(t^n\). For fixed \(n\), taking limits of the first \(n+1\) coefficients
in the partial products yields exactly \(A_n=g(\partial_t)t^n\).
Root continuity and positive rescaling prove the assertion for \(r_{nj}\).

**Convergence including small reciprocal roots.** The falling-factorial
multipliers of \(P_n\) tend to one at fixed index and are in \([0,1]\).
Absolute convergence of the entire series yields \(P_n\to g\) locally
uniformly. For a circle avoiding zeros, Rouché's theorem pairs all zeros
in the disk, including orders. Hence the corresponding reciprocal roots
outside any continuity radius \(\epsilon>0\) can be paired with the
\(\lambda\)'s there with errors tending to zero. There are no unbounded
reciprocal roots, since \(g(0)=1\). Their real-part totals at every level
and in the limit equal \(-b_1\), by Vieta and the absolutely convergent
product respectively. After removing the finitely many matched entries,
the sector bound controls the sum of *all* remaining moduli by \(9/7\)
times the remaining real-part sum. Taking \(n\to\infty\) and then
\(\epsilon\downarrow0\) proves (1) and convergence of the multisets in
the sum of absolute matching errors after padding by zeros.
In particular the decreasing modulus lists converge in \(\ell^1\);
on the line sorting decreases the cost of a matching. The inequality
\((\sqrt a-\sqrt b)^2\le |a-b|\) gives the claimed Hilbert–Schmidt limit.

The limit has a positive and a negative eigenvalue for each modulus
occurrence. Inverting on the maximal diagonal domain gives a densely
defined self-adjoint operator with compact Hilbert–Schmidt inverse.
Its paired regularized determinant is
\(\prod_{\lambda}(1-z^2|\lambda|)\). It agrees with \(X(z)/X(0)\)
exactly if (1) vanishes: equality forces the second coefficients in
\(z\) to match, and conversely every term of (1) is nonnegative. In
particular radial projection loses the arguments whenever an off-line
zero exists. No bound forcing (1) to vanish is known from this argument.

**Additional count.** The number of nonreal reciprocal Jensen roots
(counted with order) is nondecreasing and tends to the number of nonreal
zeros of \(g\), allowing infinity. Rolle's theorem with multiplicity and
the Appell identity give monotonicity. Local convergence about any finite
collection of nonreal zeros gives the lower bound for the limit. For the
upper bound when there are \(M<\infty\) nonreal zeros, first apply all
their \(1-\lambda\partial_t\) factors to \(t^n\) in conjugate pairs.
The result is real and divisible by \(t^{\max(n-M,0)}\), so has at most
\(M\) nonreal roots. Applying each positive real \(\lambda\) preserves
this bound: the derivative of \(e^{-t/\lambda}p(t)\) contributes the
multiplicities diminished by one at the distinct real roots, a zero
between each pair, and a zero to the right of the last root because the
weighted function tends to zero there. With no real roots the original
bound is automatic. Taking the fixed-degree limit cannot introduce
additional nonreal roots, by disjoint nonreal isolating disks.

The count differs from hyperbolicity of fixed-degree Jensen polynomials
as their derivative shift grows. Here the shift is zero and the degree
tends to infinity. The formal module proves the exact coefficient and
derivative identities over a commutative semiring. The matrix comparisons,
sector transfer, divisor limit and equivalence above are manuscript
arguments; their Lean verification and independent review are `NOT_RUN`.
[Formal Appell identity](XiJensenAppell.lean)
[Prior xi Jensen degree and shift results](https://arxiv.org/abs/1910.01227)

As a finite arithmetic check, interval evaluation of the central xi
Taylor series and complex polynomial root isolation gave distinct,
positive reciprocal roots in degrees 4, 8, 16 and 32. At each degree
the disjoint real projections of the isolating boxes pair each root
with its own complex conjugate. On the comparison polynomial
\((1-w)^2(1-w/2)(1-4w+5w^2)\), two nonreal roots are isolated at
degrees 16, 64, 256 and 1024. The corresponding defects are within
\(10^{-10}\) of 0.2617234125, 0.4128150500, 0.4568230731 and
0.4682766165, respectively; their predicted limit is \(2\sqrt5-4\).
These computations illustrate the count and its limit without extending
the known xi hyperbolicity range.
