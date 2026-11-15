# Critical-line poles and the signed Möbius Gaussian residual

Local attribution: grwtsk contributors.

For every fixed heat time $s>0$, the original signed residual energy
$E_{0,s}(T)$ fails to be $o(T)$, including along every fixed affine-frequent
set of horizons. A nonreal critical-line zero of multiplicity $m$ gives an
explicit positive lower bound for the limsup of $E_{0,s}(T)/T^{2m-1}$.

## Exact source

For each positive integer $n$, use the original Möbius coefficient $\mu(n)$
and the causal response
$$
P_n(u)=2\big(n^{-1/2}-e^{-u/2}\big)\mathbf 1_{u\ge\log n}.
$$
Fix $s>0$. For $u\ge0$, put
$$
D_s(u)=\sum_{1\le n\le\lfloor e^u\rfloor}
  \mu(n)\big(1-e^{-s(\log n)^2}\big)P_n(u),
\qquad
E_{0,s}(T)=\int_0^T D_s(u)^2\,du.
$$
For $0\le u\le T$, changing the cutoff in the sum from $\lfloor e^u\rfloor$
to $\lfloor e^T\rfloor$ only adds unborn terms with zero response. At a birth,
$P_n(\log n)=0$, so $D_s$ is continuous and its finite signed sum agrees
pointwise with the criterion's horizon-indexed increment. Its square retains
all the cross terms. The energy is nondecreasing in the horizon $T$.
[Exact signed residual criterion](https://github.com/grwtsk/math/blob/3d7a58cd37c0869d71e90973a40453a8dbb1a539/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianStrongHeatSignedResidualCriterion.lean#L54)

## Lower bound from a zero of given multiplicity

Let $\rho=\tfrac12+i\gamma$ be a zero of $\zeta$ with $\gamma\ne0$, and let
$m\ge1$ be its analytic multiplicity. Set $p=2m-1$ and
$$
c_\rho=\frac{m!}{(i\gamma)\rho\,\zeta^{(m)}(\rho)}.
$$
For each fixed $s>0$,
$$
\limsup_{T\to\infty}\frac{E_{0,s}(T)}{T^p}
\ \ge\ \frac{2|c_\rho|^2}{p!}.
\tag{1}
$$
If a fixed $G\subseteq\mathbb R$ satisfies `AffineFrequent` with witnesses
$a,b,T_0$ (so $T\le S\le aT+b$ for some $S\in G$ whenever $T\ge T_0$), then
$$
\limsup_{\substack{S\to\infty\\S\in G}}\frac{E_{0,s}(S)}{S^p}
\ \ge\ \frac{2|c_\rho|^2}{a^p p!}.
\tag{2}
$$
The constants are independent of the fixed $s>0$. Hardy's 1914 theorem
supplies a nonreal critical-line zero. Its multiplicity is at least one, so
(1) and (2) exclude $o(T)$ with no simplicity hypothesis. The condition
$s>0$ is essential since $D_0$ vanishes identically.
[Hardy, *Sur les zéros de la fonction ζ(s) de Riemann*, C. R. Acad. Sci. Paris 158 (1914), pp. 1012–1014](https://fr.wikisource.org/w/index.php?title=Page:Comptes_rendus_hebdomadaires_des_s%C3%A9ances_de_l%E2%80%99Acad%C3%A9mie_des_sciences,_tome_158,_1914.djvu/1014&oldid=15602559)

### Laplace transform of the signed residual

For $\Re z>0$, direct integration of a single response gives
$$
\int_0^\infty e^{-zu}P_n(u)\,du
=2n^{-z-1/2}\left(\frac1z-\frac1{z+1/2}\right)
=\frac{n^{-z-1/2}}{z(z+1/2)}.
$$
For $\Re z>1/2$ the interchange of the original sum and the integral is
absolute. With $\sigma=\Re z$, use $P_n\ge0$ and
$|\mu(n)(1-e^{-s(\log n)^2})|\le1$ to majorize the sum of the absolute
integrals by $\sum_{n\ge1} n^{-\sigma-1/2}/[\sigma(\sigma+1/2)]$.
Writing $L_s$ for the Laplace transform of $D_s$ and using Möbius inversion
on $\Re(z+1/2)>1$ therefore gives
$$
z(z+1/2)L_s(z)=\frac1{\zeta(z+1/2)}-F_s(z+1/2),
\qquad
F_s(w)=\sum_{n\ge1}\mu(n)e^{-s(\log n)^2}n^{-w}.
\tag{3}
$$
The unheated term agrees with `CCC.PickupInitialTransform.wholePickup_laplace`,
where `CCC` abbreviates `GRWTSK.RiemannHypothesis.CCC`. The heated term is
entire as a function of $w$. On $\Re w\ge -R$, with $R\ge0$, completing the
square bounds its absolute summand by $e^{(R+2)^2/(4s)}n^{-2}$.
[Original pickup transform](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirichletLaplaceIdentity.lean#L202)

### Energy control and the boundary limit

Write $A=\limsup_{T\to\infty} E_{0,s}(T)/T^p$. If $A=\infty$, (1) holds.
If $A<\infty$, for each $\varepsilon>0$ continuity gives a constant
$C_\varepsilon\ge0$ such that
$E_{0,s}(T)\le (A+\varepsilon)T^p+C_\varepsilon$ for all $T\ge0$.
For $\sigma>0$, Tonelli then gives
$$
B_s(\sigma):=\int_0^\infty e^{-\sigma u}D_s(u)^2\,du
=\sigma\int_0^\infty e^{-\sigma T}E_{0,s}(T)\,dT.
$$
Consequently $B_s(\sigma)\le (A+\varepsilon)p!\,\sigma^{-p}+C_\varepsilon$,
and $\limsup_{\sigma\downarrow0}\sigma^p B_s(\sigma)\le p!A$.
Cauchy–Schwarz gives
$\int_0^\infty e^{-\delta u}|D_s(u)|\,du\le (B_s(\delta)/\delta)^{1/2}$
for every $\delta>0$. This provides a locally uniform integrable majorant
on $\Re z>0$, and the same majorant with smaller $\delta$ absorbs any
factor $u$ from differentiation. Thus the integral defining $L_s$ is
holomorphic throughout $\Re z>0$ under the finite-$A$ hypothesis.

To continue (3), set $Z(z)=(z-\tfrac12)\zeta(z+\tfrac12)$ with its
holomorphic value at $z=\tfrac12$. The simple pole of $\zeta$ at $1$
has residue $1$. The identity
$$
Z(z)\big[z(z+\tfrac12)L_s(z)+F_s(z+\tfrac12)\big]=z-\tfrac12
$$
extends throughout $\Re z>0$ by the identity theorem. This product step
requires no zero-free region beyond the initial Dirichlet-series domain.
Now factor $\zeta(w)=(w-\rho)^m g(w)$ locally at $\rho$, with
$g(\rho)=\zeta^{(m)}(\rho)/m!\ne0$. For $z=i\gamma+\sigma$ and all small
$\sigma>0$, division in (3) is valid by this factorization. The entire
term is bounded near $\rho$ and $z(z+\tfrac12)\to(i\gamma)\rho\ne0$.
It follows that
$$
\lim_{\sigma\downarrow0}\sigma^m L_s(i\gamma+\sigma)=c_\rho.
$$
[Meromorphic continuation and the pole at $1$](https://dlmf.nist.gov/25.2.i)

Because $D_s$ is real, for each $\sigma>0$ choose a phase $\theta$ so that
$|L_s(i\gamma+\sigma)|$ is the real part after rotation by $e^{-i\theta}$.
Then
$$
|L_s(i\gamma+\sigma)|^2
\le B_s(\sigma)\int_0^\infty e^{-\sigma u}\cos^2(\gamma u+\theta)\,du,
\qquad
\int_0^\infty e^{-\sigma u}\cos^2(\gamma u+\theta)\,du
=\frac1{2\sigma}+\frac12\Re\frac{e^{2i\theta}}{\sigma-2i\gamma}.
$$
The second term is bounded uniformly in $\sigma$ and $\theta$ since
$\gamma\ne0$. Multiply by $\sigma^{2m}=\sigma^{p+1}$ and take the limsup
to obtain $|c_\rho|^2\le p!A/2$, proving (1). Complex Cauchy–Schwarz
without the phase rotation yields the same obstruction with the weaker
constant $|c_\rho|^2/p!$.

For (2), choose horizons $T_j\to\infty$ whose normalized energies approach
the limsup in (1), allowing divergence to infinity. Choose $S_j\in G$
with $T_j\le S_j\le aT_j+b$. Monotonicity of the exact cumulative energy
gives
$$
\frac{E_{0,s}(S_j)}{S_j^p}
\ge \frac{E_{0,s}(T_j)}{T_j^p}(a+b/T_j)^{-p}.
$$
The factor tends to $a^{-p}$. This uses one fixed $G$ and a fixed affine
overshoot bound. [Definition of affine frequency](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/GoodScaleSubexponential.lean#L22)

## Scope and verification

The result rules out strengthening `SignedResidualCancellationOn` to an
$o(T)$ upper estimate on its own scale class. The criterion asks for an upper bound at **every
positive exponential rate**, so its arithmetic estimate remains open.
The earlier `signedHeatMargin_neg` concerns a step between positive strong
heat times. Here the increment starts at zero heat and the proof uses the
Laurent coefficient of reciprocal zeta. The finite-sofic result
`not_eventuallySoficTrace_moebius` excludes an exact finite graph
presentation of the genuine signed block language through a pumped loop
and a forced squareful position. The later graph pickup identity retains
both the signed surplus and the remaining defect of a placed word. The
boundary pole gives a direct test for any proposed transfer from those
finite identities to sublinear energy of the original infinite source.
[Strong-to-strong heat obstruction](https://github.com/grwtsk/math/commit/3d7a58cd37c0869d71e90973a40453a8dbb1a539) ·
[Finite-sofic obstruction](https://github.com/grwtsk/math/commit/e23be8e335fced526ba2205dc2b7972aac9044d3) ·
[Signed graph pickup identity](https://github.com/grwtsk/math/blob/073508598443acb3c675bd16bb7448204d0b3700/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSoficBlockObstruction.lean#L273)

The analytic proof uses classical zeta continuation, Möbius inversion, and
Hardy's zero-existence theorem. For a separate check of the heat subtraction, put
$a_s(n)=\mu(n)e^{-s(\log n)^2}$ and $h_s=2\sum_{n\ge1}a_s(n)/\sqrt n$.
The original heated wave differs from $h_s$ by at most
$2e^{-u/2}\sum_{n\ge1}|a_s(n)|$. This follows by taking the mature
$e^{-u/2}$ term and the unborn $n^{-1/2}\le e^{-u/2}$ tail in the
causal formula. Its Laplace transform therefore has the form $h_s/z$
plus a function holomorphic on $\Re z>-1/2$, confirming regularity at
every $i\gamma\ne0$. A separate derivation of the pole bound checked
the cutoff, continuation domain, and multiplicity exponent.
Lean formalization, elaboration, fresh kernel replay and transitive axiom
audit are `NOT_RUN` for this result.
