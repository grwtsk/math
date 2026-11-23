# Resolvent growth of the modular-cusp realization of xi

The Hilbert–Schmidt inverse \(B\) in the modular-cusp construction has
\(\det_2(I-zB)=\xi(1/2+iz)/\xi(1/2)\). **No bounded invertible
change of Hilbert coordinates makes \(B\) normal.** In particular no
equivalent Hilbert norm makes its densely defined inverse self-adjoint.
This conclusion requires neither RH nor any assumption on multiplicities.
[Geometric pencil, trace class and exact determinant, (7)–(9)](XiModularCuspSpectra.md)

Fix a permitted height \(Y>1\), write \(L=\log Y\), and use the
noncuspidal Green operator \(G\), the vector \(h\) equal to the indicator
below the truncation, \(Q=\sqrt G\), \(C=G-Yh\otimes h\), and
\[
 T=\begin{pmatrix}C&-Q\\Q&0\end{pmatrix},\quad
 c=1/4,\quad B=(i/2)T(I-cT)^{-1}.
\]
The associated quadratic pencil is
\(P(v)=I+v(v-1)G+Yv h\otimes h\). The primary spectral input is the
constant term of the completed Eisenstein series and the spectrum of the
noncuspidal pseudo-Laplacian.
[Müller, Theorem 0.1 and §2](https://arxiv.org/abs/math/0703340)

## Exponential growth off the divisor

Take real \(r>1\), \(v=1/2-r\), \(t=v(v-1)>0\), and \(A=I+tG\).
The rank-one determinant ratio, by (2) and (8) of the construction, is
\[
 \eta=1-Y|v|\langle A^{-1}h,h\rangle
     =\frac{Y^{-r}\xi(2r)}{F_L(r)}
     \sim 2\sqrt{\pi/r}\,Y^{-2r}.
\]
Indeed \(F_L(r)=(r^2-1/4)(Y^r\Lambda(1+2r)+Y^{-r}\Lambda(2r))\)
by the functional equation. In the quotient use
\(\xi(2r)=r(2r-1)\Lambda(2r)\) and
\(\Lambda(2r)/\Lambda(2r+1)\sim\sqrt{\pi/r}\), from Stirling's
formula and the absolutely convergent Dirichlet series. In particular
\(\eta>0\). The inverse rank-one formula gives a sum of positive operators
\[
 P(v)^{-1}=A^{-1}+
      \frac{Y|v|}{\eta}(A^{-1}h)\otimes(A^{-1}h).
\]
Since \(\langle A^{-1}h,h\rangle=(1-\eta)/(Y|v|)\), Cauchy–Schwarz
bounds \(\|A^{-1}h\|\) below by a positive constant times \(1/r\).
Consequently \(\|P(v)^{-1}\|\gg_Y Y^{2r}/\sqrt r\).
The first diagonal compression of \((I-vT)^{-1}\) is exactly this
inverse by Schur elimination with lower diagonal block \(I\).
At \(z=2i(r-1/4)\),
\((I-zB)^{-1}=(I-cT)(I-vT)^{-1}\) and the first factor has a bounded
inverse independent of \(r\). The exponential lower bound follows for
the resolvent \((I-zB)^{-1}\).

On the other hand a normal operator \(N\) with this compact spectrum
satisfies \(\|(I-iyN)^{-1}\|=1\) for all \(y\ge1\).
Indeed the nonzero spectral values are \(1/a\) for the nontrivial xi
ordinates \(a\), and \(|\Im a|<1/2\) unconditionally. The inequality
\(|a-iy|^2-|a|^2=y(y-2\Im a)\ge0\) bounds every scalar resolvent
by one, and zero is in the spectrum. Similarity via a bounded invertible
operator would give the same uniform bound multiplied by its condition
number, contradicting the lower bound. The computation uses a half-line
of absolute Euler convergence to exclude bounded normal similarity.

The exponential rate also distinguishes truncation heights that realize
the same xi determinant. Factor
\(P=A^{1/2}(I-(1-\eta)e\otimes e)A^{1/2}\) with \(e\) the unit
vector in the direction \(A^{-1/2}h\). As \(A\ge I\), this gives
\(\|P^{-1}\|\le\eta^{-1}\) for large \(r\).
The off-diagonal blocks of the full inverse of \(I-vT\) are
\(-vP^{-1}Q\) and \(vQP^{-1}\), and the last block is
\(I-v^2 QP^{-1}Q\). Hence the upper bound for its norm is
\(O_Y(r^2/\eta)\). The fixed invertible factor \(I-cT\) and its
inverse preserve the exponential rate. Writing \(B_Y\) for the
construction at height \(Y\), the two bounds give
\[
       \lim_{y\to\infty}\frac{1}{y}\log\|(I-iyB_Y)^{-1}\|=\log Y .
\]
Bounded similarity preserves this rate. In particular the operators
at distinct permitted heights are pairwise inequivalent under bounded
similarity despite identical normalized determinants.

## Independent check using resonance vectors

Use inner products linear in their first variable. At a nontrivial
zero \(2v\) of xi, the operator \(I+v(v-1)G\) is invertible:
\(0<\Re v<1/2\) and \(\Im v\ne0\) make \(v(v-1)\) nonreal.
Set \(f_v=(I+v(v-1)G)^{-1}h\). The scalar determinant relation gives
\(\langle f_v,h\rangle=-1/(Yv)\). For two such parameters with
\(v\ne\bar u\), subtracting the two resolvents gives
\[
 \langle G f_v,f_u\rangle=
 \frac{-1/(Y\bar u)+1/(Yv)}{v(v-1)-\bar u(\bar u-1)}
 =\frac{1}{Yv\bar u(1-v-\bar u)}.
\]
Subtract \(v(v-1)\) times this from \(\langle h,f_u\rangle\) to get
\(\langle f_v,f_u\rangle=1/[Y(1-v-\bar u)]\). For eigenvectors
\(x_v=(f_v,vQf_v)\) of \(T\), and hence of \(B\), the Gram entry is
twice this last expression. The formula applies on the diagonal since
\(v\) is nonreal.

This yields a second obstruction for self-adjoint similarity. Such
similarity would force RH and would force simplicity: every nonzero
eigenspace is one-dimensional by the rank-one equation, and its algebraic
multiplicity equals the order of its xi zero. Under those consequences
write \(v=1/4+i\gamma/2\). For two distinct positive ordinates, the
normalized correlation of the eigenvectors has modulus
\(c_*=1/\sqrt{1+(\gamma-\gamma')^2}\).
After a phase choice their sum and difference have squared norms
\(2(1+c_*)\) and \(2(1-c_*)\). A similarity that takes the vectors
to orthogonal eigenvectors takes their sum and difference to vectors
of equal norm. Its condition number would be at least
\[
 \sqrt{(1+c_*)/(1-c_*)}=
       \frac{\sqrt{1+(\gamma-\gamma')^2}+1}{|\gamma-\gamma'|}.
\]
The Riemann–von Mangoldt count \(N(T)\sim T\log T/(2\pi)\) forces
arbitrarily small distinct gaps if all zeros are simple, contradicting
this lower bound. The first argument also excludes similarity to a
normal operator with nonreal spectrum.
[Positive-ordinate count with multiplicity, §2](https://arxiv.org/abs/2009.05251)

The three Lean identities are the two scalar Gram simplifications and
the strip-distance inequality. The geometric and asymptotic obstructions
are manuscript proofs. A realization on another Hilbert space whose
norm is inequivalent, or by another arithmetic operator, would require its
own domain, self-adjointness and determinant argument.
[Lean source](XiModularResolventObstruction.lean)

At Lean source blob `4bc14ce968e8cfeb5a6e5080e31297272a7d48a9`, all 3 public declarations built and passed fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The only returned axioms were `propext`, `Classical.choice` and `Quot.sound`. The asymptotic norm identity and the obstruction to bounded normal similarity remain analytic results.
