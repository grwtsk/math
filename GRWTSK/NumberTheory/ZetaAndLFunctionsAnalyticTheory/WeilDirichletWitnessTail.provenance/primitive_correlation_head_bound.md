# `primitive_correlation_head_bound`

Source byline: grwtsk contributors. Status: **SOURCE_PROOF_CANDIDATE**.

The declaration [`GRWTSK.NumberTheory.WeilNegativeWitness.primitive_correlation_head_bound`](../WeilDirichletWitnessTail.lean#L28) is a local consequence of the counting and correlation candidates on [math main at `461230660ec980d4be6a0e00927d658d237e6866`](https://github.com/grwtsk/math/tree/461230660ec980d4be6a0e00927d658d237e6866). Research context and coordination are recorded in [math#1801](https://github.com/grwtsk/math/issues/1801). This declaration composes the local suppliers below.

| Pinned source | Declaration or input | Git blob |
| --- | --- | --- |
| [DirichletZeroCounting](../DirichletZeroCounting.lean) | `heightCount_le_source_bound`, `sourceCountConstant` | `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a` |
| [DirichletZeroJensen](../DirichletZeroJensen.lean) | `divisor_poleClearedLFunction_at_zero`, `heightCount_le_jensen` | `50308f5753a55ee6f7229eeb1d1d0674902b6ffb` |
| [DirichletZeroMultiplicity](../DirichletZeroMultiplicity.lean) | `CriticalStripZero`, `zeroMultiplicity`, `heightCount_le_iff` | `ef9d9f861731f11e446dd59bd60c8896b1e5462d` |
| [WeilCorrelationMoment](../WeilCorrelationMoment.lean) | `spectralCoordinate_radius_bounds_of_strip`, `correlation_radial_tail_of_height_count` | `ab532a6b1345b299c67a0eb18ce7b50ff093d402` |
| [WeightedConjugatePairing](../../../FunctionalAnalysis/WeightedConjugatePairing.lean) | `re_neg_of_error_budget` | `727272783e1502265da0cb4281bd5c793a924e69` |

## Argument and consumer

Fix a primitive character `chi` at nonzero level, an admissible compact-smooth test `f` supported in `[-A,A]` with `A >= 0`, a derivative order `k >= 1`, and a dyadic stage `j`. The carrier is the subtype of actual open-critical-strip zeros, indexed once per location and weighted by analytic multiplicity. Write `z = -i(rho - 1/2)`, so `Re z = Im rho` and `|Im z| <= 1/2`. The comparison uses the original complex correlation integral with exponent `+izr`. Its Fourier product is `F(z) conj(F(conj z))`.

The Jensen supplier bounds the strict absolute-height count for every `H >= 2` by `D H (log H + 3)`, with `D = sourceCountConstant chi`. The finite-subset equivalence gives the input required by the existing dyadic correlation bound with strip half-width `1/2`. It yields a summable masked remainder and the norm bound
`derivativeL1Cost f k ^ 2 * tailBudget A (1/2) (2*D*(3+1)) 1 k j`.

A location with `1 + |z| < 2^j` has `|Im rho| <= |z| < 2^j`, so filtering the finite height window by the radial inequality yields the complete radial head. The complementary summand is supported on `2^j <= 1 + |z|`. Adding the two masks pointwise and using summability identifies the full sum minus its finite head with the entire complex remainder. The real part of that remainder is at most its norm. A certified head real part at most `-eta` and a budget strictly below `eta` therefore give a strictly negative real part for the full zero sum.

The boundary check is `j = 0`, for which the head is empty because `1 + |z| >= 1`. A zero with `1 + |z| = 2^j` contributes its entire multiplicity to the remainder. Both signs of the height and central zeros are included. Equality between the budget and the margin would only give a weak inequality.

## Open obligations and evidence

The finite signed head inequality is an input to the sign implication. Constructing tests that achieve this inequality with simultaneous control of their support and derivative cost remains open, including a Gaussian realization and compactification for that route. The exact pole-inclusive arithmetic explicit formula and positivity on the full test domain remain open. The formula must retain conductor, gamma/parity, character and dual-character terms, all prime powers and both applicable zeta pole orientations. The pole-cleared Jensen divisor supplies the count through its multiplicity comparison in the open strip.

Lean elaboration/build, fresh kernel replay, transitive axiom audit, numerical certification and independent analytical review are **NOT_RUN**. The imported candidate statuses are preserved. Novelty is **UNASSESSED**.
