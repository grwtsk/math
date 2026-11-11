# Counting-to-moment return for the original correlation

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Canonical source: [WeilCorrelationMoment.lean](../WeilCorrelationMoment.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6807318064.
Inspected base `1a73ca294d739654a9ecaa33d2116e78c3beff98`; Lean `leanprover/lean4:v4.34.1`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Source: 129 lines, 6,546 UTF-8 bytes, three public theorem bodies.
Git blob `ab532a6b1345b299c67a0eb18ce7b50ff093d402`;
SHA-256 `e238e5cffaa272b5264f9c5e3d8b416f5d30e6e22b1c6ca6c0c4d68361e839a8`.
Individual declaration records and this source are bound by the enclosing commit.
No existing arithmetic source, RH target, domain, root import, pin or workflow changes.

## Exact source return and primary argument

The existing coordinate is zrho=-I*(rho-1/2), not the projection Im(rho).
For 0<=Re(rho)<=1, direct complex arithmetic gives Re(zrho)=Im(rho) and
Im(zrho)=1/2-Re(rho). The component norm inequality and triangle inequality prove

    abs(Im zrho)<=1/2,
    abs(Im rho)<=norm(zrho)<=abs(Im rho)+1/2.

The first theorem lives in the existing WeilNegativeWitness namespace. It assumes no
zero or RH statement. It explains the exact geometric adapter needed to apply the
following results to an actual critical-strip zero divisor, not a replacement divisor.

The other two theorems use the original SourcePrimeCorrelation.correlation,
C_f(r)=integral conj(f(t))*f(t+r) dt, the corrected WeilNegativeWitness.Admissible
predicate, and topological support inside [-A,A]. The preceding Fourier source gives

    transform(C_f)(z)=F_f(z)*conj(F_f(conj z)),
    norm(transform(C_f)(z)) <= p_k(f)^2*w_(A,k)(z)^2,
    p_k(f)=2^k*(integral norm(f)+integral norm(deriv^[k] f)).

The reflected product is never replaced by a norm square at a nonreal point.
The actual integral well-definedness is supplied by those unchanged dependencies.
For arbitrary complex locations z_i, nonnegative weights m_i, A,D,L>=0, k>=1,
strip bound abs(Im z_i)<=B and the ALL-HEIGHT hypothesis

    for every H>=2 and finite S contained in abs(Re z_i)<H,
    sum_(i in S) m_i <= D*H*(log H+L),

the new [DyadicDecayMoment proof](../../../MeasureAndIntegration/DyadicDecayMoment.provenance/README.md)
derives a genuinely summable complete moment with explicit constants C=2D(L+1),c=1.
`summable_norm_correlation_of_height_count` feeds that theorem into the existing
`summable_norm_correlation_of_moment`: the previous moment premise is now derived,
not merely renamed. The counting premise remains explicit and source-dependent.

For every N, `correlation_radial_tail_of_height_count` first restricts the moment
majorant to the inclusive radial tail 1+norm(z_i)>=2^N. Multiply its summable bound
by the nonnegative p_k(f)^2. The pointwise correlation norm inequality gives absolute
summability of the complex summands and, by the norm-of-tsum comparison,

    norm(sum_(1+norm(z_i)>=2^N) m_i*transform(C_f)(z_i))
      <= p_k(f)^2*tailBudget(A,B,2D(L+1),1,k,N).

Thus the complete signed remainder, not only a finite shell or a real projection,
is bounded. For k=1 and B=1/2, the right side is

    p_1(f)^2 * 4*exp(A)*D*(L+1)*(N+2)*2^(-N).

The core theorem proves budget convergence with fixed constants. No growing-test
seminorm cost, changing support, character-uniform count, or negative margin is
silently absorbed into that limit. The norm bound proves no arithmetic sign.

## Canonical dependency map and prior comparison

Local source attribution is grwtsk contributors; local source is MIT. Pinned Mathlib
primary references, upstream authorship/licenses and the complete shell argument are
in the linked core README. This is classical local analysis, not a new paper theorem.
Novelty UNASSESSED; no frontier claim ID or independent-review assertion.
At the inspected base the unchanged canonical inputs are:

- [WeilCorrelationDecay.lean](https://github.com/grwtsk/math/blob/1a73ca294d739654a9ecaa33d2116e78c3beff98/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationDecay.lean), blob `2f6fad1e0a7011c751ffd2d366cd72c30f636d83`: `norm_fourier_correlation_le_decay`, `summable_norm_correlation_of_moment`.
- [FourierDerivativeDecay.lean](https://github.com/grwtsk/math/blob/1a73ca294d739654a9ecaa33d2116e78c3beff98/GRWTSK/MeasureAndIntegration/FourierDerivativeDecay.lean), blob `1df24b0bdcc1be9ca263a4a5fa16da04a74a9e82`: `derivativeL1Cost`, `decayWeight` and exact squared weight.
- [WeilNegativeWitness.lean](https://github.com/grwtsk/math/blob/1a73ca294d739654a9ecaa33d2116e78c3beff98/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilNegativeWitness.lean), blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`: `spectralCoordinate`, `spectralCoordinate_im`, corrected `Admissible`.
- The exact original-correlation transform identity remains in WeilCorrelationFourier.lean, blob `8b2afb9be022253be047c4e47cbd42d51134dee1`, used transitively through the decay theorem.

No actual character, zero enumeration or multiplicity construction is manufactured by
the generic count theorem. The immediate arithmetic obligation is an all-H>=2 weighted
count for the actual nontrivial zeros of analytically continued zeta and primitive
Dirichlet L-functions, with genuine multiplicity and stated source-dependent constants.
The complete arithmetic explicit formula remains a further obligation: all prime powers,
character phases, conductor, gamma/parity data, dual-character conventions, and both
applicable zeta pole orientations must survive. This module identifies no sum with the
full arithmetic Weil value and proves no RH/GRH or global positivity conclusion.

## Evidence, tests and program scope

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review,
repository-wide checks and arithmetic certification are NOT_RUN. Source-text and
hash checks are distinct and do not promote imported candidates. Targeted unexecuted
build commands and the canonical Noe skill-access blocker are in the core README.
No runner, workflow, scheduler or cross-chat message was dispatched.

RP-OC-01 and B receive conditional all-subset moment/tail control; RP-OC-02 receives
a quantitative original-correlation remainder, not a negative witness. A receives
individual provenance, not formal admission; C has no new constructive interpolation.
RP-OC-03 through RP-OC-10, D/E/F and the four realization extensions are unchanged in
this run. No program is complete. Height/radius boundary comparison, multiplicities,
central points, k>=1 and varying-test cost are explicit hostile-review boundaries.
