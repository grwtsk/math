# A finite Dirichlet upper bound for the exterior ξ Jensen deficit

Let \(s_0=1/2+R+i\tau\), \(R=2021500000000004\), \(\tau=2024500000000000\). The arithmetic Jensen deficit \(J_R(\tau)\) is the Poisson integral of \(\log|\zeta|\) on the critical line minus \(\log|(s_0-1)\zeta(s_0)/s_0|\). There is an explicit rational Dirichlet polynomial supported through 750 for which
\[
  5.98784386522 < Q(\zeta D) < 9.43090045765,
  \qquad 0\le J_R(\tau)<1.12199579036.
\]
Here \(Q\) is the Poisson mean of the squared boundary modulus divided by the squared center value. The lower inequality concerns this particular mollifier. The positive contributions to \(J_R(\tau)\) from **all zeros of ordinate magnitude at least \(2.2\cdot10^{31}\)** sum to less than \(1.69148688962\cdot10^{-16}\), strictly below the order-three tolerance \(j_*=3R/[4(2R^2+1/4)]\). The remaining ordinates have unknown displacement and the total upper bound is far above \(j_*\). [Poisson–Jensen factorization and order-three criterion](XiBlaschkeDisplacementBudget.md) · [Exact Mellin profile](XiPrimeJumpApproximation.md) · [Arithmetic fixture](../../../scripts/verify_xi_periodic_mollifier.py)

## Two computable quadratic forms

Allow any \(R>1/2\), real \(\tau\), and real coefficients \(c_d\) for \(1\le d\le N\) with \(c_1=1\), \(D(s)=\sum c_d d^{-s}\), \(D(1)=0\). Write \(a_n=\sum_{d\mid n}c_d\), \(S=\sum |c_d|\), \(u=R-1/2\), \(a=u-i\tau\), \(c=|a|/u\). The zeta pole cancels and \(sD(s)/(s-1)\) extends to a bounded multiplier on the critical half-plane. The Hardy factorization gives \(2J_R(\tau)\le\log Q(\zeta D)\). Mellin–Plancherel gives the unnormalized squared norm
\[
   2R\int_1^\infty |k(x)|^2\,dx/x^2,\qquad
   k(x)=\sum_{n\le x}a_n(n/x)^a .
\]
Indeed each summand has transform \(a_n n^{-s}/(s+a)\) for \(\Re s>1\); the bounded primitive below continues the transform in the critical half-plane. The squared boundary multiplier \(2R/|s+a|^2\) is the Poisson density in Plancherel normalization. Absolute convergence at the center gives \(|\zeta(s_0)D(s_0)-1|\le S2^{-\Re s_0}(1+2/(\Re s_0-1))\) when \(\Re s_0>1\).

Set \(Y>2N^2\) and \(l=[d,e]\) for a least common multiple. Define
\[
 b_r=\sum_{r\mid d}c_d/d,\quad v=\sum_{r\le N}\varphi(r)b_r^2,
 \quad V=\tfrac1{12}\sum_{r\le N}J_2(r)b_r^2,\qquad
 h(Y)=v(\log Y+\gamma)-\sum_{d,e}c_dc_e\log(l)/l,
\]
where \(J_2\) is Jordan's second totient and \(\gamma\) is Euler's constant. The head of the norm through \(Y\) is at most
\[
 h(Y)+4S^2/Y+\left(1/u+1/(u+1)\right)(Yv+S^2). \tag{1}
\]
Expanding the squared profile and integrating each pair to \(Y\) gives a kernel bounded in modulus by \((\min(m,n)/\max(m,n))^R/\sqrt{mn}\). This bound follows by integrating the absolute value of that pair to infinity. At row \(n\) the diagonal is \(1/n\). On \(m<n\) compare the increasing power \(m^{R-1/2}\) with its integral from \(0\) to \(n\), and on \(m>n\) compare the decreasing power \(m^{-R-1/2}\) with its integral from \(n\) to infinity. The row sum is at most \(1/n+1/(u+1)+1/u\). Symmetry and \(2|xy|\le x^2+y^2\) now give (1). Indeed expanding \(a_n^2\) shows \(\sum_{n\le Y}a_n^2\le Yv+S^2\) and \(|\sum_{n\le Y}a_n^2/n-h(Y)|\le4S^2/Y\). The latter uses \(|H_{\lfloor Y/l\rfloor}-\log(Y/l)-\gamma|\le 4l/Y\) from the usual integral comparison for harmonic numbers. The identity \(v=\sum c_dc_e/l\) follows from \(\sum_{r\mid g}\varphi(r)=g\), \(g=(d,e)\).

For the tail put \(C(x)=\sum_{n\le x}a_n\), \(F(x)=C(x)+\tfrac12\sum_d c_d\). Since \(D(1)=0\), \(F=-\sum_d c_d(\{x/d\}-1/2)\) for \(x>0\), so \(|F|\le S/2\). Abel summation gives
\[
 k(x)=F(x)-a\int_0^x F(y)(y/x)^a\,dy/y.
\]
The constant centering cancels exactly. Over a common period the product of two centered sawtooths at scales \(d,e\) has average \(g^2/(12de)\). For example, expand their Fourier series in \(L^2\); frequencies match when \(k/d=j/e\), so summing the matched reciprocal squares gives the displayed factor. Consequently the mean of \(F^2\) is \(V\) by \(\sum_{r\mid g}J_2(r)=g^2\). Each pair product minus its mean has absolute value at most \(1/2\), period \(l\le N^2\) and mean zero. Its integral from \(Y\) to any \(y>Y\) has modulus at most \(l/2\). Integration by parts gives
\[
 \int_Y^\infty F(y)^2\,dy/y^2\le V/Y+N^2 S^2/(2Y^2)=E.
\]
Taking absolute values in Abel summation and applying weighted Cauchy gives
\(|k(x)|^2\le(1+c)(F(x)^2+cu\int_0^x F(y)^2(y/x)^u\,dy/y)\).
Integrate the positive terms first in \(x\ge\max(Y,y)\). The part with \(y\ge Y\) contributes at most \(E\) before its outside coefficient, since \(u/(u+1)<1\). The part with \(y<Y\) contributes at most \(S^2/[4(u+1)Y]\). The tail of the unnormalized norm is therefore at most
\[
 2R\left((1+c)^2 E+(1+c)c\,S^2/[4(u+1)Y]\right). \tag{2}
\]
The use of individual pair periods avoids dependence on the least common multiple of the entire support. The classical sawtooth covariance is the Franel–Landau identity. The reciprocal-lcm quadratic form is the Selberg sieve form. Here it must be controlled together with the primitive variance and the finite Mellin head. [Aistleitner, Berkes and Seip, §5, immediately after Lemma 4](https://arxiv.org/pdf/1210.0741) · [Koukoulopoulos, *The Distribution of Prime Numbers*, Chapter 21, equations \(21.1\)–\(21.2\)](https://dms.umontreal.ca/~koukoulo/documents/publications/primes.pdf)

## An explicit pole-cancelling certificate

Möbius inversion gives \(c_d=d\sum_{k\le N/d}\mu(k)b_{dk}\). Thus \(b_1=0\) removes the pole and \(\sum_r\mu(r)b_r=1\) fixes the initial coefficient. For any positive weights \(w_r\) on \(2\le r\le N\), the minimum of \(\sum w_rb_r^2\) with these constraints is the reciprocal of \(\sum_{r=2}^N\mu(r)^2/w_r\), by Cauchy with equality at a multiple of \(\mu(r)/w_r\). In (1) and (2) the two diagonal forms suggest a positive combination of the ordinary and second Jordan totients.

Take \(N=750\), \(Y=4R\) and \(b_r=\mu(r)\lfloor10^{10}/(176\varphi(r)+J_2(r))\rfloor/280950063\) for \(r\ge2\). The fixture checks both constraints in integer arithmetic and checks the two quadratic sums independently in divisor and gcd coordinates. There are 456 nonzero \(c_d\). The head upper bound is \(7.90320071932\) and the tail upper bound is \(1.52769973834\). At this center the denominator error is less than \(S2^{-99}\).

An independent lower control takes \(X=\lfloor R/8\rfloor\) and integrates only to \(X+1/2\). In variables \(a_n/\sqrt n\) the diagonal is at least \(1-\exp(-R/(X+1/2))\), using \(\log(1+1/(2X))\ge1/(2X+1)\). Off diagonal each entry has modulus at most \(q^{|m-n|}\), \(q=e^{-R/X}\), since \(\log(n/m)\ge(n-m)/n\) for \(m<n\le X\). The absolute off-diagonal row sum is at most \(2q/(1-q)\). Multiplying the resulting lower eigenvalue bound by \(h(X)-4S^2/X\) and dividing by the upper center modulus squared proves the stated lower bound. In particular, this polynomial cannot certify the small order-three tolerance even if its norm were evaluated exactly.

## Optimal leading term for bounded integer support

Fix \(C>0\). Uniformly for \(|\tau|\le CR\) and \(N\ge2\) with \(N^4\log(2N)=o(\log R)\),
\[
 \inf_{D(1)=0,\ D\ne0,\ \mathrm{supp}(D)\subseteq[1,N]}
     Q(\zeta D)=(1+o(1))\frac{\log R}{G_N},\qquad
   G_N=\sum_{2\le r\le N}\frac{\mu(r)^2}{\varphi(r)} .
\]
The infimum ranges over real Dirichlet coefficients with nonzero center value. In particular every fixed support has a positive logarithmic cost. When \(N\to\infty\) in this range the optimum is asymptotic to \(\log R/\log N\).

For the lower bound integrate to \(Y=R\). The head diagonal differs from \(\sum_{n\le R}a_n^2/n\) by at most \(S^2(1/R+1/(2R))\), using the exact diagonal fraction \(1-(n/R)^{2R}\) and integral comparison for \(n^{2R-1}\). The absolute off-diagonal operator cost is at most \((1/u+1/(u+1))(Rv+S^2)\) by the previous symmetric row estimate, even after truncation. The harmonic sum differs from \(v\log R\) by \(O(v+S^2\log(2N))\). Inverting the divisor coordinates gives \(S\le N^2\sqrt v\), since each \(|b_r|\le\sqrt v\). Also \(V\le N^3v/12\) because \(J_2(r)\le r^2\). Thus the two sides of (1) and the tail (2) trap the unnormalized norm between \((1+o(1))v\log R\) bounds uniformly over every nonzero coefficient vector.

Allow \(c_1\) to vary for this comparison. Since \(b_1=0\), Cauchy gives \(|c_1|=|\sum_{r\ge2}\mu(r)b_r|\le\sqrt{G_N v}\). The earlier center error bound about \(c_1\) is \(O(2^{-R}N^2\sqrt v)\). This yields the lower bound for the infimum including vectors with \(c_1=0\). For the upper bound choose \(b_r=\mu(r)/(G_N\varphi(r))\) at \(r\ge2\), giving \(c_1=1,\ v=1/G_N\).

For completeness \(G_N=\log N+O(1)\). Write \(n\mu(n)^2/\varphi(n)=\sum_{d\mid n}f(d)\). The multiplicative \(f\) has \(f(p)=1/(p-1)\), \(f(p^2)=-p/(p-1)\) and higher prime powers vanish. Its absolute Dirichlet series converges at \(3/4\), and \(\sum f(d)/d=1\) by the Euler factors. Summing \((f(d)/d)H_{\lfloor N/d\rfloor}\) now gives \(\log N+O(1)\): the series weighted by \(\log(2d)/d\) converges absolutely, and the tail of \(\sum f(d)/d\) beyond \(N\) is \(O(N^{-1/4})\). Removing \(r=1\) changes the constant only. As a finite control for the same 750-term support bound, at \(R=\tau=10^{600}\) the fixture encloses \(Q/\log R\) between 0.16662441 and 0.16910169 for the specified coefficients; their limiting \(v\) is about 0.16652427.

## Bounding every omitted Blaschke contribution

For \(U>|\tau|\), \(r=3/4\), \(e=\sqrt{15}/4\), compare the original center with the pair \(rU\pm ieU\) in the coordinate \(s-1/2\). At \(|y|\ge1\),
\[
 \frac{1}{y^2}\le\frac23\left(\frac{r}{r^2+(y-e)^2}+\frac{r}{r^2+(y+e)^2}\right).
\]
Clearing denominators leaves \(9(1-y^2)/4\le0\). The total coefficient \(4/3\) is optimal for equal coefficients in this symmetric two-kernel problem. For general \(r>0,e\ge0\) the total coefficient is at least the maximum of \(1/r\) and \((1+b-4e^2/(1+b))/r\), by evaluation at infinity and at one, \(b=r^2+e^2\). The numerator of the second expression equals \(1+b+4(1+r^2)/(1+b)-4\ge4(\sqrt{1+r^2}-1)\). For \(r\ge3/4\) the latter quantity is at least \(4r/3\); for smaller \(r\) the first bound suffices.

Each true right-hand zero of displacement \(0<\sigma<1/2\) and ordinate \(g\) contributes \(\operatorname{artanh}(2R\sigma/(R^2+\sigma^2+(g-\tau)^2))\). For \(|g|\ge U\) its argument is at most \(\epsilon=R/(U-|\tau|)^2\). Use \(x\le\operatorname{artanh}x\le x/(1-x^2)\), \(0\le x<1\), and apply the two-kernel majorant at \(y=g/U\). Inserting \(\sigma^2\) in either new denominator costs a relative factor at most \(1+1/(4r^2U^2)\). Since \(|g-\tau|\ge|g|(1-|\tau|/U)\), summing the nonnegative terms with their true multiplicities and using conjugation gives, for \(\epsilon<1\),
\[
 J_R(\tau;|g|\ge U)\le
 \frac{4R}{3U}\frac{1+1/(4r^2U^2)}{(1-|\tau|/U)^2(1-\epsilon^2)}
 J_{rU}(eU).
\]
The same rational coefficients and (1)–(2), with \(Y=4rU\), bound the last deficit. The omitted positive contributions are below \(7.46573488387\cdot10^{-17}\) for \(U=5\cdot10^{31}\), and below \(3.97798410432\cdot10^{-25}\) for \(U=10^{40}\). This gives a certified truncation error at a prescribed height. The finite sum below the cutoff has not been evaluated. The full order-three inequality and unconditional determinant identity remain open.

The [Lean companion](XiPeriodicMollifierBound.lean) proves the symmetric finite row bound, weighted Abel square and budget inequalities, incidence-column identity, diagonal minimization comparison and the two polynomial comparisons for the symmetric probes. Mellin–Plancherel, the complete integral estimates, the arithmetic fixture and the transfer to the genuine Blaschke divisor are manuscript arguments. Native Lean 4.34.1 elaboration, fresh kernel replay and seven transitive axiom audits passed for source blob 714f5189374a748518522e790bb5ac5a644d1315 at Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The audits used only propext, Classical.choice and Quot.sound. Independent external analytic review remains outstanding.
