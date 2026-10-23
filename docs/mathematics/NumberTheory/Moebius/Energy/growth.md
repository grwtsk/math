# Signed pickup energy and open growth bounds

The exact closed Möbius pickup has checked conditional returns to Mathlib's literal `RiemannHypothesis`. P04, its complete signed cross-energy polynomial bound, remains open. A broader sufficient condition now retains a separate bound for every positive exponential rate; that arithmetic condition also remains open. The cited determinant and spectral papers supply representation tools, not either arithmetic bound. This is a reconstruction and application of established mathematics, with local mathematical direction by grwtsk contributors and formalization assistance by OpenAI Codex. No unconditional RH proof or mathematical originality claim is made.

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
Human mathematical direction: grwtsk contributors. Research and formalization assistance: OpenAI Codex. Established mathematics, source authors, parameter restrictions, counterexamples, proof status and upstream licenses remain preserved.

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

[Source](../../../../../GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

The mathematical residual is an unconditional actual arithmetic supplier: polynomial P04 would suffice, as would the broader every-rate subexponential condition or, equivalently in this formalization, $\alpha_W=0$. All remain open.

The recorded ExponentialThreshold replay preserves both owned declarations, including the generated simplifier lemma, with byte-identical raw types and proof values. It removes only the redundant direct Ring import; the transitive Mathlib closure stays at 2446 modules. Its frozen 25-source audit checks 278 safe mathematical declarations with standard transitive axioms, alongside the exact 243-record Energy consumer and five fresh intended control failures. The separate phase-scaling control reuses unchanged source-linked evidence. The later PolynomialEnergy changes and arithmetic specialization transfer leave that complete 25-source receipt historical, matching 23 of the newly qualified source inputs; the original evidence is retained. The arithmetic suppliers, full consumer replay and unconditional RH remain open.


[PolynomialEnergy](../../../../../GRWTSK/Analysis/LaplaceTransform/PolynomialEnergy.lean) gives a reusable analysis result. For continuous $f:\mathbb R\to\mathbb R$ and real $C,q$ with $C\ge0$, assume

$$
\forall T\ge0:\quad \int_0^T f(u)^2\,du\le C(1+T)^q.
$$

Then $u\mapsto e^{-\sigma u}f(u)$ is integrable on $(0,\infty)$ for every $\sigma>0$. The proof bounds the norm integral on each unit block by $e^{-\sigma n}(1+C(n+2)^q)$ and proves summability. It covers positive real times explicitly with `Nat.floor`; the removed interval import supplies no theorem or instance to that argument. Specialization to the actual pickup still requires its exact polynomial energy hypothesis.

The earlier focused import replay is historical for its original four-declaration PolynomialEnergy and ten-declaration LaplaceHolomorphy inputs. It removed only the unused `Mathlib.Order.SuccPred.IntervalSucc` import. It preserved all four PolynomialEnergy declarations and all ten declarations in the real [LaplaceHolomorphy consumer](../../../../../GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean), including generated declarations, with exact raw types and proof values. Its complete five-module audit checked 37 safe declarations with standard transitive axioms and no runtime exclusions. That static transitive import graph, including public meta imports, lost one module in each affected owner. This is a dependency reduction, with no measured compilation-speed claim and no full Energy or RH acceptance.

The subject specialization moves the exact 411-byte `pickup_tilt_integrable_of_energy_poly` theorem and its documentation from generic PolynomialEnergy to the existing arithmetic LaplaceHolomorphy module. The statement, hypotheses, proof text, compatibility name, credits and other nonimport source bytes are preserved. PolynomialEnergy retains three generic declarations; LaplaceHolomorphy owns eleven. The generic interval-integral prerequisite becomes the explicit `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` import. The static generic Mathlib closure decreases from 2377 to 2296 modules; the actual combined LaplaceHolomorphy consumer closure stays at 2799. No compilation-speed improvement was measured.

The frozen specialization replay freshly elaborates both affected owners and checks the complete five-module family of 37 safe declarations with standard transitive axioms and no runtime exclusions. All fourteen raw type structures and thirteen unchanged raw proof values match exactly. The moved theorem changes only four compiler-generated lambda binder names associated with its module location, comprising twelve string components; all remaining complete proof structure, constants, instances, variable indices, binder flags and universe levels are exact. A separate qualification accepts only those four exact binder-name paths. The strict raw-value-equality failure is retained; these results do not assert byte equality of all fourteen raw proof values.

The subsequent frozen 25-source audit checks all 278 owned declarations with standard transitive axioms and no runtime exclusions. Its actual Energy consumer reports the same 243 unique declarations, with only the moved theorem's owner field changed; the new native row order is retained. Five intended controls fail freshly for their exact measured reason and source range. The phase-scaling control reuses its qualified unchanged two-source ancestry. Unchanged source exports and pinned imported Mathlib objects are reused, without a Mathlib source-rebuild claim. The arithmetic energy supplier, full project source and consumer acceptance, and unconditional RH remain open.

The reusable cumulative exponential square-energy implication is described separately in [Exponential energy bounds and square integrability](../../../Analysis/LaplaceTransform/exponential-energy.md). It applies to arbitrary continuous functions with a supplied exponential energy bound and a strict gap between that rate and the tilt. Its exact 3357-byte declaration now belongs to Analysis. The separately qualified frozen transfer checks the complete 26-owner family of 278 declarations, the actual 243-declaration Energy consumer, and five freshly measured intended failures, with unchanged phase-scaling evidence reused. All twenty-eight raw types and twenty-seven other complete proof values are exact; the moved proof changes only two measured source-module lambda binder-name fields. Its strict raw-equality failures remain historical, and no equality of all twenty-eight raw values is claimed. The preceding 25-source paragraph records its original frozen generation: after this transfer, 24 of those 25 source hashes remain current. Earlier receipts retain their original inputs. Other project consumers, full replay, the open Möbius pickup growth supplier and unconditional RH are not established by this result.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean`](../../../../../GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 12 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
