# Cofinal positive-damping criterion for the actual Möbius pickup

Owners: #335; #334, route RH-E02; canonical target #15.
Base: `b16c33abddc0a5a81f0e42c4f54f0ff3fba1d539`.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

This is an elementary reformulation of the existing sufficient energy criterion,
not a new arithmetic cancellation estimate or an unconditional RH proof.
It changes no existing source definition, dependency pin or public-root import.

## The same source and convergence set

Reuse `wholePickup`, `pickupEnergy`, `pickupEnergyConvergenceSet`,
`pickupEnergyAbscissa` and `PickupWeightedEnergyAll` from
`GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean`, whose reviewed blob is
`f5ed8915ec03933a15b0b3685294942d4959a24a` at the base above.
With W the actual signed pickup, write

    C_W = {sigma > 0 : exp(-sigma*u) W(u)^2 is integrable on [0,infinity)},
    alpha_W = inf C_W.

The inherited source provides upward closure of C_W, 2 in C_W,
alpha_W=0 iff every positive damping lies in C_W, and the conditional RH
consumer. These inherited analytic proof sources keep their own exact-source
verification obligations; the new module does not freshly audit them.

## A fixed countable schedule

Set d_n=2/(n+1) for every natural n. The new source drafts positivity,
antitonicity and cofinality at zero. Given sigma>0, choose a natural
n>2/sigma. Then d_n<sigma. To start after an arbitrary fixed N, replace n
by max(N,n); antitonicity keeps the requested inequality.

If d_n is in C_W and d_n<=sigma, the existing integrability-monotonicity
lemma pays sigma. Consequently the following are equivalent:

    PickupWeightedEnergyAll;
    every d_n belongs to C_W;
    for any specified N, every d_n with n>=N belongs to C_W;
    alpha_W=0.

The reverse schedule implication simply specializes the all-rate premise.
The all-rate RH implication is reused, not reconstructed or replaced. No
converse from RH to the energy criterion is asserted.

The tail formulation quantifies every sufficiently late stage, not a long
finite list. A general cofinal-schedule theorem is included for other fixed
positive schedules; mere infinitude of rates does not imply cofinality at zero.

## A finite stage has a finite, exact consequence

For a paid stage n let

    I_n = integral_0^infinity exp(-d_n*u) W(u)^2 du.

The existing cumulative estimate yields

    alpha_W <= d_n,
    pickupEnergy(T) <= I_n exp(d_n*T),  T>=0.

I_n is finite because actual integrability is supplied. The totalized value
of an integral without that premise is not a certificate. A bound on I_n
uniform in n is NOT required by the countable criterion. Each rate may have
its own finite constant; none may depend on T in a purported uniform-in-T
energy bound.

## What the next arithmetic step really costs

The exact schedule decrement is

    delta_n = d_n-d_(n+1) = 2/((n+1)(n+2)) > 0.

Pointwise in the same actual source,

    exp(-d_(n+1)*u) W(u)^2
      = exp(delta_n*u) [exp(-d_n*u) W(u)^2].

Thus a successor stage requires a positive exponential moment of the already
tilted energy density. Finite total mass at stage n alone supplies no such
moment. `successor_membership_iff_extra_moment` exposes the exact integrability
obligation rather than naming an unspecified contraction error.

`ReciprocalDescent` names the OPEN source-specific implication

    for every n, d_n in C_W -> d_(n+1) in C_W.

The draft induction consumer starts at the inherited paid value d_0=2.
It returns every stage, and then the existing conditional RH endpoint.
No inhabitant of `ReciprocalDescent` is supplied. Given the paid initial
stage, this global successor obligation has the same logical strength as
membership of the whole schedule: this is an organization of the supplier,
not an independently easier arithmetic hypothesis.

The next mathematical work is a noncircular estimate for these actual
exponential moments, or another source-specific method reaching a cofinal
sequence. The reciprocal schedule need not be mandatory for a future supplier;
the generic cofinal theorem accepts a different declared schedule.

## Hostile controls and verification

A positive floor a>0 prevents a schedule from being cofinal: test sigma=a/2.
For the finite prefix n<=N, d_N is such a positive floor. These are exact
scalar proof drafts; they make no assertion about zero locations.

The existing theorem `GRWTSK.RiemannHypothesis.CCC.exponential_boundary_control`,
imported from `Analysis/LaplaceTransform/ExponentialThreshold.lean`, uses the
synthetic continuous wave f(u)=exp(u/2): squared-energy damping two is
integrable, while damping one is not. The new existential control reuses this
theorem. It shows that even the first schedule step 2 to 1 is not a generic
integrability law. This waveform is not identified with the arithmetic pickup.

The new source contains no `sorry`, additional axiom declaration or native
execution instruction. Text checks are not a transitive axiom audit or Lean
parsing. All 25 authored declarations, any generated declarations, exact
elaborated types, imports, full transitive trust/native dependencies and
source-bound acceptance remain to be checked. Source signatures in the
passive target are not already-extracted elaborated types.

The target is `docs/verification/NumberTheory/Moebius/CofinalEnergyDamping/rh-cofinal-energy-335-v0.1.toml`. Its sole root
is the new subject module, not the public `GRWTSK.lean` root. It is passive
data, not an executable request or an execution receipt. No build, merge,
existing-branch modification or execution-hold release is represented.
