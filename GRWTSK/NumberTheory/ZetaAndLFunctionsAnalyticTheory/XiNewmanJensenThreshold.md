# Finite heat polynomials whose first collision times converge to the Newman threshold

grwtsk contributors

There is an unconditional sequence of finite theta polynomials for which the *global* first collision variances tend to \((1/2-\Lambda)/2\). The construction selects its starting polynomials by finite real-root tests at a mesh of heat times. It uses neither \(\Lambda\) nor zeta ordinates as input. It produces a Hilbert–Schmidt limit of finite self-adjoint inverses at the endpoint, counts multiple zeros there, and gives a necessary and sufficient family of finite inequalities for the specialization to xi. Proving the inequalities at unbounded ranks remains open.

Set \(T=1/2,\ F_t(z)=H_t(2z)\), so \(\partial_tF_t=-\partial_z^2F_t/4\), \(F_0(z)=\xi(1/2+iz)/8\), and \(F_t(0)>0\) for real \(t\). We use the positive theta kernel and \(0\le\Lambda<T\) from [D. H. J. Polymath, arXiv:1904.12438v2, (1)–(4) and Theorem 1.1](https://arxiv.org/pdf/1904.12438v2) and [Rodgers and Tao, Theorem 1](https://doi.org/10.1017/fmp.2020.6). For the classical Jensen criterion and its zeta application see [Griffin, Ono, Rolen and Zagier, arXiv:1902.07321v2, introduction](https://arxiv.org/pdf/1902.07321v2). The [fixed-time central Jensen construction](XiJensenAppell.md) and the [fixed-time Gaussian Jacobi sections](XiNewmanGaussianSections.md) supply comparisons. The convergence of first collisions below uses a time chosen separately at each degree.

## A finite choice of seed

For \(N=2n\) set
\[
 J_NF(z)=\sum_{k=0}^N \frac{(N)_k}{N^k}\frac{F^{(k)}(0)}{k!}z^k .
\]
The descending factorial is \((N)_k=N!/(N-k)!\). For \(F_t\) this is an even polynomial of degree exactly \(N\); the theta integral gives strictly alternating, nonzero even coefficients.

For each \(t\ge\Lambda\), \(J_N F_t\) has \(N\) distinct real roots, even if \(F_t\) itself has a multiple root. Indeed the paired Hadamard product for \(F_t/F_t(0)\) is a product of real linear factors in opposite pairs with locally uniform convergence. There are infinitely many factors. The reciprocal of the Jensen polynomial, up to scaling and reversal, is \(F_t(D)x^N\), where \(D=d/dx\). Only derivatives at the origin through order \(N\) enter this expression. Reserve at least \(N\) nonconstant real factors; truncate the remaining product in pairs. Acting on \(x^N\), the remaining factors preserve real roots by the logarithmic derivative argument for \(1+cD\). The limit also has all roots real and is monic after normalization. Each reserved factor reduces every inherited multiplicity by one and makes each new root simple: away from the old roots the equation is \(p'/p=-1/c\), with strictly negative derivative. After the reserved factors act, all roots are simple. The constant term of \(F_t(D)x^N\) is \(F_t^{(N)}(0)\ne0\), so reversal loses none. The product and growth justifications follow from the [theta product argument](XiNewmanJacobiLimit.md).

Partition \([0,T]\) into \(n\) intervals of length \(T/n\). In the interior of each choose a rational time with square-free \(J_N F_t\), and determine whether it has \(N\) real roots. Include \(T\) as an additional, always passing sample. Let \(s_n\) be the least chosen time whose polynomial passes. These operations can use only computable theta integrals. In detail, the discriminant is real analytic in \(t\) and is nonzero at \(T\), so its zeros on \([0,T]\) are finite. At a square-free input the roots can be certified by disjoint rational disks and interval Rouché tests, pairing disks under conjugation and using a real-centered disk with count one for each real root. Coefficients have arbitrary precision from the rapidly decaying theta integral with computable tails. One may use a signed Sturm chain on the polynomial in \(z^2\) when all required signs can be certified. For a fully specified selection enumerate each cell's rationals by denominator and numerator, and dovetail coefficient enclosures and disk tests for increasing budgets, resolving simultaneous successes in enumeration order. This always terminates in every cell. The conclusions below hold for any such choices. The finite fixture uses the midpoint in the first cell when its test succeeds.

One has \(s_n\le\Lambda+2T/n\). Use the first full cell strictly above \(\Lambda\), or the sample \(T\) if no such cell fits. In fact \(s_n\to\Lambda\). To prove the lower bound on subsequential limits, let \(s_{n_j}\to s\). From the product representation of the falling factorial, the weights tend to one at every fixed \(k\) and lie in \([0,1]\). The theta integral gives local uniform convergence \(J_{2n_j}F_{s_{n_j}}\to F_s\), also proved in the next paragraph. If \(s<\Lambda\), \(F_s\) has a nonreal zero, which Rouché transfers to these passing sections. Thus \(s\ge\Lambda\). A passing finite seed can lie below \(\Lambda\).

## Transport and collision convergence

Let \(U_v=\exp(vD^2/2)\) on polynomials and define
\[
 P_n(z)=U_{-(T-s_n)/2}J_{2n}F_{s_n}(z),\qquad
 c_n=\max\{v\ge0:U_v P_n\text{ has only real roots}\}.
\]
At the seed variance \((T-s_n)/2\) the exact transported polynomial is the passing seed. At the anchor \(T\), the reverse Gaussian operator preserves real roots. Both polynomials have full degree. The finite collision result gives a computable \(c_n\) with \(c_n\ge(T-s_n)/2\). For example, bracket it by searching rationals with certificates of simple real roots below and at least one nonreal root above. Such rationals are dense on their respective sides, and a second-moment bound gives a finite search ceiling. [Collision pencil and monotonicity](XiNewmanCollisionPencil.md)

Uniformly for \(s,t\) in any fixed compact real intervals and for \(z\) on compact disks,
\[
 U_{(s-t)/2}J_NF_s(z)=F_t(z)+O(1/N).
\]
For its proof write \(w=z+\sqrt{(s-t)/2}\,G\), where \(G\) is a real standard Gaussian and the square root is purely imaginary when \(s<t\). Integration of a polynomial at \(w\) gives the indicated finite differential sum by the Gaussian moments. The exact same expectation applied to \(F_s\) gives \(F_t\) by the Gaussian characteristic function, continued to imaginary shifts. The theta integral for \(J_NF_s(w)\) uses the average of \((1\pm2iwu/N)^N\) in place of \(\cos(2wu)\). For all \(k\), with the multiplier set to zero past \(N\), its difference from 1 in absolute value is at most \(k(k-1)/(2N)\). For \(k\le N\) this is the elementary product lower bound \(1-\sum j/N\), and beyond \(N\) the bound is at least one. Taylor summation gives the error bound \((2u|w|)^2 e^{2u|w|}/(2N)\) before the theta integral. On the specified compact sets \(|w|\le R+C|G|\). Completing the Gaussian square bounds the expectation of the numerator by a polynomial in \(u\) times \(e^{C_1u+C_2u^2}\), integrable against the double-exponentially decaying kernel. This proves the uniform error and Fubini justifications, including both signs of the variance. Cauchy estimates on larger disks give the same order for each fixed spatial derivative.

For \(v>(T-\Lambda)/2\), the limit \(F_{T-2v}\) has a nonreal zero. The uniform estimate transfers a zero in a nonreal disk to \(U_v P_n\) eventually, yielding \(\limsup c_n\le(T-\Lambda)/2\). The seed bound yields the opposite inequality for the liminf. In particular,
\[
 c_n\longrightarrow (T-\Lambda)/2,\qquad
 T-2c_n-2T/n\ \le\ \Lambda .
\]
Taking the running maximum of the latter lower bounds, optionally including 0, gives convergent lower approximations to \(\Lambda\). Certified rational lower approximants can be substituted using upper brackets for \(c_n\) of width tending to zero. The construction provides no uniform rate for the convergence from below of the resulting bounds.

Under RH every first-cell sample passes, so \(s_n\le T/n\). Conversely the limit just proved and \(\Lambda\ge0\) show the equivalences
\[
 \mathrm{RH}\ \Longleftrightarrow\
      \bigl(\forall n,\ c_n\ge (T/2)(1-1/n)\bigr)
 \ \Longleftrightarrow\
      c_n\ge(T/2)(1-1/n)\ \text{for infinitely many }n .
\]
Each finite test concerns a polynomial pencil built from theta moments. The equivalence uses the unconditional convergence of the thresholds; extrapolation from the first several ranks would not prove its right-hand condition.

## Endpoint operator from the actual simultaneous collision sections

Put \(Q_n=U_{c_n}P_n\). At these polynomials' own first collisions the time parameters \(T-2c_n\) tend to \(\Lambda\). Hence \(Q_n\to F_\Lambda\) locally uniformly, with convergence of derivatives, and \(Q_n(0)>0\) eventually. Use those indices. On a fixed doubled sequence space place the signed reciprocals of the positive eigenvalues of multiplication by \(z\) modulo \(Q_n\) in nonincreasing reciprocal magnitude, padding by zero. For each positive eigenvalue use its algebraic multiplicity and a pair of opposite signs. These are finite *self-adjoint diagonal representatives*. The quotient pencil itself can have a Jordan block at this time. Its characteristic polynomial is specified by the finite construction before any roots are identified.

For each index the positive reciprocals converge to the reciprocal of the corresponding positive zero of \(F_\Lambda\) listed with multiplicity. Isolating finitely many zeros by disjoint disks and using the argument principle gives this without choosing eigenvectors across collisions. There are no roots of \(Q_n\) near zero for large \(n\). The squared norm of the doubled reciprocal vector is \(-Q_n''(0)/Q_n(0)\), by its paired polynomial product. This tends to \(-F_\Lambda''(0)/F_\Lambda(0)\), exactly the sum of squares of the limiting reciprocal vector by the endpoint Hadamard product. Coordinate convergence and convergence of the squared norms give strong \(\ell^2\) convergence (first test on finite support to get weak convergence). The diagonal operators thus converge in Hilbert–Schmidt norm to \(K\). Its nonzero diagonal entries give a dense range and a self-adjoint inverse on the maximal diagonal domain. Pairing the signed determinant factors gives
\[
              \det{}_2(I-zK)=F_\Lambda(z)/F_\Lambda(0).
\]
This reobtains the endpoint determinant by finite *first collision* sections. Specializing to xi requires the unbounded-rank inequality above. If every endpoint zero is simple, the multiple roots of \(Q_n\) necessarily escape every compact set: a bounded subsequence would have a common limiting zero of \(F_\Lambda\) and \(F_\Lambda'\). No simplicity assumption is needed for the operator argument.

## Bias near an isolated double root

For any double root \(F_\theta(x)=F_\theta'(x)=0\) with \(A=F_\theta''(x)\ne0\), let \(B=F_\theta'''(x)\), \(C=F_\theta^{(4)}(x)\), and write \(h=1/N\). In a fixed sufficiently small neighborhood the value and slope of \(J_NF_t(z)\) vanish simultaneously at a unique nearby real pair. For large \(N\) its coordinates are
\[
\begin{aligned}
 t_N&=\theta-2x^2 h+
       \left(-2x^2+\frac{4x^3B}{3A}\right)h^2+O(h^3),\\
 x_N&=x+xh+
       \left(x+\frac{x^3}{3}\left[(B/A)^2-C/A\right]\right)h^2+O(h^3).
\end{aligned}
\]
These are local collisions of the Jensen family as its *seed time varies*. The transported polynomial at a fixed seed has a different heat parameter. The formulas make no assertion that a bounded double root exists at \(\Lambda\).

Indeed, expansion of the descending factorial gives the locally uniform differential estimate
\[
 J_NF=F-hz^2F''/2+h^2(z^3F'''/3+z^4F^{(4)}/8)+O(h^3).
\]
For \(k\le N\) apply the first three Bonferroni bounds to \(\prod_{j<k}(1-j/N)\): the remainder after the second elementary symmetric sum is bounded by the third, at most \((\sum_{j<k} j/N)^3/6\). This follows also from inclusion–exclusion for independent events of probabilities \(j/N\). The second sum is \(h^2((k)_3/3+(k)_4/8)\), by summing \(ij\) for \(0\le i<j<k\). For \(k>N\) the quadratic truncation is bounded by a constant times \(h^3 k^6\) as well, since \(hk^2\ge1\). Cauchy bounds on a larger disk let us sum these remainders, including derivatives and uniformly on a small complex time neighborhood. The Jacobian of \((F,F')\) with respect to \((t,z)\) at the double root has determinant \(-A^2/4\), so the perturbed equations have a unique nearby solution for large \(N\). For instance, multiply by the inverse fixed Jacobian and apply contraction on a small closed real ball, using uniform convergence of derivatives; shrink the ball to make the derivative error strictly below one. Conjugation or the real contraction gives a real solution.

Writing \(t_N=\theta+vh+wh^2,\ x_N=x+uh+yh^2\) to second order, the first equations are \(-Av/4-x^2A/2=0,\ Au-Bv/4-xA-x^2B/2=0\). They give \(v=-2x^2,u=x\). Substitution in the second order equations leaves
\[
 -Aw/4-x^2A/2+x^3B/3=0,\qquad
 Ay-Bw/4-xA-x^2B/2+x^3 C/3=0.
\]
Solving gives the displayed coefficients. Their residual in the two original equations is \(O(h^3)\); the uniform contraction bound turns that residual into an \(O(h^3)\) coordinate error.

## Convergence speed if RH fails

If \(\Lambda>0\), then at least one endpoint zero has a finite ordinate and multiplicity \(m\ge2\). Indeed on a fixed compact time interval centered at \(\Lambda\) and bounded away from zero the exterior simplicity theorem puts all potentially exceptional zeros in a common bounded region. Choose the two vertical cuts away from the endpoint zeros and outside that region, and horizontal cuts beyond the zero strip. If all the finitely many enclosed zeros were simple, small disjoint conjugation-invariant disks and Rouché would keep them simple and real for slightly smaller times; the zero count on the remaining compact set would stay zero. This contradicts the definition of \(\Lambda\). [Uniform exterior bound for positive times](XiNewmanEffectiveEscape.md)

Write \(\sigma_n=T-2c_n\). At any endpoint zero \(x\) of order \(m\ge2\), there exists \(C_x>0\) such that for all sufficiently large \(n\)
\[
                 \Lambda-C_x n^{-2/m}\le\sigma_n\le\Lambda+2T/n .
\]
For the lower bound take \(\delta>0\) small. At time \(\Lambda-\delta\) the local scaling \(z=x+\sqrt\delta\,w\), after division by \(\delta^{m/2}\), tends to a nonzero constant times \(\exp(\partial_w^2/4)w^m\). This is the local heat splitting law in the \(F_t=H_t(2z)\) convention. It follows by the locally analytic Taylor expansion and the heat equation, or by [Polymath, Proposition 3.1(ii)](https://arxiv.org/pdf/1904.12438v2). Take a fixed circle enclosing one simple nonreal root of the limiting polynomial and avoiding the real axis. On the resulting shrinking circle the true function has modulus at least \(a\delta^{m/2}\), \(a>0\). The uniform heat-transport error on the containing fixed compact set is at most \(b/n\). Taking \(\delta=C_x n^{-2/m}\) with \(a C_x^{m/2}>b\) forces the transported finite polynomial to have a nonreal root there. The first collision has therefore already occurred at this time. The upper bound follows from \(\sigma_n\le s_n\). This gives an algebraic convergence rate if RH fails, with exponent depending on a genuine finite endpoint multiplicity.

At a double endpoint root the lower bound sharpens to \(\sigma_n\ge\Lambda-2x^2/N+o(1/N)\), \(N=2n\). In fact the transported family has a nearby double root at time \(\Lambda-2x^2/N+o(1/N)\), bounding its *first* variance from above even if another collision occurs earlier. To see this, transport the first-order Jensen expansion by \(U_v,\ v=(s_n-t)/2\). The local error is \(O(N^{-2})\) uniformly in \(t\) near \(\Lambda\): before Gaussian integration the Bonferroni remainder is bounded by \(N^{-2}\) times a fixed polynomial in \(u|w|\) times \(e^{2u|w|}\), which is integrable as above. The same bounds hold on slightly larger complex compact sets and hence for derivatives. At \(t=\Lambda\), \(v=o(1)\). The first-order perturbation is \(-\tfrac12(z+vD)^2F_t''\), since \(U_v z=(z+vD)U_v\). It and its spatial derivative tend to the perturbations in the first-displacement equations. Inversion of the same nonsingular two-variable Jacobian gives the asserted local time. This argument makes no assumption that the collision selected by the finite discriminant occurs at a bounded ordinate.

For an independent exact model set \(F_t=U_{(\theta-t)/2}(z^2-1)^2\). At \(x=1\) the predicted second coefficients are 2 and 3. Writing \(e=\theta-t\), the Jensen polynomial is \((1-h)(1-2h)(1-3h)z^4+(1-h)(3e-2)z^2+1-e+3e^2/4\). Exact rational bisection on its quadratic discriminant locates the collision, and interval arithmetic gives the double-root position. At degree 10,000 the scaled second corrections are in \((1.99949,1.99951)\) and \((3.00047,3.00049)\). This example keeps the local seed collision distinct from a global claim about zeta.

[The finite fixture](../../../scripts/verify_xi_newman_jensen_threshold.py) also certifies simple real roots at the first-cell midpoints for ranks 2, 4, 8, 12, 16 and 24 using the actual theta integral. It transports each polynomial to \(T\), checks its reverse transport, and brackets the actual first collision by interval Sturm counts. At rank 24 the midpoint is \(1/96\) and the variance lies between \(12111/2048\) and \(24223/4096\). These large finite variances are compatible with the much smaller limiting value. The [Lean source](XiNewmanJensenThreshold.lean) treats the product damping estimate, endpoint comparisons and the perturbation equations. The theta limit, spectral construction and global root-location question remain outside that formalization.

At Lean source blob a51c1e8121530170e7dd455b7734143fac0a471b, all 5 named public declarations passed elaboration and fresh kernel replay (5 roots, 11879 declarations). Their transitive axioms are subsets of propext, Classical.choice and Quot.sound. The analytic argument has not had independent external review.
