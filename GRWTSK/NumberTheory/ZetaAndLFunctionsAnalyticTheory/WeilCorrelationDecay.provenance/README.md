# Decay returned to the original correlation and signed pairing

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilCorrelationDecay.lean](../WeilCorrelationDecay.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation`.
Initial source base `da00dc90fe356e06c9ac83c6a8e64a77cc951703`; reconciled parent `7f588893034a0aacbc91c7c02bc98406c4ce5a1f` differs only in the unrelated HaradaCharacterSurface.lean repair, which is preserved. Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
New source: 6,133 UTF-8 bytes, 116 lines, three public theorem bodies. SHA-256 `f224aed54f2810ca8c3decc44150e5d71854baa7bb5987bfed913b55463ac618`; Git blob `2f6fad1e0a7011c751ffd2d366cd72c30f636d83`. The enclosing commit binds complete source and individual records.

## Source identity and complete analytic argument

The original correlation remains C_f(r)=integral conj(f(t))*f(t+r) dt. Its transform is the literal plus-sign integral. The existing `fourier_correlation_eq_reflected_product` from WeilCorrelationFourier.lean in the same namespace gives

    integral C_f(r)*exp(I*z*r) dr = F_f(z)*conj(F_f(conj z)).

The derivative proof is in [FourierDerivativeDecay.provenance](../../../MeasureAndIntegration/FourierDerivativeDecay.provenance/README.md). No copied transform, replacement correlation or new arithmetic form is introduced. `WeilNegativeWitness.Admissible` is the corrected compact C-infinity class.
For every such f supported in [-A,A], every k and complex z, apply the new bound at z and conj(z). The weight is the same at both points; norm multiplicativity therefore gives

    norm(transform(C_f)(z)) <= p_k(f)^2*w_(A,k)(z)^2.

For arbitrary indexed complex locations z_i and nonnegative multiplicities m_i, multiply this estimate by m_i. A summable entire moment sum m_i*w(z_i)^2 then implies absolute convergence by comparison. This is conditional on a full summable moment, not a finite-head bound.
For two tests and an index map j with z_(j i)=conj(z_i), the existing signed summand is m_i*F_f(z_i)*conj(F_g(z_(j i))). Since the majorant is reflection invariant, `WeightedConjugatePairing.summable_norm_term` and `norm_pairing_le` apply to the proved envelopes and give

    norm(pairing) <= (sum_i m_i*exp(2*A*abs(Im z_i))/(1+norm(z_i))^(2*k))*p_k(f)*p_k(g).

`decayWeight_sq` proves the exact weight equality. No involution or multiplicity-invariance premise is needed merely for this estimate; such hypotheses remain necessary for later Hermitian/arithmetic-orbit claims. No actual-zero indexing or arithmetic count is supplied. This is a discrete weighted-sum result, not a completed theorem for arbitrary divisor measures or their vague convergence.

## Pinned canonical dependency map

All local inputs below were read at `da00dc90fe356e06c9ac83c6a8e64a77cc951703` and are unchanged by the reconciled parent.

- [WeilCorrelationFourier.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean), blob `8b2afb9be022253be047c4e47cbd42d51134dee1`: `fourier_correlation_eq_reflected_product`, including the original correlation and established integrability inputs.
- [WeilNegativeWitness.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilNegativeWitness.lean), blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`: corrected `Admissible`.
- [WeightedConjugatePairing.lean](https://github.com/grwtsk/math/blob/da00dc90fe356e06c9ac83c6a8e64a77cc951703/GRWTSK/FunctionalAnalysis/WeightedConjugatePairing.lean), blob `727272783e1502265da0cb4281bd5c793a924e69`: signed `term`, `pairing`, `summable_norm_term`, `norm_pairing_le`. Local attribution grwtsk contributors; Mathlib contributions retain upstream bylines and Apache-2.0.
- New FourierDerivativeDecay at the enclosing commit: actual Fourier envelopes, nonnegative derivative costs, positive conjugation-invariant weight and exact moment normalization. Its README maps every primary library dependency and comparison.

Local consequences of the execution mandate RP-OC-01/02, not direct paper formalizations. No novelty claim or new frontier ID. Novelty UNASSESSED. The proof shares premises with the existing comparison and is not independent review.

## Hostile checks and open obligations

At nonreal z the reflected product is not generally a norm square. The exact source identity is preserved before bounding its norm. Infinite weighted mass invalidates the convergence conclusion; finite checks do not replace hM. No locally finite arithmetic divisor, density estimate, uniform-family tail or varying-test interpolation margin is produced.
No character phase, gamma term or pole orientation is removed: the full arithmetic explicit formula remains unresolved. The first outstanding arithmetic premises are weighted moment finiteness for the actual analytically continued zero divisor and the complete pole-inclusive source equality. The zeta/primitive-Dirichlet targets are unchanged.
RP-OC-01/02 receive this partial test-decay and discrete-pairing component; workstreams B/C can consume it but their infinite-tail and joint-cost obligations remain open. Workstream A receives source/provenance, not formal admission. RP-OC-03 through RP-OC-10, D/E/F and all four realization extensions receive no new program result here. No program is complete.

## Evidence and reproduction

Elaboration/build, fresh kernel replay, transitive axiom audit, arithmetic execution, repository-wide checks and independent review NOT_RUN. Source-only scans and hash agreement are distinct and do not promote dependencies. Companion README gives exact unexecuted build commands and the canonical Noe skill blocker. No runner or workflow was dispatched. Coordination: math#1801.
