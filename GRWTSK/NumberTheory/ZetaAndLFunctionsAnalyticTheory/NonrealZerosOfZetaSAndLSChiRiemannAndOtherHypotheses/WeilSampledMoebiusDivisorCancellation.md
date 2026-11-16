# Prime and composite divisor cancellation in the sampled Möbius sum

grwtsk contributors · 2026-11-15

Written analytical source for [math#1804](https://github.com/grwtsk/math/issues/1804).
This continues the genuine retained sum at
[c4e04d2aca55](https://github.com/grwtsk/math/commit/c4e04d2aca551212e22677fe40bebde66ca37ba5).

## 1. The actual divisor split

Fix a primitive $\chi$ of actual conductor $q$, with zeta at $q=1$.
Use $k=C_p$, its support radius $R<1/2$, $h=1/8$, and the filtered
kernel $K_\chi=\mathscr D_h F_\chi$ of
[WeilSampledMoebiusCofactorReturn.md](WeilSampledMoebiusCofactorReturn.md),
where $\mathscr D_h f(v)=f(v+h)-2e^{h/2}f(v)+e^h f(v-h)$.
Fix an admissible cutoff $Q(U)=C_\chi U(\log U)^2$ for error $O(e^{-U})$
in equation (9) there. Split the retained signed sum as
$$
V_\chi(U)=V_\chi^{\rm pr}(U)+V_\chi^{\rm comp}(U)+O_\chi(e^{-U}),
\quad
V_\chi^{\rm pr}(U)=
-\Re\!\sum_{\substack{\ell\ {\rm prime}\\e^U/Q(U)<\ell\le e^{U+R+h}}}
 \frac{\chi(\ell)}{\sqrt\ell}K_\chi(U-\log\ell).
\tag{1}
$$
The composite part is the rest of the retained $d$ sum with the
actual coefficients $\mu(d)\chi(d)/\sqrt d$. For large $U$ these
nonzero coefficients have at least two distinct prime factors.
This split is on the divisor variable of the genuine
$\Lambda=\mu*\log$ return and retains all its ordinary logarithm
cofactors. The original $q=1$ pole center and second signed
pole's gamma-tail cancellation have already been accounted for
in $V_\zeta=\mathscr D_h A_\zeta$. The same shifted inventories
and the same stage radii are used.

Write
$$
a_j=\int_{\mathbb R} v^j K_\zeta(v)e^{-v/2}\,dv,\qquad j\ge0.
$$
The left support and superexponential right decay in the cofactor
source make all these moments finite. For every fixed integer
$N\ge1$ the genuine conductor-one terms satisfy
$$
\begin{aligned}
V_\zeta^{\rm pr}(U)
  &=-e^{U/2}\sum_{j=0}^{N-1}\frac{a_j}{U^{j+1}}
       +O_N(e^{U/2}U^{-N-1}),\\
V_\zeta^{\rm comp}(U)
  &=+e^{U/2}\sum_{j=0}^{N-1}\frac{a_j}{U^{j+1}}
       +O_N(e^{U/2}U^{-N-1}).
\end{aligned}
\tag{2}
$$
In particular $a_0=J(1/2)h^2e^{h/2}>0$, with
$J(w)=\int k(v)e^{-wv}\,dv$. The prime-divisor part is eventually
negative and the composite part positive. For each fixed primitive
nonprincipal $\chi$, both parts of (1) are $O_{\chi,N}(e^{U/2}U^{-N})$
for every fixed $N$. No uniform starting radius or bound over
growing conductors is asserted.

## 2. The residue-class prime estimate and the compensation

Let $a$ be a reduced residue class modulo $q$. At $q=1$ use the one
class consisting of all primes. The fixed-modulus prime number
theorem gives
$$
\vartheta(x;q,a)=\sum_{\substack{\ell\le x\\\ell\equiv a\ (q)}}
 \log\ell=\frac{x}{\varphi(q)}+O_{q,L}(x(\log x)^{-L})
$$
for any fixed $L>0$. Corollary 1.4 and Remark 1.5 of
Thorner–Zaman give this at fixed $q$, since a fixed exceptional term
has exponent strictly below one. For $q=1$ use the odd progression
at modulus two and restore the prime 2.

Use Stieltjes partial summation against
$g(x)=x^{-1/2}K_\chi(U-\log x)/\log x$ on
$(e^U/Q(U),e^{U+R+h}]$ before multiplying by $\chi(a)$ and taking
the signed real part. On this interval $\log x\asymp U$.
For $-R-h\le v\le\log Q(U)$ the finite cofactor definition gives
$|K_\chi(v)|+|K_\chi'(v)|\ll_\chi(1+v_+)e^{v_+/2}$.
Indeed the logarithm and square-root weights are on
$m\asymp e^v$ up to the fixed shifts, and the smooth kernel and its
derivative are bounded. The interval boundary terms and the
integral of $x|g'(x)|$ are at most $e^{U/2}$ times a fixed power of
$1+\log U$. Choosing $L$ large makes the error $O_{q,N}(e^{U/2}U^{-N-1})$.
The main term from this class is
$$
\frac{e^{U/2}}{\varphi(q)}
  \int_{-R-h}^{\log Q(U)}
       \frac{K_\chi(v)e^{-v/2}}{U-v}\,dv .
\tag{3}
$$
Primes dividing $q$ are ramified and have character value zero.
All these main terms in (3) cancel for nonprincipal $\chi$, by
$\sum_{a\bmod q}\chi(a)=0$.

For zeta expand $(U-v)^{-1}$ in (3) through $v^{N-1}/U^N$.
The exact remainder is $v^N/[U^N(U-v)]$. On the integration
range $|v|=O(\log U)$ so its integral costs $O_N(U^{-N-1})$
by the absolute $N$th moment of $K_\zeta(v)e^{-v/2}$.
Extend each of the finitely many moments to the full line
after expanding. At $v\ge\log Q(U)$ the decay in the cofactor
source makes the omitted moments smaller than any inverse
power of $U$. This proves the first line of (2) with the
negative sign from $\mu(\ell)=-1$.
The exact bilateral transform of $K_\zeta$ is
$J(w)p_h(w)(-\zeta'(w+1/2))$, with
$p_h(w)=e^{-hw}(e^{hw}-e^{h/2})^2$. At $w=1/2$ the double
zero of $p_h$ cancels the double pole with coefficient one
of $-\zeta'$. The value $a_0=J(1/2)h^2e^{h/2}$ is positive.

For each fixed $\chi$ the genuine magnitude bound in
[WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
§4, gives
$$
|A_\chi(U)|\ll_\chi e^{U/2}
   \exp\!\left(-\frac{c_\chi U}{(\log U)^{2/3}(\log\log U)^{1/3}}\right).
\tag{4}
$$
It follows there from the actual zero-free region and the
source kernel's high-zero tail. For its three fixed translates
in $\mathscr D_h A_\chi$ the same bound holds with a smaller
$c_\chi>0$. This makes $V_\chi(U)=O_{\chi,N}(e^{U/2}U^{-N-1})$
for every fixed $N$. Returning through the exact split (1)
now proves the second line of (2), and the stated bound for
both parts for each fixed nonprincipal character. This use
of (4) pays the sum of the two signed parts.

## 3. The scale lost by a separate negative-part estimate

Use the original positive Gauss weights $\theta_r$ and window
parameters $u_T,L_T$ of
[WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md).
Let $\mathcal W_T$ be its continuous Kaiser–Bessel transform,
and set $b_T=u_T+L_T/\sqrt{577}$. Each of the following has the
same leading size on the actual selected nodes $\mathcal J_T$:
$$
\begin{aligned}
\sum_{r\in\mathcal J_T}\theta_r(-V_\zeta^{\rm pr}(2r))_+
  &=\frac{a_0}{2b_T}\mathcal W_T(1)\big(1+O(T^{-1})\big),\\
\sum_{r\in\mathcal J_T}\theta_r(V_\zeta^{\rm comp}(2r))_+
  &=\frac{a_0}{2b_T}\mathcal W_T(1)\big(1+O(T^{-1})\big).
\end{aligned}
\tag{5}
$$
The pointwise leading terms in (2) are uniform at the radii
of interest. Their average uses $\sum_r\theta_r e^r/r$.
The quadrature comparison from the sampled modulation source
applies to $W_T(r)e^r/r$ on every retained block. On the same
Cauchy disks, $r$ stays away from zero and the extra factor
costs $O(e^T)$. The normalization error is also exponentially
small. Thus this sum differs from its continuous integral by
an exponentially small error.

Tilt the continuous probability density by $e^r/\mathcal W_T(1)$.
Its mean is $(\log\mathcal W_T)'(1)=b_T+O(1)$ and its variance
is $(\log\mathcal W_T)''(1)=O(T)$. In the exact transform use
$\sqrt{24^2+x^2}$. Differentiating $\log\sinh(L_T\sqrt{24^2+x^2})$
at $x=1$ supplies the leading $L_T/\sqrt{577}$ in the mean and
an $O(L_T)$ second derivative. The remaining nonconstant
denominator contributes $O(1)$ to both derivatives.
If $m$ is the tilted mean, the exact expansion
$1/r=1/m-(r-m)/m^2+(r-m)^2/(m^2r)$ gives expected reciprocal
$1/b_T+O(T^{-2})$, since every $r\asymp T$. This proves (5).

In particular the separate negative-part estimate loses a
quantity of size $e^{P(1)T}/T$, with $P$ as in the cofactor
source and $\mathcal W_T(1)\asymp e^{P(1)T}$. The actual signed
total has a stronger unconditional upper bound from (4):
$$
\sum_{r\in\mathcal J_T}\theta_r |V_\zeta(2r)|
 \ll \mathcal W_T(1)
  \exp\!\left(-\frac{c T}{(\log T)^{2/3}(\log\log T)^{1/3}}\right).
\tag{6}
$$
Thus the actual arithmetic already cancels the two larger
contributions to every fixed algebraic order in the logarithmic
radius. The subexponential weighted negative part of the
combined retained signed sum remains the next estimate.

## 4. Comparison with the fixed-scale residual sources

At 281eeb8f45a9,
[MoebiusSoficResidualCompensation.lean](../MoebiusSoficResidualCompensation.lean),
blob 0f75da0a02ed46b1abc0b7113d8d5c421a096a99, compares the genuine
heated residual squared energy at the literal nonnegative
horizon with a diagonal term, both mixed products, a path
covariance and a weighted graph deviation. Its equality
requires normalized path weights and exact heated first
moments on the pickup inventory. It is a different
compensation identity from the prime/composite split in (1).

At c100e138a83d,
[MoebiusGaussianSignedResidualPoleSeries.lean](../MoebiusGaussianSignedResidualPoleSeries.lean),
blob fee417644c0445edf88fbe822e8dcdb34f4e15c9, the pole-series
conclusion assumes a fixed positive heat scale, nonvanishing
at $1/2$, a nonnegative budget slope, a fixed affine-frequent
set, an eventual residual-energy majorant and the eventual
$(A+\varepsilon)T$ bound on that majorant for every $\varepsilon>0$.
It treats squared reciprocal-zeta pole coefficients and the
stationary coefficient. In the exact cofactor sum the
bilateral kernel contributes $-L'(w+1/2,\chi)$ to the
$1/L(w+1/2,\chi)$ factor before taking the real source.
At a zero of multiplicity $m$ the product has a simple pole
with residue $-m$ before the entire factors $Jp_h$.
This local cancellation differs from the residual's
reciprocal-derivative weights. Neither fixed-scale input is
used in (1)–(6).

## Source and evidence

- [WeilSampledMoebiusCofactorReturn.md](WeilSampledMoebiusCofactorReturn.md),
  blob 4ff86988d1eb51a7c899b01fc70778fd6746063b, supplies the exact
  native Möbius return, shifted pole handling and cutoff.
  [WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
  blob 6798953ba567445b7d791136fc16be378301cc10, supplies (4).
  [WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md),
  blob 1d80d96ca145aae4fe7b927ca2ced0c78547b2e7, supplies the
  original Gauss and Kaiser stage weights and transform.
- J. Thorner and A. Zaman, *Refinements to the prime number theorem
  for arithmetic progressions*, arXiv:2108.10878v2, Corollary 1.4
  and Remark 1.5, for the fixed-modulus prime sums.
  [Primary paper](https://arxiv.org/abs/2108.10878v2)

Written analytical argument with a separate agent derivation
of the prime/composite compensation. A finite rational check
covers the reciprocal expansions and the double-root coefficient.
Lean formalization,
elaboration, compilation, fresh kernel replay, transitive axiom
audit, local zero certification and independent human review
are **NOT_RUN**. Originality is unassessed.
