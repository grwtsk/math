# Signed pickup energy and open growth bounds

The exact closed Möbius pickup has checked conditional returns to Mathlib's literal `RiemannHypothesis`. P04, its complete signed cross-energy polynomial bound, remains open. A broader sufficient condition now retains a separate bound for every positive exponential rate; that arithmetic condition also remains open. The cited determinant and spectral papers supply representation tools, not either arithmetic bound. This is a reconstruction and application of established mathematics, with local mathematical direction by R.A. Jacob Martone and formalization assistance by OpenAI Codex. No unconditional RH proof or mathematical originality claim is made.

## Exact arithmetic objects

For every real $T\ge0$, use the closed cutoff $N_T=\lfloor e^T\rfloor$, the actual Möbius coefficients, and

$$
M(x)=\sum_{1\le n\le x}\mu(n),\qquad
W(T)=\int_0^T e^{-u/2}M(e^u)\,du.
$$

The finite identity is

$$
W(T)=2\sum_{n=1}^{N_T}\frac{\mu(n)}{\sqrt n}
       -2e^{-T/2}M(e^T).
$$

Both prefixes retain the same closed cutoff. At $u=\log n$, the response

$$
h_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf1_{[\log n,\infty)}(u)
$$

is zero. Touching atoms therefore remain in the inventory without changing the completed pickup.

## Growth rates, convergence boundaries and every real time

The source in [EnergyAbscissa](../../../../../GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean) proves a sufficient condition beyond the polynomial class:

$$
\forall\varepsilon>0\ \exists C_\varepsilon\ge0
\forall T\ge0:\quad \mathcal X(T)\le C_\varepsilon e^{\varepsilon T}.
$$

The constant may depend on the rate, but must bound every time. One rate, finitely many rates, or a constant chosen separately at each time does not satisfy this proposition. Polynomial P04 implies this all-rate condition, with the explicit factorial cost in [PolynomialSubexponential](../../../../../GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean); no converse to polynomial P04 is asserted.

Define the actual pickup convergence boundary by

$$
\alpha_W=\inf\left\{\sigma>0:
  e^{-\sigma u}W(u)^2\in L^1([0,\infty))\right\}.
$$

The initial exponential allowance makes this set nonempty and proves $0\le\alpha_W\le1$. Causal positivity makes actual integrability monotone in damping. Every $\sigma>\alpha_W$ is integrable, and a paid damping floor bounds the integral uniformly at all larger dampings. No value at $\sigma=\alpha_W$, or at damping zero, follows from that statement.

The following equivalences are checked for the literal pickup:

$$
\mathcal X\text{ has an all-rate subexponential upper bound}
\ \Longleftrightarrow
\mathcal E\text{ has one}
\ \Longleftrightarrow
\forall\sigma>0:\ \int_0^\infty e^{-\sigma u}W(u)^2\,du<\infty
\ \Longleftrightarrow\ \alpha_W=0.
$$

Each condition implies RH through the actual signed Laplace transform and its proved reciprocal-zeta identity. None has been proved unconditionally. The integral notation in this equivalence denotes genuine integrability, rather than the default value of a Bochner integral when integrability fails. No converse from RH is formalized.

[IntegerSampleGrowth](../../../../../GRWTSK/NumberTheory/Moebius/IntegerSampleGrowth.lean) proves that polynomial P04 at every natural time is equivalent to all-real P04. It also proves the sampled/all-real equivalence for the all-rate condition. The explicit between-sample estimate is

$$
\mathcal X(T)\le\mathcal X(\lceil T\rceil)+2(1+T)^2,\qquad T\ge0.
$$

This uses monotonicity of energy, not of signed cross-energy. A sampled polynomial witness $(C,r)$ gives the all-real witness $(C2^r+2,\max(r,2))$. A sampled energy exponential bound gains precisely a factor $e^\varepsilon$. Every sample is quantified; finite numerical evidence does not meet these contracts.

[ComparisonEnergy](../../../../../GRWTSK/NumberTheory/Moebius/ComparisonEnergy.lean) permits an independently identified continuous comparison waveform $g$, with its entire signed difference retained:

$$
\mathcal E_W(T)\le2\mathcal E_g(T)+2\mathcal E_{W-g}(T).
$$

An all-rate energy bound for both $g$ and $W-g$ implies the actual pickup budget and RH. The comparison and residual suppliers remain unproved. The determinant reformulation likewise has exactly the same all-rate energy debt.

[ExponentialThreshold](../../../../../GRWTSK/Analysis/LaplaceTransform/ExponentialThreshold.lean) checks a separate generic example $g(u)=e^{u/2}$: its squared energy is integrable at damping two and divergent at damping one. This waveform is not the Möbius pickup. It proves that continuity and initial positive-damping integrability alone cannot justify crossing a convergence boundary.

## Distinct observables and current verification

The pickup-response Gram, original source-vector Gram, signed scalar readout,
and controller storage have distinct definitions. A transfer between them
requires an exact observable adapter with all signs, domains and residuals.
An energy bound alone does not supply the pointwise strict-polarity supplier.

The current subject-path migration changes source identities. Historical
scoped receipts retain their recorded meanings; they are not a complete
acceptance receipt for the relocated library. Full replay of the current
inventory and consumer audits remain pending.

No observable-preserving identification between the Sturmian IDS/tree and the signed Möbius pickup is supplied here. A spectral route to RH must prove an observable-preserving identification and pay the full residual in the comparison-energy interface. Spectrum measure zero, zero Lyapunov exponent on a spectrum, open labelled gaps and a tree boundary do not imply $\alpha_W=0$ for the actual pickup. The original arithmetic supplier and RH remain open.
Human mathematical direction: R.A. Jacob Martone. Research and formalization assistance: OpenAI Codex. Established mathematics, source authors, parameter restrictions, counterexamples, proof status and upstream licenses remain preserved.

The arithmetic route requires an independently proved bound for the actual complete signed pickup or a comparison with a paid complete residual. The horizon-matched recording innovation retains the actual block cancellation; a weaker all-rate estimate may be sufficient. Do not revive the uniform arbitrary-cutoff suppliers without first resolving their written Euler-product obstruction. The original material pickup adapter is paid on the nonnegative half-line, together with its entire signed residual energy; reintroducing its energy budget as a premise does not advance the missing arithmetic estimate. A proposed operator or tree representation still needs an explicit observable identification. The inspected concurrent source-seam and derivative-price claims retain respectively a global C2 obstruction for the normalized source and the complete unsigned integer weight mass; they provide no signed cancellation witness and have no current verification claim here.

`p04_conditional` gives the polynomial conclusion only from an exact readout identity, a uniform readout bound and a uniform error bound with nonnegative coefficients/exponents. The actual Möbius-specific uniform P04 estimate is not supplied here. No RH claim follows.

The following premises remain OPEN: OriginalSupplierEstimate, WholePickupPoly,
CrossPoly/EnergyPoly, pointwise amplitude return, uniform signed arithmetic
lower and upper cancellation budgets, transformed native/prescribed Gram
comparison, both strict polarity sectors on the original window
`[2*log(A), 2*A]` for A>=1, and stronger representative/operator realization.
The existing holomorphy and RH consumers retain their exact growth or analytic
filter premises. No unconditional RH result or converse is established.



## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.

The mathematical residual is an unconditional actual arithmetic supplier: polynomial P04 would suffice, as would the broader every-rate subexponential condition or, equivalently in this formalization, $\alpha_W=0$. All remain open.
