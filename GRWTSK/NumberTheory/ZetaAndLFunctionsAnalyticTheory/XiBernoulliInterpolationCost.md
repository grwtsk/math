# How Bernoulli interpolation measures the horizontal displacement of zeta zeros

Local source attribution: grwtsk contributors.

This manuscript develops the GRWTSK Hilbert–Pólya program using the normalized rational moments $M_n=6\,10^n n!|B_{2n+2}|/(2n)!$. Here $B_{2n+2}$ is the ordinary even Bernoulli number. The two arithmetic measurements below have exact exponents. If $C_m$ is the minimum nonnegative interpolation cost defined below, $P_n=\prod_{k=0}^n M_k^{(-1)^k\binom nk}$, and $\Theta=\sup_\rho |\Re\rho-1/2|$ over nontrivial zeta zeros, then
\[
 \lim_{m\to\infty}\frac{\log(1+C_m)}{\log m}=\Theta,\qquad
 \limsup_{n\to\infty}\frac{\log|\log P_n|}{\log n}
 =-\frac34+\frac{\Theta}{2}.
\]
Use $\log 0=-\infty$. A subpolynomial upper bound for $C_m$ on any unbounded sequence, or a bound $|P_n-1|=O_\epsilon(n^{-3/4+\epsilon})$ for every $\epsilon>0$ and all sufficiently large $n$, would finish the independent proof. The scalar criterion sharpens to one rational comparison:
\[
 \boxed{\quad \mathrm{RH}\quad\Longleftrightarrow\quad
     n^3(P_n-1)^4\le1\quad\text{for every integer }n\ge2.\quad}
\]
The same equivalence holds if the comparison is required only for all sufficiently large $n$. Below, an independent finite-height argument proves the inequality for every $2\le n\le 2^{1{,}500{,}000{,}000{,}000}$. Beyond that range an all-orders bound is still needed.

Both equalities have on-paper proofs below without using a global RH theorem. The required arithmetic bound remains unproved in this work. The signed prime-power formula in the scalar proof identifies its exact cancellation requirement.

## Exact finite checks

The table gives rigorous upper bounds on the minimum $C_m$. Each witness matches every required Bernoulli log moment through the indicated stage exactly. Only the decimal enclosure of its cost is rounded. The earlier relative-error determinant verification used a different, more restrictive finite class.

| Stage $m$ | Certified upper bound on $C_m$ |
| ---: | ---: |
| 16 | 0.22843915397516300439848041118931297 |
| 32 | 0.2284391681101790 |
| 64 | 0.2284641869953406 |
| 128 | 0.2529272501208488 |

A rational dual witness gives $C_{10}>0.2284391510367033$. Monotonicity propagates a lower bound to all subsequent stages. A separate pair of certificates encloses $C_{16}$ to width $2.4\cdot 10^{-34}$, with endpoints $0.22843915397516300439848041118931273$ and $0.22843915397516300439848041118931297$. In particular $\log(2\pi/5)-C_{16}$ lies strictly between $8.21045614197283957\cdot10^{-14}$ and $8.21045614197283958\cdot10^{-14}$.

For the upper certificates, rational support points and a slack column specify a finite linear system. Directed logarithm bounds and a rigorous bound for the inverse certify a positive solution of the exact system. The cost is $(1-w_{\rm slack})\log2$. For the lower certificate, rational coefficients yield a supporting inequality for every $b\in[0,4/9]$. Subdivision proves the sign of the logarithmic expression using a rational derivative numerator and directed logarithm bounds. The supporting functional at the Bernoulli target gives the displayed lower bound.

For the separate scalar, directed evaluation gives $0.000003027322787\le\log P_{64}\le0.000003027322788$ and $0.000000061851351\le\log P_{128}\le0.000000061851352$. Its sign changes at small indices.

The Lean package proves the arbitrary-degree double-tail criterion for abstract convex sequences and an exact mixed-sign Bernoulli comparison. The two modules compiled on Lean 4.34.1 and passed the official whole-import fresh kernel check. Fresh replays of eleven theorem roots used only `Classical.choice`, `Quot.sound`, and `propext`. The infinite exponent identities and the prime-power formula are proved in the manuscript; they have not been formalized in Lean.


This manuscript concerns classical zeta. It does not use an external proof of RH. Its final all-orders arithmetic bound remains to be proved. Write $X(u)=\xi(1/2+u)$, $u_j=2j-1/2$, $a=u_1^2=9/4$, $v_j=u_j^2-a=2(j-1)(2j+1)$ and
\[
 M_n=6\,10^n n!\,|B_{2n+2}|/(2n)!,\qquad
 B_j^*=X(u_j)/X(u_1),\qquad M_{j-1}=B_j^*/(B_2^*)^{j-1},\quad B_2^*=2\pi/5 .
\]
The last identity follows from Euler's even-zeta formula. $M_0=M_1=1$.

## Exact finite convex programs

On $I=[0,1/a]$ let $k_j(b)=\log(1+v_jb)/b$ with $k_j(0)=v_j$, and $g_j=k_j-(j-1)k_2$. For $m\ge2$, minimize $\int k_2\,d\eta$ over finite positive measures on $I$ such that $\int g_j\,d\eta=\log M_{j-1}$ for $3\le j\le m$. Denote this minimum by $C_m$. The normalized trial measures may have fractional weights and continuous parts.

The positive measure $d\eta_0=db/(2\pi\sqrt{b(1-ab)})$ has full support. Under $b=1/(a+\gamma^2)$ it is $b\,d\gamma/\pi$ on $\gamma>0$. Its normalized logarithmic derivative is $\int_0^\infty 2u\,d\gamma/[\pi(u^2+\gamma^2)]=1$ on $u>0$. Integration from $u_1$ gives $\int k_j\,d\eta_0=2(j-1)$, hence $\int g_j\,d\eta_0=0$. The functions $g_3,\ldots,g_m$ are linearly independent: multiply a putative relation by $b$, differentiate and take residues at the distinct points $-1/v_j$. Therefore no nonzero linear combination of them can have one sign throughout $I$. Zero lies in the interior of the convex hull of $(g_j(b)/k_2(b))_{j=3}^m$. Consequently every finite real sample vector is feasible with some finite cost. Since $k_2$ has positive minimum, weak compactness gives attainment of the minimum. The costs are nondecreasing.

**Exact integer test.** RH is equivalent to the following statement for every $m$, every integer $p\ge0$, and all integers $q_3,\ldots,q_m$:
\[
 \left[\quad\prod_{j=3}^m(1+v_jb)^{q_j}
 \le(1+10b)^{p+\sum(j-1)q_j}\quad (0\le b\le4/9)\quad\right]
 \quad\Longrightarrow\quad
 \prod_{j=3}^m M_{j-1}^{q_j}\le2^p .
\]
Clearing positive denominators yields a single integer polynomial to test on $[0,4/9]$ by Sturm's theorem and a single rational-number comparison. The case $p=0$ of the premise forces all $q_j=0$ by the full-support measure and independence above.

Indeed, $C_m\le\log2$ if and only if $(\log M_{j-1}/\log2)_j$ lies in the compact convex hull of the normalized feature vectors and zero. This follows by setting $d\sigma=k_2d\eta/\log2$; the total mass is at most one. If the target is outside, strict finite-dimensional separation gives a linear functional with target value strictly above both zero and the support function of that curve. Approximate its coefficients rationally while preserving the gap, take rational $p$ in the gap, and clear common denominators. This gives an integer counterexample. Conversely any integer counterexample separates. Exponentiation at $b>0$ yields the displayed algebraic premise; the normalized inequality at zero follows by continuity.

**Analytic return and the exact limiting cost.** If all finite costs are bounded, compactness gives a common positive $\eta$. Define
\[
 G'(u)=\int_I\frac{2u}{1+b(u^2-a)}\,d\eta(b),\qquad \Re u>0.
\]
At $b=0$ this gives $2u$. At $b>0$ it gives $b^{-1}[(u-i\gamma)^{-1}+(u+i\gamma)^{-1}]$, with $\gamma=\sqrt{1/b-a}$. At the right endpoint $\gamma=0$. The integrand is analytic with nonnegative real part and uniformly bounded on compact subsets times $I$. Define $G(u_1)=0$ by integration. For $c=(\int k_2 d\eta-\log B_2^*)/2$, the real functions $G(u)$ and $\log(X(u)/X(u_1))+c(u-u_1)$ agree at all $u_j$. Rolle's theorem gives derivative equality in each successive gap. On $\Re u>1/2$, $X'/X$ has positive real part: use its centered paired Hadamard product and $|\Re w|\le1/2$ for the centered zeros $w$. Shift both derivatives by the same real constant bigger than $|c|+1$ and Cayley-transform them into bounded holomorphic functions. Their difference vanishes on a non-Blaschke sequence $2j+O(1)$ and hence identically. The analytic identity $X'=(G'-c)X$ extends to $\Re u>0$. The first-order differential equation precludes any zero there since $X(u_1)>0$. The functional equation then gives RH.

Under RH the discrete positive measure $\eta_* =\sum_{\gamma>0}b_\gamma\delta_{b_\gamma}$ with $b_\gamma=(a+\gamma^2)^{-1}$ counted with multiplicity represents the samples, and $\int k_2 d\eta_*=\log B_2^*$. Every global feasible measure equals $\eta_*+c\eta_0$. Indeed the logarithmic derivative of the difference vanishes, and the convergent expansion of $\int[1+b(u^2-a)]^{-1} d(\eta-\eta_*-c\eta_0)$ near $u=u_1$ gives zero for all its ordinary moments. Compact-interval polynomial density proves equality of measures. Positivity forces $c\ge0$ because $\eta_*$ is atomic and $\eta_0$ is absolutely continuous. Compactness of finite minimizers therefore yields
\[
 C_m\uparrow\log(2\pi/5)\quad\text{under RH},\qquad
 C_m\uparrow+\infty\quad\text{if RH fails}.
\]
In the bounded case the finite minimizers converge weakly to the unique cost-minimizing global measure.

## A polynomial lower bound on the cost of interpolation

For a hypothetical zero $u_0=\rho-1/2$ with $\delta=\Re u_0>0$, and any $0<\epsilon<\delta$, there is $c_{\epsilon,\rho}>0$ such that $1+C_m\ge c_{\epsilon,\rho}m^{\delta-\epsilon}$. Thus $C_{m_i}=m_i^{o(1)}$ on any sequence $m_i\to\infty$ suffices for RH.

For a finite minimizer let $G'_m,c_m$ be as above. There are real $r_j\in(u_j,u_{j+1})$, $1\le j<m$, with $G_m'(r_j)=X'(r_j)/X(r_j)+c_m$. Factor $X=A Y$ on the right half-plane with $s=1/2+u$,
\[
 Y=(s-1)\zeta(s)/(1+u)^3,\qquad A=s\pi^{-s/2}\Gamma(s/2)(1+u)^3/2 .
\]
The elementary identity $\zeta(s)=s/(s-1)-s\int_1^\infty\{x\}x^{-s-1}dx$ makes $Y$ bounded on $\Re u>0$. Cauchy bounds $Y'$ on $\Re u>\epsilon$. The function $A$ is nonvanishing, and Stirling gives $A'/A=O(1+\log(2+|u|))$ on this half-plane. Since $k_2$ has positive minimum, $\eta(I)=O(C_m)$. For $\gamma\le2|u|+1$ the partial fractions bound the integrand in $G_m'$ by $2(a+\gamma^2)/\epsilon$. For $\gamma>2|u|+1$ use $|u^2+\gamma^2|\ge 3\gamma^2/4$. The endpoint $b=0$ is immediate. It follows that
\[
 R_m(u)=\frac{Y'(u)+(A'(u)/A(u)+c_m-G'_m(u))Y(u)}{(1+u)^3}
\]
belongs to $H^\infty(\Re u>\epsilon)$ with norm $O_\epsilon(1+C_m)$. At $u_0$ its vanishing order is precisely the multiplicity of $\rho$ minus one; its leading coefficient is nonzero and independent of $m$. Dividing by that power of the half-plane Blaschke factor at $u_0$ preserves the norm and gives a fixed nonzero value there. Dividing additionally by the finite Blaschke product at the $r_j$ or applying the Schwarz lemma gives
\[
 1\ll_{\epsilon,\rho}(1+C_m)\prod_{j<m}\left|\frac{u_0-r_j}{u_0+r_j-2\epsilon}\right|.
\]
Since $r_j=2j+O(1)$, the logarithm of the product equals $-(\delta-\epsilon)\log m+O_{\epsilon,\rho}(1)$ uniformly in the allowed nodes. This proves the assertion, without using any low-zero verification.

## Mixed-sign transfer valid for arbitrarily many samples

Set $a_n=q_{n+1}$, $2\le n<m$, $L_n=\log M_n$ and $d_n=(2/5)n(n-1)$. Differentiation of the polynomial premise at zero gives $p\ge\sum a_n d_n$. Both $L_n$ and $S_n=d_n\log2-L_n$ vanish at 0 and 1 and are convex sequences. Convexity of $L_n$ follows from its mean-one positive moment measure. To prove it for $S$, Euler's formula gives
\[
 M_{n+1}/M_n=\frac{10}{4\pi^2}\frac{(n+2)(2n+3)}{2n+1}
              \frac{\zeta(2n+4)}{\zeta(2n+2)} .
\]
For $n\ge2$ the ratio of consecutive displayed ratios is at most $((n+2)/(n+1))\zeta(2n)\le(4/3)\zeta(4)<3/2<2^{4/5}$. Here $(2n+3)(2n-1)/(2n+1)^2<1$ and $\zeta(2n+4)\le\zeta(2n+2)$. At $n=1$ the ratio of ratios is $25/21$. This proves both curvature bounds.

Put $D_k=\sum_{n\ge k}(n-k+1)a_n$ for $k\ge2$. If all $D_k\ge0$, then $\sum a_n S_n=\sum D_k\Delta^2 S_{k-2}\ge0$. The derivative test gives the required transfer. If all $D_k\le0$, instead $\sum a_n L_n\le0$, which suffices independent of the premise. Thus any counterexample must have double-tail sums of both signs. The result includes vectors of unbounded mixed sign support. These are Bernoulli-source inequalities, not finite fittings.

A genuine case outside both this cone and the positive Bernstein-integrand test: take $(q_3,q_4,q_5)=(3,1,-1)$, $p=1$. The double tails are $(2,-1,-1)$. The clear-denominator difference is
\[
 (1+10b)^6(1+88b)-(1+28b)^3(1+54b)
 =2b(44000000b^6+26900000b^5+6900000b^4+362296b^3+1520b^2-54b+5).
\]
The final quadratic is positive by its discriminant. The Bernstein polynomial $6(1-y^5)-3(1-y^{14})-(1-y^{27})+(1-y^{44})$ is negative at $y=19/20$ by rational arithmetic. The arithmetic target is $M_2^3M_3/M_4=1375/1323<2$.

## A precise obstruction to iterating difference-sign arguments

Euler's formula also gives, up to an affine function of $n$,
\[
 L_n=\log\Gamma(n+2)+\log(n+1/2)+\log\zeta(2n+2).
\]
The discrete curvature $\Delta^2 L_n$ is the $n$th moment on $[0,1]$ of a finite signed measure. Its continuous density is
\[
 \frac{x^2(1-x)-\sqrt{x}(1-x)^2}{-x\log x},
\]
and it has positive atoms of mass $(1-p^{-2k})^2/(k p^{2k})$ at $x=p^{-2k}$, for primes $p$ and positive integers $k$. This follows directly from the logarithmic gamma recurrence, Frullani's integral for the two finite log differences, and the absolutely convergent Euler logarithm. The continuous density is strictly negative throughout $(1/4,1/2)$, whereas all atoms lie at most at $1/4$. Consequently $\Delta^2L_n$ is not a Hausdorff moment sequence, even after any fixed shift. More explicitly $\Delta^{2N+2}L_N$ equals the signed integral of $(x(1-x)^2)^N$. This function peaks uniquely at $x=1/3$. Take a closed neighborhood of this point within the negative interval, and a smaller neighborhood on which the weight exceeds its maximum outside the larger one. The negative mass in the smaller neighborhood eventually dominates the entire possible positive contribution outside. Hence $\Delta^{2N+2}L_N<0$ for every sufficiently large $N$. The $N=2$ example is already strict: $0.9996<\prod_{j=0}^6 M_{2+j}^{(-1)^j\binom6j}<0.9997$, by clearing rational denominators. This rules out a sign induction based on complete monotonicity of the ordinary-index log curvature. It does not give a counterexample to the polynomial transfer.

## The sharp interpolation exponent

Let $\Theta=\sup_{\rho}(\Re\rho-1/2)$ over nontrivial zeta zeros. The critical strip and functional equation give $0\le\Theta\le1/2$. The finite costs above obey the exact asymptotic equality
\[
 \lim_{m\to\infty}\frac{\log(1+C_m)}{\log m}=\Theta .
\]
This identifies the obstruction quantitatively using finite Bernoulli sections. The lower bound is the preceding Blaschke argument. Here is the upper bound, on paper, without assuming a value of $\Theta$.

Fix $\Theta<c<1$. On $\Re s>\Theta$ choose the analytic logarithm of $X$ which is real on the positive real ray in that domain, and let $f(s)=\log X(s)-\log X(s+1)$. On $\Re s\ge c$, $f(s)=O_c(\log^2(2+|s|))$. For $c\le\Re s\le2$ this follows by integrating the paired Hadamard logarithmic derivative along a unit horizontal segment. If $|\Im s|=T$ is large, there are $O(\log(2+T))$ zeros per unit interval about ordinates up to $2T+O(1)$ in the upper half-plane, from Riemann–von Mangoldt; the contribution of each at distance at most one in ordinate is bounded using $c-\Theta>0$. Summing the other unit blocks through $2T+O(1)$ gives $O_c(\log^2(2+T))$. For higher ordinates the paired summands are $O((1+T)/\gamma^2)$ and their sum is $O(\log(2+T))$. For $\Re s\ge2$ the usual logarithmic derivative of the gamma factor is $O(\log(2+|s|))$ by Stirling and the Euler series for $\zeta'/\zeta$ is bounded. The bounds also cover compact subsets of $\Re s\ge c$.

Define the right-half-plane finite Blaschke product $B(s)=\prod_{j=1}^m(s-u_j)/(s+u_j)$. Let $\ell$ be $\Re w=c$ oriented upwards. Consider
\[
 R_m(s)=\frac{1}{2\pi i}\int_\ell f(w)
  \left(1-\frac{B(s)}{B(w)}\right)
  \left(\frac1{s-w}-\frac1{u_1-w}\right)dw .
\]
For each fixed $w$, the possible pole at $s=w$ cancels. The kernel is rational in $s$, has denominator dividing $\prod_j(s+u_j)$, and is bounded as $s\to\infty$. The integral converges absolutely for each fixed $s$ by the subtracted Cauchy kernel. To see that integration preserves this same finite-dimensional rational space, evaluate the numerator polynomial at $m+1$ fixed, distinct real points off the contour and use polynomial interpolation to recover each coefficient. Reality under conjugation follows from the real coefficients and the conjugation symmetry of $f$. At $s=u_j$ the Blaschke factor vanishes, and the right semicircle closure is clockwise. The residue of $1/(s-w)$ as a function of $w$ is $-1$, so
\[
 R_m(u_j)=f(u_j)-f(u_1),\qquad 1\le j\le m.
\]
The subtracted kernel and the logarithmic growth above make the semicircle contribution vanish.

We show $\sup_{y\in\mathbb R}|R'_m(iy)|\ll_c m^c(\log(2+m))^4$. Uniformly in $t$,
\[
 1/|B(c+it)|\le\prod_j\frac{u_j+c}{u_j-c}\ll_c m^c
\]
by $\sum_{j\le m}2c/u_j=c\log m+O_c(1)$. Also $|B'(iy)|\le\sum_j 2u_j/(u_j^2+y^2)\ll\log(2+m)$. Write $s=iy$. Differentiation gives a term with $(s-w)^{-2}[1-B(s)/B(w)]$ and a term with $B'(s)/B(w)$ times the subtracted Cauchy kernel. For $|y|\le4m$, the former is bounded absolutely by $O_c(m^c\log^2(2+m))$ using the integrable Cauchy-square weight. For the latter, the bound
\[
 \int_\mathbb R |(iy-c-it)^{-1}-(u_1-c-it)^{-1}|\log^2(2+|t|)dt
 \ll_c \log^3(2+|y|)
\]
follows by bounding each term on $|t|\le 2|y|+4$ and the difference by $O((1+|y|)/t^2)$ outside. This proves the stated bound for bounded $|y|/m$.

For $|y|>4m$ and $|t-y|\le |y|/2$, every $z$ on the segment from $iy$ to $c+it$ satisfies $|B(z)|\le1$ and $|B'(z)|\ll m^2/y^2$, by differentiating the product and using $\Re z\ge0$, $|\Im z|\ge|y|/2$. Moreover $1/|B(c+it)|=O_c(1)$ there, since the log product is $O_c(\sum u_j/y^2)=O_c(m^2/y^2)$. Hence the first derivative kernel integrates to $O_c(m^2\log^3(2+|y|)/y^2)$ on that neighborhood. On the complement the crude Blaschke factor bound and $\int_{|t-y|>|y|/2}\log^2(2+|t|)/(c^2+(t-y)^2)dt\ll\log^2(2+|y|)/|y|$ suffice. The second derivative-kernel term is bounded by $O_c(m^{c+2}\log^3(2+|y|)/y^2)$, using the preceding subtraction estimate and $|B'(iy)|\ll m^2/y^2$. These bounds give the claimed uniform estimate. As $R_m$ is rational with all poles strictly in the left half-plane and bounded at infinity, $R'_m$ decays there at infinity; the maximum principle controls its norm throughout the right half-plane.

Let $D_m=\|R'_m\|_\infty$. The derivative
\[
 W_m(s)= X'(s+1)/X(s+1)+R'_m(s)+D_m
\]
has nonnegative real part on $\Re s>0$ by the classical centered Hadamard expansion, and is real on the positive axis. The symmetric half-plane Herglotz representation is
\[
 W_m(s)=\alpha s+\int_{[0,\infty)}\frac{2s}{s^2+y^2}\,d\nu(y)
\]
with $\alpha\ge0$, a positive measure $\nu$, and $\int(1+y^2)^{-1}d\nu<\infty$. This is the usual representation of a positive-real function on the half-plane: its real part has a Poisson measure and a nonnegative linear term, reflection in the real axis symmetrizes the measure and eliminates the imaginary constant. Half the zero-frequency atomic mass is used in $\nu$ if present. Under $b=1/(a+y^2)$, push forward $b\,d\nu$ and add mass $\alpha/2$ at $b=0$. This gives a finite positive $\eta$ with precisely the logarithmic derivative kernel of the convex program.

Integrating $W_m$ on the sample nodes and using the interpolation identities yields $\int k_j d\eta=\log B_j^*+D_m(u_j-u_1)$. The projective differences cancel the drift, so this $\eta$ is an exact finite feasible row with $\int k_2d\eta=\log B_2^*+2D_m$. Therefore
\[
 C_m\ll_c 1+m^c\log^4(2+m)\quad (\Theta<c<1).
\]
Let $c\downarrow\Theta$ to obtain the claimed upper exponent. Neither direction bounds the true $\Theta$ by zero using independent arithmetic.

## Exact power at an individual zero and an unconditional cost floor

A bounded normalization sharpens the lower estimate to
\[
 1+C_m\gg_\rho m^{\Re\rho-1/2}
 \qquad(\Re\rho>1/2).
\]
It also gives the unconditional one-sided estimate
\[
 C_m\ge \log(2\pi/5)-O\!\left(\frac{\log\log m}{\log m}\right)
 \qquad(m\longrightarrow\infty).
\]

Use the factors $X=AY$, the minimizer derivative $F_m=G_m'$ and its drift $c_m$ from the lower estimate. Put $K=1+C_m$ and
\[
 T_m(u)=\frac{Y'(u)+(A'(u)/A(u)+c_m-F_m(u))Y(u)}
 {(1+u)^3(1+F_m(u)/K)} .
\]
The floor-integral continuation bounds $Y$ uniformly on $\Re u>-1/4$; here $\Re s>1/4$ and $|1+u|$ stays bounded below. Cauchy's inequality then bounds $Y'$ uniformly on $\Re u>0$. The positive real part of $F_m$ gives $|(1+F_m/K)^{-1}|\le1$ and $|F_m/(1+F_m/K)|\le K$. These observations and the same gamma estimate as above give $\|T_m\|_{H^\infty(\Re u>0)}\ll K$ with an absolute constant. The $m-1$ Rolle nodes $r_j$ remain zeros.

At a fixed $u_0=\rho-1/2$ with $\Re u_0=\delta>0$, the continuous kernel of $F_m(u_0)$ on the compact $b$-interval bounds $|F_m(u_0)|\ll_\rho C_m$. Consequently $|1+F_m(u_0)/K|$ is bounded above independently of $m$. At multiplicity $d$, the coefficient of $(u-u_0)^{d-1}$ in $T_m$ thus has modulus bounded below by a positive constant depending only on $\rho$. Divide out that zero at $u_0$ and the real Rolle nodes using Blaschke factors of the unshifted right half-plane. This yields
\[
 1\ll_\rho K\prod_{j<m}\left|\frac{u_0-r_j}{u_0+r_j}\right|
 \ll_\rho K m^{-\delta}
\]
and proves the first refinement.

For the second estimate it suffices to consider $C_m\le\log B_2^*$, so $K$ stays bounded. For real $0<x\le1/2$ the factors at the Rolle nodes satisfy
\[
 \prod_{j<m}\frac{r_j-x}{r_j+x}
 \le \exp\!\left(-2x\sum_{j<m}r_j^{-1}\right)
 \ll m^{-x}
\]
uniformly in $x$ and the choices of nodes. Thus $|T_m(x)|\ll m^{-x}$. Near $x=0$, $Y(x)$ is bounded away from zero, since $X(0)=\xi(1/2)>0$. Writing $L=X'/X$ and clearing the normalization gives
\[
 c_m\ge -L(x)-O(m^{-x})+
 F_m(x)[1-O(m^{-x})/K].
\]
Evenness gives $L(x)=O(x)$; also $F_m(x)\ge0$. Choose $x=2\log\log m/\log m$ for all sufficiently large $m$, so the coefficient of $F_m(x)$ is positive. This proves the asserted one-sided cost floor.

## Computing the finite costs and expressing the remaining theorem in integers

Write $d=m-2$, $L_j=\log M_{j-1}$ and $z_j(b)=g_j(b)/k_2(b)$. For a positive rational budget $h$, the threshold $C_m\le h\log2$ has the polynomial test above with right-hand side $2^{hp}$. Raising to the denominator of $h$ yields a rational comparison. In particular, if $H_m$ is the least positive integer budget for which all these implications hold, then
\[
 H_m=\max\{1,\lceil C_m/\log 2\rceil\},\qquad
 \lim_{m\to\infty}\frac{\log H_m}{\log m}=\Theta.
\]
Each implication involves one integer polynomial on one rational interval and a comparison of integers after clearing denominators. Its universal quantifier still ranges over arbitrarily large coefficients.

**A finite witness for a strict upper bound.** The statement $C_m<h\log2$ can also be certified by a finite list of rational support points, interval arithmetic, and a strictly positive slack weight. Use the compact convex hull $K$ of $0$ and $z(I)$ in $\mathbb R^d$. Zero is an interior point by the null measure argument above. If $C_m<h\log2$, the target $x=(L_j/(h\log2))_j$ belongs to $rK$ for some $r<1$ and is interior to $K$. One can reserve a small positive weight for the zero (slack) column and keep the rescaled target interior. A finite polytope of curve points contains this rescaled target in its interior: enclose a small simplex around the target inside $K$ and take the finite union of curve points in convex representations of its vertices. A slack vertex in these representations can itself be expressed as a finite convex combination of curve points. Replacing the support parameters by sufficiently close rationals preserves a strictly positive distance to every supporting hyperplane. Interior points admit a representation with every selected weight positive, by first reserving a sufficiently small uniform contribution from all vertices. Choose an affinely independent basis of columns. Approximate all nonbasis weights by rationals and solve for the basis weights exactly. Invertibility and positivity persist in a neighborhood. The case $m=2$ uses the slack column alone.

The certificate records the chosen columns, the nonbasis weights and a precision. For an interval matrix with midpoint $A$, a rounded target with midpoint $r$, and row-sum perturbation bounds $E,D$ for the matrix and target, respectively, set $x_0=A^{-1}r$, $W=\|A^{-1}\|_\infty$. If $WE<1$, every component of the exact solution is within
\[
   W(D+E\|x_0\|_\infty)/(1-WE)
\]
of its midpoint solution. The verifier uses directed integer intervals for the logarithms of positive rationals; nonbasis contributions may be subtracted from the target first. Success requires strictly positive exact weights, including the slack. Conversely such a certificate supplies the measure of cost $(1-w_{\rm slack})h\log2<h\log2$. Enumerating rational data and precisions eventually certifies any true strict upper bound. A true strict lower bound has an integer separating test as above. Dovetailing the searches over pairs of rational budgets computes $C_m/\log2$ uniformly in $m$ to any prescribed absolute accuracy.

This gives a fully arithmetic version of the remaining theorem. For each $d_0\ge1$, find integers $m\ge2^{d_0}$ and $h\ge1$ with $h^{d_0}\le m$, and a finite certificate for $C_m<h\log2$. These quantifiers and the finite verifier require only integers. Existence would imply $\Theta=0$ by the growth law. Conversely under RH one can take $h=1$ since $\log(2\pi/5)<\log2$. The missing result is the existence of witnesses for arbitrarily large $d_0$ by an independent arithmetic argument.

## The unique finite minimizing measure

For $m\ge3$, the target is nonzero since $M_2=25/21$. The normalized point $(L_j/C_m)_j$ lies on the boundary of $K$ and $0$ lies in its interior. There is therefore a real supporting functional $q$ with $q\cdot (L_j/C_m)_j=1$ and $q\cdot z(b)\le1$ throughout $I$. Put $h(b)=k_2(b)-\sum_{j=3}^m q_jg_j(b)$. Then $h\ge0$ and its integral is zero against every minimizing measure. Such measures are supported on the zeros of $h$.

The function $F(b)=bh(b)$ is a linear combination of the $m-1$ functions $\log(1+v_jb)$ for $2\le j\le m$. If $c_j$ are its coefficients, $\sum_{j=2}^m(j-1)c_j=1$, so $F'$ is a nonzero rational function with numerator of degree at most $m-2$. Nonvanishing follows from the distinct poles; all $v_j$ here are positive. Counting multiplicities on the closed interval, $F$ can have at most $m-1$ zeros by Rolle's theorem. One zero at $0$ comes from the extra factor $b$. Each interior zero of $h$ has multiplicity at least two and each endpoint zero has multiplicity at least one. Hence the number $s$ of interior support points and the number $e$ of support endpoints obey
\[
                     2s+e\le m-2 .
\]
In particular at most $\lfloor m/2\rfloor$ positive atoms are needed at the **minimum**, even though a readily verified upper-bound certificate may use more.

Uniqueness follows on the common contact set of this one supporting functional. Suppose two minimizing measures differ by weights $t_i$ at its distinct points $b_i$. Equality of their costs and constraints gives $J(v_j)=0$ for $2\le j\le m$, where $J(v)=\sum_i t_i\log(1+v b_i)/b_i$ with the continuous convention $v$ at $b_i=0$. Also $J(0)=0$. For $k$ contact points, $J'(v)=\sum_i t_i/(1+b_i v)$ has numerator of degree at most $k-1$. It has at least $m-1$ distinct zeros on the positive axis by Rolle. As $k\le\lfloor m/2\rfloor\le m-1$, it vanishes identically. Distinct poles force all coefficients with $b_i>0$ to vanish and the remaining constant forces the zero-node coefficient to vanish. For $m=2$ the zero measure is the unique minimizer.

## A scalar rational Bernoulli criterion for the Riemann hypothesis

For $k\ge0$ define the positive rationals $M_k=6\,10^k k!\,|B_{2k+2}|/(2k)!$, with $M_0=M_1=1$. Form
\[
 P_n=\prod_{k=0}^n M_k^{(-1)^k\binom nk},\qquad d_n=\log P_n .
\]
Let $\Theta=\sup_\rho(\Re\rho-1/2)$ over nontrivial zeta zeros, and use $\log 0=-\infty$. Then
\[
 \limsup_{n\to\infty}\frac{\log|d_n|}{\log n}
 =-\frac34+\frac{\Theta}{2}.
\]
The final section proves that RH is equivalent to the single rational comparison $n^3|P_n-1|^4\le1$ for every integer $n\ge2$. First, the sharp limsup implies that RH holds if and only if, for each integer $h\ge2$, all sufficiently large $n$ satisfy the rational inequality
\[
 n^{3h-4}\,|P_n-1|^{4h}\ \le\ 1 .
\]
The threshold may depend on $h$. The condition makes no use of $\pi$, logarithms, or analytic continuation. In the proof set $L_k=\log M_k$.

## Upper estimate by finite differences

Put $X(u)=\xi(1/2+u)$, $b=2\pi/5$, and $\alpha=-3/4+\Theta/2$. The entire function
\[
 A(z)=\frac{X(2z+3/2)}{X(3/2)}\,b^{-z}
\]
takes the values $M_k$ at $z=k$, by Euler's even-zeta formula. It is zero-free on $\Re z>\alpha$ since its zeros are exactly $z=(\rho-2)/2$. Take there the analytic logarithm $H=\log A$ with $H(0)=0$. Its restriction to the nonnegative real axis is real. For each fixed $\alpha<c<0$,
\[
 |H(z)|\ll_c (1+|z|)\log^2(2+|z|),\qquad \Re z\ge c .
\]
Indeed $X'/X(u)=O_\delta(\log^2(2+|u|))$ on $\Re u\ge\Theta+\delta$. For bounded real part write the Hadamard derivative in opposite-zero pairs. Each zero within one unit of the target ordinate has horizontal distance at least $\delta$, and there are $O(\log(2+T))$ such zeros at height $T$ by Riemann–von Mangoldt. Summing unit blocks at distances between 1 and $2T+O(1)$ costs another logarithm. Past those blocks the opposite-zero pairs contribute $O((1+T)/\gamma^2)$ per pair, summable to $O(\log(2+T))$. At large real part use Stirling and the absolutely convergent Euler logarithmic derivative instead. Integrate $H'(z)=2X'(2z+3/2)/X(2z+3/2)-\log b$ along a straight segment from zero to obtain the bound.

For $n\ge4$ integrate $H(w) n!/[w(w-1)\cdots(w-n)]$ up the vertical line $\Re w=c$ and close with a right semicircle of radius tending to infinity. For each fixed $n$ the growth bound makes the closing integral vanish. The residues at the nodes and the orientation show that the line integral divided by $2\pi i$ equals $(-1)^{n+1}d_n$. On $w=c+it$ the absolute kernel is bounded by
\[
 \frac{\Gamma(n+1)\Gamma(-c)}{\Gamma(n+1-c)}
 \prod_{j=0}^3\frac{|j-c|}{|j-c-it|}
 \ll_c n^c(1+|t|)^{-4}.
\]
The omitted factors are at most one. Integration against the displayed growth bound gives $d_n=O_c(n^c)$ for every $c>\alpha$ sufficiently close to $\alpha$.

## Converse by an exact Newton expansion

Euler's formula gives
\[
 M_k=\frac{12}{\pi^2}\left(\frac{10}{4\pi^2}\right)^k
      \Gamma(k+2)(k+1/2)\zeta(2k+2).
\]
The second difference $\Delta^2 L_k=L_{k+2}-2L_{k+1}+L_k$ is $\int_0^1 x^k\,d\sigma(x)$ for a finite signed measure. Its continuous density and atomic part are respectively
\[
 \frac{x^2(1-x)-\sqrt{x}(1-x)^2}{-x\log x},
 \qquad
 \sum_{p\ {\rm prime}}\sum_{r\ge1}\frac{(1-p^{-2r})^2}{r p^{2r}}\,\delta_{p^{-2r}} .
\]
For the gamma term, apply Frullani's identity to $\log(k+3)-\log(k+2)$. For the $\log(k+1/2)$ term apply the same identity to its second difference. For $\log\zeta(2k+2)$ take two differences in its absolutely convergent prime-power expansion. Both densities are integrable at the endpoints, and the atomic weights are summable. Consequently for $n\ge2$,
\[
 d_n=\int_0^1 (1-x)^{n-2}\,d\sigma(x).
\]
For $\Re z>0$ define the holomorphic function
\[
 F(z)=\int_0^1\frac{x^z-1+z(1-x)}{(1-x)^2}\,d\sigma(x).
\]
It is $O((1+|z|)^2)$ uniformly there. On $x\le1/2$ bound the numerator directly. On $x\ge1/2$ use Taylor's formula at 1 and $|x^{z-2}|\le4$. The first two values are zero and its second differences at nonnegative integers are the same as those of $L_k$, so $F(k)=H(k)$ for all $k\ge1$ (the formula defines $F(0)=0$ too). The function $(F-H)/(1+z)^3$ is bounded on $\Re z>0$ and vanishes at all positive integers. The half-plane Blaschke condition forces it to vanish identically.

As $\sum_n|\binom zn|<\infty$ when $\Re z>0$, integrate the ordinary binomial series term by term against this finite measure:
\[
 F(z)=\sum_{n\ge2}(-1)^n\binom zn\,d_n .
\]
If $d_n=O(n^\beta)$, the series converges locally uniformly in $\Re z>\beta$. For a compact $K$ therein the bound $|\binom zn|\ll_K n^{-1-\inf_K\Re z}$ follows from the gamma quotient and the entire reciprocal gamma function, including at integer parameters. If the asserted limsup were below $\alpha$, we could choose $\beta<\alpha$ with this coefficient bound. The Newton series would then extend $H$ to $\Re z>\beta$. Its exponential agrees with $A$ there by analytic continuation from $\Re z>0$. By definition of the supremum there is an actual zero $z=(\rho-2)/2$ with $\Re z>\beta$, contrary to the nonvanishing of an exponential. This proves the sharp limsup.

The upper bound above implies $d_n\to0$ without RH, hence $|P_n-1|/|d_n|\to1$ along nonzero terms. The stated rational criterion follows by taking a strictly smaller exponent loss than $1/h$ for each fixed $h$, then letting $h$ tend to infinity in the converse.

## An unconditional prime-counting estimate

Set $w_n(y)=y^{-2}(1-y^{-2})^n$ for $y>1$, and let $J(y)=\sum_{p^r\le y}1/r$. Changing variables $x=y^{-2}$ in the preceding exact measure gives
\[
 d_n=E_n+\int_{1}^\infty w_n(y)\left(dJ(y)-\frac{dy}{\log y}\right),\qquad
 E_n=\int_0^1\frac{x(1-x)^{n-1}}{-\log x}\,dx.
\]
Here $0<E_n\ll n^{-2}/\log n$. Split at $x=n^{-1/2}$, using $-\log x\ge(\log n)/2$ on the left and $-\log x\ge1-x$ on the right.

The elementary Chebyshev estimate gives $J(y)\ll y/\log y$ for $y\ge2$, since prime powers of exponent at least two contribute $O(\sqrt y\log y)$. Stieltjes integration by parts bounds the prime sum in absolute value by $\int_2^\infty |w'_n(y)|J(y)\,dy$ (with lower endpoint $2^-$). On $y\ge2$,
\[
 |w'_n(y)|\le 2y^{-3}(1-y^{-2})^{n-1}(1+(n+1)y^{-2}).
\]
Below $n^{1/4}$ the exponential cut-off absorbs any fixed power of $n$. Above $n^{1/4}$ use $1/\log y\ll1/\log n$, and substitute $v=\sqrt n/y$. The two integrals of $y^{-2}e^{-n/(2y^2)}$ and $ny^{-4}e^{-n/(2y^2)}$ are both $O(n^{-1/2})$. The smooth term satisfies the same $O(n^{-1/2}/\log n)$ bound, with $1<y<2$ exponentially small since its apparent endpoint singularity is removed by the zero of $w_n$. Thus elementary size estimates already give $d_n=O(n^{-1/2}/\log n)$.

The known Vinogradov–Korobov prime number theorem strengthens this to
\[
 |d_n|\ll n^{-1/2}\exp\!\left[-c\,\frac{(\log n)^{3/5}}{(\log\log n)^{1/5}}\right]
\]
for some $c>0$. Indeed $J(y)-\int_2^y dt/\log t\ll y\exp[-c_0(\log y)^{3/5}(\log\log y)^{-1/5}]$ for large $y$, by the corresponding bound for $\pi$ and the preceding bound for higher prime powers. Integrate the discrepancy by parts and split at $n^{1/4}$ as above. On the upper piece the exponential saving at $y=n^{1/4}$ is uniform. On the lower piece $e^{-\sqrt n/2}$ dominates. The elementary gamma remainder and endpoint terms are smaller too. The further power saving to $n^{-3/4+\varepsilon}$ is the unresolved RH scale.

Báez-Duarte's sequential Riesz criterion uses reciprocals $1/\zeta(2k+2)$ and the same critical exponent. Flajolet and Vepštas develop the Nørlund–Rice technique for zeta-value differences. The present argument applies this technique to logarithms of the normalized rational Bernoulli samples. Voros also uses logarithms of even completed-zeta samples with a different weight sequence in a discretization of the Keiper–Li criterion. No priority claim is made for the present specialization. [Voros](https://arxiv.org/abs/1703.02844)

- [Báez-Duarte, *A new necessary and sufficient condition for the Riemann hypothesis*](https://arxiv.org/abs/math/0307215)
- [Flajolet and Vepštas, *On Differences of Zeta Values*](https://arxiv.org/abs/math/0611332)
- [Johnston and Yang, *Some explicit estimates for the error term in the prime number theorem*](https://arxiv.org/abs/2204.01980)

## A single rational inequality from the Hadamard product

The criterion above can be sharpened to one eventual arithmetic comparison:
\[
 \boxed{\quad \mathrm{RH}\ \Longleftrightarrow\
       n^3\,|P_n-1|^4\le1\quad\text{for all sufficiently large }n.\quad}
\]
In fact the following uniform upper bound includes the correct logarithmic saving, with the same $\alpha=-3/4+\Theta/2$:
\[
  |d_n|\ll n^\alpha/\log n .
\]

For a nontrivial zero $\rho$ let $q=(2-\rho)/2$ and count multiplicities. The numbers $-q$ are all the zeros of the order-one entire $A$. Its genus-one Hadamard product has logarithm along $k\ge0$ equal to the sum of $\log(1+k/q)-k/q$ over these zeros, plus a fixed affine function of $k$. The logs are followed continuously starting at zero. For each fixed $k$ the canonical terms are absolutely summable because $\sum_\rho |q|^{-2}<\infty$. For $n\ge2$ the finite difference annihilates every affine term. Since $\Re q>0$, Frullani's identity and $\sum_k(-1)^k\binom nk=0$ give the individual contribution
\[
 -\int_0^\infty e^{-qt}(1-e^{-t})^n\frac{dt}{t}
 =-\int_0^\infty B(q+v,n+1)\,dv .
\]
For this equality insert $1/t=\int_0^\infty e^{-vt}dv$ and substitute $x=e^{-t}$; the double integral for a fixed $q$ is absolutely convergent. Consequently $d_n$ is the sum of these negative beta integrals.

Write $q=a+i\tau$, so $1/2\le a\le1$. The exact beta product
\[
 B(q+v,n+1)=\frac{n!}{\prod_{j=0}^{n}(q+v+j)}
\]
shows, by retaining the normalized factors at $j=0,1$ and bounding the rest by one, that
\[
 |B(q+v,n+1)|\ll \frac{(1+v)^2}{(1+|\tau|)^2} B(a+v,n+1).
\]
The bound is uniform in $n\ge2$, $v\ge0$ and $1/2\le a\le1$. On $0\le v\le1$ the real beta factor is $O(n^{-a-v})$ uniformly by the gamma quotient. On $v\ge1$, use the beta integral and the identity
\[
 \int_1^\infty (1+v)^2 x^v\,dv
 =x\left(\frac4{-\log x}+\frac4{(-\log x)^2}
                    +\frac2{(-\log x)^3}\right).
\]
On $0<x\le1/2$ the parenthesis is bounded, so the contribution is $O(B(a+1,n+1))=O(n^{-a-1})$. On $1/2<x<1$, the parenthesis is $O((1-x)^{-3})$, whose contribution against $(1-x)^n$ is exponentially small for $n\ge4$. Thus
\[
 \int_0^\infty |B(q+v,n+1)|\,dv
 \ll \frac{n^{-a}}{(1+|\tau|)^2\log n}.
\]
The zero counting formula makes the last ordinate weight summable. Since $a\ge-\alpha$, summing proves the claimed global upper bound. Under RH this gives $n^{3/4}|P_n-1|\to0$, which proves necessity of the single rational comparison. Conversely that comparison implies $d_n=O(n^{-3/4})$, so the preceding Newton continuation proves RH.

One can also identify the leading oscillation. For each fixed $q$ the compact-$v$ gamma quotient on $0\le v\le1$ gives
\[
 \int_0^\infty B(q+v,n+1)\,dv
 =\frac{\Gamma(q)n^{-q}}{\log n}+o_q(n^{-a}/\log n).
\]
Indeed $(\log n)\int_0^1\Gamma(q+v)n^{-v}dv\to\Gamma(q)$, and the tail was bounded above. Termwise subtraction from the full discrete sum is justified by the summable uniform bound just proved and Stirling for fixed $a$ in this compact interval. It follows that
\[
 (\log n)n^{-\alpha}d_n
 =-\sum_{\rho:\ \Re q=-\alpha}\Gamma(q)e^{-i\Im(q)\log n}+o(1).
\]
If the zero abscissa supremum is unattained this is an empty sum. Under RH every zero contributes. The series is absolutely convergent. Its sum on the real logarithmic scale is an almost periodic function. In that case it is real, has mean zero and is nonzero, since the aggregated coefficient at any one positive zero ordinate is a nonzero multiplicity times a nonzero gamma value. Its positive and negative values recur arbitrarily far out, and $\log(n+1)-\log n\to0$ lets the integer samples detect both signs.

## An explicit comparison at every order

The unknown starting point can also be removed:
\[
 \boxed{\quad \mathrm{RH}\ \Longleftrightarrow\
       n^3\,|P_n-1|^4\le1\quad\text{for every integer }n\ge2.\quad}
\]
In particular, if RH fails then the sharp limsup implies that infinitely many finite rational comparisons fail.

To prove necessity assume RH, fix $a=3/4$ and write $q=a+i\tau$. The centered Hadamard logarithmic derivative at $s=1$, followed by the elementary Laurent expansions of $\Gamma$ and $\zeta$, gives
\[
 \kappa=\sum_\rho |\rho|^{-2}
       =2\xi'(1)/\xi(1)=2+\gamma_{\!E}-\log(4\pi)<0.048 .
\]
Indeed the real part of $(1-\rho)^{-1}$ equals $1/(2|\rho|^2)$ under RH. Since $|\rho|^2=(\Im\rho)^2+1/4$ and $|\rho|^{-2}\le\kappa$ individually,
\[
 S=\sum_\rho \tau^{-2}
 =4\sum_\rho (\Im\rho)^{-2}
 \le \frac{4\kappa}{1-\kappa/4}<\frac15 .
\]
The factors with $j=0,1$ in the beta product have absolute denominator at least $|\tau|$ apiece. For $n\ge3$ this yields
\[
 |d_n|\le S n(n-1)\int_0^\infty B(a+2+v,n-1)\,dv
 \le S n(n-1)B(a+2,n-2).
\]
The second inequality uses $1/(-\log x)\le1/(1-x)$ in the beta integral. Define $K_n=n^a n(n-1)B(a+2,n-2)$. Concavity gives $(1+1/n)^a\le1+a/n$, hence
\[
 \frac{K_{n+1}}{K_n}
 =\left(1+\frac1n\right)^a\frac{(n+1)(n-2)}{(n-1)(n+a)}
 \le\frac{(n+1)(n-2)}{n(n-1)}<1.
\]
Now $K_4=4^{3/4}\,12/[(11/4)(15/4)]<10/3$. Thus $n^{3/4}|d_n|<2/3$ for every $n\ge4$, and $|d_n|<1/4$ there. Consequently $n^{3/4}|P_n-1|\le n^{3/4}|d_n| e^{|d_n|}<(2/3)e^{1/4}<1$. For the remaining two orders $P_2=25/21$ and $P_3=3125/3087$ give the required rational comparisons directly. Sufficiency follows already from the eventual criterion.

# The scalar Bernoulli inequality through an explicit index

Let $T=3\cdot10^{12}$, $M_j=6\,10^jj!|B_{2j+2}|/(2j)!$, and
$$
 P_n=\prod_{j=0}^n M_j^{(-1)^j\binom nj},\qquad d_n=\log P_n .
$$
For every integer $512\le n\le 2^{T/2}$,
$$
                         n^3(P_n-1)^4<1 .
$$
The only finite-height input is the theorem that every nontrivial zero with ordinate of absolute value at most $T$ is on the critical line. [Platt and Trudgian, Bulletin of the London Mathematical Society (2021)](https://doi.org/10.1112/blms.12460)

**The zero contribution.** For each nontrivial zero $\rho=\beta+i\gamma$, put $q=(2-\rho)/2=x+iy$, where $1/2\le x\le1$. The Hadamard product for $\xi(2z+2)$, normalized at $z=0$, gives for $n\ge2$
$$
 d_n=-\sum_\rho\int_0^\infty B(q+v,n+1)\,dv .
$$
Indeed the projective normalization and genus-one corrections are affine in the logarithm. Their $n$th differences vanish. For each zero, represent $\log(1+j/q)$ as the integral of $1/(q+v)-1/(q+j+v)$, then apply the binomial identity for the beta function. Conjugate logarithms pair on the positive axis. The bounds below also give absolute convergence of the resulting sum in the claimed range.

The functional equation and the logarithmic derivative of the Hadamard product at zero and one give $2\sum_\rho\Re(1/\rho)=2+\gamma_E-\log(4\pi)<1/20$. Summing $\Re(1/\rho)\ge\beta/(1+\gamma^2)$ and pairing $\beta$ with $1-\beta$ shows $\sum_\rho(1+\gamma^2)^{-1}<1/20$. Thus each $\gamma^2>19$, and
$$
 S_2:=\sum_\rho |y|^{-2} \le 4(20/19)\sum_\rho(1+\gamma^2)^{-1}<1/4 .
$$

**A uniform beta bound.** For integers $1\le r<n$, bound the first $r$ denominator factors in $B(q+v,n+1)=n!/\prod_{j=0}^n(q+v+j)$ from below by $|y|$. Take the real parts of the remaining factors as lower bounds for their moduli. The real beta integral, $\int_0^\infty t^v\,dv=(-\log t)^{-1}$, and $-\log t\ge1-t$ give
$$
 \int_0^\infty |B(q+v,n+1)|\,dv
 \le |y|^{-r}\frac{n!}{(n-r)!} B(x+r,n-r)
 = |y|^{-r}\Gamma(x+r)\frac{\Gamma(n+1)}{(n-r)\Gamma(n+x)} .
$$
If $U$ is a gamma variable with shape $n+x$ and unit scale, Jensen's inequality for $U^{1-x}$ gives $\Gamma(n+1)/\Gamma(n+x)\le(n+x)^{1-x}$. The final ratio in the display is therefore at most $1.01n^{-x}$ when $n\ge512$ and $r\le3$, and at most $3n^{-x}$ whenever $n\ge512$ and $r\le n/2$.

**Low ordinates.** For $|\gamma|\le T$, $x=3/4$. Taking $r=2$ gives a combined contribution to $n^{3/4}|d_n|$ of at most $1.01\,\Gamma(11/4)S_2<0.505$. We used $\Gamma(11/4)\le2$ by log-convexity.

**High ordinates on the first range.** For $|\gamma|>T$, $\sum |y|^{-3}\le 2S_2/T<1/(2T)$. Use $r=3$, $\Gamma(x+3)\le6$ and $x\ge1/2$. For $512\le n\le (T/10)^4$ the high contribution to $n^{3/4}|d_n|$ is at most $3.03 n^{1/4}/T\le0.303$.

**High ordinates on the second range.** Suppose $T^2\le n\le2^{T/2}$. Put $r=T/4$, an integer with $2r\le n$. Since $\Gamma(x+r)\le r!\le r^r$ and $\sum_{|\gamma|>T}|y|^{-r}\le(T/2)^{2-r} S_2$, the high contribution to $n^{3/4}|d_n|$ is bounded by
$$
 \frac34 (T/2)^2\,2^{-r}\, n^{1/4}
 \le T^2 2^{-T/8}<0.001 .
$$
For this explicit $T$, $T^2<2^{84}$ and $T/8>100$. The two ranges overlap because $T^2<(T/10)^4$.

Together the estimates give $n^{3/4}|d_n|\le0.808$ throughout the stated interval. Since $512^{3/4}>100$, the inequality $|e^u-1|\le|u|e^{|u|}$ yields $n^{3/4}|P_n-1|\le0.808\exp(0.808/100)<0.82$. This proves the claim.

For $2\le n\le512$ [the finite-range checker](../../../scripts/xi_bernoulli/verify_scalar_range.py) proves the strict comparison using only rational Bernoulli values and outward-rounded 832-bit logarithms. Together the two proofs cover every index from 2 to the displayed endpoint.

## Analytic sources and the return to Weil positivity

Baiying Liu's version 2 refinement of OpenAI family 003 gives the zero-free half-plane $\Re s>B_{\rm Liu}=0.874957019420098946\ldots$. Thus the growth exponent above is at most $B_{\rm Liu}-1/2=0.374957019420098946\ldots$ independently of a full RH theorem. This corollary uses Liu's result as a published input. The proof of the growth identity requires neither Liu's estimate nor a finite-height verification. [Liu, version 2](https://arxiv.org/abs/2610.12234v2) · [OpenAI 003](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/003.md)

An arithmetic proof of subpolynomial growth on an unbounded sequence would force all centered zeros onto the imaginary axis with their actual multiplicities. The centered Hadamard product would then give a self-adjoint diagonal operator $H$ on the maximal diagonal domain in $\ell^2$, with the signed zero ordinates as eigenvalues. For every $f\in C_c^\infty(\mathbb R)$, the spectral side of the full Weil explicit formula would give $W(f*\widetilde f)=\sum_{\lambda\in\operatorname{spec}H}|\widehat f(\lambda)|^2$, counting multiplicities and using $\widetilde f(x)=\overline{f(-x)}$. The open step is entirely on the Bernoulli side of this implication. The finite minimum is defined before the zeros are introduced. [Weil form and conventions](https://arxiv.org/html/2611.33001v1)

OpenAI's tensor-square result gives representation multiplicities. Its Euclidean tensor spectral point can realize distances in a positive Weil Gram space once positivity is known. GRWTSK's affine port and PortFiber maps transport algebraic data. An identification of that data with the full Weil pairing, with positivity on every test, remains necessary for a proof through those maps. The finite Bernoulli criterion gives a different, explicit arithmetic target against which a proposed map can be tested. The earlier source audit covers the declarations from GRWTSK, Google DeepMind, OpenAI, Anthropic and Tau Ceti. [Tensor squares](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/205.md) · [Spectral point](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/379.md) · [GRWTSK PortFiber architecture](https://github.com/grwtsk/math/blob/36c52a33f8ef731c3bc58bb68cc086906a750bab/GRWTSK/AssociativeRingsAndAlgebras/PortFiberArchitecture.lean)

The interpolation identity, compactness, upper and lower estimates, and uniqueness are analytic arguments in this manuscript. The explicitly identified finite Lean modules were kernel-checked. Independent human review of the new growth theorem remains outstanding. The separate Lean verification of Alpöge's proof is documented by the Lean FRO and Mathlib Initiative. [Joint statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/)
