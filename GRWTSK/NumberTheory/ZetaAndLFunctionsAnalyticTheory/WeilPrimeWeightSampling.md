# Complete prime-coefficient and prime-displacement sample error

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilPrimeWeightSampling.lean](WeilPrimeWeightSampling.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PrimeWeightSampling`.
MSC2020: 11M06 (primary); 42A38, 65G20 (supporting).
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and prior-art completeness: UNASSESSED; no novelty claimed.
Lean parsing, elaboration, exact types, builds, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
No complete source spatial sample, signed matrix evaluation or stage sign was
computed. The companion file records the narrower exact-rational weight-table
calculation that WAS performed.

## PWS-1. Exact source and two distinct rounding charges

Keep `LowSchur.activePrimePowers T` exactly. It is the canonical finite set of
all integers 2<=q<exp(2T); non-prime-powers in it carry zero von Mangoldt weight.
In particular the set is not selected by a rounded logarithmic threshold.
Denote it S and write w_q=primeWeight(q). The original operator contribution is

    P f(t) = sum_(q in S) w_q [f(t+log q)+f(t-log q)].

It is SUBTRACTED in the full source. For each q let ell_q,rho_q,U_q be the
rational lag center, radius and upper logarithm from `WeilRationalLogarithms`.
The preceding `PrimeLagSampling` module retains exact weights and defines

    Plag f(t) = sum_(q in S) w_q [f(t+ell_q)+f(t-ell_q)].

Its inspected source theorem proves, for every globally K-Lipschitz f and
all real t,

    |P f(t)-Plag f(t)| <= K B_lag,
    B_lag = 2 sum_(q in S) U_q rho_q.                 (PWS-1)

Now the companion weight generator gives rational centers omega_q and radii
sigma_q with |w_q-omega_q|<=sigma_q and sigma_q>=0. Its order at q is the same
`orders q` parameter, and its integer root resolution D is positive. Define

    Pnum f(t) = sum_(q in S) omega_q [f(t+ell_q)+f(t-ell_q)],
    B_weight = 2 sum_(q in S) sigma_q.                (PWS-2)

The finite weights and displacements in Pnum are rational. Evaluating f at
those points may still require transcendental enclosures; Pnum is NOT a fully
evaluated rational number merely by definition.

Assume the genuine global amplitude bound |f(t)|<=A, A>=0. Each coefficient
error, evaluated at the ALREADY rounded displacements, obeys

    |(w_q-omega_q)[f(t+ell_q)+f(t-ell_q)]| <= 2 A sigma_q.

Finite triangle inequality proves

    |Plag f(t)-Pnum f(t)| <= A B_weight.              (PWS-3)

Together with (PWS-1), this gives

    |P f(t)-Pnum f(t)| <= K B_lag + A B_weight.       (PWS-4)

This is the source-specific `primeFunction_error`. There is no statistical
independence assumption. All coefficient errors and lag errors may align.
There is no missing mixed product: the intermediate Plag uses EXACT weights
at rounded locations, and (PWS-3) uses a bound on the rounded function values.
An alternative decomposition can be valid, but its own allowances must be
proved rather than inferred by dropping a cross term.

## PWS-2. Derive the amplitude for the actual source sine input

The source basis remains the zero-extended, normalized sine

    e_n(t)=sin(pi*n*t/T)/sqrt(T) on [-T,T], zero elsewhere.

For T>0, |e_n(t)|<=1/sqrt(T) at every real t. Thus the actual finite sine f_c
satisfies

    |f_c(t)| <= A(c) = sum_n |c_n| / sqrt(T).          (PWS-5)

The proof uses the exact zero extension, |sin|<=1, and the finite triangle
inequality; no interval derivative or smoothness at a support corner is needed.
This is `finiteSine_abs_le`, not an amplitude assumption about a surrogate.
The existing global Lipschitz bound `sineLipschitz T c` supplies K(c).

For an integer support radius T>=1 and rational coefficients c, the companion
reciprocal generator also supplies a rational normalization bound:

    A(c) <= [sum_n |c_n|] reciprocalUpper(T,D).        (PWS-6)

This is `amplitude_le_rational`. It covers the canonical integer radii j+1.
A rational upper bound for K(c) still needs a pi/frequency enclosure; it is
not asserted to follow just from (PWS-6). The real-amplitude theorem remains
valid at every positive real T.

## PWS-3. Exact signed spatial source return

Construct `weightedSpatialColumn` from the preceding source formula by
replacing only the paired prime function with Pnum. Retain:

* the original gamma middle row with source-integrated weights;
* its complete separated gamma-tail term;
* gammaConstant(1,0)-beta, including the physical source shift;
* the original minimizing negative odd-pole port and its sinh profile;
* the original subtracted retained sine head.

For every t in the physical window, cancellation of these identical terms
gives the EXACT identity

    spatialColumn(t)-weightedSpatialColumn(t) = Pnum f_c(t)-P f_c(t).
                                                               (PWS-7)

The sign is fixed by the subtraction of the prime contribution in the source.
Using (PWS-4)--5, a sample inequality

    |weightedSpatialColumn(t)-p| <= e

therefore returns to the unchanged source as

    |spatialColumn(t)-p| <= e + A(c) B_weight + K(c) B_lag.        (PWS-8)

This is `source_sample_transfer`. With rational upper bounds Ahat>=A(c),
Khat>=K(c), nonnegative budgets give the fully rational enlarged radius

    e + Ahat B_weight + Khat B_lag.                    (PWS-9)

The public `rational_sample_transfer` is precisely (PWS-9). It retains the
original scalar-sample premise for the remaining expression; no guessed
sine, pi, gamma, pole or finite arithmetic value is inserted.

For EACH spatial midpoint, supply this enlarged radius to BOTH existing
consumers:

* `FiniteSineSpatialResidual.residualGram_upper_of_rational_samples`;
* `FiniteSineSignedEnergy.signedEnergy_lower_of_rational_samples`.

Their unchanged source moduli still control the whole cell. The arbitrary
head still cancels only against genuinely high tests, and is restored exactly
in the signed trial energy. Their separate canonical gamma-output error remains
required. This pointwise-return route does not additionally require paying
the SAME prime rounding as a physical-row error; paying it twice is safe but
unnecessarily conservative.

In particular this increment does not replace the matrix sign with coefficient
positivity. The subsequent obligation remains the SIGNED comparison

    Fminus - [(1+tau)Rplus+(1+1/tau)Egamma]/m >= 0,

with the actual high floor m>0, tau>0, valid source low-coordinate coverage,
and the complete numerical budgets. No passing instance is claimed.

## PWS-4. Hostile checks and limits

1. A constant function f=1 and a coefficient change from w=1 to omega=3/4
   gives paired-output error 1/2=2|w-omega|. Dropping the factor two would
   yield the false bound 1/4. This scalar sensitivity control does not claim
   the constant function is an admissible compact Weil test.
2. A higher power q=4 must carry log(2)/2, not log(4)/2. The companion exact
   intervals strictly separate the mistaken coefficient. The check includes
   q=8,9,25,64, rather than treating only primes.
3. The exact source at q=6 is zero. The computational classification does not
   turn an upper bound such as log(6)/sqrt(6) into a source value.
4. The global modulus and amplitude handle shifted points on EITHER side of
   each support boundary. No differentiation through an indicator is used.
5. Refined weight intervals do not certify inventory completeness, unresolved
   sine/gamma/pole samples, or the required all-scale signs. Fixed-family
   scalar accuracy does not give a rate uniform in all support/dimension data.
6. The source is the real odd conductor-one zeta form. No character phases,
   conductor/parity terms, primitive-character transfers or GRH endpoints are
   inferred from these zeta coefficient lemmas.

## Individual declaration correspondence

All names below belong to the namespace printed above.

| Declaration | Primary argument, immediate source and consumer |
|---|---|
| `weightBudget_nonneg` | Companion `radius_nonneg` on every admitted inventory label; rational sample-radius inflation. |
| `amplitude_nonneg` | Finite sum of absolute coefficients and nonnegative real sqrt; PWS-5 input. |
| `finiteSine_abs_le` | Canonical zeroExtendedSine, |sin|<=1 and finite triangle inequality; actual source amplitude in PWS-5. |
| `amplitude_le_rational` | Companion reciprocal upper bound multiplied by the nonnegative coefficient sum; integer-window normalization PWS-6. |
| `coefficient_error` | PWS-2--3, companion coefficient center error, two actual translated values; complete weight-rounding charge. |
| `primeFunction_error` | Triangle through the existing exact-weight rounded-lag operator and its canonical error theorem; PWS-4. |
| `spatial_difference` | Cancellation of unchanged original gamma/pole/head/mass terms; signed identity PWS-7. |
| `source_sample_transfer` | PWS-4--8 with the derived amplitude and canonical global Lipschitz bound; exact-source midpoint return. |
| `rational_sample_transfer` | Nonnegative budgets and rational upper amplitude/modulus, PWS-9; both existing rational-table consumers. |

Definitions `weightBudget` and `rationalAmplitude` are finite rational
expressions. `amplitude`, `weightedPrimeFunction` and `weightedSpatialColumn`
are mathematical real expressions, not a complete executable scalar evaluator.
No new arithmetic form, physical space, norm or positivity criterion is defined.

## Source pins, prior art and verification

Inspected on 2026-11-18 at math main
`00f5367de2fff82799f87dc68a00fdee4aea49ba`.
Root pins remain Lean `leanprover/lean4:v4.34.1` and mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

* [WeilPrimeLagSampling.lean](WeilPrimeLagSampling.lean), blob
  `9fb7a279288aae458c84676043097c6c0bc55dc7`: original rounded lag expression,
  all-point error, `active_one_le`, and unchanged sample source identity.
* [WeilRationalPrimeWeights.lean](WeilRationalPrimeWeights.lean): this increment's
  original-weight enclosure; exact dependencies/proofs and table in its note.
* [WeilOddSineProjection.lean](WeilOddSineProjection.lean), blob
  `f4417e2b06319a9ab4f1e922df1216be555f72e5`: literal `zeroExtendedSine`.
* [WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean), blob
  `c68566056afe4d8f71faa9b72ca01091e4cfc284`: whole-line finite-sine Lipschitz bound.
* [WeilFiniteSineSpatialResidual.lean](WeilFiniteSineSpatialResidual.lean), blob
  `b38e77ff65644e8545546b9040da813ac63ecb88`: actual spatial source and full Gram consumer.
* [WeilFiniteSineSignedEnergy.lean](WeilFiniteSineSignedEnergy.lean), blob
  `85594d1f1ec90cbac39100517b89284631fb40be`: exact head restoration and signed consumer.

This is elementary deterministic error propagation applied to the specified
source rows, not a new interval-arithmetic principle or arithmetic cancellation
theorem. The actual source functions, not only their names, were inspected.
The finite algebra checks and the written primary proof share dependencies;
independent review is NOT_RUN. No blanket novelty or verification is asserted.

Actual checks: standard-library exact rational evaluation of the companion
coefficient table and its 4096 algebra controls; static source-text/declaration
and hash checks. These are not Lean parsing or kernel verification. No source
matrix, high-floor certificate or cofinal certificate search was executed.
Canonical Noe proof skill access failed at revision
`acba1af65c9de90fdc095dc7db53dafc93230245`; no dependent execution was dispatched.
Publication readback and exact hashes are recorded separately in math#1837.

Build targets, not reported as run:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalPrimeWeights
    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeWeightSampling

Remaining finite evaluation inputs include source inventory admission, sine/pi,
non-integer normalization where applicable, gamma constants/weights and their
rounding, pole moments, and complete outward arithmetic. The true high-floor,
low-coordinate return, successful signed matrix and universal cofinal supply
remain open. Publication of these candidates does not discharge those premises.
