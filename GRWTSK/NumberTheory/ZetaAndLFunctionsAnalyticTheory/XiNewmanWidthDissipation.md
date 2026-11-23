# A strict strip-width bound for the xi heat flow

Let \(H_t(z)=\int_0^\infty e^{tu^2}\Phi(u)\cos(zu)\,du\), with the positive Riemann theta kernel and normalization \(H_0(z)=\xi(1/2+iz/2)/8\). Let \(\Lambda\) be the start of the closed time ray on which every zero of \(H_t\) is real. Set
\[
 D=\sup_\rho|\Re\rho-1/2|,\qquad
 W(t)=\sup\{(\Im z)^2:H_t(z)=0\}.
\]
Thus \(W(0)=4D^2\). If RH fails, then \(0<\Lambda<2D^2\). The strict inequality strengthens the application \(\Lambda\le 2D^2\) of de Bruijn's strip theorem. A quantitative margin follows from any supplied localization radius. Specifically, choose \(X>0\) with \(|\Re z|\le X\) for all nonreal zeros at times in \([\Lambda/2,\Lambda]\). Then
\[
 4D^2-2\Lambda
 \ \ge\ \max\!\left\{
 \frac{\Lambda^2}{2X^2+4\Lambda},\,
 \frac{45\Lambda^2}{2B+92\Lambda}
 \right\}.
\]
Here \(B=\min\{X^2+108^2,\max(X,125)^2\}\), so \(B=X^2\) whenever \(X\ge125\). Existence of such a radius at every positive initial time follows from the uniform high-zero theorem. The first formula needs no numerical root evaluations. The second uses 22 real zeros bracketed by the arithmetic heat integral throughout \([0,1/2]\). Neither gives a positive numerical lower bound for \(D\) without information on \(\Lambda\). [Polymath, *Effective approximation of heat flow evolution of the Riemann ξ function*, v2, Theorems 1.1, 1.5 and 3.2](https://arxiv.org/pdf/1904.12438v2) · [Theta normalization](XiNewmanJacobiLimit.md)

The explicit positive-time height estimate gives the unconditional choice \(X=4\pi\exp(64/\Lambda)+1\) in this implication. Indeed the cutoff \(4\pi\exp(32/t)+1\) decreases in \(t>0\), so its value at \(t=\Lambda/2\) covers the whole required interval. Since \(0<\Lambda<1/2\), this \(X\) exceeds 125, and therefore
\[
 \boxed{\quad 4D^2-2\Lambda\ \ge\
 \frac{45\Lambda^2}{2(4\pi e^{64/\Lambda}+1)^2+92\Lambda}>0
 \qquad\text{if RH fails}.\quad}
\]
This explicit margin tends to zero with \(\Lambda\). The underlying high-zero estimate, including the exclusion of nonreal zeros, is a separate analytic input. [Explicit localization, second height bound](XiNewmanEffectiveEscape.md)

## From a quartet to a speed bound

Fix \(0<s<\Lambda\). It suffices to treat the case \(\Lambda>0\), since the all-real ray contains zero otherwise. Polymath gives \(\Lambda<1/2\). On the compact time interval \([s,\Lambda]\), all sufficiently distant zeros are real and simple. De Bruijn bounds the vertical coordinate by one. Thus the maximal positive height \(Y=\sqrt{W(t)}\) is attained for \(s\le t<\Lambda\). By evenness and reality take a maximizing zero \(z=x+iY\) with \(x>0\). The axis is excluded because \(H_t(iy)=\int_0^\infty e^{tu^2}\Phi(u)\cosh(yu)\,du>0\).

At a simple maximizer, differentiation of the zero and the paired Hadamard product gives \(z'=2\sum_{k\ne j}'(z-z_k)^{-1}\), counting other zeros with multiplicity. For \(z_k=x_k+iy_k\) its contribution to \(-(Y^2)'\) along this branch is
\[
 4Y\frac{Y-y_k}{(x-x_k)^2+(Y-y_k)^2}\ge0.
\]
The imaginary terms are absolutely summable, since heights are bounded and the reciprocal-square tail converges. The conjugate \(x-iY\) contributes two. The distinct zero \(-x-iY\) contributes \(2W/(x^2+W)\). Each real zero \(r\) contributes \(4W/((x-r)^2+W)\). The zero at \(-x+iY\) contributes zero. Hence, with any locator \(X\) for the interval \([s,\Lambda]\),
\[
 -W'\ge 2+\frac{2W}{X^2+W}. \tag{1}
\]
For two or more active simple maximizers the right derivative of the maximum of their squared heights is the largest of the active derivatives. Every one satisfies the same upper bound on \(W'\). The direction in (1) uses the maximal height, so the same summand estimate need not hold at an arbitrary nonreal zero. A separate 2026 manuscript uses this maximal-height force identity and bounds the contributions of other roots through exterior logarithmic-derivative probes. Here the extra terms come directly from the opposite lower zero and certified real brackets. No numerical constant bound from that work enters the argument. [Prior maximal-height identity, §2, equation (3)](https://rstation.ai/problems/riemann_hypothesis/papers/186) · [Polymath, Proposition 3.1(i), equations (31)–(33), and the related strip barrier in Proposition 3.3](https://arxiv.org/pdf/1904.12438v2)

This argument allows collisions at complex locations. Locally at any multiple zero the heat equation gives a rescaled Hermite polynomial on either side of the event. Its simple roots yield distinct simple nearby branches for sufficiently close unequal times. The remaining cluster is exhausted by Rouché's theorem on the boundary of a fixed small disk. Compactness of the exceptional region, uniform large-zero simplicity, and this local isolation imply that only finitely many multiple-zero space-time points occur in the interval. Root multisets vary continuously locally by the argument principle. Thus \(W\) is continuous, including at a collision and at \(\Lambda\), where it vanishes. Between exceptional times it is locally the maximum of finitely many smooth squared heights while positive. Integrate the differential comparison on compact subintervals of these open regular intervals, take limits by continuity, and add. No differentiability at the collision times is required. [Polymath, Proposition 3.1(ii)](https://arxiv.org/pdf/1904.12438v2)

Writing \(a=X^2\) and \(w=W(s)\), the reciprocal speed integrates to
\[
 \Lambda-s\le\int_0^w\frac{a+v}{2(a+2v)}\,dv
 =\frac w4+\frac a8\log(1+2w/a)<\frac w2.
\]
Here the strict inequality follows by integrating a strict reciprocal-speed saving for \(v>0\). De Bruijn's bound gives both \(W(0)\ge W(s)+2s\) and \(W(s)\ge2(\Lambda-s)\). The first uses the strip at zero directly, so no maximizer or uniform localization at time zero is needed. Taking \(s=\Lambda/2\) proves the strict assertion.

## Extra terms from arithmetic sign brackets

The signs of \(H_t(r)\) alternate, starting with positive, at
\[
 r=0,35,46,55,63,70,78,84,91,97,102,108
 \quad (0\le t\le1/2).
\]
The 192-bit interval fixture evaluates the certified theta jets at \(t=1/4\) and encloses each value on the entire time box of radius \(1/4\). It uses the contour quadrature, uniform jet errors and order-32 time remainder from the preceding collision calculation. Every resulting real ball excludes zero, including the last one, whose displayed enclosure is \(-10^{-16}\pm5.41\cdot10^{-17}\). Therefore the eleven disjoint open brackets each contain a real zero at every time, as do their reflections. Existence in the brackets suffices throughout, regardless of multiplicity or continuity of any chosen witness. [Width verification fixture](../../../scripts/verify_xi_newman_width.py) · [Quadrature proof and analytic error budget](XiNewmanCollisionCount.md)

For each consecutive positive bracket \((l_i,u_i)\), given \(0\le x\le X\), use distances \(R_i^+=\max(u_i,X-l_i)\) and \(R_i^-=X+u_i\). The exact finite function
\[
 C_X(v)=2+\frac{2v}{X^2+v}
 +4v\sum_i\left(\frac{1}{(R_i^+)^2+v}+\frac{1}{(R_i^-)^2+v}\right)
\]
therefore gives \(\Lambda-s\le\int_0^w dv/C_X(v)\). Its inputs are a verified locator, the initial width or an upper bound, and rational bracket endpoints. Keeping the positive and negative roots paired also improves the common squared radius. For any one positive witness \(0<r<108\), set \(A=x^2+r^2+v\). Its pair of reciprocal denominators sums to \(2A/(A^2-4x^2r^2)\ge2/A\), hence to at least \(2/(X^2+108^2+v)\). Put \(L=\max(X,125)\). If \(x^2+r^2\le L^2\), the same argument gives \(2/(L^2+v)\). Otherwise \(3x^2>3(125^2-108^2)>108^2+1\ge r^2+v\) along the actual flow, since de Bruijn gives \(v\le1\). Subtracting \(2/(x^2+v)\) from the pair sum has numerator \(2r^2(3x^2-r^2-v)\) over the positive common denominator. It follows in this case too that the sum is at least \(2/(L^2+v)\). Thus the eleven pairs and the quartet give \(-W'\ge2+90W/(B+W)\) for the stated \(B\). The pointwise maximum of this grouped speed and \(C_X\) gives another computable bound.

A sharp bound for each individual bracket and a given horizontal interval is also rational. At fixed \(r,v>0\) the pair sum as a function of \(h=x^2\) is \(2(h+c)/(h^2+2(v-r^2)h+c^2)\), with \(c=r^2+v\). The derivative has the sign of \(-h^2-2ch+c(3r^2-v)\), a decreasing function on the positive half-line. Thus the minimum on a closed interval is attained at an endpoint. The pair sum is symmetric in \(x,r\), so its minimum on the full rectangle in \((x,r)\) is attained at one of the four corners. This remains valid at a zero coordinate by continuity for \(v>0\). Partitioning \([0,X]\) into rational subintervals now gives a computable speed: on each subinterval use its right endpoint in the quartet term, sum the four-corner minima from all eleven brackets with coefficient \(4v\), and add two. Take the smallest subtotal over all subintervals, allowing the maximizing root to move between them. Every subtotal increases with \(v\) since each summand has the form \(v/(d^2+v)\) or the minimum of sums of such terms. The reciprocal can therefore be integrated with certified upper rectangles, using its right limit at zero. This construction retains the common horizontal coordinate as the partition is refined. As a test with hypothetical locator 125 and initial squared width 1/4, four equal horizontal intervals and 32 equal width steps give a duration at most 0.124815926 by exact rational upper summation. The standard strip estimate for these inputs is 0.125. This fixture example supplies no verified value of the actual locator.

For either grouped speed \(2+kv/(a+v)\), with \((a,k)=(X^2,2)\) or \((B,90)\), the deficit between one half and its reciprocal is \(kv/[2(2a+(2+k)v)]\). For \(0\le v\le w\) replace the denominator by its value at \(w\), then integrate to get
\[
  2(\Lambda-s)\le w-\frac{kw^2}{2(2a+(2+k)w)}.
\]
At \(s=\Lambda/2\) use \(W(0)\ge w+\Lambda\), \(w\ge\Lambda\), and monotonicity of the rational saving in \(w\). This gives the two margins in the opening statement. An integral of a rational function of one variable with rational input bounds here can also be upper-enclosed directly by upper rectangles, since \(C_X(v)\) increases with \(v\).

## Sharpness and return to the endpoint problem

For \(x,y>0\) take the real even quartet polynomial \(P(z)=((z-x)^2+y^2)((z+x)^2+y^2)\). Under \(e^{-t\partial_z^2}\), the quadratic in \(z^2\) has discriminant \(16[6t^2+2(x^2-y^2)t-x^2y^2]\). At its first nonnegative zero, the double root of the quadratic is positive. The all-real threshold is therefore
\[
 t_*=(y^2-x^2+\sqrt{x^4+4x^2y^2+y^4})/6
 =y^2/2-y^4/(4x^2)+O_y(x^{-4}).
\]
Before this event the two quadratic roots are nonreal and at it the original polynomial has two real double zeros. Reality persists thereafter by heat preservation of real-rooted polynomials. Sending \(x\) to infinity shows why quartet symmetry by itself supplies no uniform positive saving depending on width alone. The arithmetic bracket estimate is an additional hypothesis on a general flow and a verified property of the xi flow.

The [finite prime maximum](XiHeatPrimeCenterBounds.md) recovers \(D^2\) as its logarithmic growth rate. Thus failure of RH forces that arithmetic rate to exceed \(\Lambda/2\). Under RH this rate is zero, and the unconditional Rodgers–Tao lower bound \(\Lambda\ge0\) gives \(\Lambda=0\). Consequently equality of \(\Lambda\) with twice the prime growth rate is equivalent to RH. This argument leaves equality open. [Rodgers and Tao, Theorem 1.1](https://arxiv.org/pdf/1801.05914)

The positive-time winding theorem identifies the missing global condition as exclusion of every positive-time collision. The bounds here constrain its last possible time and leave that exclusion and the endpoint Hilbert–Pólya determinant open. [Collision count](XiNewmanCollisionCount.md)

## Formal and computational scope

The ten declarations in the [Lean module](XiNewmanWidthDissipation.lean) establish the opposite-reflection contribution, single-anchor estimate, reciprocal-speed inequalities, both primitives, midpoint saving and the 22-anchor scalar aggregation. The theorem `quartet_duration` integrates the logarithmic comparison on a regular interval, assuming the width is continuous up to the endpoints and satisfies the stated derivative and speed hypotheses in the interior. The identification of the actual xi zero velocities, assembly through collisions, four-corner bracket bound and endpoint equality criterion are manuscript arguments. The interval evaluation of the signs uses python-flint 0.9.0 and the preceding quadrature fixture at blob `7da5cd22ef72afce70c2c166a80718a53463352a`. Independent external review of the analytic assembly remains open.

Lean 4.34.1 with Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated source blob `29e64e4554f92546a2a082c7dd19d94b9948b7c7`. Fresh native kernel replay passed. All ten transitive declaration audits reported only `propext`, `Classical.choice` and `Quot.sound`. The sign-bracket and rational quadrature fixture at blob `053400c8447c02aa445d5225936cb70dfe7d47f5` completed successfully.
