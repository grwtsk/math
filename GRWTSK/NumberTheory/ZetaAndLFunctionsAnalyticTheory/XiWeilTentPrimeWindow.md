# A dyadic prime criterion from a Weil autocorrelation

Local source attribution: grwtsk contributors. Analytic manuscript. The interval-overlap and finite Gram claims have separate Lean proofs in [XiWeilTentKernel](XiWeilTentKernel.lean). The prime sums, Mellin arguments and all-scale equivalences below are paper proofs. For the definitions and Bernoulli continuation used in the last section see [the ordinary-prime criterion](XiBernoulliOrdinaryPrimeBias.md) and [the interpolation manuscript](XiBernoulliInterpolationCost.md).

For $L=\log 2$ put $T_L(v)=(1-|v|/L)_+$ and $g(u)=u^{-1/2}T_L(\log u)$ for $u>0$. If $X>0$, write
\[
 A(X)=\sum_{X/2 < p < 2X}(\log p)g(p/X)-X G(1),\qquad
 G(s)=\int_0^\infty u^{s-1}g(u)\,du .
\]
The sum uses only ordinary primes from a fixed multiplicative neighborhood of $X$. Its main term is explicit: $G(1)=4(3\sqrt2/2-2)/\log 2$.

**Theorem.** The following are equivalent.

1. The Riemann hypothesis for the ordinary Riemann zeta function.
2. $A(X)\le0$ for all sufficiently large real $X$.
3. $A(N)\le0$ for all sufficiently large integers $N$.

Under RH one has $\limsup_{X\to\infty} A(X)/\sqrt X<-1/30$. Proving the sign in (3) independently would establish RH, hence the global Weil positivity criterion and the usual self-adjoint operator on the signed actual ordinates. The analysis below supplies the equivalence and the explicit margin. An independent all-scale prime bound in (3) remains to be proved.

## The actual test function

Let $h=L^{-1/2}1_{[-L/2,L/2]}$ and $\widetilde h(v)=h(-v)$. Then $T_L=h*\widetilde h$ by taking the length of overlap of two intervals. Its Fourier transform is nonnegative on the real line. More precisely, with $z=s-1/2$,
\[
 G(s)=\frac{e^{zL}+e^{-zL}-2}{Lz^2}
 = L\left(\frac{\sinh(zL/2)}{zL/2}\right)^2 .
\]
The removable central value is $G(1/2)=L$. Its only zeros occur at $s=1/2+2\pi ik/L$ with nonzero integer $k$. Thus the test sees every possible zero away from the critical line.

There is also an exact finite-dimensional Hilbert space model of this *test kernel*. For real sample positions $t_i$, the matrix $T_L(t_i-t_j)$ is the Gram matrix of translated copies of $h$ in $L^2(\mathbb R)$. For complex coefficients $c_i$ its quadratic form is the integral of $|\sum_i c_i h(x-t_i)|^2$. This is an unconditional positivity statement. The arithmetic comparison $A(X)\le0$ is an additional claim about the actual primes. The test Gram matrix by itself does not imply it.

## The square-prime term and the zero sum

Write $\Lambda$ for the von Mangoldt function. Mellin inversion of its Dirichlet series gives, as $X\to\infty$ without a zero-location hypothesis,
\[
 \sum_{m\ge1}\Lambda(m)g(m/X)
   =XG(1)-\sum_\rho X^\rho G(\rho)+O(X^{-1}),
\]
where all nontrivial zeros are counted with multiplicity. On $\Re s=2$, both the Dirichlet series and the inversion integral converge absolutely. Move the line of integration to $\Re s=-1$. The pole at one and the zeros give the residues displayed above. On every fixed vertical strip $G(s)=O((1+|\Im s|)^{-2})$. One can choose horizontal heights tending to infinity on which $\zeta'/\zeta=O(\log^2(2+|\Im s|))$ across the strip, by the usual local logarithmic derivative formula and $O(\log T)$ zeros per unit interval. The functional equation gives $\zeta'/\zeta=O(\log(2+|\Im s|))$ on the new vertical line. These bounds justify the shift and the $O(X^{-1})$ remainder. The zero sum converges absolutely for each fixed $X$. The corners of the tent cause no boundary terms: the Mellin transform is integrable on each vertical line and the original function is continuous. [B. Green, *Prime Numbers*, chapter 7](https://people.maths.ox.ac.uk/greenbj/papers/primenumbers.pdf)

The prime number theorem for $\theta$ gives, by scaling $p=\sqrt X\,u$ against a continuous compactly supported test,
\[
 \sum_p (\log p)g(p^2/X)
 = \sqrt X\int_0^\infty g(u^2)du+o(\sqrt X)
 = \tfrac12 L\sqrt X+o(\sqrt X).
\]
Higher powers contribute $O(X^{1/3}\log^2(2X))$. The resulting comparison is
\[
 A(X)=-\sum_\rho X^\rho G(\rho)-\tfrac12 L\sqrt X+o(\sqrt X).
\]
The prime-square bias here applies to the actual von Mangoldt coefficient at $p^2$, namely $\log p$.

Under RH, $G(1/2+i\gamma)$ is nonnegative and at most $4/(L\gamma^2)$. The standard centered Hadamard identity gives
\[
 \kappa=\sum_\rho |\rho|^{-2}=2+\gamma_E-\log(4\pi)<0.048,
 \qquad \sum_\rho \gamma^{-2}\le\frac{\kappa}{1-\kappa/4}<\frac1{20}.
\]
In the last inequality use $|\rho|^2=1/4+\gamma^2$ and $|\rho|^{-2}\le\kappa$ termwise. Consequently $\limsup A(X)/\sqrt X\le -L/2+(4/L)\sum\gamma^{-2}<-1/30$ because $L>2/3$. There is no simplicity hypothesis.

## Why one sign suffices

For $\Re s>1$, the Mellin transform over $X\ge1$ is
\[
 \int_1^\infty A(X)X^{-s-1}dX
 =G(s)\left[-\frac{\zeta'(s)}{\zeta(s)}
        -\sum_{p,k\ge2}(\log p)p^{-ks}\right]-\frac{G(1)}{s-1},
\]
where the second sum means $p$ runs over primes and $k$ over integers at least two. For each prime, scaling gives $p^{-s}G(s)$ exactly because $g(p/X)=0$ at all $X<1$. The prime-power sum converges locally normally on $\Re s>1/2$. The singularity at one cancels. There is no zeta zero on the positive real segment $(1/2,1)$, as follows from the alternating eta series. Thus the transform continues to a neighborhood of every real $s>1/2$. Every nontrivial zero with real part greater than $1/2$ is a genuine pole of this continuation, since $G$ has no zeros there.

If $A(X)\le0$ eventually, the transform of $-A(X)$ after deleting a finite initial interval has a nonnegative integrand. Landau's theorem for Mellin transforms implies its real abscissa of convergence is a singularity if that abscissa is finite. Hence the integral must converge absolutely and define a holomorphic function on $\Re s>1/2$, contradicting any such genuine pole. Reflection proves RH. Here one can prove Landau's assertion directly by changing variables $t=\log X$ and applying monotone convergence to the Taylor expansion about a real point just to the right of the abscissa. [K. Kedlaya, Dirichlet series](https://kskedlaya.org/ant/part-1-3.html)

For the integer version note that $g$ is globally Lipschitz and supported on $[1/2,2]$. If $N\le X\le N+1$, primes in either contributing window are $O(N)$, and $|g(p/X)-g(p/N)|\ll |X-N|/N$. The Chebyshev bound $\theta(2N+2)\ll N$ thus gives $A(X)-A(N)=O(1)$. An eventual integer sign $A(N)\le0$ gives an eventual real upper bound $A(X)\le C$. Subtracting $C$ only introduces the holomorphic term $-C/s$ on $\Re s>1/2$. The same Landau argument proves (3) implies (1). More generally an eventual integer upper bound $A(N)\ll_\epsilon N^{1/2+\epsilon}$ for every $\epsilon>0$ suffices.

A single translated tent does not span every Weil test. The passage to full Weil positivity is through the nonvanishing Mellin multiplier, the exclusion of off-line zeros, and the classical explicit formula. On the resulting critical divisor that formula gives the sum of absolute Fourier squares for every smooth compactly supported test. The self-adjoint diagonal on the signed ordinates then follows as a consequence. This argument does not construct an unconditional self-adjoint realization of the actual divisor.

## The entire Weil criterion from two translates of one interval

Write $z_\rho=\rho-1/2$ and
\[
 C_L(t)=\sum_\rho G(\rho)e^{z_\rho t}.
\]
This is real, even and continuous on the real line; the series is absolutely and locally uniformly convergent there by $G(\rho)=O((1+|\Im\rho|)^{-2})$, the zero count and the critical strip. If $W$ is the full centered Weil distribution (its value on a test is the sum of its bilateral Laplace transforms over the centered zeros, or equivalently the full arithmetic side), then $C_L(t)=W(\tau_t T_L)$ with $(\tau_t f)(v)=f(v-t)$. Thus for $h_\pm=h\pm\tau_t h$ one has the exact identity
\[
              W(h_\pm*\widetilde h_\pm)=2[C_L(0)\pm C_L(t)].
\]
These piecewise linear tests have absolutely summable Laplace transforms on the zeta divisor. If smooth tests are desired, convolve the intervals with a common smooth approximate identity of compact support: the square-test transforms converge termwise and are dominated uniformly by a constant times $(1+|\Im\rho|)^{-2}$ for each fixed $t$.

Each assertion below, **separately**, is equivalent to RH:

* $C_L(t)$ is eventually bounded above.
* $C_L(t)$ is eventually bounded below.
* $W((h-\tau_t h)*\widetilde{(h-\tau_t h)})\ge0$ for every sufficiently large $t$.
* $W((h+\tau_t h)*\widetilde{(h+\tau_t h)})\ge0$ for every sufficiently large $t$.

Indeed under RH all $G(1/2+i\gamma)$ are nonnegative and $|C_L(t)|\le C_L(0)$. Conversely on $\Re s>1/2$,
\[
 \int_0^\infty C_L(t)e^{-st}\,dt=\sum_\rho \frac{G(\rho)}{s-z_\rho}.
\]
The series on the right is meromorphic on the whole plane, locally normally convergent off the discrete divisor. A right-half-plane zero contributes a pole of residue $m_\rho G(\rho)\ne0$. There are no poles on the positive real axis. If one upper or lower bound holds eventually, add or subtract a constant and delete a bounded starting interval to get the Laplace transform of a nonnegative function. Its continuation is regular along the positive real axis, so Landau's theorem forces its abscissa of convergence to be nonpositive (or minus infinity). This contradicts a right-half-plane pole; reflection concludes the proof. Thus if RH fails, both signs of $C_L(t)$ attain arbitrarily large magnitudes. The compactly supported triangular test means the unknown bound is a statement about actual primes from $[X/2,2X]$:
\[
              C_L(\log X)=-A(X)/\sqrt X-L/2+o(1).
\]
The lattice sign and the two-translate conditions need only be tested at $X=k^2$, $t=2\log k$: on $k^2\le X\le(k+1)^2$ the Lipschitz–Chebyshev estimate gives $|A(X)-A(k^2)|=O(\sqrt X)$. This amount can be absorbed in a one-sided bound $A(X)\le C\sqrt X$, still sufficient by the Mellin–Landau argument. For $C_L$ use the analogous formula with all prime powers and $\psi(2X)\ll X$ to get oscillation $O(1)$ across this gap. Conversely RH gives each restricted test at every $t$ and the strict ordinary-prime sign eventually. A lower bound deduced from $A(k^2)\le0$ need not equal the sharp bound $-C_L(0)$ prior to the Landau implication. [Suzuki, screw functions and Weil's criterion](https://arxiv.org/abs/2206.03682)

## Recovering multiplicity in the Hilbert–Pólya conclusion

One tent is enough to exclude off-line zeros. Its Fourier response can vanish at a lattice of *real* ordinates. There is an explicit way to avoid losing such spectral data in a reconstruction. After the one-sided arithmetic bound has been established, form the two Weil responses $C_{\log 2}$ and $C_{\log 3}$ by the same explicit formula. Under the RH just deduced their sum is the Fourier transform of a finite positive atomic measure $\mu$. Its weight at an ordinate $\gamma$ is
\[
 m_\gamma [G_{\log 2}(1/2+i\gamma)+G_{\log 3}(1/2+i\gamma)].
\]
The real bracket is strictly positive: simultaneous nonzero lattice cancellations would force $\log 2/\log 3$ rational, impossible by unique factorization. At frequency zero each individual central value is its positive interval length. Uniqueness of Fourier transforms gives the measure from its response function. In fact its atom is recovered by $\lim_{R\to\infty}(2R)^{-1}\int_{-R}^R(C_{\log 2}+C_{\log 3})(t)e^{-i\gamma t}\,dt$, by dominated convergence for finite measures. Division by the known bracket recovers the integer $m_\gamma$.

Take $\bigoplus_\gamma\mathbb C^{m_\gamma}$, and on the maximal square-summability domain let $H$ multiply the $\gamma$-summand by $\gamma$. This operator is self-adjoint, and its resolvent is compact because only finitely many zeros have bounded ordinate. It has precisely the signed zeta ordinates as eigenvalues with their original multiplicities. The multiplicity reconstruction is needed here: a single scalar multiplication operator in $L^2(\mu)$ only supplies a one-dimensional eigenspace per atom. The independent input still missing is a one-sided all-late-scale bound for $C_{\log2}$ from arithmetic.

## A completely local version of the moving-block test

There is also an exact analogue of the earlier harmonic prefix and its late doubling block. Put
\[
 A_1(X)=\sum_p(\log p)g(p/X)-\int_1^\infty g(y/X)dy,
 \qquad J(Y)=\int_0^Y A_1(X)X^{-3}dX .
\]
For $X\ge2$ the smooth integral equals $XG(1)$, so $A_1=A$ there. For $X\le1/2$ both terms vanish. Without assuming any global zero statement,
\[
 J(Y)<0\quad(Y>1/2),\qquad J(\infty)=G(2)\left(\sum_p\log p/p^2-1\right)<-G(2)/3.
\]
To see this set $F(y)=\sum_{p\le y}(\log p)/p^2-(1-1/y)$. Then $F(1)=0$ and $F(y)<0$ for $y>1$. Below 2 there are no primes; for $2\le y<3$ the prime contribution is $(\log2)/4<1/2$. For $y\ge3$ use $\sum_p(\log p)/p^2\le -\zeta'(2)/\zeta(2)<2/3$. The last estimate follows from $\zeta(2)>3/2$ and $-\zeta'(2)\le\log2/4+\log3/9+(1+\log3)/3<1$. Absolute Fubini and the change of variables $u=y/X$ give
\[
 J(Y)=\int_1^\infty\left(\int_{y/Y}^\infty u g(u)du\right)dF(y).
\]
The test in parentheses is nonnegative and nonincreasing in $y$. On $(\max(1,Y/2),2Y)$ it is strictly decreasing, explaining the strict sign by integration by parts. The stated limit follows by dominated convergence against the finite-variation measure $dF$.

The missing moving-block claim can now be written using only ordinary primes in a fixed finite interval:
\[
 Y^2[J(2Y)-J(Y)]=\sum_{Y/2<p<4Y}(\log p)g_*(p/Y)-\tfrac12 YG(1)
 \qquad(Y\ge2),
\]
where $g_*(u)=\int_1^2g(u/v)v^{-3}dv$. This function is nonnegative and Lipschitz, supported on $[1/2,4]$. Its Mellin transform is
\[
 G_*(s)=G(s)\int_1^2 v^{s-3}dv
       =G(s)\frac{2^{s-2}-1}{s-2}.
\]
The removable value at $s=2$ is $L G(2)$; the new multiplier has no zeros in the critical strip. Also $G_*(1)=G(1)/2$. Under RH the strict eventual sign for $A$ already established gives $J(2Y)<J(Y)$ eventually. Conversely if $J(2Y)\le J(Y)$ eventually, the prime-only Mellin–Landau proof with $g_*$ in place of $g$ excludes the entire right open half of the strip. In this application the finitely many primes $p<4$ can give additional compactly supported terms when the Mellin transform is restricted to $Y\ge1$. They contribute only entire corrections. The same Chebyshev–Lipschitz estimate allows one to assume the moving-block sign only at $Y=k^2$ for all sufficiently large natural $k$. Its extension between centers has an upper error $O(\sqrt Y)$ after the displayed $Y^2$ normalization, removable in the Landau argument by subtracting $C\sqrt Y$, whose transform is regular for $\Re s>1/2$. Thus the unconditional prefix sign is fully compatible with an unknown moving-block sign. Proving that latter arithmetic inequality would give the restricted and then global Weil positivity above.

## Long runs of complete original doubling blocks

Return to the original ordinary-prime weights $e_n=\sum_p p^{-2}(1-p^{-2})^n-\int_1^\infty y^{-2}(1-y^{-2})^n\,dy/\log y$. Write $S_N=\sum_{n=1}^N e_n/n$, $L_0=\lim S_N$, $D_N=S_{2N}-S_N$, and $\alpha=-3/4+\Theta/2$ for $\Theta=\sup_\rho|\Re\rho-1/2|$. For every fixed $0<\varepsilon<1$ there are arbitrarily large integers $N$ with
\[
          D_M<0\qquad (N\le M\le N+\lfloor N^{1-\varepsilon}\rfloor).
\]
Each one of these is a sign for a *whole block* of $M$ summands. The assertion does not impose any upper bound on the gaps between the starting indices $N$. The proof uses the preceding Bernoulli interpolation and one-sided Mellin continuation without using any external global proof of RH.

If RH holds then $e_n<0$ eventually by the prime-square bias calculation and the inequality holds for all sufficiently large $M$. If RH fails, $\alpha>-3/4$. In that case the two signed parts of $D_N$ have power exponent $\alpha$ separately. Here are the details of the lower bounds that this last claim requires.

The established bound $e_n=O(n^\alpha/\log n)$ gives $D_N=O(N^\alpha/\log N)$. Suppose one sign, denoted $\sigma\in\{1,-1\}$, satisfied $\sigma D_N\le C N^b$ eventually, for some $-3/4<b<\alpha<0$. Telescoping at $N,2N,4N,\ldots$ shows $\sigma(L_0-S_N)\le C N^b/(1-2^b)$. Write $V(x)=L_0-S_{\lfloor x\rfloor}$. The Mellin transform of $V$ has the identity
\[
 \mathcal V(s)=\int_1^\infty V(x)x^{-1-s}dx=[B(0)-B(s)]/s,
 \qquad B(s)=\sum_{n\ge1} e_n n^{-1-s},
\]
initially for $\Re s>0$. By the previously established Bernoulli–Newton argument, $B(s)$ and $\mathcal V(s)$ continue along the real interval $(-3/4,0)$, and the apparent pole at zero is removable. The Mellin transform of $C' x^b-\sigma V(x)$, for a sufficiently large $C'$, is the transform of an eventually nonnegative function. Its real-axis continuation is holomorphic for $s>b$. Landau forces absolute convergence throughout $\Re s>b$, so $B(s)=B(0)-s\mathcal V(s)$ is holomorphic on this half-plane. The Dirichlet series of the Bernoulli discrepancy $d_n-e_n=O(n^{-3/4}/\log n)$ supplies a holomorphic correction on $\Re s>-3/4$. Exponentiating the continued Newton logarithm of $\xi(2s+2)$ now excludes every zeta zero with $\Re (\rho-2)/2>b$, a contradiction to the definition of $\alpha$. This proves the signed exponent assertion (with $\log 0=-\infty$); no zero attaining the frontier need exist.

In particular, for each $\varepsilon>0$ we can choose arbitrarily large $N$ with $D_N<-N^{\alpha-\varepsilon/2}$. The exact increment is
\[
 D_{m+1}-D_m=
 \frac{e_{2m+1}}{2m+1}+\frac{e_{2m+2}}{2m+2}-\frac{e_{m+1}}{m+1}
      =O(m^{\alpha-1}/\log m).
\]
Summing this over at most $N^{1-\varepsilon}$ successive integers changes $D_N$ by $O(N^{\alpha-\varepsilon}/\log N)$, smaller than the initial margin. This proves the long-run assertion. If RH fails, the same proof applied to the positive part gives arbitrarily large runs of strictly positive complete blocks too. The statement needed for an independent RH proof remains the negative sign at **every** sufficiently large start.

## Sampling the original doubling blocks at perfect powers

Fix an integer $d\ge1$. It suffices to prove **only**
\[
             S_{2k^d}\le S_{k^d}
             \qquad\text{for every sufficiently large integer }k .
\]
This is an equivalence with RH under the preceding Bernoulli estimates. More generally the same conclusion follows if, for every $\eta>0$, $(D_{k^d})_+=O_\eta((k^d)^{-3/4+\eta})$. Either statement follows under RH from the eventual strict sign. Here the window still runs from $k^d+1$ to $2k^d$; the tested starts get further apart.

Indeed if RH fails then $\alpha>-3/4$. Choose $\epsilon>0$ smaller than both $1/d$ and $\alpha+3/4$. As in the long-run argument, there are arbitrarily large $N$ with $D_N>N^{\alpha-\epsilon/2}$. For all $m\in[N,N+N^{1-\epsilon}]$, the increment estimate then gives $D_m>\tfrac12 N^{\alpha-\epsilon/2}$ for large $N$. Taking $k=\lceil N^{1/d}\rceil$ gives $0\le k^d-N=O_d(N^{1-1/d})$, so $k^d$ lies inside each such run. This contradicts even the stated upper bound with any fixed $0<\eta<\alpha+3/4-\epsilon/2$. The same proof applies to any fixed set of starts that meets $[N,N+O(N^{1-\delta})]$ for every large $N$, with some $\delta>0$ and uniform implied constant. This does not assert that every infinite sampling set meets long runs.
