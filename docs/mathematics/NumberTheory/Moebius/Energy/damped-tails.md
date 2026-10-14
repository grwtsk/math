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

[`scripts/one_third_energy.py`](../../../../../scripts/one_third_energy.py)
evaluates (1), (4), the individual logarithmic cells, and the completed tail
square using rational interval arithmetic. Sixth roots are bracketed by
integer sixth-power inequalities, and intermediate rounding is outwards.
A rational cutoff such as `7/2` exercises the actual floor and partial last
cell. All coefficients through that floor are retained. Arbitrary test
coefficients are explicitly distinguished from the exact Mobius sieve.

[`scripts/test_one_third_energy.py`](../../../../../scripts/test_one_third_energy.py)
includes independent trial division for the sieve, exact rational-grid
identities for 363 finite sign assignments, integer and noninteger cutoffs,
the zero horizon, and controls detecting a deleted tail, mixed endpoint,
ordered-pair factor, Mertens cutoff compensation, or Mobius sign.
The 21 test methods passed in normal and optimized Python for the bytes bound
in the [finite diagnostic receipt](../../../../../evidence/number-theory/moebius/one-third-energy-20261014.json).

Reproduce with:

```sh
python3 -B scripts/test_one_third_energy.py
python3 -O -B scripts/test_one_third_energy.py
python3 -B scripts/one_third_energy.py --cutoff 7/2 --cutoff 1024 --bits 64
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

[Source](../../../../../GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean). Status: **written-argument**. [Credit and evidence limits](../../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.

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

[`square_root_pickup.py`](../../../../../scripts/square_root_pickup.py)
implements (SR1) and moving-cutoff finite energies. Its Mobius sieve is called
only through the square-root cutoff. It retains all ordered pairs and neutral
multipliers, uses the existing rational interval arithmetic, and reports
which identities are interval-consistency checks rather than exact symbolic
proofs. The actual prefix recovered from (SR1) is compared with an independent
trial-division Mobius implementation in the tests, not defined by that check.

[`test_square_root_pickup.py`](../../../../../scripts/test_square_root_pickup.py)
checks the strict support gate, every small closed cutoff, all coefficients
through $4096$ from values through $64$, noninteger horizons, square crossings,
independent direct-kernel expansion, missing mixed terms, and the indefinite
kernel control. The 19 test methods passed in both normal and optimized
Python. The tested bytes, finite output and exact scope are bound in the
[new receipt](../../../../../evidence/number-theory/moebius/square-root-pickup-20261014.json).

```sh
python3 -B scripts/test_square_root_pickup.py
python3 -O -B scripts/test_square_root_pickup.py
python3 -B scripts/square_root_pickup.py --cutoff 17/2 --cutoff 1024
```

No Lean source, compiler pin, old receipt, permission, or workflow is changed.
No pinned Lean replay, owned-declaration audit, or full-repository structural
check was available in this execution environment. The earlier article bytes
and their historical receipt remain preserved; the new receipt does not
promote them. The mathematical gain here is an exact short-source reduction
and the unconditional written cost (SR4), not a bound on the remaining
quadratic energy and not an improvement of the zeta zero-free exponent.
