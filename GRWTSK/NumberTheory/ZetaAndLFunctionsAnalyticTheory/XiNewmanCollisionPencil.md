# Heat collision times of theta Jacobi determinants

grwtsk contributors

At \(T=1/2\), let \(P_n(z)=\det(I-4z^2J_n)\) be the degree \(2n\) determinant of the theta Jacobi compression. Its entries use the first \(2n\) logarithmic moments at \(T\). Denote by \(U_v=\exp(v\partial_z^2/2)\) the finite differential sum on polynomials. For \(v\ge0\) it averages over a centered real Gaussian of variance \(v\). Let \(c_n\) be the last variance for which \(U_vP_n\) has only real zeros. The finite calculations below place \(c_{16}\) near 2.085. Nevertheless
\[
             \limsup_{n\to\infty} c_n\le (T-\Lambda)/2\le 1/4.
\]
This one-sided bound permits real roots at every tested rank. Controlling the first collisions at unbounded ranks remains essential. The [theta sections and trace bounds](XiNewmanGaussianSections.md) supply the Jacobi input. For the normalization and the unconditional time interval see [Polymath, arXiv:1904.12438v2, equations (1)–(4) and Theorem 1.1](https://arxiv.org/pdf/1904.12438v2) and [Rodgers and Tao, Theorem 1](https://doi.org/10.1017/fmp.2020.6).

## A finite matrix with the exact evolved characteristic polynomial

The following construction applies to any monic real polynomial \(p\) of degree \(m\ge2\). Take \(V\) to be the polynomials of degree \(<m\), \(Aq\) the remainder of \(zq\) modulo \(p\), and \(Dq=q'\). Then
\[
                      \det(zI-(A-vD))=U_v p(z).
\]
To prove this, \(U_v\) is a bijection on \(V\), with inverse \(U_{-v}\). The commutator \(\partial^k(zq)=z\partial^kq+k\partial^{k-1}q\) gives \(zU_v q=U_v(zq-vq')\). The discarded part of \(zq\) is a constant multiple of \(p\). Consequently \(U_v\) intertwines the pencil with multiplication by \(z\) modulo \(U_vp\) on \(V\). The latter has the monic characteristic polynomial \(U_vp\), since the class of 1 and its first \(m-1\) iterates form a basis. This also gives the size of each Jordan block at a collision: the minimal polynomial equals the characteristic polynomial. For \(P_n\) apply the result after division by its constant leading coefficient. Neither \(A\) nor \(D\) needs roots as input. In an evaluation basis at simple starting roots this is the matrix of Hall and Ho, after scaling their time by the degree. The quotient proof supplies the coefficient-based realization also at repeated starting roots. [Hall and Ho, arXiv:2202.09660v4, Proposition 3.4 and equations (3.8)–(3.9)](https://arxiv.org/html/2202.09660v4#S3.SS2)

At distinct real starting roots \(r_i\) one may also use polynomial evaluations. Multiplication is then diagonal. If \(\ell_j\) is the Lagrange basis polynomial, its derivative has entries \(\ell_j'(r_i)=p'(r_i)/(p'(r_j)(r_i-r_j))\) off the diagonal and \(\ell_i'(r_i)=\sum_{j\ne i}1/(r_i-r_j)\). A real diagonal similarity leaves these diagonal entries and makes the off-diagonal entries \(1/(r_i-r_j)\). A metric symmetrizing the distinct diagonal matrix must itself be diagonal; no positive diagonal metric symmetrizes a nonzero skew pair. Equivalently \(D\) is nonzero nilpotent and cannot be self-adjoint for any positive metric. There is no single positive metric that symmetrizes the pencil at two distinct variances. At a fixed variance with simple real spectrum it can be symmetrized by transport from an eigenbasis. As one approaches a multiple root from the simple real phase, the condition numbers of all such metrics diverge. Otherwise a sequence normalized to operator norm one would have a positive definite limit, making the defective limiting matrix diagonalizable.

## First collision and the mesh bound

The variances that preserve all real roots form a closed lower interval. Indeed \(U_{-h}\), \(h\ge0\), is the coefficient limit of \((1-hD^2/(2k))^k\). Each factor is a product of \(1\pm\sqrt{h/(2k)}D\). For a real-rooted polynomial \(f\), the graph of \(f'/f\) decreases strictly between its distinct poles, with the two exterior intervals accounting for the remaining root of \(f+c f'\) according to the sign of \(c\). A multiple root of \(f\) of order \(j\) is inherited with order \(j-1\) when \(c\ne0\). Thus each factor preserves reality and closure handles the coefficient limit. For simple starting roots the interval reaches some \(v>0\) by continuity. Its upper endpoint \(c\) is finite: comparing the two highest subleading coefficients of \(U_vp\), the sum of the centered squared roots equals its initial value minus \(vm(m-1)\), which cannot be negative while all roots are real. At \(c\) a multiple root occurs by openness of simple real roots. A multiple real root cannot occur in the interior: at order \(j\ge2\) the local rescaling \(z=r+\sqrt h\,w,\ v=c'+h\) has limiting monic polynomial \(U_1 w^j\), after division by the leading local coefficient and \(h^{j/2}\). This is the imaginary rotation of the degree-\(j\) probabilists' Hermite polynomial, with at least two nonreal roots. The expansion follows term by term from the polynomial heat equation and the roots persist by Rouché. Hence \(c\) is the smallest positive real zero of the discriminant in \(v\). [Polymath, Proposition 3.1(ii), local Hermite splitting](https://arxiv.org/pdf/1904.12438v2#page=12)

Until the first collision the ordered roots satisfy \(r_i'=-\sum_{j\ne i}(r_i-r_j)^{-1}\), obtained by differentiating their zero equations. For a consecutive pair \(a<b\) with gap \(g=b-a\),
\[
 (g^2)'=-4+2g^2\sum_{r_j\notin\{a,b\}}\frac1{(a-r_j)(b-r_j)}\ge-4.
\]
Thus \(c\ge\min_i(r_{i+1}-r_i)^2/4\). For the Jacobi sections this particular lower bound tends to zero: at time \(T>0\) the positive roots of the true heat function have gaps tending to zero at large height by the asymptotic spacing theorem. For any fixed pair of these simple roots the section has nearby roots eventually by local convergence. Taking arbitrarily close fixed pairs proves the assertion, without exchanging a global minimum and a limit. [Polymath, Theorem 1.5](https://arxiv.org/pdf/1904.12438v2#page=9)

## Passage to the true heat threshold

At any fixed \(v\ge0\) with \(8vQ<1\), \(Q=-H_T''(0)/(2H_T(0))<0.006\), the normalized unmonic sections satisfy
\[
 U_vP_n(z)\ \longrightarrow\ H_{T-2v}(2z)/H_T(0)
\]
locally uniformly. Indeed the section product bound is \(|P_n(w)|\le e^{4Q|w|^2}\). For \(w=z+G_v\) with \(G_v\sim N(0,v)\), on a compact disk choose a small \(\epsilon>0\) such that \(8vQ(1+\epsilon)<1\), and bound \(|w|^2\le(1+\epsilon)G_v^2+(1+1/\epsilon)|z|^2\). Dominated convergence and the cosine transform of the Gaussian give the claimed limit. For every \(v\) just above \((T-\Lambda)/2\) this function has a nonreal zero. A closed disk about it can be chosen disjoint from the real axis and with a zero-free boundary. Eventually \(U_vP_n\) has a zero in that disk; hence \(c_n<v\) for all sufficiently large \(n\). Let \(v\) decrease to the threshold. Even a subsequence with \(c_n\to1/4\) from below would therefore suffice for RH. No lower asymptotic bound of that strength follows here.

Local uniform convergence alone cannot control the first collision from below. The normalized polynomials with roots \(\pm M,\pm(M+1/M)\) converge to 1 locally as \(M\to\infty\), and their fixed-variance averages converge to 1 as well. For \(A=M^2,B=(M+1/M)^2\), the discriminant in \(z^2\) of their Gaussian average is proportional to \((A-B)^2-8v(A+B)+24v^2\). It is negative at \(v=M^{-2}\) for large \(M\). Their first collisions tend to zero while every heat evolution of the limit remains zero-free.

[Interval Sturm calculations](../../../scripts/verify_xi_newman_collision_pencil.py) certify the first-collision variance to an interval of width at most \(2^{-16}\) at every rank from 1 through 16 using the theta-moment source. At the lower endpoint the polynomial in \(z^2\) has \(n\) distinct positive roots; at the upper it has fewer, with constant nonzero last Sturm remainder and no root at zero. The binomial Gaussian coefficient formula evaluates the actual pencil characteristic polynomial. For example \(c_{12}\in(133421/65536,66711/32768)\) and \(c_{16}\in(136643/65536,34161/16384)\). The ordered bounds certify increases as well as decreases in rank. They supply no numerical lower or upper bound for \(\Lambda\) on their own.

The [Lean source](XiNewmanCollisionPencil.lean) proves the polynomial commutator, two-root force identity, squared gap differential inequality under the stated interaction sign, and incompatibility of a positive diagonal metric. The matrix identification, heat threshold and infinite-rank argument are manuscript mathematics.

At Lean source blob 208de99d940c881d0d6cd7e6ad70edae9c5d6830, all 5 named public declarations passed elaboration and fresh kernel replay (5 roots, 13397 declarations). Their transitive axioms are subsets of propext, Classical.choice and Quot.sound. The analytic argument has not had independent external review.
