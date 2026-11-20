# Riemann hypothesis and Dirichlet GRH proof blueprint

Local attribution: grwtsk contributors. Source comparison at
`grwtsk/math@ad4d96c6583efef7d2919266179adb232db63650`.
[Coordination and exact-source verification](https://github.com/grwtsk/math/issues/1828).

## Endpoints

The RH endpoint is Mathlib's `_root_.RiemannHypothesis` for `riemannZeta`.
The GRH endpoint is
[`GRWTSK.NumberTheory.Conditional.DirichletGRH`](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConditionalZeroFree.lean),
for every complex Dirichlet character of every positive modulus and all
ordinary L-function zeros in `0 < Re(s) < 1`. The principal primitive case
is modulus one. The primitive-to-imprimitive return uses the exact
change-of-level Euler product, whose added factors are nonzero on
`Re(s)>0`. The left-half reflection uses the inverse primitive character
at `1−s`, including when the original character is non-real. [Primitive
reduction](WeilPrimitiveDirichletReturn.lean) · [Inverse-character
reflection](WeilRightStripWitnessReturn.lean) · [Loeffler and Stoll,
*Formalizing zeta and L-functions in Lean*](https://arxiv.org/abs/2503.00959)

## Proof alternatives

Each row is one sufficient route for its endpoint, with every premise in
that row required together. Different rows for the same endpoint are
alternatives. Some consumers are already expressed as Lean theorems with
the listed premises. Their existence gives a place to plug in the missing
results. The columns give the proof interface and its open supplier.

| Endpoint | Route | Proof interface | Required supplier |
| --- | --- | --- | --- |
| Dirichlet GRH | Direct primitive zeros | `dirichletGRH_of_rh_and_primitive_rightStrip` in [WeilRightStripWitnessReturn](WeilRightStripWitnessReturn.lean) | RH and zero exclusion for every primitive nonprincipal character on `1/2 < Re(s) < 1`. |
| Dirichlet GRH | Shorter right corridor | `dirichletGRH_iff_rh_and_primitive_right_corridor` in [PrimitiveDirichletRightCorridor](PrimitiveDirichletRightCorridor.lean) | RH, the exact ordinary L-function ceiling `Re(s) ≤ σ`, and zero exclusion for every primitive nonprincipal character on `1/2 < Re(s) ≤ σ` inside the open strip. For the staged region proof, supply the finite head, residual heights, and large conductors together. Alternatively, use characterwise cofinal height exclusions. |
| Dirichlet GRH | Primitive Weil stages | `dirichletGRH_of_rh_and_rightStrip_witness` and [cofinal inverse-orbit stages](WeilPrimitiveCofinalInverseOrbitStages.lean) | RH, a negative witness for every actual primitive right-strip zero, and sufficient lower certificates at a cofinal sequence of stages for every inverse orbit. A ceiling can narrow the witness domain through `primitiveRightStripNegativeWitness_of_corridor`. |
| RH | Odd Weil form | `riemannHypothesis_iff_literal_odd_nonneg` in [WeilZetaOddCriterion](WeilZetaOddCriterion.lean), [cofinal packet consumer](WeilCertificateRootReturn.lean) | Nonnegativity for every supported real odd test, or cofinal accepted packets of the literal arithmetic stage form with errors tending to zero. Each packet must cover all relevant tests and every signed term. |
| RH | Xi determinants | `riemannHypothesis_of_strip_limit` in [XiDeterminantStripReturn](XiDeterminantStripReturn.lean) | Holomorphic approximants with real zeros on the strip and local uniform convergence to the actual completed zeta source there. Identification of the limit includes the normalization and multiplicities. |
| RH | Signed Möbius estimates | `rh_of_zeta_zero_free` in [ConditionalZeroFree](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConditionalZeroFree.lean), [cofinal zeta margins](WeilMoebiusCofinalRateReturn.lean), [heat return](MoebiusGaussianHeatStabilityReturn.lean) | For every `ε>0`, a true half-plane nonvanishing margin inside `1/2+ε`, or the documented signed all-scale observation and heat error bounds supplying it. Finite-height contour estimates have a finite scale range. |
| RH | Cryptids and HS-95 | `bounded_gap_window_acceptance_iff_cryptids_RH` and `cryptids_RH_of_bounded_gap_sound_certificates` in [Riemann95StageCertificatesCryptids](Riemann95StageCertificatesCryptids.lean) | Sound certificates for an unbounded schedule with the stated bounded-gap property. The adapter uses the actual machine and argument `95k+j+2`. Finite accepted windows and arbitrary unbounded subsequences need different coverage arguments. |
| RH | Jensen polynomials | Pólya–Jensen criterion for the exact zeta coefficients | Prove full hyperbolicity in the criterion's quantified family and identify its generating function with the centered completed zeta function. Fixed-degree asymptotics at large shift leave the remaining degrees and shifts open. [Griffin, Ono, Rolen and Zagier](https://arxiv.org/abs/1902.07321) |
| RH | de Bruijn–Newman heat | For the classical deformation, `RH ↔ Λ ≤ 0` | Establish the upper bound at time zero for the actual deformation. Rodgers–Tao supplies the complementary lower bound. [Rodgers and Tao, 2020, Theorem 1](https://doi.org/10.1017/fmp.2020.6) |

The branches share source identities, symmetries and arithmetic data. For
example, the prime-power inventory feeds several Weil certificates. Those
consumers do not provide independent proofs of the inventory. The Xi and
Möbius routes need different global estimates, even when the same finite
heat lemma helps bound an approximation.

## The right corridor

Write `Bσ` for an upper bound `Re(s) ≤ σ` on actual primitive
nonprincipal zeros in the open strip. A strict half-plane nonvanishing
theorem above `σ` gives `Bσ` by contraposition, with the principal
pole condition satisfied by nonprincipality. If the corridor contains no
zero, then `Bσ` excludes every right-half zero. A left-half zero would
reflect to a right-half zero for the inverse character, which remains
primitive and nonprincipal. Apply the native primitive and principal
reduction to finish. Conversely, GRH includes modulus one and rules out
a corridor zero directly. In the Weil route, `Bσ` places any putative
right-half zero in the domain of the negative-witness supplier. An
accepted lower stage family makes the same admissible arithmetic test
nonnegative and yields the contradiction.

Partition the corridor at a conductor threshold `Q` and an
absolute-height function `H(q)`. The head is `q≤Q, |Im(s)|≤H(q)`.
The other regions are `q≤Q, |Im(s)|>H(q)` and `q>Q` with every
height. Exactly one applies to any putative zero. Both `Re(s)=σ`
and `|Im(s)|=H(q)` have an owner in the proof. A strict `Re(s)<σ`
hypothesis would leave the first boundary uncovered. The endpoint at
`Re(s)=1/2` already satisfies the conclusion. Alternatively, prove
the corridor exclusion up to a cofinal sequence of strict absolute
heights for each primitive character. An individual zero is covered
by choosing one height above its ordinate. This formulation needs
no uniform height schedule across characters.

The formal head accepts any source with the exact quantifiers. David
Platt's arXiv:1305.3087v1, Theorem 7.1, covers primitive moduli
`q≤400000` to
`H(q)=max(10^8/q, c(q)/q+200)`, where `c(q)=7.5·10^7` for even
`q` and `3.75·10^7` for odd `q`. Its computations over positive
ordinates apply on the other side by character conjugation over the
full character family. A Lean supplier still has to match that
computation to the formal zero object and endpoint convention. For
zeta, Platt–Trudgian gives a separate validated finite-height result.
Both height tails remain open in these interfaces. [Platt, Theorem
7.1](https://arxiv.org/pdf/1305.3087v1) · [Platt and Trudgian,
2021](https://doi.org/10.1112/blms.12460)

## External source comparisons

- **November 20 submitted RH/Dirichlet-GRH argument.** The pinned
  [source and verification project](https://github.com/Deicyde/riemann-hypothesis/tree/a172c464fd4bcfc4f53e394dcba45d742b1409a6)
  exposes the actual Mathlib RH target and universal ordinary Dirichlet
  L-function strip statements. Its full-submission Comparator result is
  still recorded as pending at that revision. The [source walkthrough](SubmittedRiemannHypothesisRoute.md)
  traces the proposed supplier: arithmetic/theta constructions, a one-sided
  bound for an exact weighted character sum on arbitrarily late power
  windows, Landau nonvanishing, and inverse-character/Euler-factor return.
  Fixed exponent losses and families for every sufficiently small positive
  epsilon are essential. No external theorem is admitted as an established
  supplier here, and no existing RH/GRH leaf is closed by this source inspection.
  The new [finite smoothed-Mangoldt transport](../MultiplicativeNumberTheory/SmoothedMangoldt.lean)
  independently proves the integer weighted-sum identity and exact recovery
  of the original `Chebyshev.psi`, with the complete error amplification.
  Its [provenance and verification scope](../MultiplicativeNumberTheory/SmoothedMangoldt.md)
  distinguish this finite arithmetic advance from the missing uniform analytic
  supplier. Accepted external endpoints could supply the existing critical-line
  and equivalent positivity predicates. The new [Schoenfeld band comparison](ChebyshevBandSchoenfeld.lean)
  supplies the exact constants and coverage from the explicit theta estimate
  to the literal `BandBound` predicate; the analytic estimate remains a
  premise. Concrete packet acceptance, kernel source identities, Xi
  constructions and the RH-to-Schoenfeld supplier retain their own obligations.
  The subsequent [wider-window recovery](../MultiplicativeNumberTheory/SmoothedMangoldtWindows.md)
  proves an exact canonical-psi enclosure from upper outer observations
  and a lower central observation, reducing the observation-error cost to
  an explicit `N/h` scale while retaining the width bias. It does not turn
  the submitted one-sided family bound into those scalar observations.
  The [power-exponential budget](../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.md)
  independently reconstructs the exact elementary error-absorption leaf
  used in `vwinAt_of_joint`; `JointWin 401`, `ThmBc 401`, and their arithmetic
  construction remain external verification obligations. The expanded
  walkthrough also explains the positive pole residues and localized
  Laplace moments in the one-sided Landau deduction. A [deeper arithmetic audit](SubmittedRiemannHypothesisArithmeticAudit.md)
  records the actual trace-product, integer-witness and valuation-sum
  construction, with its cohomological and deformation inputs still
  requiring external verification. A subsequent [local arithmetic
  reconstruction](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.md)
  now proves the exact trace separation, full integral Galois-product
  descent, and finite-prime logarithmic budget. It returns one nonzero
  integer equal to the literal trace product, chosen before every finite
  prime set. The next [local valuation assembly](../AlgebraicNumberTheoryGlobalFields/EisensteinTraceValuationWitness.md)
  proves the norm comparison from integral factors and injective class
  readouts, derives selected nonvanishing, and bounds the actual local
  trace-valuation sum by `padicValInt` of that same integer. Its finite
  inequality works at every prime; the larger Frobenius construction
  retains its separate prime restrictions. These 25 additional theorem
  bodies and their exact-target audits passed trust-zero source checks,
  with only the standard three axioms. The trace-family and classifier
  constructions and the actual deformation-to-valuation supplier remain
  open locally. The expanded arithmetic audit traces that supplier to
  concrete lower and upper length comparisons and the graded-algebra
  factor-two argument; their full dependency replay is still unperformed.
  The [graded quotient sequence](../../CommutativeAlgebra/GradedQuotientExact.md),
  [localized length inequality](../../CommutativeAlgebra/LocalizedGradedLength.md),
  and [finite squaring return](../../CommutativeAlgebra/GradedSquareFamilyLength.md)
  now have original local proofs. They construct the actual maps and
  homogeneous kernel preimages, retain extended-natural lengths, and
  prove the variable-degree `2^n c` bound from an all-weight premise.
  The literal five-family specialization squares `F,E`, retains
  `G,E′,Z`, and gives `2^(r+1+r′)` from the original all-weight bound
  at most one. All three maintained modules passed trust-zero source
  checks at the root pins. Their 21 public theorems and two private
  containment helpers supply this finite step; the geometric length-one
  supplier and full Rees/Herbrand and lower comparisons remain open
  locally. The next bounded target is the homogeneous dehomogenization
  consequence recorded in the arithmetic audit. The external
  [verification notes at the latest inspected revision](https://github.com/Deicyde/riemann-hypothesis/blob/bdb1810a06c78f246da285c9bcbe7db2cd992888/verification/NOTES.md#results)
  still report the full submission build in progress.
  The concurrent
  [conductor-three integrated-kernel return](WeilConductorThreeKernelReturn.md)
  has its own established source identity and retains its sign-certificate
  and zero-side obligations; its progress is preserved separately.
- **OpenAI, 7/8.** The September 30, 2026 preprint, Theorem 1.1, and
  the pinned Lean declaration
  `OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re`
  use the actual ordinary `DirichletCharacter.LFunction` with the
  principal pole excluded. They supply the half-plane premise to
  `primitiveStripZeroUpperBound_of_halfPlane` by taking `σ=7/8`.
  The repository already has an isolated [direct-import
  adapter](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsZeroFreeGap.lean),
  which takes the contrapositive. The residual corridor retains its right
  edge. The October 5 alternate proof at `11/12` is a wider fallback,
  and the October 1 real-zero gap treats a different quantity.
  The declaration and its delegation were inspected at
  `7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a`. The isolated upstream
  package and independent closure were **NOT_RUN** in this pass.
  [Paper and theorem](https://github.com/openai/math/tree/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026) ·
  [Lean declaration](https://github.com/openai/math/blob/7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a/lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean#L19-L31) ·
  [Alternate 11/12](https://github.com/openai/math/tree/main/preprints/The-Quasi-Riemann-Hypothesis-October-5-2026) ·
  [Real-zero gap](https://github.com/openai/math/tree/main/preprints/Uniform-exclusion-of-Landau-Siegel-zeros-October-1-2026)
- **Anthropic, Zeta23.** Alpöge–Furman v2, §1 and Theorems A–B,
  and the pinned Lean `montgomery_taylor_simple_on_critical_line_mult`
  supply asymptotic lower bounds, with the optimized constant about
  `0.67250`. The Lean Dirichlet counterpart
  `dirichlet_montgomery_taylor_simple_on_critical_line_mult`
  fixes a primitive character at `q>1` before choosing `T₀`. The
  source counts with multiplicity and pays for multiple and off-line
  spectral blocks via the rank and trace argument. It constrains the
  size of a residual set without locating or excluding individual
  zeros. [Local numerical gate](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnthropicMontgomeryTaylorNumericalGate.lean)
  and [multiplicity bridge](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TwoThirdsCanonicalMultiplicityBridge.lean)
  are the relevant consumers once the cutoff and count representations
  agree. [Exact rational thresholds](MontgomeryTaylorWindowThresholds.lean)
  prove the strict numerical margin for both gate thresholds and
  transfer the eventual inequalities using that margin, without
  treating a rounded decimal as exact. The upstream repository also treats `ξ′`, a different zero
  multiset. Its source audit is upstream evidence. Local independent
  replay of that package is **NOT_RUN**. [Paper, v2](https://arxiv.org/abs/2608.13637v2) ·
  [Lean, exact pin](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Solution.lean#L82-L138) ·
  [Upstream audit](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/AUDIT.md)
- **Anthropic, local zero counts.** The separate
  `Zeta23.ThmE.localCountChi_uniform_proof` places its constant before
  the modulus, primitive character and signed ordinate. Its count
  covers `(t,t+1]` with multiplicity. Thus a weight bounded by
  `C/(1+|Im(ρ)−U|)^2` yields an absolute tail bound beyond an integer
  distance `R≥1`. Partition at `U±j` and sum the two unit bins
  for each `j≥R` to obtain an upper bound
  `2AC ∑_{j≥R} log(q(|U|+j+4))/(1+j)^2`. The convergent series
  tends to zero for fixed `q,U`. This is a route to controlling
  the unwanted zeros in a candidate primitive witness. It still
  requires the Fourier bound for the actual test and a strict
  negative margin after all other parts of the explicit formula.
  [Exact upstream declaration](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/ThmE/LocalCountChi.lean) ·
  [Isolated count readout](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimitiveCharacterZeroCountReadouts.lean)
- **Lamzouri, alternate argument.** Theorem 1.1 and Proposition 2.1
  replace the finite matrix rank/trace framework by a Hilbert-space
  inequality. The argument still uses unconditional pair-correlation
  input and has the same distinction between a lower-density bound
  and individual zero exclusion. Compare it to the local prismatic
  program at the point where a norm inequality would require an exact
  source and control of every remaining direction. [Lamzouri, v1](https://arxiv.org/html/2609.02882v1)
- **Google DeepMind, Cryptids.** At
  `3647718b5df22e1a61462dec0376bd204526285a`,
  `halts_candidate_iff_not_riemannHypothesis` concerns the exact
  blank-initialized 95-state machine. The local isolated adapter
  connects sound, bounded-gap acceptance to that semantics. Finite
  prime labels and natural-number arguments are separate domains. The
  prime transfer is a theorem about the fixed source predicate, and
  does not imply coverage for an arbitrary checker. [Pinned Lean
  semantics](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean) ·
  [Exact source issues](https://github.com/grwtsk/math/issues/1820) ·
  [Full operator question](https://github.com/grwtsk/math/issues/1825)
- **DeepMind and Google Cloud, LEAP.** Kung et al., arXiv:2606.03303v3,
  §§2.2–2.5, use an OR node for a goal and an AND node for each proof
  alternative's simultaneous dependencies. This blueprint takes
  that decomposition and verifies acyclicity. The shipped Lean
  results show how to split a complex task into checkable statements.
  They provide no analytic supplier for these RH and GRH endpoints.
  [LEAP v3](https://arxiv.org/html/2606.03303v3) ·
  [Pinned examples](https://github.com/google-deepmind/superhuman/tree/9b620a92886b3a7655b30ddcfe36e725e9596509/leap)
- **Ono, Jensen polynomials for Dedekind zeta.** In arXiv:2610.38870v1,
  the count of distinct negative real roots is at least
  `d−C_K√(d log d)` for large `d` at fixed `K`. Its limiting
  proportion constraint still allows exceptional roots. The specific
  Dirichlet character source would additionally need a valid comparison
  to the Dedekind factorization. [Ono, v1](https://arxiv.org/abs/2610.38870v1)
- **Finite-field Weil.** The [GRWTSK source map](../ArithmeticAlgebraicGeometryDiophantineGeometry/FiniteFieldWeilConjectures.md)
  illustrates exact trace identification across all extension degrees,
  pure eigenvalues, and reciprocity. For the global Xi route the
  comparable obligation is the actual locally uniform limit, including
  poles, normalizations and multiplicity. A finite-field trace identity
  supplies none of those global analytic identities.

## Source audit of the open obligations

The source locators below refer to the inspection at
`ec2d3730f4dd9e136f3b911f55b2d6040e7bfb4d`, supplemented by
the compact spectral construction linked here and the normalized midpoint
consumer at `7385200a0149a2deb4713df5d2a5a5e283a2f634`. The two negative-witness
obligations share a proof: an arithmetic witness on the full primitive sector
also supplies one on any shorter right corridor.

| Obligation | Available supplier and exact remaining condition |
| --- | --- |
| Primitive right-strip exclusion | The ordinary L-function and inverse reflection are fixed by [the existing return](WeilRightStripWitnessReturn.lean). Supply right-strip exclusion for every primitive nonprincipal character, or combine an upper bound with exclusion of the closed-right-edge corridor. The published ceiling refinements below shorten its width. |
| Primitive negative witness | Supplied by `primitiveNegativeWitness` in the [canonical witness module](WeilPrimitiveCompactOddCanonicalWitness.lean). [Compact odd spectral isolation](../../FunctionsOfAComplexVariable/CompactOddSpectralIsolation.lean) gives negative real part on the [original zero divisor](WeilPrimitiveCompactOddSpectralReturn.lean). The [arithmetic return](WeilPrimitiveCompactOddArithmeticReturn.lean) uses the exact formula and the real-test inverse-character identity to transfer that sign. |
| Corridor negative witness | Supplied for each real ceiling by `primitiveRightCorridorNegativeWitness` in the [canonical witness module](WeilPrimitiveCompactOddCanonicalWitness.lean). The [corridor consumer](PrimitiveDirichletRightCorridor.lean) still needs exclusion or positivity on its residual domain. |
| Character-local stages | The [cofinal-stage criterion](WeilPrimitiveCofinalStageCriterion.lean) proves that scheduling either member is equivalent to the critical-line assertion for the original character. It gives a pointwise finite-height supplier with the complete derivative-dependent tail charged. [Countable density](WeilPrimitiveStageCountableDensity.lean) and the [filtered window return](WeilPrimitiveFilteredWindowReturn.lean) remain arithmetic routes. Either route needs bounds through every inverse orbit. |
| Characterwise cofinal height exclusion | The cofinal-height consumer only requires a schedule for each individual character. It needs exclusions on every whole selected height window, with heights unbounded. Counting zeros in those windows is a different estimate. [Cofinal corridor consumer](PrimitiveDirichletRightCorridor.lean). |
| Finite conductor and height head | Platt's Theorem 7.1 gives signed-height family coverage after conjugating the character. A formal supplier must identify the exact computed zeros, validated range, simplicity/count semantics where used, and ordinary L-function zero predicate. [Platt, v1](https://arxiv.org/pdf/1305.3087v1). |
| Residual heights | For bounded conductors above their assigned cutoffs, supply zero exclusion throughout the corridor at arbitrarily large heights. An absolute weighted zero-sum tail, or an asymptotic positive fraction of zeros on the line, can allow an off-line zero. [Native height-tail candidate](WeilSourceHeightTail.lean) · [Anthropic source](https://arxiv.org/abs/2608.13637v2). |
| Large conductors | The corridor branch needs actual zero exclusion for every larger conductor at every height. The [conductor-frontier theorem](WeilConductorFrontier.lean) gives a different supplier, a lower bound for tests at each fixed support radius, in the Weil stages branch. |
| Literal zeta stages | Supply lower bounds on a cofinal family of full-domain zeta packets with vanishing errors. [Rational weight midpoints](WeilSignedPrimeWeightMidpoint.lean) account for signed coefficient errors, and [shifted support overlaps](WeilLaterPrimeHalfEnergy.lean) reduce the cost of omitted powers. The zeta pole, gamma term and complete test coverage must reach the same [packet consumer](WeilCertificateRootReturn.lean). |
| Xi real zeros | Prove the real-zero property on the strip for the same holomorphic family used in the limit. [Odd chiral obstruction](XiOddChiralObstruction.lean) forces a compensating asymptotically odd normalization where the even source is nonzero. Its zero at the center also requires separate treatment if a normalizer is singular there. |
| Xi exact source limit | Establish locally uniform convergence to the completed zeta source, including removal of any central singularity and the exact normalization. The [strip-limit consumer](XiDeterminantStripReturn.lean) requires this convergence, and the determinant comparison uses the same approximants. [Connes–Consani–Moscovici](https://arxiv.org/abs/2511.22755) · [Suzuki, v3](https://arxiv.org/abs/2606.09096v3). |
| Signed Möbius estimates at all scales | [Pole-floor equivalence](MoebiusSoficPickupPoleCeiling.lean) identifies signed-mask saturation with residual energy reaching the pole floor under the stated hypotheses. The [weighted velocity return](MoebiusPickupVelocityLaplaceBound.lean) transfers a supplied weak Mertens bound to positive Laplace lines. The [adaptive finite-scale return](MoebiusAdaptiveFiniteScaleRHReturn.lean) still needs an all-scale signed estimate and margins for every `ε>0` as required by the RH consumer. |
| Cryptids checker coverage | Supply sound accepted windows covering the actual blank-initialized RH machine's natural arguments through its bounded-gap interface. The [twelfth-to-sixth checker subtotal](WeilOddSineCheckerTwelfthRunSixthCross.lean) belongs to the finite conductor-three Weil computation and supplies no natural-argument coverage of this machine. [Machine adapter](Riemann95StageCertificatesCryptids.lean). |
| Jensen hyperbolicity | The fixed-degree large-shift asymptotic leaves the exceptional shifts and unbounded degree to cover for the exact centered xi coefficients. The [Dedekind root-density result](https://arxiv.org/abs/2610.38870v1) also leaves exceptional roots. [Griffin–Ono–Rolen–Zagier](https://arxiv.org/abs/1902.07321). |
| Newman deformation at zero | Supply real zeros at time zero for the original deformation, equivalently `Λ ≤ 0`. A lower bound on `Λ` or real-rootedness strictly above a positive cutoff leaves this condition open. [Rodgers–Tao, Theorem 1](https://doi.org/10.1017/fmp.2020.6). |

### Compact spectral comparison

Let `F(z)=∫ f(t) exp(i z t) dt` with `f` real and odd. Then
`conj(F(conj z))=F(-z)=-F(z)`, so the reflected correlation product is
`-F(z)^2`, not the negative absolute square. Choose an even bump with
transform 1 at the nonreal ordinate `a`. Fix a finite window past which
the bump transform has norm at most 1/2. Interpolate odd data on the
distinct coordinates inside this window, making the transform 1 at `a`
and 0 off its sign-conjugation orbit. Each actual orbit point has square
1 and each actual multiplicity appears once, including in a collapsed
two-point orbit. Convolution with positive powers of the even bump
preserves those values. The inverse-square strip envelope and summability
bound the entire complementary sum by a quantity tending to zero as the
power increases. The chosen point contributes at most −1, and an outer
norm below 1/2 gives strict negative real part.

[The native spectral theorem](../../FunctionsOfAComplexVariable/CompactOddSpectralIsolation.lean)
records these hypotheses independently of the arithmetic formula. The
local zeta proof uses the same construction, so the two Lean scripts
share an analytic argument. Count upper bounds of the form
`D H(log H+L)` give the moment by dyadic summation; the
`n`-th shell contributes `O((n+1)2^{-n})`. Bennett–Martin–O'Bryant–
Rechnitzer, Theorem 1.1, is a distinct counting supplier once its zero
multiset and endpoint convention are compared with the actual carrier.
Fiorilli–Miller's equation (2.2) gives a paper comparison for the conductor,
gamma and character phases. The native formula uses positive angular
frequency and evaluates the arithmetic term at `χ⁻¹`. For real inputs,
[the inverse-χ arithmetic comparison](WeilPrimitiveInverseOrbitStages.lean)
returns to the same original primitive value. Analytic novelty and
independent review of the construction are unassessed.
[Counting theorem](https://arxiv.org/abs/2005.02989v1) ·
[Fiorilli–Miller, equation (2.2)](https://web.williams.edu/Mathematics/sjmiller/public_html/math/papers/DirichletZeros_DFandSJM_90.pdf) ·
[Suzuki, discussion of Yoshida's odd zeta criterion](https://arxiv.org/abs/2606.09096v3).

The [HS-95 character carrier](HS95PrimitiveCharacterSeparation.lean)
separates distinct inverse characters using the full complex first prime
window at positive levels at most 503, including after common finite-time
heat. Their real projections coincide. The equality of the original
arithmetic values for real tests is therefore compatible with genuine
phase distinctions between the two source characters. The inverse
character in the formula still matters when matching the zero divisor
to the arithmetic form.

The [exact formula](WeilGammaPhysicalReturn.lean) gives
`primitive_hasSum_canonical_arithmetic` on the original primitive
nonprincipal character's zero divisor with its arithmetic value at the
inverse character. The contour proof adds finite residues on bounded
rectangles, passes to the absolutely convergent height limit and evaluates
the right line into conductor, gamma and prime terms. The compensated
gamma integral uses a joint integrable majorant before Fubini. The
[arithmetic return](WeilPrimitiveCompactOddArithmeticReturn.lean) then
transports the negative real value back to the original character on a
real test. The right-corridor contract restricts the domain of the full
witness. Both use the same formula and spectral construction.

The standalone build elaborated all 98 GRWTSK modules in this import
closure using Lean 4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Targeted kernel replay
checked the physical-return and canonical-witness modules. The formula
and both witnesses depend on `propext`, `Classical.choice` and
`Quot.sound`. At `4370f3f39d610fe6078b5b16f5a58e1e43df5bea`,
fresh kernel replay of the three declarations checked all 64,630
declarations reached by their types and proofs. Independent analytic
review is **NOT_RUN**.

### Finite-height certificates for primitive stages

For a zero on the critical line, the reflected Fourier product in the
explicit formula reduces to a norm square. Summing the actual analytic
multiplicities gives nonnegativity for compact smooth real odd tests.
The real-test inverse-character identity preserves the arithmetic value.
A negative value on a stage's C² test would persist after smooth odd
approximation in a support collar, so the conclusion covers the original
stage domain. In the other direction, cofinal stage bounds make every
fixed test nonnegative and the compact odd witness excludes an off-line
zero. Hence one cofinal schedule per inverse orbit is equivalent to the
primitive nonprincipal critical-line condition.

A finite head can be a set of actual distinct zeros of the original
character strictly below the chosen absolute height. If its analytic
multiplicities reach a certified upper bound for the native count, it
exhausts that head. To apply the bounds below, one may use a signed sum
over the head or certify that each zero in it is on the critical line.
Nonnegative-height coverage for both inverse members supplies
signed-height coverage by functional equation reflection. This is the
finite scope of Platt's Theorem 7.1. The Lean statements take the
source-matched certificates as hypotheses.
[Platt, arXiv:1305.3087v1, Theorem 7.1](https://arxiv.org/pdf/1305.3087v1).

Given a native count bound `Nχ(U) ≤ D U (log U + L)` for `U ≥ 2`, the
first-order tail error for `2^J ≤ 1 + H` is bounded by
`4 exp(T) D (L+1) derivativeL1Cost(f,1)^2 (J+2) 2^(-J)`. The upper
side of Bennett–Martin–O'Bryant–Rechnitzer's Corollary 1.2 gives the
coarser envelope `D = 1` and `L = log(q) + 4` when the paper's
closed-height count is matched to the same zeros and multiplicities. The strict-height native count is then bounded
above by that closed-height count.
The native all-height count remains available in Lean. For each smooth
test and each tolerance, a signed head minus its tail budget above the
negative tolerance suffices. Any fixed tail budget with positive count
coefficient can exceed any prescribed multiple of the test energy,
by compressing a smooth odd bump at a fixed radius. Thus bounds for
finitely many test vectors or one verified height leave cofinal
coverage open. [Bennett et al., arXiv:2005.02989v1, Corollary 1.2](https://arxiv.org/pdf/2005.02989v1) ·
[Exact tail and head completeness](WeilSourceHeightTail.lean) ·
[Cofinal-stage criterion](WeilPrimitiveCofinalStageCriterion.lean).

All 243 GRWTSK modules in the criterion's import closure elaborated at
the pinned Lean and Mathlib versions above. Targeted kernel replay
passed for the cofinal-stage and height-tail modules. The transitive
axiom audit of their main declarations found only `propext`,
`Classical.choice` and `Quot.sound`. Independent analytic review is
**NOT_RUN**.

### Narrower external zero-free ceilings

The [pinned OpenAI adapter](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsZeroFreeGap.lean)
gives the exact formal interface for `σ=7/8`. Baiying Liu's arXiv:2610.12234v2,
Theorem 27.1 and Corollary 33.2, give a smaller ceiling
`σ=34998281/40000000` by iterating the source moment comparison and taking
the limiting bound. The accompanying Lean source at
`46d612c2b63a163665ef560afca1965f7c8f434b` has
`CombineV22.dirichlet_nonzero` for the algebraic limiting boundary,
with the actual `χ.LFunction` and exactly the principal-pole exclusion.
[Upstream declaration](https://github.com/liubaiying101/Improved-zero-free-half-planes-for-the-quasi-Riemann-hypothesis/blob/46d612c2b63a163665ef560afca1965f7c8f434b/PartIV.lean#L44004-L44008). Hejian Sang's arXiv:2610.15291v2, Theorem 1.1, instead adds
an averaged numerator estimate to the imported OpenAI inputs to obtain
`σ=8748867/10000000`. The two proofs share those source inputs.
Liu's arXiv:2610.26835v2, Theorem 17.1, gives the claimed algebraic bound
`B_flat ≈ 0.874886647039964` over arbitrary number fields, using
averaged numerator control and descent. Its paper describes formalization
as in progress. Over `ℚ`, compare ordinary Dirichlet L-functions by the
Hecke correspondence and nonvanishing of extra Euler factors. Local
formal integration and replay of these narrower sources are **NOT_RUN**.
For any of these ceilings the remaining corridor contains the edge
`Re(s)=σ`. A fixed `σ>1/2` leaves that corridor open.
[Liu, parameter iteration](https://arxiv.org/html/2610.12234v2) ·
[Sang, amplified moments](https://arxiv.org/html/2610.15291v2) ·
[Liu, number-field extension](https://arxiv.org/html/2610.26835v2).

## Remaining source interfaces and failure tests

- **Cofinal lower bounds.** Prove the signed inequalities for the
  literal zeta stages or for each primitive inverse orbit. The
  [inventory enclosure](WeilPrimeWeightInventoryEnclosure.lean)
  pays for rational prime-power weights. The [window enclosure](WeilPrimitiveWindowPrimeEnclosure.lean)
  transfers signed log-shift errors on the same normalized correlations.
  Gamma, conductor and pole corrections, support extension, and the
  vanishing error budget remain part of the total. The sharp signed
  sensor-box bounds in [WeilWindowFilterLedger](WeilWindowFilterLedger.lean)
  preserve each coefficient's sign. The [later-prime half-energy
  bound](WeilLaterPrimeHalfEnergy.lean) uses compact support to reduce
  the active shift inventory. A finite positive
  prefix can coexist with a negative tail. [Dense certificate
  program](https://github.com/grwtsk/math/issues/1807) ·
  [Conductor three](https://github.com/grwtsk/math/issues/1814)
- **Global source return.** A finite determinant, reciprocal pairing
  or nonnegative compression can miss a zero. Xi needs the locally
  uniform strip limit of actual approximants and their real-zero
  condition. The normalized log derivative requires an anchor and
  the exact derivative identity over the stated nonvanishing domain.
  The Möbius branch needs an all-scale signed bound and a rate
  arbitrarily close to the critical line. A source bound controlled up
  to an adaptive finite observation end never asserts arbitrarily late
  control. [Source identification](../../FunctionsOfAComplexVariable/NormalizedLogDerivativeRigidity.lean)
  · [Connes–Consani–Moscovici determinant program](https://arxiv.org/abs/2511.22755)
  · [Suzuki's comparison with the Weil form](https://arxiv.org/abs/2606.09096v3)
  · [Finite-scale return](MoebiusAdaptiveFiniteScaleRHReturn.lean) ·
  [Pole-cost accounting](MoebiusSoficPickupPoleCeiling.lean)
- **Sparse exceptions survive asymptotics.** Add one symmetric off-line
  orbit to a sequence with total count tending to infinity. A limiting
  critical-line density of one is compatible with that orbit. For
  polynomial approximants, take
  `(1+z²)∏_{j=1}^n (1+z/(n+j/n))`. The product converges locally
  uniformly to `exp(z)`, since the sum of the reciprocal denominators
  tends to one and their squared reciprocal sum tends to zero. The
  approximants have `n` distinct negative real roots and two fixed
  nonreal roots, which survive in the limit. This tests the proposed
  transfer from near-total real-root counts to the Xi limit.
- **Closure and audit.** Track theorem statement equivalence, the exact
  proof body and dependency identities, elaboration, fresh kernel
  checking, axioms and analytic review independently. The upper bound,
  stage suppliers and missing source identities are premises rather
  than new axioms. A proved conditional consumer does not close its
  premises. Any candidate module and supporting lemma can be checked
  before the outer endpoint becomes attainable.

## Investigation graph

The proof edges point from a goal to an alternative and from an
alternative to each required premise. Related estimates and analogies
are recorded as comparison links. They are outside proof reachability.
For a selected research goal, diffuse attention down the proof edges
with a restart distribution, keeping mass at a leaf until restart.
Compare the ranking under changes to the restart probability and the
chosen route. This is a workload heuristic and has no role in closing
a Lean proposition.

The visualization uses attraction points on depth bands. Each point
within the influence radius selects the nearest growth point. An active growth point
advances along the normalized sum of its attraction directions, and
points within the kill radius retire. If the averaged direction fails to
move toward any assigned point, use an individual direction. This adapts Runions, Lane and
Prusinkiewicz, §2, to the blueprint. The branches organize the display
and never serve as proof edges. [Space colonization, 2007](https://diglib.eg.org/items/b5d756ee-0ab3-436e-a5cb-617d50df78fb) ·
[Restart diffusion](https://arxiv.org/abs/1408.0719)

| Node | Kind | Statement or alternative | Dependencies |
| --- | --- | --- | --- |
| grh | goal | Dirichlet GRH | g-direct, g-corridor, g-weil, g-weil-corridor |
| rh | goal | Riemann hypothesis | r-weil, r-xi, r-mobius, r-cryptids, r-jensen, r-newman |
| g-direct | and | Direct primitive zeros | rh, primitive-right |
| g-corridor | and | Residual right corridor | rh, upper-bound, corridor |
| g-weil | and | Primitive Weil stages | rh, primitive-explicit-formula, character-stages |
| g-weil-corridor | and | Corridor Weil witnesses | rh, upper-bound, primitive-explicit-formula, character-stages |
| corridor | goal | Residual corridor exclusion | c-partition, c-cofinal |
| c-partition | and | Conductor and height partition | finite-head, height-tail, conductor-tail |
| c-cofinal | and | Characterwise cofinal heights | local-heights |
| r-weil | and | Literal odd Weil form | zeta-stages, zeta-form |
| r-xi | and | Xi determinant limit | xi-real-zeros, xi-source-limit |
| r-mobius | and | Signed Möbius estimates | mobius-all-scale, mobius-return |
| r-cryptids | and | Cryptids checker | machine-semantics, checker-soundness, checker-coverage |
| r-jensen | and | Jensen criterion | jensen-real-roots, jensen-source |
| r-newman | and | de Bruijn–Newman heat | heat-zero-time, heat-source |
| primitive-right | open | All primitive right-half zeros excluded | |
| upper-bound | source | Strict 7/8 theorem and ordinary source | |
| primitive-explicit-formula | done | Exact inverse-character formula supplies both primitive negative witnesses | |
| character-stages | open | Cofinal stages for every inverse orbit | |
| finite-head | open | Exact finite computation matched to Lean | |
| height-tail | open | Higher ordinates at the checked conductors | |
| conductor-tail | open | Every remaining conductor | |
| local-heights | open | Corridor exclusion at cofinal heights for each character | |
| zeta-stages | open | Cofinal original zeta lower stages | |
| zeta-form | source | Literal zeta Weil criterion | |
| xi-real-zeros | open | Real zeros of source approximants | |
| xi-source-limit | open | Exact locally uniform Xi limit | |
| mobius-all-scale | open | All-scale signed margins at rates approaching 1/2 | |
| mobius-return | source | Ordinary zeta zero-free return | |
| machine-semantics | source | Exact Cryptids blank-tape semantics | |
| checker-soundness | source | Source-bound checker soundness | |
| checker-coverage | open | Unbounded bounded-gap certificate supply | |
| jensen-real-roots | open | Full hyperbolicity of exact Jensen family | |
| jensen-source | source | Pólya–Jensen for centered Xi | |
| heat-zero-time | open | Classical heat threshold at time zero | |
| heat-source | source | Classical deformation and Xi identification | |

The `done` row supplies both witness contracts through the canonical
witness module. The `source` rows identify a proof input or an exact reference. Their
usable evidence is governed by the scope in the corresponding source
record. For `finite-head`, the open statement is a local source
adapter for the published finite computation. Substantiating that
statement would leave the other two regions open.

The highest-value checks suggested by the source comparison are to hold
the raw L-function identity fixed when admitting a half-plane theorem,
exercise the `Re(s)=7/8` and height boundaries, and bind each negative
witness and lower bound to the same arithmetic test. The proof table
can be updated one route at a time without replacing the endpoint.

## Local source evidence

- [PrimitiveDirichletRightCorridor.lean](PrimitiveDirichletRightCorridor.lean)
  has SHA-256 `188ac23f20fb06ba242bd2ca1afc33a3dc6bc9a5a1db55369b9a9899bfbb6a8e`.
  [WeilRightStripWitnessReturn.lean](WeilRightStripWitnessReturn.lean)
  has SHA-256 `e192115605745dab57e396e29a4a217ed50d66d0cb7abea8fb93a0667129ff6a`.
  The original witness theorem keeps its type and now calls the extracted
  primitive right-strip proof. The new reductions and the 18-module
  GRWTSK import closure elaborated from the pinned source with trust
  level zero, using the installed upstream Mathlib objects.
- [MontgomeryTaylorWindowThresholds.lean](MontgomeryTaylorWindowThresholds.lean)
  has SHA-256 `35e2751b45559fe6784fdad523242532e218bc6b89be4107b837fdf10d16d4d0`.
  The constant and eventual bounds elaborated at the same pins, Lean
  `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
  The exact rational margin uses
  `(331/400)(37043/40320)−163483/215040=1/2016000`.
- Module-level kernel replay passed for the two new sources and the
  changed right-strip source. `#print axioms` on the ten new or
  refactored theorem endpoints listed in issue #1828 reported only
  `propext`, `Classical.choice` and `Quot.sound`. Full fresh replay
  of imported closures was started, with no result at source publication.
  Independent analytic review and external toolchain rebuilds are **NOT_RUN**.
- Before the witness closure the graph had 37 reachable nodes and 41
  proof edges, with no cycles.
  The layout reached all visible attractors and restart diffusion
  conserved mass and converged in 132 route, width and restart cases.
  At restart rates 15%, 22%, and 35% the cofinal inverse-orbit stages
  ranked first among the full GRH graph's open premises. The ranking
  reflects reuse along alternatives and the supplied restart model.

With the common explicit-formula node supplied, the 49% restart run for
GRH ranks 13 open obligations. Cofinal inverse-orbit stages receive
42.43% of their combined weight, primitive right-strip exclusion
36.37%, and characterwise cofinal heights 3.15%. The RH view still
ranks seven open obligations.
