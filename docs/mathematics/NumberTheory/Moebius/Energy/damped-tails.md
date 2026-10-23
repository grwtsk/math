# Damped finite windows and extended tail energy

## Finite recordings, extended tail energy and the limit obligation

The finite hard-window, angular normalization and completed vertical-line interfaces are formalized in the public source. Their recorded verification remains historical here; this documentation integration runs no Lean replay. The following extended-tail argument remains written mathematics.

The resulting completed finite transform retains $U_N$ and both signed endpoint sums. `DampedRecordingParseval` now constructs the actual hard-window representative, proves its $L^1/L^2$ properties, identifies its angular kernel with the finite Laplace transform, pays the angular normalization, and proves the vertical-line Plancherel identity for this complete numerator and its true denominator. Its uniform-in-time square-integral estimate is still unpaid.

`VerticalLineCriterion` now proves that the uniform completed vertical-line bound at every positive damping is equivalent to `PickupWeightedEnergyAll` and to `pickupEnergyAbscissa = 0`, and hence conditionally implies the literal Riemann hypothesis. This closes the finite-window-to-terminal logical adapter without pretending to supply the uniform signed bound itself.

The same module proves the completed bound unconditionally for every
$\sigma>1/2$, using the already paid energy domain $\tau>1$. The finite
[logarithmic Mertens boundary adapter](../logarithmic-mertens-boundary.md)
now proves the endpoint estimate at $\sigma=1/2$ from the explicit
`MertensLogSquareBound` premise. The cited published estimate supplies that
premise mathematically, but no theorem supplying it has yet been admitted in
the pinned Lean environment. Thus the checked adapter is conditional, and the
remaining arithmetic extension after admission of its supplier is
$0<\sigma<1/2$.

For fixed real $\sigma$ define the nonnegative density and its extended
half-line energy by

$$h_\sigma(u)=e^{-2\sigma u}W(u)^2,\qquad
\mathcal E_\sigma=\int_{[0,\infty)}h_\sigma(u)\,du\in[0,\infty].$$

Here the half-line integral is the nonnegative extended integral. Set
$H_\sigma(T)=\int_0^T h_\sigma(u)\,du$ for $T\ge0$. Continuity gives finite
$H_\sigma(T)$ for each finite $T$, at every fixed damping. The increasing
windows $[0,n]$ exhaust the half-line, so monotone convergence gives

$$\mathcal E_\sigma=\sup_{n\in\mathbb N}H_\sigma(n)
                    =\sup_{T\ge0}H_\sigma(T).$$

Consequently a finite constant bounding every recording is equivalent to
$\mathcal E_\sigma<\infty$. Using the finite angular Parseval
adapter, it is also equivalent to a uniform bound on the complete
vertical-line expression above. Separate finite constants depending on $T$
do not prove this condition. Requiring it at every $\sigma>0$ is precisely
the selected `PickupWeightedEnergyAll` premise after the damping change
$\tau=2\sigma$; that premise remains unpaid.

The actual omitted function is

$$r_{\sigma,T}(u)=1_{[0,\infty)}(u)e^{-\sigma u}W(u)
                -1_{[0,T]}(u)e^{-\sigma u}W(u)
                =1_{(T,\infty)}(u)e^{-\sigma u}W(u).$$

It therefore has extended squared energy

$$\mathcal R_\sigma(T)=\int_{(T,\infty)}h_\sigma(u)\,du,\qquad
  \mathcal E_\sigma=H_\sigma(T)+\mathcal R_\sigma(T).$$

The disjoint decomposition is exact, including the endpoint. If
$\mathcal E_\sigma=\infty$, then $\mathcal R_\sigma(T)=\infty$ for every
finite $T$, since $H_\sigma(T)$ is finite. If $\mathcal E_\sigma<\infty$,
then $\mathcal R_\sigma(T)\to0$ as $T\to\infty$, and the recordings converge
to the actual damped half-line function in $L^2$. Conversely, an $L^2$
representative of that actual half-line function already requires
$\mathcal E_\sigma<\infty$. No unconditional finite tail norm can be read
from an ordinary totalized Bochner integral without its integrability proof.

There is also a precise conditional kernel estimate. Suppose
$0<\rho<\sigma$ and $\mathcal E_\rho<\infty$. Cauchy--Schwarz gives

$$\int_T^\infty e^{-\sigma u}|W(u)|\,du
 \le \left(\int_T^\infty h_\rho(u)\,du\right)^{1/2}
      \frac{e^{-(\sigma-\rho)T}}{\sqrt{2(\sigma-\rho)}}
 \le \frac{\sqrt{\mathcal E_\rho}}{\sqrt{2(\sigma-\rho)}}
      e^{-(\sigma-\rho)T}.$$

Indeed, split the integrand as
$e^{-\rho u}|W(u)|e^{-(\sigma-\rho)u}$ and integrate the squared second
factor explicitly. Thus the infinite Laplace kernel exists absolutely at
$\sigma+i\omega$, and the same bound controls
$|L_\infty(\sigma+i\omega)-L_T(\sigma+i\omega)|$ uniformly over real
$\omega$. It retains a paid *smaller-damping* energy premise; finite energy
only at the same damping does not pay this particular estimate. The finite identity then transports convergence to the full completed quotient
$[\Pi_N(s)-R_T(z,s)]/(zs)$, retaining every debt and endpoint term. This
supplies no separate convergence or cancellation estimate for those terms.

The selected source `pickup_weighted_energy_integrable_initial` provides the
elementary energy domain $\tau>1$, corresponding here to $\sigma>1/2$. The
separately replayed finite Volterra adapter reaches the boundary conditionally
and exposes a general power transfer. At the next reciprocal damping
$\sigma=1/3$, that transfer requires an actual Mertens exponent
$\beta<5/6$. Extending the domain to every positive $\sigma$ still needs an
independent signed arithmetic upper estimate. The tail argument explains the
precise missing limit premise and cannot replace it.

[Finite recording source](../../../../../GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean) · [Completed criterion](../../../../../GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean).

## One-third energy with its exact finite-response tail

Human mathematical direction: grwtsk contributors. Written reduction and
finite diagnostic implementation: OpenAI ChatGPT. This section is a written
argument, not a newly admitted Lean theorem. It does not supply a uniform
one-third bound or change the status of `MertensLogSquareBound`.

For real $x\ge1$, put $N=\lfloor x\rfloor$, $T=\log x$, and use the actual
closed prefixes

$$A_N=\sum_{n=1}^N\frac{\mu(n)}{\sqrt n},\qquad
M_N=\sum_{n=1}^N\mu(n),\qquad A_0=M_0=0.$$

The literal target is $\exists B\ge0\;\forall T\ge0:\ H_{1/3}(T)\le B$.
The following finite calculation introduces neither an Euler-product limit
nor a contour shift. The repository's completed numerator, unborn-product
debt, and transform endpoint terms are not changed.

### Finite Gram calculation and the cutoff correction

Use the actual causal response
$h_n(t)=2(n^{-1/2}-e^{-t/2})1_{[\log n,\infty)}(t)$.
For $1\le m\le n$, integrating three decaying exponentials gives

$$
G(m,n):=\int_0^\infty e^{-2t/3}h_m(t)h_n(t)\,dt
=\frac{18}{7}m^{-1/2}n^{-7/6}-\frac{36}{35}n^{-5/3}.
$$

Indeed the integral starts at $\log n$; the three primitive factors are
$3/2$, $6/7$, and $3/5$. Symmetry defines $G(n,m)$.
In particular $G(n,n)=(54/35)n^{-5/3}$. Expanding the square of a
**finite** response sum, with every ordered off-diagonal pair, yields

$$
\mathcal D_N=\frac{54}{35}\sum_{n=1}^N\mu(n)^2n^{-5/3},
$$

$$
\mathcal C_N=\frac{36}{7}\sum_{n=1}^N\mu(n)A_{n-1}n^{-7/6}
-\frac{72}{35}\sum_{n=1}^N\mu(n)M_{n-1}n^{-5/3},
$$

$$
\int_0^\infty e^{-2t/3}
\left(\sum_{n=1}^N\mu(n)h_n(t)\right)^2dt
=\mathcal D_N+\mathcal C_N.
$$

On the recording $[0,\log x]$ the finite response sum is the actual $W$.
After that recording the same **finite** sum is
$2(A_N-e^{-t/2}M_N)$. Its remaining squared integral is

$$
\mathcal T_N(x)=6A_N^2x^{-2/3}
-\frac{48}{7}A_NM_Nx^{-7/6}
+\frac{12}{5}M_N^2x^{-5/3}.
$$

This is not the tail of the actual future $W$, and it is not the transform
correction $R_T(z,s)$. No estimate of either of those objects is inferred.
The finite-response tail is nonnegative, as the exact completion shows:

$$
\mathcal T_N(x)=6x^{-2/3}
\left(A_N-\frac47M_Nx^{-1/2}\right)^2
+\frac{108}{245}M_N^2x^{-5/3}\ge0.
$$

Consequently the source-specific, all-real-cutoff identity is

$$
\boxed{H_{1/3}(\log x)=\mathcal D_N+\mathcal C_N-\mathcal T_N(x),
\qquad N=\lfloor x\rfloor.}
\tag{1}
$$

At $x=N$, the touching response $h_N(\log N)$ is zero, but its prefix
coefficient remains in both the Gram expression and the tail. Those changes
cancel. Deleting the coefficient from only one side is invalid. Already at
$N=1$, the energy is zero whereas the full Gram and finite tail are both
$54/35$.

The diagonal has an unconditional **written** bound:

$$
0\le\mathcal D_N\le\frac{54}{35}
\left(1+\int_1^\infty y^{-5/3}dy\right)=\frac{27}{7}.
\tag{2}
$$

Thus the literal one-third uniformity is equivalent to the remaining
quantified arithmetic inequality

$$
\boxed{\exists C\ge0\;\forall N\in\mathbb N,\ N\ge1:
\quad\mathcal C_N-\mathcal T_N(N)\le C.}
\tag{3}
$$

A witness $C$ in (3) gives $H_{1/3}(T)\le C+27/7$. For an arbitrary real
$T\ge0$, choose $N=\lfloor e^T\rfloor+1$ and use monotonicity of the
nonnegative energy integral. Conversely, a uniform energy bound $B$ gives
(3) with $C=B$, because $\mathcal D_N\ge0$. These are finite identities
and a monotonicity argument; no half-line integrability is presupposed.
The diagonal is paid, but **no witness for (3) has been obtained**.
Bounding $\mathcal C_N$ alone is a stronger sufficient condition and is not
an equivalent replacement justified by positivity. This is not P04.

### A smaller signed interface than the positive Mertens-source estimate

The finite Volterra adapter, followed by the written substitution $y=e^u$,
gives

$$H_{1/3}(\log x)\le9J(x),\qquad
J(x)=\int_1^x M(y)^2y^{-8/3}dy.$$

The exact finite signed decomposition of this sufficient source energy is

$$
J(x)=\frac35\sum_{n=1}^N\mu(n)^2n^{-5/3}
+\frac65\sum_{n=1}^N\mu(n)M_{n-1}n^{-5/3}
-\frac35M_N^2x^{-5/3},\qquad N=\lfloor x\rfloor.
\tag{4}
$$

To prove it, write
$M_n^2-M_{n-1}^2=\mu(n)^2+2\mu(n)M_{n-1}$, multiply each increment by
$\int_n^x y^{-8/3}dy=(3/5)(n^{-5/3}-x^{-5/3})$, and exchange **finite**
sums. The increments telescope to $M_N^2$. The last term in (4) cannot be
dropped from an asserted equality. Its diagonal costs at most $3/2$.
A uniform bound on the two signed terms together would imply a source bound
and then the one-third energy bound. That supplier remains unproved; the
$H\le9J$ inequality does not give a converse. For half-line statements, use
extended nonnegative integrals until finiteness has been established.

The direct sampled pickup avoids demanding a bound for $J$. Put
$Q_n=A_n-M_n/\sqrt n=W(\log n)/2$ and, for integers $N\ge1$, define

$$S_N=\frac32\sum_{n=1}^{N-1}Q_n^2
\left(n^{-2/3}-(n+1)^{-2/3}\right).$$

On the $n$th cell, $W(t)/2=Q_n+d_n(t)$ with
$d_n(t)=M_n(n^{-1/2}-e^{-t/2})$. Since $|M_n|\le n$ and

$$0\le n^{-1/2}-(n+1)^{-1/2}
=\frac1{\sqrt n\sqrt{n+1}(\sqrt n+\sqrt{n+1})}
\le\frac1{2n^{3/2}},$$

we have $|d_n(t)|\le1/(2\sqrt n)$. The total damped drift-square cost is
at most $(1/4)\int_0^\infty e^{-2t/3}dt=3/8$.
Using $(a+b)^2\le2a^2+2b^2$ in both directions proves the written bounds

$$H_{1/3}(\log N)\le8S_N+3,\qquad
S_N\le\frac12H_{1/3}(\log N)+\frac34.
\tag{5}
$$

Therefore $\sup_N S_N<\infty$ is another exact equivalent arithmetic target,
with every between-atom cost paid. It preserves the cancellation in
$A_n-M_n/\sqrt n$, unlike separate positive estimates for the two prefixes.
It is a weaker sufficient interface than requiring bounded $J$, in the
implication sense; no strict separation for the actual Mobius sequence is
claimed. The equivalence does not itself establish boundedness of $S_N$.

A sign-independent supplier cannot settle these targets. For the comparison
sequence $a_n=1$, its prefix is $\lfloor e^u\rfloor\ge e^u/2$, so its
pickup is at least $e^{t/2}-1$. Its one-third energy is at least
$\int_0^T e^{-2t/3}(e^{t/2}-1)^2dt$, which diverges as $T\to\infty$.
This refutes the generalized supplier, not the actual Mobius target.

### Executable finite diagnostics and evidence limits

`artifact:gitblob:f13161b4d5844dbd3c873f999f1b82a25747ae93` (artifact:gitblob:f13161b4d5844dbd3c873f999f1b82a25747ae93)
evaluates (1), (4), the individual logarithmic cells, and the completed tail
square using rational interval arithmetic. Sixth roots are bracketed by
integer sixth-power inequalities, and intermediate rounding is outwards.
A rational cutoff such as `7/2` exercises the actual floor and partial last
cell. All coefficients through that floor are retained. Arbitrary test
coefficients are explicitly distinguished from the exact Mobius sieve.

`artifact:gitblob:0801f81e85c3469bfa19858d28559c144a2a08bc` (artifact:gitblob:0801f81e85c3469bfa19858d28559c144a2a08bc)
includes independent trial division for the sieve, exact rational-grid
identities for 363 finite sign assignments, integer and noninteger cutoffs,
the zero horizon, and controls detecting a deleted tail, mixed endpoint,
ordered-pair factor, Mertens cutoff compensation, or Mobius sign.
The 21 test methods passed in normal and optimized Python for the bytes bound
in the finite diagnostic receipt (artifact:gitblob:b088b2206be2acbfde2a844d99358e0e53151b9a).

Reproduce with:

```sh
python3 -B artifact:gitblob:0801f81e85c3469bfa19858d28559c144a2a08bc
python3 -O -B artifact:gitblob:0801f81e85c3469bfa19858d28559c144a2a08bc
python3 -B artifact:gitblob:f13161b4d5844dbd3c873f999f1b82a25747ae93 --cutoff 7/2 --cutoff 1024 --bits 64
```

Finite enclosures are not a uniform bound. Overlapping residual enclosures
are consistency checks, not equality proofs; the equalities above have written
derivations. No Lean source was added or changed in this contribution, no
pinned Lean replay or owned-declaration audit was run, and full-repository
layout/documentation checks were not available in this execution environment.
No historical receipt or source hash is refreshed into new proof acceptance.
The next arithmetic obligation is (3), or equivalently the boundedness of
$S_N$ in (5), followed by its native source-specific admission. A bound only
for this one damping would still not be an all-positive-damping or RH proof.

## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean). Status: **written-argument**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

---

## Square-root divisor compression with a paid short-prefix energy

**Status: written finite identities and analytic bounds; no new Lean
admission.** Human mathematical direction: grwtsk contributors. Source
adaptation, derivation and diagnostics: OpenAI ChatGPT. The underlying
finite divisor identity is classical, not a new arithmetic cancellation
result. See Huxley--Watt, *Mertens Sums requiring Fewer Values of the Mobius
Function*, [arXiv:1807.05890v1, equations (1.5)--(1.8)](https://arxiv.org/html/1807.05890v1).
The proof below uses finite Dirichlet convolution, not a zeta contour or an
unproved nonvanishing theorem. It does not extend the preceding zero-free
transfer beyond its stated damping domain.

### Literal coefficient identity, before any estimate

For a real physical cutoff $x\ge1$ set

$$N=\lfloor x\rfloor,\qquad U=\lfloor\sqrt x\rfloor
=\lfloor\sqrt N\rfloor.$$

Then $U^2\le N\le x<(U+1)^2$. For positive integers let
$a_U(n)=\mu(n)1_{n\le U}$, $b_U=\mu-a_U$, and let $\mathbf1(n)=1$.
Finite divisor convolution and $\mu*\mathbf1=\varepsilon$ give the exact
coefficient identity

$$\mu=2a_U-a_U*a_U*\mathbf1+b_U*b_U*\mathbf1.$$

Indeed expand $(\mu-b_U)*(\mu-b_U)*\mathbf1$; associativity gives
$\mu*\mu*\mathbf1=\mu$ and $\mu*b_U*\mathbf1=b_U$.
For every $1\le n\le N$, the last coefficient is zero: each of its terms
would require two factors at least $U+1$, and hence $n\ge(U+1)^2$.
Consequently

$$\boxed{\mu(n)=2\mu(n)1_{n\le U}
-\sum_{\substack{a,b\le U\\ab\mid n}}\mu(a)\mu(b)
\quad(1\le n\le N).} \tag{SR1}$$

Every ordered pair is included; the neutral multiplier $k=n/(ab)$ need
not be squarefree. The statement is false for arbitrary bounded coefficient
sequences in place of the actual Mobius inverse.

Multiply (SR1) by the actual response $h_n(t)$ and sum at $t=\log x$.
Define

$$P(t)=2\sum_{a\le\lfloor e^{t/2}\rfloor}\mu(a)h_a(t),$$

$$\mathfrak B(x)=\sum_{a,b\le U}\mu(a)\mu(b)K_x(a,b),\qquad
K_x(a,b)=\sum_{k\le x/(ab)}h_{abk}(\log x).$$

The exact all-real-cutoff return is

$$\boxed{W(t)=P(t)-\mathfrak B(e^t)\quad(t\ge0).} \tag{SR2}$$

Only Mobius values with index at most $U=\lfloor\sqrt x\rfloor$ enter
the right side. This is a reduction in arithmetic input range, not a proof
that the remaining quadratic form is small and not a computational speed
claim. All integers through $N$ are still represented by the full multiplier
sum. The completed Euler-product numerator is not replaced by a raw product;
its endpoint terms and unborn-product debt remain unchanged.

At a square cutoff the small source changes. $P$ and $\mathfrak B(e^t)$
may jump, and their jumps cancel in (SR2). They are not separately asserted
continuous. On each finite time interval they are bounded, measurable and
piecewise smooth, so all finite integrals below exist. At a touching
integer, $h_n(\log n)=0$ does not erase its coefficient from (SR1).
In particular, freezing $U=1$ at $N=4$ gives the wrong coefficient at four,
although the pickup discrepancy is invisible exactly at $x=4$ and becomes
visible immediately afterward. The strict support gate must be checked
before applying the weighted identity.

### The short-prefix term is paid without Mobius cancellation

For $a\le U$ the summands $a^{-1/2}-x^{-1/2}$ are nonnegative. The
integral comparison $\sum_{a\le U}a^{-1/2}\le2\sqrt U-1$ gives

$$|P(\log x)|\le4\left(2\sqrt U-1-U/\sqrt x\right)
\le8(x^{1/4}-1). \tag{SR3}$$

For the last inequality the function $v\mapsto2\sqrt v-v/\sqrt x$ is
increasing on $1\le v\le\sqrt x$; its value at $\sqrt x$ is
$2x^{1/4}-1$. This pays the floor loss without inserting a new constant
or a pointwise Mertens bound. At $x=1$ both sides are zero.

Set $\mathcal P(T)=\int_0^T e^{-2t/3}P(t)^2dt$. Integrating the
explicit majorant in (SR3) gives the unconditional written bound

$$\boxed{\mathcal P(T)\le
64\left(6-\frac{24}{5}+\frac32\right)=\frac{864}{5}
\quad(T\ge0).} \tag{SR4}$$

More generally this particular short-prefix majorant is integrable for
$\sigma>1/4$, with constant
$64[(2\sigma-1/2)^{-1}-2(2\sigma-1/4)^{-1}+(2\sigma)^{-1}]$.
This threshold belongs only to the short-prefix term, not to the complete
pickup or to a newly proved zero-free region.

Define the remaining finite quadratic energy

$$\mathcal K(T)=\int_0^T e^{-2t/3}\mathfrak B(e^t)^2dt
=\int_1^{e^T}x^{-5/3}\mathfrak B(x)^2dx.$$

The change of variables is on finite intervals. From (SR2), finite weighted
Cauchy--Schwarz gives

$$|\sqrt{H_{1/3}(T)}-\sqrt{\mathcal K(T)}|
\le\sqrt{\mathcal P(T)}\le\sqrt{864/5}.$$

In particular,

$$\boxed{H_{1/3}(T)\le2\mathcal K(T)+1728/5,\qquad
\mathcal K(T)\le2H_{1/3}(T)+1728/5.} \tag{SR5}$$

Thus the literal uniform one-third bound is equivalent to

$$\boxed{\exists C\ge0\ \forall T\ge0:\quad
\int_0^T e^{-2t/3}\left|
\sum_{a,b\le\lfloor e^{t/2}\rfloor}\mu(a)\mu(b)
\sum_{k\le e^t/(ab)}h_{abk}(t)\right|^2dt\le C.} \tag{SR6}$$

A witness $C$ gives the sharper constant
$(\sqrt C+\sqrt{864/5})^2$ for the actual one-third mass. No witness for
(SR6) is provided. It is equivalent to the earlier corrected-cross-energy
condition (3), not a new assumption silently added to it. Half-line integrals
remain extended nonnegative quantities until finiteness is established.

### Where the arithmetic cancellation remains

Let $q_+(y)=\sum_{k\le y}k^{-1/2}-\lfloor y\rfloor/\sqrt y$ for
$y\ge1$. Partial summation with the closed floor gives

$$q_+(y)=\frac12\int_1^y\lfloor v\rfloor v^{-3/2}dv
=\sqrt y-E(y),\qquad
E(y)=1+\frac12\int_1^y\{v\}v^{-3/2}dv.$$

Hence $1\le E(y)\le2-y^{-1/2}$ and

$$K_x(a,b)=\frac{2\sqrt x}{ab}
-\frac{2E(x/(ab))}{\sqrt{ab}},$$

$$\mathfrak B(x)=2\sqrt x
\left(\sum_{a\le U}\frac{\mu(a)}a\right)^2
-2\sum_{a,b\le U}\frac{\mu(a)\mu(b)}{\sqrt{ab}}E(x/(ab)). \tag{SR7}$$

All terms in (SR7) are retained together. The
boundedness of $E$ alone only gives an $O(\sqrt x)$ absolute allowance for
its quadratic form. That power is not integrable against the required
$x^{-5/3}$ weight after squaring. No exponent gain follows from this
rank-one decomposition.

The kernel is not positive semidefinite. At $x=4$, its $2$ by $2$ matrix is

$$\begin{pmatrix}
\sqrt2+2/\sqrt3-1&\sqrt2-1\\
\sqrt2-1&0
\end{pmatrix},\qquad
\det=-(\sqrt2-1)^2<0.$$

The zero diagonal entry at the touching square does not imply a zero row.
Deleting that row, declaring the form a Gram norm, or applying Bessel's
inequality as though positivity had been proved is invalid. The bounded
rational vector $(1/4,-1)$ gives a strictly negative quadratic value.

A stronger universal-operator supplier also fails. For the comparison vector
$e_1$, $\mathfrak B_*(x)=K_x(1,1)$ is the pickup of the constant-one
coefficient sequence. Since $\lfloor e^u\rfloor\ge e^u/2$,
$\mathfrak B_*(e^t)\ge e^{t/2}-1$. Its one-third weighted energy diverges.
This disproves a bound based only on bounded entries, dimension, or a unit
coefficient-vector norm. It does not disprove (SR6) for the actual Mobius
vector. That vector's divisor-inverse arithmetic must be used in any genuine
estimate.

One concrete weaker sufficient input than a fixed subcritical pointwise
power is the critical-scale, logarithmically improved bound

$$\exists C\ge0,\ \epsilon>0\ \forall x\ge1:\quad
|\mathfrak B(x)|\le
\frac{C x^{1/3}}{(1+\log x)^{1/2+\epsilon}}. \tag{SR8}$$

It would give $\mathcal K(T)\le C^2/(2\epsilon)$ and therefore
$H_{1/3}(T)\le(C/\sqrt{2\epsilon}+\sqrt{864/5})^2$.
Neither (SR8) nor a subcritical power bound is asserted. The exact weaker
remaining target is (SR6); a proof need not establish the stronger pointwise
condition (SR8). No P04 premise, Mertens exponent, or RH premise is used.

### Finite implementation and admission boundary

`square_root_pickup.py` (artifact:gitblob:187b89c2d36caa46b2b1541d4871861a2a7410fc)
implements (SR1) and moving-cutoff finite energies. Its Mobius sieve is called
only through the square-root cutoff. It retains all ordered pairs and neutral
multipliers, uses the existing rational interval arithmetic, and reports
which identities are interval-consistency checks rather than exact symbolic
proofs. The actual prefix recovered from (SR1) is compared with an independent
trial-division Mobius implementation in the tests, not defined by that check.

`test_square_root_pickup.py` (artifact:gitblob:3906df2434959627ea0efb16f7d6b64aeebb574b)
checks the strict support gate, every small closed cutoff, all coefficients
through $4096$ from values through $64$, noninteger horizons, square crossings,
independent direct-kernel expansion, missing mixed terms, and the indefinite
kernel control. The 19 test methods passed in both normal and optimized
Python. The tested bytes, finite output and exact scope are bound in the
new receipt (artifact:gitblob:c76b5e3e7e9630e831871413c8189cf89f61bf37).

```sh
python3 -B artifact:gitblob:3906df2434959627ea0efb16f7d6b64aeebb574b
python3 -O -B artifact:gitblob:3906df2434959627ea0efb16f7d6b64aeebb574b
python3 -B artifact:gitblob:187b89c2d36caa46b2b1541d4871861a2a7410fc --cutoff 17/2 --cutoff 1024
```

No Lean source, compiler pin, old receipt, permission, or workflow is changed.
No pinned Lean replay, owned-declaration audit, or full-repository structural
check was available in this execution environment. The earlier article bytes
and their historical receipt remain preserved; the new receipt does not
promote them. The mathematical gain here is an exact short-source reduction
and the unconditional written cost (SR4), not a bound on the remaining
quadratic energy and not an improvement of the zeta zero-free exponent.

---

## Anchored Fourier reduction with a paid approximation tail

**Status: written analytic argument and finite rational diagnostics; no Lean
admission and no arithmetic bound for the retained form.** Human mathematical
direction: grwtsk contributors. Derivation and implementation assistance:
OpenAI ChatGPT. The finite divisor identity is the classical Huxley--Watt
identity used above. The Bernoulli Fourier identity below is classical:
[NIST DLMF 24.8.1](https://dlmf.nist.gov/24.8.E1), at degree two.
No new zero-free theorem or Mertens estimate is imported.

### An exact anchored kernel, without an unspecified constant

For real $v$ put $\rho(v)=\{v\}(1-\{v\})/2$. It is continuous,
periodic, zero at every integer, and $0\le\rho\le1/8$.
Almost everywhere, $\rho'(v)=1/2-\{v\}$. Finite integration by parts
in the already proved floor integral for $q_+$ gives, for every $y\ge1$,

$$q_+(y)=\sqrt y-\frac32+\frac1{2\sqrt y}
+\frac{\rho(y)}{2y^{3/2}}
+\frac34\int_1^y\rho(v)v^{-5/2}\,dv. \tag{FF1}$$

Indeed $q_+(y)=\sqrt y-1-(1/2)\int_1^y\{v\}v^{-3/2}dv$.
Substitute $\{v\}=1/2-\rho'(v)$ and integrate the derivative term.
All internal integer boundary terms cancel because $\rho$ is continuous;
the lower boundary is zero because $\rho(1)=0$. This also proves (FF1)
at touching integers, rather than only almost everywhere.

For $d=ab\le x$, (FF1) gives the exact response kernel

$$K_x(a,b)=\frac{2\sqrt x}{d}-\frac3{\sqrt d}+\frac1{\sqrt x}
+\frac{d}{x^{3/2}}\rho(x/d)
+\frac3{2\sqrt d}\int_1^{x/d}\rho(v)v^{-5/2}\,dv. \tag{FF2}$$

Both integral endpoints and the three explicit main terms are retained.
There is no zeta-value constant, improper integral, or numerical compact-set
maximum in this formula. At $x=d$ the main terms sum to zero and both
remaining terms vanish. The actual touching coefficient has not been removed.

### Fourier truncation with a uniform entrywise error

The degree-two Bernoulli Fourier series implies the absolutely and uniformly
convergent expansion

$$\rho(v)=\frac1{2\pi^2}\sum_{h=1}^{\infty}
                 \frac{1-\cos(2\pi h v)}{h^2}.$$

One way to get this normalization is to subtract the degree-two formula at
$v$ from its value at zero and divide by two. For an integer $L\ge1$ define

$$\rho_L(v)=\frac1{2\pi^2}\sum_{h=1}^{L}
                 \frac{1-\cos(2\pi h v)}{h^2},\qquad r_L=\rho-\rho_L.$$

Each omitted summand is nonnegative, and the integral comparison for
$\sum_{h>L}h^{-2}$ gives

$$0\le r_L(v)\le\frac1{\pi^2 L}\quad(v\in\mathbb R).
\tag{FF3}$$

Also $\rho_L(m)=0$ for every integer $m$, including the lower anchor one.
Define $K_{x,L}(a,b)$ by replacing $\rho$ by $\rho_L$ everywhere in
(FF2), not by discarding its finite integral or one of its main terms.
Then, with $y=x/d\ge1$,

$$K_x(a,b)-K_{x,L}(a,b)=\frac1{\sqrt d}
\left[y^{-3/2}r_L(y)+\frac32\int_1^y r_L(v)v^{-5/2}dv\right].$$

Since $y^{-3/2}+(3/2)\int_1^y v^{-5/2}dv=1$, the complete error obeys

$$\boxed{0\le K_x(a,b)-K_{x,L}(a,b)
\le\frac1{\pi^2 L\sqrt{ab}}.} \tag{FF4}$$

No oscillatory integral over an infinite interval is hidden in $K_{x,L}$.
The retained modes have reciprocal-product phase $2\pi h x/(ab)$;
their weighted finite history integrals remain part of the same kernel.

### Signed summation and its actual energy cost

Retain $U=\lfloor\sqrt x\rfloor=\lfloor\sqrt{\lfloor x\rfloor}\rfloor$.
For any specified positive integer $L(x)$ put

$$\mathfrak F(x)=\sum_{a,b\le U}\mu(a)\mu(b)K_{x,L(x)}(a,b),
\qquad \mathfrak E(x)=\mathfrak B(x)-\mathfrak F(x).$$

The error $\mathfrak E$ is signed; (FF4) does not imply it is nonnegative.
Using absolute values only to pay this approximation error gives

$$|\mathfrak E(x)|\le\frac1{\pi^2L(x)}
\left(\sum_{a\le U}\frac{|\mu(a)|}{\sqrt a}\right)^2
\le\frac{4U}{\pi^2L(x)}\le\frac{4\sqrt x}{\pi^2L(x)}. \tag{FF5}$$

Now choose the exact, moving mode count $L(x)=\lceil x^{1/4}\rceil$.
It follows without any Mobius cancellation assumption that

$$\boxed{\int_0^T e^{-2t/3}|\mathfrak E(e^t)|^2dt
\le\frac{16}{\pi^4}\int_0^T e^{-t/6}dt
\le\frac{96}{\pi^4}\quad(T\ge0).} \tag{FF6}$$

The exponent gain here belongs only to the *approximation error*: it comes
from the explicit $1/L$ Fourier tail and the chosen mode count. It is not
an exponent gain for the Mobius function or for $\mathfrak F$.
For general $\sigma>0$, $q\ge0$ and $L(x)\ge x^q$, this same error
has squared energy at most

$$\frac{16}{\pi^4(2\sigma+2q-1)}\quad\text{when }2\sigma+2q>1.$$

At $\sigma=1/3$ the condition is $q>1/6$. At or below that threshold
this particular positive allowance fails to be integrable; this does not
prove divergence of the actual signed error. At the critical power one may
instead use $L(x)\ge x^{1/6}(1+\log x)^{1/2+\epsilon}$, $\epsilon>0$,
which gives error energy at most $8/(\epsilon\pi^4)$.
These general statements concern the Fourier error only. The earlier
short-prefix bound has its own damping threshold $\sigma>1/4$.

All time-dependent sums have finitely many terms on a compact interval.
The mode cutoff changes at fourth powers; the source cutoff changes at
squares. The functions are bounded and measurable on each compact interval.
No separate continuity of the truncated form is asserted or needed.
The exact identity remains $W(t)=P(t)-\mathfrak F(e^t)-\mathfrak E(e^t)$.
It concerns the original closed source, not a new representative chosen by
an inverse transform. The completed numerator, both transform endpoint terms,
and unborn-product debt remain unchanged.

### The retained finite-frequency arithmetic obligation

Define

$$\mathcal F(T)=\int_0^T e^{-2t/3}|\mathfrak F(e^t)|^2dt,
\qquad D=\sqrt{864/5}+\frac{4\sqrt6}{\pi^2}.$$

Finite weighted triangle inequalities, (SR4), and (FF6) yield

$$\boxed{|\sqrt{H_{1/3}(T)}-\sqrt{\mathcal F(T)}|\le D.
} \tag{FF7}$$

Thus the original one-third target is equivalent to

$$\boxed{\exists C\ge0\ \forall T\ge0:\quad\mathcal F(T)\le C.}
\tag{FF8}$$

A witness gives $H_{1/3}(T)\le(\sqrt C+D)^2$; a uniform bound $B$ on
$H_{1/3}$ gives $\mathcal F(T)\le(\sqrt B+D)^2$. Only finite integrals
are used in these implications. Half-line square integrals remain extended
nonnegative quantities until boundedness is established.

In particular (FF8) is not a request to bound the oscillatory part alone.
With $R_U=\sum_{a\le U}\mu(a)/a$ and the actual $A_U,M_U$, the complete
retained form has the three main terms

$$2\sqrt x\,R_U^2-3A_U^2+M_U^2/\sqrt x$$

plus both signed kernel sums in (FF2) with $\rho_L$. They must be retained
together. Separate absolute bounds for these terms still give an insufficient
$O(\sqrt x)$ allowance. No improved arithmetic estimate for their sum has
been obtained.

A weaker sufficient goal than pointwise subcritical power decay is a dyadic
mean-square bound. Set $I_j=\int_{2^j}^{2^{j+1}}|\mathfrak F(x)|^2dx$,
with the mode count still recomputed at each actual $x$. A genuine supplier

$$\exists C\ge0,\epsilon>0\ \forall j\in\mathbb N:\quad
I_j\le \frac{C\,2^{5j/3}}{(j+1)^{1+\epsilon}} \tag{FF9}$$

would give $\mathcal F(T)\le C(1+1/\epsilon)$ and hence
$H_{1/3}(T)\le(\sqrt{C(1+1/\epsilon)}+D)^2$.
Indeed the physical weight is $x^{-5/3}$, and
$\sum_{j\ge0}(j+1)^{-1-\epsilon}\le1+1/\epsilon$.
The exact weaker condition is summability of $2^{-5j/3}I_j$; the weighted
integral lies between this sum times $2^{-5/3}$ and the sum itself.
Neither (FF8) nor (FF9) has an arithmetic witness in this contribution.

### Negative control and executable verification

Even though the kernel error in (FF4) is entrywise nonnegative, its matrix
need not be positive semidefinite. At $x=4$, $U=2$, its $(2,2)$ entry is
zero. Its $(1,2)$ entry is strictly positive: $r_L$ is positive away from
integers, and its history integral over $(1,2)$ is positive. Therefore its
determinant is strictly negative for every finite $L$. One must not infer a
quadratic ordering from the entrywise bound. At $L=1$, the tests enclose a
strictly negative value on the rational vector $(1/4,-1)$.
The already rejected bounded-coefficient supplier remains rejected: the
comparison source $e_1$ has divergent full quadratic energy; a paid
approximation error cannot make its retained energy uniformly bounded.
These controls do not refute the actual Mobius arithmetic target.

`reciprocal_phase_kernel.py` (artifact:gitblob:58a71f487e522fb58e5d8ed234da6967bd22f1df)
uses exact rational arithmetic. Machin's identity and alternating arctangent
remainders enclose $\pi$; range-reduced cosine polynomials carry Taylor
remainders and enough guard precision before Horner amplification. Finite
history integrals carry explicit midpoint quadrature errors. For
$f(v)=\rho_L(v)v^{-5/2}$ and $v\ge a\ge1$, the code uses

$$|f'(v)|\le\frac{H_L}{3}a^{-5/2}
+\frac5{18}\left(\sum_{h=1}^L h^{-2}\right)a^{-7/2},$$

where $H_L=\sum_{h\le L}h^{-1}$. This follows from $\pi>3$ and finite
trigonometric bounds, independently of the infinite Fourier identity.
A panel of width $\ell$ costs at most this derivative bound times
$\ell^2/4$. The exact periodic kernel is separately integrated on integer
cells using the primitive
$-\sqrt v-(2j+1)v^{-1/2}+j(j+1)v^{-3/2}/3$ on $[j,j+1]$.

`test_reciprocal_phase_kernel.py` (artifact:gitblob:7df82d23e26739d70400e5b0f33bbebcda0ec44b)
contains 20 tests, passed normally and with optimized Python. They cover
normalization, phase symmetries, root/phase precision, exact finite-cell
identities, Fourier tails, quadrature errors, missing endpoint/history terms,
square and fourth-power crossings, full ordered signed pairs, and the
indefinite-error control. The finite batch covers rational physical cutoffs
through $x=16$, not a horizon $T=16$. Source hashes, runs, and limitations are
recorded in the receipt (artifact:gitblob:0d412e295d6cb9b52a3cefb93eb07ecc7836fe2b).

```sh
python3 -B artifact:gitblob:7df82d23e26739d70400e5b0f33bbebcda0ec44b
python3 -O -B artifact:gitblob:7df82d23e26739d70400e5b0f33bbebcda0ec44b
python3 -B artifact:gitblob:58a71f487e522fb58e5d8ed234da6967bd22f1df --cutoff 17/2 --cutoff 16
```

The infinite Fourier identity and analytic inequalities have written proofs;
finite interval overlaps do not prove those identities. No Lean source is
changed, no Lean/Lake runtime is available here, and no pinned replay,
owned-declaration audit, or full-repository layout/documentation check was
run. Earlier article bytes and receipts are preserved, not promoted into new
acceptance. The deterministic tail cost (FF6) is the new written result.
The retained arithmetic estimate (FF8) remains unpaid. No P04 requirement,
new Mertens exponent, unconditional boundary admission, or RH claim is added.

## Two-mode weighted projection of the literal pickup

**Status: written finite analytic argument and executable rational diagnostics;
no Lean admission and no uniform arithmetic bound for the retained modes.**
Human mathematical direction: grwtsk contributors. Derivation and implementation
assistance: OpenAI ChatGPT. This is a separate direct reduction of the same
pickup, not an identification of the reciprocal-phase kernel with a positive
Gram matrix. All earlier reductions and their evidence remain unchanged.
The [matched-averaging calculation](../matched-pickup.md) already identifies
the homogeneous time modes $1,e^{-t/2}$. The present construction retains
those same modes in physical coordinates; it does not import the earlier
P04/P05 growth requirements or assume their estimates.

### Physical coordinate and the two carried source modes

Put $V(x)=W(\log x)$ for $x\ge1$, and keep the closed Mertens prefix
$M(x)=\sum_{1\le n\le\lfloor x\rfloor}\mu(n)$. The finite substitution
$y=e^u$ in the defining pickup integral gives

$$V(x)=\int_1^x M(y)y^{-3/2}\,dy,\qquad
H_{1/3}(\log R)=\int_1^R x^{-5/3}V(x)^2\,dx. \tag{WP1}$$

The integrands are bounded and measurable on compact intervals. Thus $V$ is
locally absolutely continuous and $V'(x)=M(x)x^{-3/2}$ almost everywhere.
No pointwise derivative is asserted at the integer jumps of $M$.

For an integer $l\ge1$ define the carried response on $x\ge l$ by

$$T_l(x)=V(l)+2M(l)(l^{-1/2}-x^{-1/2}).$$

This belongs to $\operatorname{span}\{1,x^{-1/2}\}$. It retains all the
arithmetic accumulated before the block, rather than resetting that history
at $l$. The exact remainder is

$$V(x)-T_l(x)=\int_l^x [M(y)-M(l)]y^{-3/2}\,dy. \tag{WP2}$$

Since $l$ is an integer and $|\mu(n)|\le1$,

$$|M(y)-M(l)|\le\lfloor y\rfloor-l\le y-l,$$

and hence

$$|V(x)-T_l(x)|\le\frac{(x-l)^2}{2l^{3/2}}. \tag{WP3}$$

This is an unconditional local error estimate. It does not bound either
carried coefficient $V(l)$ or $M(l)$ at a new arithmetic scale. It also holds
for every real coefficient sequence with $|a_n|\le1$, with its own actual
prefix and pickup. That generality concerns only the approximation error.

### Exact weighted projection, with both modes retained

For $B=[l,r]$, $1\le l<r$, use the Hilbert inner product
$\langle f,g\rangle_B=\int_l^r x^{-5/3}f(x)g(x)\,dx$.
Let $\Pi_BV$ be the orthogonal projection onto
$\operatorname{span}\{1,x^{-1/2}\}$, and write

$$k_B=\|\Pi_BV\|_B^2,\qquad e_B=\|V-\Pi_BV\|_B^2.$$

The exact Pythagorean identity is

$$\int_l^r x^{-5/3}V(x)^2dx=k_B+e_B,\qquad k_B,e_B\ge0. \tag{WP4}$$

In particular, projecting is not deleting the mean or the second mode. Both
of their energies occur in $k_B$; the orthogonal residual occurs in $e_B$.
This is an actual Gram projection in the specified weighted function space,
not an appeal to positivity of the earlier indefinite divisor kernel.

For $\Delta_a=l^{-a}-r^{-a}$ define

$$\omega_B=\frac32\Delta_{2/3},\qquad
\nu_B=\frac67\Delta_{7/6},\qquad
\tau_B=\frac35\Delta_{5/3},\qquad
s_B=\tau_B-\frac{\nu_B^2}{\omega_B}.$$

Both $\omega_B$ and $s_B$ are strictly positive. Indeed $\omega_B$ is a
positive weighted mass, and $s_B$ is the weighted squared norm of the
nonconstant function $x^{-1/2}-\nu_B/\omega_B$. Define the actual moments

$$p_B=\int_B x^{-5/3}V(x)dx,\qquad
q_B=\int_B x^{-13/6}V(x)dx.$$

The complete local positive form and its reconstruction are

$$\boxed{k_B=\frac{p_B^2}{\omega_B}
+\frac{(q_B-\nu_Bp_B/\omega_B)^2}{s_B},} \tag{WP5}$$

$$\Pi_BV(x)=\alpha_B+\beta_B(x^{-1/2}-\nu_B/\omega_B),\quad
\alpha_B=p_B/\omega_B,\quad
\beta_B=(q_B-\nu_Bp_B/\omega_B)/s_B.$$

The first term in (WP5) is the retained constant channel, and the second is
the retained transverse mode. A small Schur denominator is not permission
to erase the second channel. The numerical implementation rejects a failure
to separate either denominator from zero and asks for greater precision.

### One-eighth block count and a globally bounded complement

On the dyadic octave $[X,2X]$ with $X=2^j$, set

$$m_j=2^{\lceil j/8\rceil},\qquad \ell_j=X/m_j,$$

and partition into the $m_j$ blocks
$B_{j,r}=[X+r\ell_j,X+(r+1)\ell_j]$, $0\le r<m_j$.
All endpoints are integers. Shared endpoints have measure zero, so either
consistent half-open convention gives the same integrals.

Orthogonal projection minimizes the squared error. Apply (WP3) to the trial
function $T_l$ in its range. On any such block, $l\ge X$ and therefore

$$e_B\le\int_l^{l+\ell_j}
\frac{(x-l)^4}{4X^{14/3}}dx
=\frac{\ell_j^5}{20X^{14/3}}.$$

The sum of these errors in one octave is at most

$$E_j\le\frac{X^{1/3}}{20m_j^4}
\le\frac{2^{-j/6}}{20}. \tag{WP6}$$

For complete octaves define

$$K_J=\sum_{j=0}^{J-1}\sum_{r=0}^{m_j-1}k_{B_{j,r}},\qquad
E_J=\sum_{j=0}^{J-1}\sum_{r=0}^{m_j-1}e_{B_{j,r}}.$$

Equations (WP1), (WP4) and (WP6) give

$$\boxed{H_{1/3}(J\log2)=K_J+E_J,\qquad
0\le E_J\le C_{\rm err}:=
\frac1{20(1-2^{-1/6})}<\frac12.} \tag{WP7}$$

The strict last comparison is certified by the rational inequality
$(10/9)^6<2$. This proves $2^{-1/6}<9/10$, and the displayed denominator
is consequently greater than $2$. The bound concerns $E_J$, not $K_J$ and
not the total pickup energy. Its approximate value is $0.45829$.

The same blockwise proof works for a partially recorded final block; the
complete-octave formulation avoids requiring the truncated projection energy
to be monotone in an arbitrary endpoint. For any real $T\ge0$, choose
$J\in\mathbb N$ with $e^T\le2^J$ and use monotonicity of the original
nonnegative integral. It follows that

$$\boxed{\exists B\ge0\ \forall T\ge0:\ H_{1/3}(T)\le B
\quad\Longleftrightarrow\quad
\exists C\ge0\ \forall J\in\mathbb N:\ K_J\le C.} \tag{WP8}$$

A witness $C$ on the right gives the exact constant $C+C_{\rm err}$,
and hence the simpler $C+1/2$, on the left. A witness $B$ on the left
bounds $K_J$ by the same $B$. Only finite integrals and a geometric series
are used. No half-line integrability is assumed in this argument.

This replaces an infinite-dimensional recording on each octave by two
retained moments on $m_j=O(X^{1/8})$ blocks, with a globally paid complement.
It is a dimension statement, not a fast algorithm claim: constructing the
moments still requires the actual arithmetic source. No bound for $K_J$
is supplied. The preceding Fourier and square-root identities remain valid
separate representations; they need not be imposed as additional premises.

### Closed-cutoff arithmetic recognition of both moments

On an integer cell $n\le x<n+1$, the original closed prefixes give

$$V(x)=2(A_n-M_nx^{-1/2}),\quad
A_n=\sum_{a=1}^n\mu(a)a^{-1/2},\quad M_n=\sum_{a=1}^n\mu(a).$$

Thus for each subcell $[c,d]\subseteq[n,n+1]$, with
$\delta_a=c^{-a}-d^{-a}$,

$$p_{[c,d]}=3A_n\delta_{2/3}-\frac{12}{7}M_n\delta_{7/6},$$

$$q_{[c,d]}=\frac{12}{7}A_n\delta_{7/6}
-\frac65M_n\delta_{5/3}. \tag{WP9}$$

Summing these exact finite expressions gives $p_B,q_B$, including partial
last cells. Equivalently, for $c=\max(l,n)<r$ the response atom has moments

$$\lambda_{B,0}(n)=3n^{-1/2}(c^{-2/3}-r^{-2/3})
-\frac{12}{7}(c^{-7/6}-r^{-7/6}),$$

$$\lambda_{B,1}(n)=\frac{12}{7}n^{-1/2}(c^{-7/6}-r^{-7/6})
-\frac65(c^{-5/3}-r^{-5/3}). \tag{WP10}$$

Both are zero when $n\ge r$. The moment identities are
$p_B=\sum_{n\le\lfloor r\rfloor}\mu(n)\lambda_{B,0}(n)$ and
$q_B=\sum_{n\le\lfloor r\rfloor}\mu(n)\lambda_{B,1}(n)$.
Every pre-block atom $n\le l$ remains present. At an integer endpoint the
touching atom has zero response but retains its coefficient in the closed
prefix. The normal equations and finite identities do not introduce a
Perron half weight, Euler-product limit, or zeta contour. Returning through
the existing finite Parseval identity leaves both transform endpoint sums
and the unborn-product debt unchanged.

### Grounded path and its exact Jacobi precision

The two positive channels have an exact anchored path realization. For any
positive weights $w_0,\ldots,w_{m-1}$ and real path values $a_0,\ldots,a_{m-1}$,
put $d_0=a_0$ and $d_i=a_i-a_{i-1}$ for $i\ge1$. Then

$$\sum_i w_i a_i^2=d^{\mathsf T}Gd,\qquad
G_{ij}=\sum_{k\ge\max(i,j)}w_k. \tag{WP11}$$

The matrix is positive definite and its inverse has the exact local form

$$\boxed{v^{\mathsf T}G^{-1}v
=\sum_{i=0}^{m-2}\frac{(v_i-v_{i+1})^2}{w_i}
+\frac{v_{m-1}^2}{w_{m-1}}.} \tag{WP12}$$

To verify both identities, write $a=Ld$ with $L$ the lower triangular
all-ones matrix. Then $G=L^{\mathsf T}\operatorname{diag}(w)L$ and
$G^{-1}=L^{-1}\operatorname{diag}(w^{-1})L^{-\mathsf T}$; the last
component of $L^{-\mathsf T}v$ is $v_{m-1}$. In particular
$\det G=\prod_i w_i$. The usual dual quotient has its exact optimizer
$v=Gd$ when $d\ne0$.

Apply (WP11)--(WP12) separately to $(w_i,a_i)=(\omega_i,\alpha_i)$ and
$(s_i,\beta_i)$. Their two energies sum to the local form (WP5). Neither
initial path value may be reset to zero. Nor may the final term in (WP12)
be discarded: doing so creates a false constant null direction. This is a
new source-specific realization of the actual moments, not a substitution
of a Green matrix built from a different prime or spectral source.

### Arithmetic supplier audit and explicit remaining inequality

The elementary counterexample $a_n=1$ separates the deterministic error
estimate from arithmetic cancellation. Its prefix is $\lfloor x\rfloor$,
so (WP1) gives $V(x)\ge\sqrt x-1$. On an octave $X\ge4$, every weighted
constant mean is at least $\sqrt X/2$. Consequently its retained energy
on that octave is at least

$$\frac38(1-2^{-2/3})X^{1/3}.$$

The residual bound (WP7) still applies to this sequence. Thus bounded
coefficients, projection positivity, small complement energy and a sparse
Jacobi inverse do not imply bounded retained energy. This is not a
counterexample to the actual Mobius target.

A current external candidate was also checked: Matomaki, Pandey, Pliego,
Teravainen and Wang, *Higher order uniformity of the primes and cancellation
of the Mobius function in shorter intervals*,
[arXiv:2610.09567v1](https://arxiv.org/html/2610.09567v1), 7 October 2026.
Theorem 1.4 gives a logarithmic saving for all intervals of length at least
$X^{19/35+\epsilon}$; Theorem 1.2 gives arbitrary fixed logarithmic savings
against bounded-complexity nilsequences for lengths at least
$X^{3/5+\epsilon}$ in its stated upper range. These are primary manuscript
statements, not Lean imports or explicit numerical constants in this work.

Our blocks are long enough asymptotically to consult these results, but the
carried moments in (WP2) are not local increments. Taking absolute values
and accumulating a bound $h/(\log X)^A$ leaves a size allowance of order
$X/(\log X)^A$ for a full prefix. Transferring that allowance through (WP1)
still permits an octave energy of size $X^{1/3}/(\log X)^{2A}$, which does
not have a summable dyadic majorant. This calculation rejects that particular
supplier composition, not the cited theorem or the actual energy. A new
signed estimate for the carried moments remains necessary.

The exact unresolved proposition is

$$\boxed{\exists C\ge0\ \forall J\in\mathbb N:\quad
\sum_{j<J}\sum_{B\in\mathscr B_j}
\left[\frac{p_B^2}{\omega_B}
+\frac{(q_B-\nu_Bp_B/\omega_B)^2}{s_B}\right]\le C.} \tag{WP13}$$

A sufficient but stronger quantitative version bounds the complete retained
octave energy by $C_0/(j+1)^{1+\epsilon}$, $\epsilon>0$. Its witness
would give $H_{1/3}(T)\le C_0(1+1/\epsilon)+C_{\rm err}$.
The weaker exact requirement is summability of the nonnegative retained
octave energies, with no prescribed decay rate. Neither is proved here.
No P04 premise, new Mertens exponent, new zero-free region, or RH conclusion
is introduced.

### Implementation and verification scope

`weighted_pickup_projection.py` (artifact:gitblob:664ce64bc169c56ec0775c19a7759b481969466b)
implements the rank-two projection, and a rank-one comparison using
$m_j=2^{\lceil j/4\rceil}$ with error bound
$1/[12(1-2^{-1/6})]<1$. It reuses the unchanged rational interval arithmetic
and Mobius sieve from `one_third_energy.py`. It calculates the original
energy, both projected channels, the residual, and the normal equations
independently. The moment Gram must have strictly separated positive
Schur denominators. No interval is clamped to force an equality or a sign.

`test_weighted_pickup_projection.py` (artifact:gitblob:464b4859bf35f59a883cdec7bfdb0bd4df37c8d9)
contains 29 test methods. Normal and optimized runs passed. They cover
integer and partial horizons, pre-block source carry, touching atoms, actual
Mobius sign changes, bounded test sequences, independent atom moments,
exact rational anchored Green identities, sparse inverse and dual optimizer,
missing-center and missing-anchor controls, and precision-failure rejection.
Finite interval consistency is not an equality proof or an infinite-range
arithmetic witness. The general estimates above have written proofs only.

```sh
python3 -B artifact:gitblob:464b4859bf35f59a883cdec7bfdb0bd4df37c8d9
python3 -O -B artifact:gitblob:464b4859bf35f59a883cdec7bfdb0bd4df37c8d9
python3 -B artifact:gitblob:664ce64bc169c56ec0775c19a7759b481969466b --rank 2 --cutoff 17/2 --cutoff 1024
```

The source-bound receipt (artifact:gitblob:a9c78510d8ab02f136d488e660444a08a2a6cd83)
records the precise source bytes and actual runs. No Lean source, old receipt,
compiler pin, workflow or permission is changed. Pinned Lean replay and
owned-declaration auditing were not run because no Lean/Lake executable is
available here. Full-repository structural checks were not run because only
a source-bound partial snapshot is available. The preceding 34,163 article
bytes are preserved exactly and are not promoted to new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean`](../../../../../GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 31 |
| Theorem/lemma commands | 19 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
