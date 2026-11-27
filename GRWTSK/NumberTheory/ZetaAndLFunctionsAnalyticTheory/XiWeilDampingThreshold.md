# The damping threshold for the centered Weil distribution

Local source attribution: grwtsk contributors.

This analytic manuscript gives an exact criterion for how much Poisson damping makes the actual zeta Weil form positive on every compactly supported smooth square. It also gives a direct obstruction to decreasing the damping by testing a fixed finite family. The finite kernel calculation is formalized separately in [XiWeilPoissonBand](XiWeilPoissonBand.lean). The infinite divisor, the explicit formula, the converse and the operator assertions below are paper arguments.

## The divisor and the threshold

Let $\rho$ range over the distinct nontrivial zeros of ordinary Riemann zeta, with multiplicities $m_\rho$. Write $\lambda_\rho=\rho-\frac12=\delta_\rho+i\gamma_\rho$ and $\Theta=\sup_\rho|\delta_\rho|$. For $c\ge0$ and $g\in C_c^\infty(\mathbb R)$ set
\[
 W_c(g)=\sum_\rho m_\rho\int_{\mathbb R}g(t)e^{-c|t|}e^{\lambda_\rho t}\,dt .
\]
Use $\widetilde f(t)=\overline{f(-t)}$ and $\widehat f(u)=\int f(t)e^{iut}\,dt$. A form is positive if $W_c(f*\widetilde f)\ge0$ for every complex $f\in C_c^\infty(\mathbb R)$. At $c=0$ this is the usual centered Weil criterion. For fixed $g,c$ each integral is $O_{g,c}((1+|\gamma_\rho|)^{-2})$, uniformly in the strip. Indeed $e^{\delta_\rho t-c|t|}g(t)$ is continuous with piecewise smooth derivative of bounded variation, with uniformly bounded jump at zero. The zero-counting formula gives $\sum_\rho m_\rho/(1+\gamma_\rho^2)<\infty$. These estimates are uniform for $c$ in a compact interval.

**Theorem.** The positive damping parameters form exactly the closed interval $[\Theta,\infty)$. In particular positivity on all tests for any sequence of damping parameters tending to zero suffices for RH.

**Proof in the positive range.** For $b>0$ let $P_b(du)=b\,du/(\pi(b^2+u^2))$, and let $P_0$ be the unit point mass at zero. Its characteristic function is $e^{-b|t|}$. Reflection in the critical line preserves each ordinate and the multiplicity, changing $\delta$ to $-\delta$. Thus the two terms at nonzero offsets pair to give
\[
 e^{i\gamma t}\left(e^{-(c-\delta)|t|}+e^{-(c+\delta)|t|}\right).
\]
At offset zero use only the single term. If $c\ge\Theta$, all widths are nonnegative and
\[
 \mu_c=\sum_\rho m_\rho P_{c-\delta_\rho}(\,\cdot-\gamma_\rho),\qquad
 W_c(f*\widetilde f)=\int_{\mathbb R}|\widehat f(u)|^2\,d\mu_c(u).
\]
To justify the identity, first sum finitely many reflected orbits. Then exhaust the zeros symmetrically in height, using absolute convergence on the left and monotone convergence on the right. The measure is locally finite because bounded widths give $O((1+\gamma^2)^{-1})$ mass in a fixed compact interval for large $|\gamma|$. This proof includes $c=\Theta$ even if no extremal zero exists. The Cauchy convolution law gives $\mu_{c+s}=P_s*\mu_c$ for $c\ge\Theta$ and $s\ge0$ by monotone convergence.

**Converse.** Suppose $W_c$ is positive on all squares. For any $f$ put $g=f*\widetilde f$ and $(\tau_t g)(v)=g(v-t)$. The sesquilinear form $(f,h)\mapsto W_c(f*\widetilde h)$ is positive and hence satisfies Cauchy–Schwarz. Translation preserves its diagonal norm. Consequently $|W_c(\tau_tg)|\le W_c(g)$ for all real $t$.

Assume a zero has $\Re\lambda_0>c$. Choose a real even smooth approximate identity $f$ with integral one and sufficiently small support that $H(\lambda_0-c)\ne0$, where $H(z)=\int g(v)e^{zv}dv$. This is possible since both factors of the convolution have transform tending to one there. Choose $A$ greater than the support radius of $g$. For $t\ge A$ translation has placed the support in the positive half-line, so
\[
 W_c(\tau_t g)=\sum_\rho m_\rho e^{(\lambda_\rho-c)t}H(\lambda_\rho-c).
\]
The Laplace transform in $t$ from $A$ to infinity is holomorphic on $\Re s>0$ by the uniform bound. Initially for $\Re s>1$ one may integrate termwise, obtaining
\[
 \sum_\rho m_\rho
 \frac{H(\lambda_\rho-c)e^{-(s-\lambda_\rho+c)A}}{s-\lambda_\rho+c}.
\]
The rapid vertical decay of $H$ on bounded strips gives normal convergence away from the locally finite poles. At $s=\lambda_0-c$ the residue is $m_{\rho_0}H(\lambda_0-c)\ne0$. Uniqueness of meromorphic continuation contradicts holomorphy there. Reflection excludes the opposite offsets as well. This proves the theorem.

## Arithmetic meaning and the zero-damping endpoint

The full Guinand–Weil explicit formula expresses $W_c(g)$ by applying the undamped arithmetic formula to $e^{-c|t|}g(t)$. Thus each signed prime-power sample at $t=\pm k\log p$ is multiplied by $p^{-kc}$. The pole and gamma terms are also evaluated on the damped function, including its unchanged value at the origin. The test has a derivative jump, which is allowed here. To see this directly, convolve the damped test with a compact smooth mollifier. Support stays uniformly bounded, and the functions converge uniformly with bounded Lipschitz constants and uniformly bounded second distributional derivatives in total variation. The zero sums converge by their quadratic majorant; there are only finitely many prime-power samples. The compensated archimedean integral converges by dominated convergence, using the Lipschitz bound at zero. The pole integrals converge on bounded support. This proves the asserted formula within the source test class. [Lagarias, sections 2–3](https://websites.umich.edu/lagarias/doc/mt-holyoke-rev.pdf)

A zero-free half-plane $\Re s>B$ gives positivity for $c\ge B-1/2$ by reflection. OpenAI's $7/8$ bound supplies $c=3/8$. With Liu's version 2 bound $B=(18\xi+7)/(18\xi+9)$, where $\xi\in(0.38858,0.38859)$ solves $1188\xi^3-2160\xi^2+171\xi+190=0$, the endpoint is $B-1/2=0.374957019420098946\ldots$. These are applications of external zero-free regions independent of a full RH input. Absolute convergence gives $W_{c_j}(g)\to W_0(g)$ as $c_j\to0$, but neither of these fixed positive parameters supplies such a sequence. [OpenAI family 003](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/003.md) · [Liu, version 2](https://arxiv.org/abs/2610.12234v2)

One reflected pair already shows the directional nature of smoothing. Its continuous kernel $2e^{i\gamma t}e^{-c|t|}\cosh(\delta t)$ has positive type at $c\ge|\delta|$. If $0\le c<|\delta|$, its absolute value is unbounded, in conflict with the two-point bound for positive-type kernels. In the actual divisor even a hypothetical threshold $\Theta>0$ is compatible with strict positivity for every fixed finite family of linearly independent smooth tests. Indeed a known critical-line zero at ordinate $\gamma_0$ contributes $P_c(\cdot-\gamma_0)$ and, for $c\ge\Theta$ with $c>0$,
\[
 W_c(f*\widetilde f)\ \ge\
 \frac{c}{\pi\max(2,c^2+2\gamma_0^2)}
 \int_{\mathbb R}\frac{|\widehat f(u)|^2}{1+u^2}\,du .
\]
This follows from $(u-\gamma_0)^2\le2u^2+2\gamma_0^2$. At $c=\Theta>0$ the Gram matrix of such a finite family remains positive definite for a small decrease of $c$, by continuity of its entries. That decrease may depend on the family. A lower bound on the decrement valid simultaneously for all tests would be additional arithmetic information. See also [Suzuki on restricted positivity and the screw function](https://arxiv.org/abs/2206.03682).

## One interval detects the entire threshold

Fix any $L>0$ and put $h=L^{-1/2}\mathbf1_{[-L/2,L/2]}$, $T_L=h*\widetilde h$, $C_{L,c}(t)=W_c(\tau_tT_L)$. The definition extends to these compact piecewise linear functions by the same bounded-variation estimate. For each $c\ge0$ the following three conditions are equivalent:

1. $W_c$ is positive on every smooth compact square.
2. $C_{L,c}(t)$ has a finite upper bound for all sufficiently large $t$.
3. $W_c((h-\tau_t h)*\widetilde{(h-\tau_t h)})\ge0$ for every sufficiently large $t$.

Indeed in the positive range the measure formula extends to these tests by approximation, or directly by evaluating $\widehat T_L=|\widehat h|^2$ against the measure. It gives $|C_{L,c}(t)|\le C_{L,c}(0)$. Since the centered divisor and the damping are both symmetric, the square in (3) has value $2(C_{L,c}(0)-C_{L,c}(t))$, so (3) implies (2). To obtain (1) from (2), use the bilateral transform
\[
 H_L(z)=L\left(\frac{\sinh(Lz/2)}{Lz/2}\right)^2
\]
of the tent. Its zeros lie on the imaginary axis. For $t>L$ the formula for $C_{L,c}(t)$ in the converse proof holds with $H_L$ in place of $H$, with normal convergence from its quadratic decay in every bounded vertical strip. Its Laplace transform has the possible poles $\lambda_\rho-c$ and a genuine pole at every such point in the open right half-plane. There are no positive real poles, since zeta has no real zero in $(0,1)$. If (2) holds, the Laplace transform of a constant minus $C_{L,c}$ on a late half-line has a nonnegative integrand. Its analytic continuation has no singularity on the positive real axis. Landau's real-abscissa theorem therefore gives absolute convergence on $\Re s>0$, excluding every right-half-plane pole. This gives $\Theta\le c$. Changing the sign in this argument shows that an eventual lower bound also suffices. For background and the arithmetic interpretation at $c=0$, see [the dyadic tent calculation](XiWeilTentPrimeWindow.md).

The same pole argument gives a quantitative undamped reading from either sign. Set $x_+=\max(x,0)$. For either fixed $\sigma\in\{-1,1\}$,
\[
 \Theta=\limsup_{t\to\infty}\frac{\log(1+(\sigma C_{L,0}(t))_+)}t.
\]
The upper bound follows termwise from $\sum_\rho m_\rho|H_L(\lambda_\rho)|<\infty$ and $|e^{\lambda_\rho t}|\le e^{\Theta t}$. If the limsup were smaller than $\Theta$, take a positive $b$ strictly between the two. Then $C e^{bt}-\sigma C_{L,0}(t)$ is eventually nonnegative for a suitable constant $C$. Its Laplace transform continues across the real axis at every real $s>b$ and has a pole at some $\lambda_\rho$ with $\Re\lambda_\rho>b$, since $H_L(\lambda_\rho)\ne0$. Landau's theorem again gives a contradiction. At $\Theta=0$ the nonnegativity of the logarithm gives the matching lower bound. Thus a single family of arithmetic windows recovers the worst horizontal displacement even when its supremum is unattained.


## The spectral conclusion

For $c>\Theta$ the measure above is absolutely continuous. Multiplication by the real variable on $L^2(\mu_c)$ on its maximal domain is self-adjoint. Its continuous measure has broadened the ordinates. At the endpoint $c=0$, **if** undamped positivity has been established, the theorem forces $\delta_\rho=0$ for every zero and $\mu_0=\sum_\gamma m_\gamma\,\delta_\gamma$. The weights record the integer multiplicities. To realize those multiplicities as dimensions take $\mathcal H=\bigoplus_\gamma\mathbb C^{m_\gamma}$ and $(Hv)_\gamma=\gamma v_\gamma$ on $\sum_\gamma\gamma^2\|v_\gamma\|^2<\infty$. This real diagonal is self-adjoint with compact resolvent. Counting both signs once and using the even, order-one Hadamard product gives
\[
 \frac{\xi(1/2+iz)}{\xi(1/2)}
   =\prod_{\gamma>0}(1-z^2/\gamma^2)^{m_\gamma}.
\]
The normalization is valid since $\zeta(1/2)\ne0$. The paired product converges locally uniformly by the zero count. This recovers a Hilbert–Pólya spectrum **after** the arithmetic positivity step. An independent estimate that reaches $c=0$ remains missing. The [two-translate criterion](XiWeilTentPrimeWindow.md) gives a specific family of undamped tests on which such an estimate would suffice.
