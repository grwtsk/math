# Pickup anchor diffusion: implemented source and remaining branches

Local mathematical attribution: grwtsk contributors.

## Source identity and evidence status

Mathematical source commit: `f1a6c0becb2fdc852a4a8930eb2b9f29aed0370d`. Complete tree:
`d40401863ff70fba2c94f997c80f463e83275481`. Parent:
`91d0cf36ce8e13f0a5285f343b29f0ea4a88aff6`.

Ten additive Lean modules, 2160 lines, 54 definitions and 157 theorem proof
scripts (211 lexical identifiers). No existing mathematical file, root import,
package pin or old receipt was changed. These are SOURCE_PROOF_CANDIDATE,
not an elaborated inventory or kernel acceptance. Compilation, fresh replay
and transitive axiom auditing are NOT_RUN. No arithmetic all-positive-rate
witness, uniform source-mass witness, or unconditional RH is claimed.

The basis is the supplied `diffusion.md` (SHA-256 `0654c0fa0df884f3c1f3f7ff8309d606829925fcf04b0297939f0d317cdb5c42`), anchored in
the supplied `research.md` (SHA-256 `edc511d1687c7f17e63396e491b3a80f16d974d7947dcf7024c18348a83948e8`). This increment performs
formalization of that written derivation, not new literature research.
Pinned GRWTSK and Mathlib declarations were inspected for reuse. No newly
researched paper theorem is imported. Existing literature provenance and its
pending central-ledger cross-reference retain their original scope.

## Constructed arithmetic generator and layers

`RadicalDeletionGenerator.logMass` reuses the existing full radical-logarithm
identity. Its positive weights are log(p)/log(rad(n)), summed over all actual
prime divisors before applying the repeated-prime guard. The operator is

    P f(n) = sum_(p in primeFactors n) weight(n,p)
             * (if p divides n/p then 0 else f(n/p)).

`source_equation` proves mu + P mu = seed, where seed is the independently
defined indicator of 1. Both the n=0 and n=1 conventions are explicit.
`dyadic_nilpotence` proves P^(j+1) f(n)=0 for 1<=n<=2^j, by the exact index
halving under a prime deletion. It does not assert nilpotence on the full
infinite function space. The finite alternating inverse reconstructs mu.

`layer(k,n)` is the indicator of squarefree n with cardFactors(n)=k.
Total factor count is used only on the squarefree stratum, where it counts
distinct factors. The actual operator maps layer k to layer k+1, so
`iterate_seed_eq_layer` and `moebius_eq_alternating_layers` construct the
j+1-coordinate alternating source, with nonsquarefree zero labels retained.

`PickupPrimeFactorLayers` synthesizes these coefficients with the original
causal responses. `source_forcing` proves (I+shift)F=r_1, including the birth
at zero. The layer Gram is an actual compact integral and is only claimed
positive semidefinite while empty/terminal coordinates remain. Its full
quadratic synthesis equals the original pickupEnergy.

`CausalBidiagonalInverse.causalEquiv` constructs the inverse coordinate map.
`PickupPrimeFactorLayers.inverseGram` measures the solved coordinates in the
ACTUAL layer Gram, not the Euclidean dot product. Its (0,0) entry is precisely
the original pickup energy. This entry is not yet asserted to be the inverse
entry of an orthonormal Jacobi matrix. The actual active-Hilbert realization,
source-adjoint construction and cyclic tridiagonalization remain separate.

The forcing energy is proved <=4*T_j. Consequently the explicit hypothesis

    m>0 and forall j,a, m*layerEnergy(j,a)<=layerEnergy(j,forward(a))

implies H(T_j)<=4*T_j/m. The mass condition concerns this actual source
geometry; it is not supplied by a generic positive operator or by identifying
a probability mass with a spectral gap. The original dyadic RH return is
then applied without an independent RH premise.

## Constructed phase observation and unchanged quantitative target

`PickupPhaseTransport` defines q(v)=exp(i*tau*exp(v-T)), its first two
real derivatives, and an explicit boundary primitive. Differentiating that
primitive gives the complete Volterra integrand. The fundamental theorem of
calculus retains the birth derivative, including n=1 and zero-width cells.
It proves the source reconstruction for arbitrary finite positive-index
complex coefficients, not only the Mobius assignment.

The kernel estimate is |V(u,v)|<=4 exp(v-T) for |tau|<=1 and 0<=v<=u<=T.
`VolterraEnergyBound` proves the compact Cauchy--Schwarz estimate and the
energy factor nine; the source-specific module supplies ALL its hypotheses.
Applying the same theorem to the inverse phase gives

    H(T)<=9 Q(T),   Q(T)<=9 H(T).

`PickupPhaseQuadratic` defines Q by the integral of the literal real and
imaginary squared waveforms. Finite phase integration proves the complete
sinc Gram identity, with the radian convention sinc(x)=sin(x)/x and sinc(0)=1.
The diagonal remains the original D; Q=D+Y. Thus

    E(T)<=9Y(T)+16T^2+1/4,
    Y(T)<=9E(T)+16T^2+9/4.

`PickupDiffusionCriterion.phaseCross_subexponential_iff` holds on the SAME
scale set at every positive rate. `phase_bound_iff_dyadicBirthBound` returns
to the unchanged dyadic target. The general covered-scale consumer and the
existing RH/prime-window throughpoint are composed. Q inherits the factor-81
quasi-monotonicity from the native monotone energy, without assuming that Y
or Q is monotone. No growth witness is asserted.

`PickupNormalizedPhaseGram` proves that zero diagonals kill full rows by
Cauchy--Schwarz before normalization. Its constructed finite synthesis equals
9Q, its amplitudes have squared mass 9D<=18T^2, and X<=synthesis-D. This is an
actual normalized quadratic form, not yet an elaborated instance of the
repository's ambient-Hilbert PacketModel.

## Signed arithmetic returns and heat identities

The actual sinc pair weights are nonnegative on the retained active labels.
The full ordered cut identity and the exact difference-of-cuts return are
proved without changing source spins. Prime deletion rewrites the complete
phase cross sum with its original inventory and repeated-prime guard.

The Abel theorem retains its terminal contribution before specialization.
For each ordinary shift prefix, that terminal is proved zero from r_N being
born at log(N), then the existing unsifted-prime+repeated extraction is used.
The outer ordered-pair-to-shift reindexing and the exceptional weighted-mass
bound of the supplied note are not newly proved in these modules.

`FinitePhaseDiffusion` proves the exact coefficient phase group and inverse,
the label diagonal commutator, heat semigroup, diagonal/trace/symmetry
identities, and the entrywise negative double-commutator derivative. It does
not infer positivity preservation or monotonicity of a signed observation
from the derivative identity alone. Scalar Schur square completion, pivot
positivity and elimination are proved separately, with every denominator
and whole-form positivity condition retained.

## Coverage of the supplied diffusion

| Supplied branch | This increment | Remaining written portion |
|---|---|---|
| Birth differential source | Smooth derivatives and exact birth primitive | Distributional delta identity, a.e. Mertens primitive, active-response independence |
| Radical generator | Source equation, positive normalized weights, local nilpotence, inverse and degree layers | None of the finite generator identities left as a premise |
| Layer/source operator | Actual waveform/Gram, exact forcing, coordinate inverse boundary observation | Active-layer Hilbert space, transported adjoint, A=BB*, orthonormal cyclic Jacobi realization |
| Signed mass and Schur | Scalar completion, scalar pivot/elimination, actual layer-mass consumer | Concrete all-scale mass supplier and full operator block application |
| Smooth multipliers | Actual linear-phase causal Volterra identity and two-sided factor nine | General C2 multiplier and nonlinear phase bounds |
| Phase kernels | Actual uniform phase/sinc Gram and normalized packet | General laws, triangular sinc-squared law, Loewner statement and ambient packet instance |
| Heat flow | Finite entrywise semigroup and double-commutator equation | Gaussian-law representation, PSD preservation and quantitative growing-band comparison |
| Endpoint phase propagation | Existing endpoint error transfers to the actual phase target | Phase-specific five-moment quadrature and starting-birth remainder |
| Weighted cuts | Exact source cut and trial-return difference | Phase-MaxCut optimum characterization |
| Abel and radical extraction | Whole-source radical rewrite; per-shift Abel and existing three-channel return | Complete outer reindex, monotone weights, weighted exceptional budget |
| Sinc moments | Not added | Factorial truncation at L=j and separated moment identities |
| Lifting and coverage | Phase group, horizon rescaling, factor-81 quasi-monotonicity, inherited coverage return | General dimension-lift derivative bound and wider-band loss schedules |

A definition without an RH binder is not an unconditional proof of its
all-scale growth estimate. In particular, neither source mass nor positive
Schur pivots imply uniform control without the appropriate scale estimate.
No claim of repository-wide absence of a remaining supplier is made.

## Exact module inventory

| Module | Lines | Definitions | Theorem scripts |
|---|---:|---:|---:|
| `GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse` | 156 | 3 | 14 |
| `GRWTSK.Analysis.IntegralInequalities.VolterraEnergyBound` | 193 | 0 | 3 |
| `GRWTSK.Analysis.OperatorTheory.FinitePhaseDiffusion` | 96 | 3 | 11 |
| `GRWTSK.NumberTheory.Moebius.PickupDiffusionCriterion` | 113 | 1 | 10 |
| `GRWTSK.NumberTheory.Moebius.PickupNormalizedPhaseGram` | 105 | 3 | 6 |
| `GRWTSK.NumberTheory.Moebius.PickupPhaseQuadratic` | 280 | 14 | 21 |
| `GRWTSK.NumberTheory.Moebius.PickupPhaseTransport` | 376 | 11 | 23 |
| `GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers` | 339 | 10 | 26 |
| `GRWTSK.NumberTheory.Moebius.PickupRadicalPhaseReturn` | 174 | 2 | 10 |
| `GRWTSK.NumberTheory.Moebius.RadicalDeletionGenerator` | 328 | 7 | 33 |

All fully qualified names, blob identities, hashes and direct imports are in
`docs/verification/NumberTheory/Moebius/PickupAnchorDiffusion/verification.toml`.
No kernel-verified new bridge is claimed. The old source proofs retain their
original evidence scope; all new uses require final-closure verification.

## Verification boundaries

Local diagnostics run normally and with Python -O produced identical reports:
21,019 exact finite/model/control checks, 101 separately labeled 75-digit
numerical checks, and 31 lexical/inventory checks (21,151 total). The exact
prime-deletion tests use positive normalized rational surrogate weights, not
logarithm evaluations. The numerical portion checks actual logarithmic
weights, Gram expressions and the Volterra identity but is not a rigorous
enclosure. Negative controls reject omitted repeated-prime corrections,
omitted forcing at 1, use of the wrong transpose metric, and erased cut return.

No lean/lake/elan executable was found locally. No compilation, fresh kernel
replay, transitive axiom audit, or remote execution ran. Elaboration/API/tactic
repairs may remain. Required verification must inspect all 211 named source
identifiers AND their full imported/private/generated/opaque logical closure.
The external #check/#print axioms driver is only an inspection aid, not a
substitute for that closure audit. Reject sorryAx, new research axioms,
unauthorized native/unsafe trust, altered sources, skipped imports, changed
quantifiers, erased diagonals/births/signs, or a conditional mass/phase goal
presented as an arithmetic witness.

Operational scripts and execution output remain outside math. The repository
contains only mathematical source and static documentation/verification data.
Git author/committer override is not exposed by the connector; configured
identities are not claimed to have been rewritten. Local source attribution
is exactly grwtsk contributors.
