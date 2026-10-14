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

Human mathematical direction: R.A. Jacob Martone. Written reduction and
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
