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
$\sigma=1/3`, that transfer requires an actual Mertens exponent
$\beta<5/6$. Extending the domain to every positive $\sigma$ still needs an
independent signed arithmetic upper estimate. The tail argument explains the
precise missing limit premise and cannot replace it.

[Finite recording source](../../../../../GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean) · [Completed criterion](../../../../../GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean).

## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean). Status: **written-argument**. [Credit and evidence limits](../../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
