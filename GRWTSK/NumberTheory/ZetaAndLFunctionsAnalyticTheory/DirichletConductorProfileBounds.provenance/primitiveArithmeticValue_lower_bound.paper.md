# Lower bound for the unchanged primitive arithmetic value

Local attribution: grwtsk contributors.

## Exact source identity

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.primitiveArithmeticValue_lower_bound`.
Canonical source: `../DirichletConductorProfileBounds.lean`.
Source candidate revision: `613790e5aa55e2408d6db9fb1befbc0f8ec5fc5d`; Git blob `de5e4060dcc86e920cb0b8da85f544828126c831`; SHA-256 `275c39e404fc2ae0c91a23637b4960bc5ee5968dc03a4b2f0af8073a5c998619`.
Dependency baseline: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: https://github.com/grwtsk/math/issues/1804.

## Mathematical-source correspondence

Source: grwtsk contributors, *RP-OC-07 v1: conductor-uniform bounds and a backward Dirichlet-GRH reduction*, 2026-11-10-v1, section 5, DCU-T4 equation (11) and "Prior-source match".
Exact edition: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md.
Source SHA-256: `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`.
Program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, Edition 1.0, November 10, 2026, section 20.3, by grwtsk contributors; SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
Relation: local consequence for the canonical arithmetic-side definition. It is NOT a formalization of the completed zero-side explicit formula.

## Exact hypotheses and source correspondence

Let q be a natural number with NeZero q, chi the native complex Dirichlet character modulo q, hp:chi.IsPrimitive and hn:chi!=1. Let T be real, f:R->C satisfy native MemLp f 2 volume, and let the original gammaCorrectionDensity(gammaParity chi,f) be integrable on (0,infinity). With E=energy(f), c0=gammaConstant(1,0) and M=primeMass(T), the conclusion is

`(log(q)+c0-M)*E <= primitiveArithmeticValue chi hp hn T f`.

No new arithmetic form is introduced. The exact source value is the existing gammaConstant(q,a)*E plus its original gamma shift integral, minus the original phase-sensitive twistedPrime expression. SourceGammaData's even-conductor identity and odd/even difference of pi show gammaConstant(q,a)>=log(q)+c0 for either parity. The gamma kernel and shifted squared energy are nonnegative on positive shifts; integration is legitimate under the displayed integrability premise. The imported whole-line source-correlation bound gives twistedPrime<=|twistedPrime|<=M*E. Combining these inequalities proves the claim.

## Consumer and unresolved bridges

The immediate consumer is primitiveArithmeticValue_margin_of_threshold. The cofinal-small-conductor theorem in WeilConductorFrontier is the existing backward-chain consumer. The proof reuses original signed character phases, all original von Mangoldt weights, and the literal strict cutoff convention. The scalar inequality for the cutoff value does not need support; support and cutoff-boundary agreement are separately necessary to identify it with the completed arithmetic source for f. The q=1 principal zeta sector is excluded, not treated by deleting its two pole terms.

The note's Fourier/convolution convention differs from the canonical correlation convention. Its section 5 explicitly requires conjugating the correlation when translating; no phase-convention equivalence is supplied by this theorem. The BMOR counting theorem and Dirichlet GRH are not assumptions or conclusions.

## Alternative argument and evidence

A second written route in the note uses the positive digamma difference series and Plancherel. It depends on the same completed-source identity and is not an independently reviewed proof. Lean elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Imported candidates retain their previous evidence status. SOURCE_PROOF_CANDIDATE; novelty UNASSESSED, none asserted. This record does not assert main publication, positivity at every support, or an unconditional GRH result.
