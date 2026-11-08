# Full regulated Wilson Hamiltonian evolution and exact OS reconstruction frontier

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Goal, source pin and scope

Construct as much of the FULL Hamiltonian as the genuine grwtsk/math
Wilson gauge source supports, with no finite residue truncation, no
implicit domain extension and no OS/continuum identification by naming.

Source inspection anchored to grwtsk/math/main at commit
d35415eb680c91c2e88f808bff9ab2bd1e4096e8.
Current root environment remains Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612
unless the next publication pin explicitly changes either.

Two inequivalent source routes must remain separated:

1. The actual finite periodic SU(2) Wilson **spatial-slice transfer**
   operator on the COMPLETE closed gauge-invariant real slice Haar
   Hilbert space. This already has a maximal-domain, densely defined,
   self-adjoint, nonnegative normalized logarithm with a source-proved
   unit vacuum and positive finite-regulator excitation coefficient.
   The increment below CONSTRUCTS its global bounded discrete-time
   evolution, vacuum-preserving dynamics, exact all-mode spectral
   action, stationary ground-state measure, and source-specific
   all-time contraction on the ENTIRE vacuum orthogonal complement.

2. The actual reflection-positive full four-dimensional positive-time
   Wilson quotient of its exact radical. This has an algebraic
   positive-definite inner-product quotient, but source
   WilsonRestrictedTranslation.lean defines translation only on the
   range of the TWO-STEP interior observables. Source
   WilsonThreeSliceTranslation.lean proves C=1 on that restricted
   range at T=3 and gives an explicit support-obstruction at T=4
   to extending the same coordinate argument. The T=4 test is NOT
   a counterexample to a form contraction, merely to that particular
   finite-period support-return proof. No GLOBAL contraction,
   normed completed quotient, full OS semigroup, or exact unitary
   identification to the spatial-slice transfer has been source-proved.

The new source therefore does not call route (1) a proof of route (2)
or a fully reconstructed continuum physical Yang--Mills Hamiltonian.

## Exact supplier identities

Read actual sources at the pinned main commit:

- WilsonFullRegulatedHamiltonian.lean,
  blob 43d4ed8e91389220ea69725e4a090fae987b2619.
  The full Hilbert is gaugeInvariantSpace L, H has the maximal
  logarithmicDomain, and the source vacuum Ω is normalized and in
  D(H), with HΩ=0 and a full principal-eigenspace complement gap.
- WilsonSlicePrincipalSimplicity.lean,
  blob 933b2eea2f275e737b852f02b182ef807436e1c2.
  The actual strictly positive principal eigenvector is simple.
- WilsonSliceSpectralApproximation.lean,
  blob 7be083c362df8022ac5e41d498e2d6065f1be205.
  Actual compact symmetric transfer, full eigenspace spectral
  coordinates and normalizedTransfer_coordinate, including all
  multiplicities and zero-coordinate safeguards.
- WilsonSliceInvariantOperatorPositive.lean,
  blob ba9fe1002350ba01190ecc65e4a49c8aa6096006.
  Actual positive Rayleigh form.
- VariationalSpectralBracket.lean,
  blob 6721568ed9805eaa80518aa8196252d47b252482.
  firstValue_eq_norm for symmetric nonnegative bounded T.
- WilsonSliceResidualOperatorNorm.lean,
  blob 520c63a9cc97cf7ab43026e2eba1c9339e2989ca.
  For the actual unit positive principal vector,
  residual R=T-c lambda0^2 |Ω><Ω| has
  ||R||<=lambda0(1-c lambda0),
  with c=exp(-12 beta L^3).
- WilsonSliceNormalizedSeparation.lean,
  blob 2cade4914533598348061cbdbc9945751434fcbb.
  On the whole actual vacuum hyperplane, R x=T x.
- WilsonSliceConstantTrial.lean, previously source-pinned:
  lambda0>=exp(-12 beta L^3).
- WilsonStationaryDensity.lean,
  blob c69be58a6d2bbf8598ed793790f603b1c015be9b.
  Actual squared ground-state representative gives a normalized
  stationary probability measure and the true symmetric detailed
  balance of the Wilson principal transform.
- WilsonReflectionQuotient.lean,
  blob d802e0223bfb7339305d9377e55124fcad09026f.
- WilsonRestrictedTranslation.lean,
  blob 4fa2171a3c310affd1d34547a1d92a5141d20e33.
- WilsonThreeSliceTranslation.lean,
  blob 06c5cc717e416799c264e2d3e1a2b8bc6d7b1200.

The new module:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonFullHamiltonianEvolution.lean.

## Full regulated Hilbert and canonical dynamics

Let L>=1, beta>0. H_L^inv is the WHOLE actual real
gauge-invariant spatial slice L2 Hilbert space, not a finite residue
span, truncated word algebra, or Galerkin compression. Its actual
Wilson compact positive symmetric transfer T is strictly
positive as a quadratic form, with a strictly positive simple
largest eigenvalue lambda0 and unit positive eigenvector Omega.
The maximal-domain Hamiltonian is

  H_L,β,a = -(1/a) log(T/lambda0).

For positive lattice time step a, the exact spectral coordinate
action of one normalized transfer is the spectral exponential
of the source logarithmic Hamiltonian, including all eigenspaces.
Define on ALL of H_L^inv (not on D(H) alone):

  P = T/lambda0,
  U(0) = Id,
  U(n+1) = P ∘ U(n).

This constructs a genuine bounded linear discrete semigroup on the
entire Hilbert space for every finite integer n>=0, with

  U(n+m)=U(n) U(m).

The semigroup property follows by ordinary induction on the number
of actual source-normalized transfer steps.

## Contractivity is proved from actual Wilson source, not assumed

The existing source Rayleigh result proves
  lambda0 = firstValue(T) = ||T||
for the ACTUAL invariant Wilson transfer, using positivity and
symmetry, not a positivity certificate added to a parameter record.

Consequently

  ||P|| = ||T||/lambda0 = 1.

This equality holds because lambda0>0 and Ω is an eigenvector.
In particular, for all x in H_L^inv and all n>=0,

  ||U(n)x|| <= ||x||.                               (I)

The actual eigenvector identity TΩ=lambda0Ω proves

  U(n)Ω=Ω   (ALL n>=0).                             (II)

This identifies genuine full-space time evolution of the source
finite-regulator Hamiltonian, not its action only on finitely many
test classes. The operator H remains unbounded on its maximal
source domain; the evolution P is bounded everywhere.

## Quantitative FULL excitation decay with true Wilson constants

Let
  c = exp(-12 beta L^3),
  alpha = 1-c lambda0.

The inspected source residual operator is not an assumed cross-term
allowance:
  R = T-c lambda0^2 |Ω><Ω|,
  ||R|| <= lambda0 alpha.

On the ENTIRE closed hyperplane
  H_L^exc = {x∈H_L^inv : <Ω,x>=0},
the exact source residual identity says R x=T x. Positivity of
the Wilson kernel and lambda0>0 show 0<=alpha<1. Therefore

  ||P x|| <= alpha ||x||   for EVERY x∈H_L^exc.      (III)

Source symmetry gives <Ω,P x>=<PΩ,x>=<Ω,x>=0.
Thus P preserves the WHOLE excitation hyperplane. Inductively,

  ||U(n)x|| <= alpha^n ||x||  for ALL n and x∈H_L^exc.

This is noncircular finite-regulator dynamical control with its
ACTUAL source-dependent residual coefficient; no finite class
projection or missing cross term enters the proof.

The maintained constant-trial result gives
  lambda0 >= exp(-12 beta L^3),
so alpha<=1-exp(-24 beta L^3). Thus the explicit all-mode bound is

  ||U(n)x||
    <= (1-exp(-24 beta L^3))^n ||x||               (IV)

for all x orthogonal to the real Wilson vacuum, ALL n>=0.
The same coefficient is compatible with the source logarithmic
gap
  gamma_L,beta,a =
    -log(1-exp(-24 beta L^3))/a>0
on the WHOLE maximal-domain orthogonal complement.

For any source eigenvalue μ and all n, the exact spectral
coordinate action is

  (spectralCoordinates (U(n)x))(μ)
    = exp(-n a * [log(lambda0/μ)/a])
      * (spectralCoordinates x)(μ),               (V)

with the convention already established by the actual source
coordinate theorem for empty/zero fibers. The Lean candidate
uses the EXACT source spectral one-step formula and induction;
it does NOT replace the spectrum with a finite list or assume
that every vector lies in D(H).

## An actual stationary Wilson ground-state measure

The source-principal unit vacuum Ω has a continuous positive
representative phi given by the Wilson kernel eigen-equation.
The stationary measure on the real SU(2) slice is

  dπ_L(a)=phi(a)^2 d(sliceHaar_L)(a).

The existing principal-square normalization proves π_L is
a probability, without a free normalization field.
The actual positive row kernel
  p(a,b)=K(a,b) phi(b)/(lambda0 phi(a))
is Markov-normalized and obeys detailed balance:
  phi(a)^2 p(a,b) = phi(b)^2 p(b,a).

The new source fixes f to the ACTUAL vacuum and proves these
statements as applications of maintained WilsonStationaryDensity,
including its nonnegativity/nonzero hypotheses.
This stationary, reversible measure is a different object
from finite-period Wilson Boltzmann μ_(L,beta);
its equality to a limiting ground-state expectation requires a
separate limit/OS identification and cannot be assumed.

## Why the continuum FULL physical Hamiltonian is still an open bridge

The user requested a full Hamiltonian. There is a genuine
full-space REGULATED Hamiltonian and now a globally contractive
full-space discrete transfer evolution. These do not solve
the separate 4D continuum physical reconstruction problem.
For an actual full physical Yang--Mills Hamiltonian, still needed:

1. Complete the true Wilson positive-time reflection quotient
   as a Hilbert space from its ACTUAL positive-definite quotient
   form; prove global positive-time translation on a dense
   form-norm domain, null preservation, contraction and closed
   extension to its completion at appropriate time periods.
2. Prove an exact source-defined identification, with no
   omitted sectors, between that OS physical Hilbert semigroup
   and the constructed full-space slice transfer dynamics.
   A finite-period cyclic partition equality is insufficient
   to infer this unitary/intertwining theorem.
3. Establish a physically normalized continuous-time scaling,
   nontrivial gauge-invariant continuum Hilbert/vacuum,
   operator-domain or closed-form convergence and a
   regulator-uniform positive lower spectrum on the entire
   excitation complement.
4. Where a Kogut--Susskind electric/magnetic Hamiltonian is
   intended instead, construct the SU(2) link Laplacian,
   gauge constraint and self-adjoint sum and prove its
   continuum or transfer-operator equivalence. No source
   equivalence to this different Hamiltonian has been supplied.

Existing finite-regulator bound IV degenerates as L grows at
fixed beta and time spacing. The reflection finite-period
T=3 contraction is restricted; the T=4 support obstruction
for the same geometric identity is NOT a disproof of all
possible global contractions. A nontrivial Hilbert-space
time evolution and a continuum Yang--Mills mass-gap theorem
must remain different claims.

## Independent hostile checks

- Finite classes: H_L^inv is infinite-dimensional for
  suitable L (WilsonSliceTracePowersInfiniteRank).
  An arbitrary residue covariance Gram cannot replace it.
- Unbounded H: Do NOT declare H to be a bounded all-Hilbert
  map. Its maximal spectral domain is part of its type.
  The bounded P and U(n) are globally defined instead.
- Beta=0: strict positive transfer fails in the exact
  rank-one case; beta>0 is required for this construction.
- Principal vector: Haar-centered observations are NOT in
  the Ω-orthogonal excitation complement automatically.
  The latter is defined by the real Wilson principal mode.
- Regulator: alpha<1 for each fixed L but approaches 1 as
  the physical volume is increased at fixed positive beta
  unless new uniform estimates are supplied.
- Complete OS: restricted-class contraction at T=3 does
  not imply global quotient translation at T>=4 or a
  whole-OS Hilbert completion.
- Signed/complex: dynamics here are on the ACTUAL real
  invariant-slice L2. The separate finite positive-time
  complex OS quotient needs its own rigorous completion;
  no real-to-complex physical unitary is assumed.

## Source candidate declarations and evidence

Namespace:
  GRWTSK.Geometry.GaugeTheory.WilsonFullHamiltonianEvolution.

New definitions:
  normalizedTransfer, stationaryVacuumMeasure, evolution,
  excitationFactor.

New theorem targets:
  normalizedTransfer_norm_le_one, normalizedTransfer_vacuum,
  vacuum_positive_ae, vacuum_nonzero,
  stationaryVacuum_probability, stationaryVacuum_detailed_balance,
  evolution_zero, evolution_succ, evolution_add,
  evolution_norm_le, evolution_vacuum, excitationFactor_bounds,
  normalizedTransfer_preserves_vacuum_orthogonal,
  normalizedTransfer_excitation_le,
  evolution_preserves_vacuum_orthogonal,
  evolution_excitation_decay, excitationFactor_le_explicit,
  evolution_excitation_explicit,
  evolution_one_coordinate, evolution_coordinate.

Analytical steps I--V: inspectable arguments above,
reusing actual previously published Wilson source estimates.
Claims of independent novelty against earlier literature,
native numerical evidence or peer review: NONE.
Lean source remains a proof CANDIDATE. Parsing/elaboration,
Lake compilation, fresh kernel replay, expected-types,
and transitive axiom audit remain NOT_RUN for these exact bytes.
No native/remote proof dispatch has occurred; no operational
receipt is manufactured here.

At the exact newly published math commit and manifest:

    git rev-parse HEAD
    git hash-object GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonFullHamiltonianEvolution.lean
    lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonFullHamiltonianEvolution.lean
    lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonFullHamiltonianEvolution

Verify every source-bound expected type, full transitive
axioms and fresh kernel checks; do not infer typechecking
from the mathematical derivation. Reject sorryAx and
unreviewed research assumptions. Keep actual operation
receipts in grwtsk/noeaaeue, not in the math source.

Single next theorem obligation:
  Establish complete, globally contractive time translation
  on the ACTUAL Wilson reflection quotient, together with an
  exact sector-complete isometric intertwiner to the full
  regulated slice transfer semigroup. Then pursue uniform
  cutoff/continuum vacuum-compatible reconstruction.
