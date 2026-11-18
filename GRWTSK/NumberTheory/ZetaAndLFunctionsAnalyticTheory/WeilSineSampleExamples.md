# Original radius-two sine samples at a prime logarithm

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilSineSampleExamples.lean](WeilSineSampleExamples.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.SineSampleExamples`.
MSC2020 primary 11M06; dependencies 65G20 and 33B10.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty and exhaustive prior-art assessment:
**UNASSESSED**. These are concrete source scalar fixtures, not a new method
or a passing arithmetic positivity certificate.

## Complete source scope

Let phi(t)=`zeroExtendedSine 2 1 t`, the pre-existing source mode
sin(pi*t/2)/sqrt(2) on [-2,2], zero elsewhere. The exact source sample
positions are log(2), 1/2+log(2), and 1/2-log(2). The finite tables do not
redefine these positions to be rational. Their rational centers and all
position errors are explicitly transported back to the original positions.

The resulting enclosures have the following exact decimal-rational centers:

| Original position | Center | Absolute radius |
|---|---:|---:|
| log(2) | 0.626544741 | 0.000000001 |
| 1/2 + log(2) | 0.674811609 | 0.000000001 |
| 1/2 - log(2) | -0.211256461 | 0.000000001 |

Thus the actual two-orientation sample at the physical point 1/2 satisfies

    |phi(1/2+log(2))+phi(1/2-log(2))-0.463555148| <= 2e-9.   (1)

Since phi(1/2)=1/2 exactly, the original gamma difference satisfies

    |2phi(1/2)-phi(1/2+log(2))-phi(1/2-log(2))-0.536444852|
      <= 2e-9.                                            (2)

These are unweighted scalar samples. They do not evaluate the von Mangoldt
coefficient, any gamma integral, the pole moment, a whole spatial row,
residual Gram, signed lower matrix, or infinite collection of tests.

## Primary analytic argument and finite checks

1. Pinned Mathlib's `pi_gt_d20` and `pi_lt_d20` enclose the actual pi.
   The rational center is 3141592653589793/10^15 and its radius is 1/10^15.
   Rational comparison with the two pinned endpoints proves that enclosure.

2. The existing `RationalLogarithms.log_enclosure` at q=2,N=15 encloses
   Real.log(2) by its actual positive log-series partial sum and complete
   remainder. Exact rational comparisons put both endpoints within
   69314718056/10^11 +/- 1/10^12. No floating log participates.

3. The normalization bracket is

       707106781186/10^12 <= 1/sqrt(2) <= 707106781187/10^12.

   Both endpoints are nonnegative, and exact rational squaring checks
   2*lower^2<=1<=2*upper^2. The prior module returns that check to the actual
   inverse square root. Its center/radius are therefore
   1414213562373/(2*10^12) and 1/(2*10^12).

4. At each rational position t_i form the exact rational phase
   q_i=piCenter*t_i/2. A depth-eight trace starts at q_i/3^8. Its seed is
   the rounded cubic z-z^3/6, with its entire |z|^5/100 analytic error.
   Each later value is a rounded 3v-4v^3. The source arrays hold INTEGER
   numerators over 10^24 for values and error radii. All 27 values lie in
   [-1,1], every seed inequality and all 24 step inequalities satisfy
   `TraceValid`. The trace's exact source return was derived separately;
   the numerical data do not contain a sine inequality as an assumption.

5. Apply the original normalization/phase error theorem. The first mode's
   global source Lipschitz constant is pi/(2sqrt(2))<=2, obtained from
   pi<4 and sqrt(2)>=1. Consequently replacing the rational center by
   the true logarithmic position costs at most 2/10^12. This uses the
   global supported-mode theorem, including shifted cutoff corners.

6. For every row, exact rational arithmetic checks

       2*logRadius + centerRadius_i
         + |normalizer*traceValue_(i,8)-observed_i| <= 1e-9.

   The three complete upper budgets are approximately 2.281e-10,
   1.255e-10, and 2.881e-10, respectively; these decimal budget displays
   are not used in any decision or proof. The source uses the exact
   rational inequality above. The triangle inequality gives the table.
   The two-orientation sum gives (1); the exact center value gives (2).

### Reproducing the finite rational conditions

The source arrays are the maintained mathematical data. They can be
regenerated using only exact fractions, without calling a trigonometric
or transcendental library. For each rational phase q:

    z = q/3^8
    v0 = nearest_(10^-24)(z-z^3/6)
    e0 = ceiling_(10^-24)(|z-z^3/6-v0|+|z|^5/100)
    v_(j+1) = nearest_(10^-24)(3v_j-4v_j^3)
    e_(j+1) = ceiling_(10^-24)(9e_j+|3v_j-4v_j^3-v_(j+1)|).

The functions nearest and ceiling use integer division of exact rational
numerators and denominators. Regardless of generation, the final finite
inequalities are independently rechecked; their source theorem does not
trust the generation procedure. The coordinating issue records the actual
Python command, output, declaration map and content hashes. Lean's
`norm_num` proof bodies are present but have not been run.

## Individual declaration correspondence

- `pi_error`: rational enlargement of the pinned actual-pi endpoints.
- `log_two_error`: actual log-series return at order 15 and two exact
  outward rational comparisons. It uses the complete remainder.
- `normalization_error`: original reciprocal square root from two exact
  nonnegative square comparisons, then midpoint/half-width.
- `trace_valid`: all rational seed, range and step checks for each of the
  three nine-row traces. No true sine values are evaluated by this check.
- `rational_budget`: exact final normalization, phase, position and decimal
  output-rounding sum for each source sample.
- `sample_at_center`: combine actual-pi phase error, the proved trace
  return and original normalization, at the admitted rational center.
- `position_error`: the original log(2) error, with both affine orientations.
- `source_samples`: the global supported-source Lipschitz theorem and the
  complete rational budget return the samples to the actual positions.
- `prime_two_pair_at_half`: the two original orientations and both errors.
  The original negative sign in a subsequent prime subtraction is not changed.
- `gamma_log_two_difference_at_half`: exact phi(1/2)=1/2 and the paired
  observation, retaining the center coefficient 2 and both subtractions.
- `triple_requires_error_amplification`: P(1) and P(9/10) differ by 98/125,
  more than their argument distance 1/10. Ignoring step amplification is false.
- `support_boundary_control`: the source at t=3 is zero, whereas the
  uncut normalized sine there is -1/sqrt(2), not zero. Ignoring the support
  indicator changes the source. This is not a negative Weil direction.

The private `radius_two_slope` and `sine_at_half` bodies supply the exact
source constants used above. Every named table field is rational except
`actualPosition`, whose real logarithms are retained literally.

## Exact-source provenance

Inspected math base: `00f5367de2fff82799f87dc68a00fdee4aea49ba`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [WeilRationalSineSamples.lean](WeilRationalSineSamples.lean): each local
  theorem and its individual correspondence are documented adjacently.
- [WeilRationalLogarithms.lean](WeilRationalLogarithms.lean), blob
  `776022a3cf679384fd2fb31404a90fc1178562c7`, namespace RationalLogarithms,
  `log_enclosure`, `lower`, `upper`, `width`, and `ratio`.
- Mathlib [Pi/Bounds.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Real/Pi/Bounds.lean),
  blob `86147be4daf2ed3b598f0aed9ff73822336f0e2a`, Real.pi_gt_d20,
  Real.pi_lt_d20 and Real.pi_lt_four. Upstream authors Floris van Doorn
  and Mario Carneiro; used through the existing dependency, not copied.
- The original supported-sine definition, clamping/Lipschitz proof, exact
  trigonometric identities and their pins are recorded in the companion
  supplier. The published Mathlib source remains under its original license.

## Evidence and remaining obligations

The analytical source return and exact finite rational checks are separate
from Lean acceptance. Python Fraction checks of all maintained table
conditions and 1,681 rational pairs in the cubic Lipschitz control were run;
that finite grid is a diagnostic, not the universal proof of its inequality.
A false nonexpansiveness claim and an omitted-support construction were
explicitly tested or formalized as negative controls.

Lean parsing/elaboration, exact signatures, fresh kernel replay, transitive
axiom audit, clean dependency replay, and independent mathematical review:
**NOT_RUN**. The numerical `norm_num` proofs may need elaboration or resource
repairs. Existing candidate dependencies are not promoted. No tests are
presented as an accepted full Weil numerical certificate.

Required next inputs include the other source modes and sample locations,
sinh/pole/gamma constants and prime weights, complete outward scalar and
matrix tables, high floors where required, and all-scale certificate supply.
No finite sample proves coverage of an interval, all tests, a cofinal family,
primitive-character transfer, spectral zero identification, RH or GRH.
