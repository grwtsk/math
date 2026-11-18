# Rational sine traces and original supported-mode observations

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [WeilRationalSineSamples.lean](WeilRationalSineSamples.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.RationalSineSamples`.
MSC2020 primary 11M06; numerical dependencies 65G20 and 33B10.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty and exhaustive prior-art assessment:
**UNASSESSED**. This is elementary certified scalar evaluation, not a new
trigonometric, spectral, or positivity principle.

## Original objects and consumer

The source is the existing `OddRootProjection.zeroExtendedSine T n t`:

    phi(T,n,t) = sin(pi*n*t/T)/sqrt(T) on [-T,T], and zero outside.

For T>0 it is globally Lipschitz because it is the sine of the clamped
coordinate, with both endpoint values zero. Its complete support convention,
normalization, index n and signs remain unchanged. `finiteSine` denotes the
existing signed finite synthesis. The consumers are original-input and
shifted-input scalar observations in `WeilFiniteSineSpatialResidual`,
`WeilFiniteSineSignedEnergy`, and `WeilPrimeLagSampling`. This file supplies
sine samples only; it does not evaluate their other source coefficients.

## Complete primary argument

### A finite rational trace for the actual sine

Set P(s)=3s-4s^3. For a,b in [-1,1], put S=a^2+ab+b^2. The identities

    2S=(a+b)^2+a^2+b^2,
    ab <= (a^2+b^2)/2

show 0<=S<=3. Factoring gives

    P(a)-P(b)=(a-b)(3-4S),
    |P(a)-P(b)|<=9|a-b|.                                 (1)

The pinned Mathlib theorem `Real.sin_bound` gives, for |z|<=1,

    |sin(z)-(z-z^3/6)| <= |z|^5/100.                       (2)

For rational q choose k and z=q/3^k. A trace consists of rational v_i,e_i
for 0<=i<=k. `TraceValid` checks only rational inequalities:

    |z|<=1,
    |z-z^3/6-v_0|+|z|^5/100 <= e_0,
    |v_i|<=1,
    9e_i+|P(v_i)-v_(i+1)| <= e_(i+1) for i<k.             (3)

There is no sine approximation premise or source sign in these data.
Using `sin(3x)=P(sin x)`, (1), and (2), induction proves

    |sin(3^i*z)-v_i|<=e_i.

At i=k this is the actual sin(q). The finite rational table may be rounded
at every step: that rounding is precisely the second term in the last
inequality of (3). Absolute values of v_i are explicitly bounded because
(1) is not asserted outside [-1,1]. General existence or an optimal precision
schedule is not a theorem here; the companion fixture supplies actual data.

For an uncertain phase x with |x-q|<=d, the pinned global sine Lipschitz
bound gives |sin x-v_k|<=d+e_k. There is no hidden exact-log oracle.

### Normalization and phase

For T>0 and nonnegative l,u, the rationally checkable inequalities
T*l^2<=1<=T*u^2 imply l<=1/sqrt(T)<=u. Square the nonnegative products
l*sqrt(T), u*sqrt(T) and use (sqrt(T))^2=T. Their midpoint and half-width
give the normalization enclosure.

For rational T,p,t, the phase center is p*n*t/T. If |pi-p|<=ep, the exact
phase differs from this center by at most |n*t/T|ep. No finite-dimensional
replacement of the source phase is made.

Write alpha=1/sqrt(T), and suppose |alpha-a|<=ea and the final sine error
is at most ep+es. At an admitted source point,

    alpha*sin(x)-a*s = (alpha-a)*sin(x)+a*(sin(x)-s),
    |alpha*sin(x)-a*s| <= ea+|a|(ep+es).                   (4)

The actual bound |sin x|<=1 supplies the first term. In particular this does
not multiply two approximate intervals without paying their interaction.

### Support boundaries and source assembly

A sample at an EXACT center t can be transported to any x using the
pre-existing GLOBAL source Lipschitz constant

    L(T,n)=|pi*n/T|/sqrt(T).

If L(T,n)<=K, |x-t|<=d, and |phi(t)-value|<=e, then

    |phi(x)-value|<=K*d+e.                                (5)

This remains valid when [t-d,t+d] crosses a support endpoint. We do not
choose the actual source branch from a rounded coordinate. An exact center
outside the support has value zero, then (5) still applies.

For signed coefficients c_i, individual errors e_i imply the complete
finite-synthesis error sum |c_i|e_i. The approximation is sum c_i*p_i,
not sum |c_i|p_i. The two prime translations have sum error ep+em. The
symmetric gamma difference 2f(t)-f(t+r)-f(t-r) has error 2ez+ep+em,
retaining its center and both orientations. These are scalar observations;
whole-cell variation and full spatial integration are still supplied by the
existing spatial modules, not by a finite sample alone.

## Individual declaration correspondence

- `triple_lipschitz`: (1), by exact cubic factorization and the two square
  inequalities; no differential or spectral assumptions. Consumer: trace induction.
- `trace_sound`: (2)-(3) and exact triple-angle induction. All finite steps
  and every rational q admitted by (3) are quantified. Consumer: source samples.
- `trace_with_phase`: triangle inequality and the actual sine Lipschitz
  bound. Consumer: uncertain scalar phases.
- `inv_sqrt_bounds`: nonnegative square comparison, T>0. Consumer: original
  source normalization, not a numerical sqrt implementation.
- `inv_sqrt_midpoint`: convert both endpoints into the exact half-width.
- `phase_error`: factor the phase difference and multiply its absolute
  error. Source pi and the original n,t,T remain explicit.
- `normalized_error`: (4), at a point known to be in the physical interval.
  Consumer: `SineSampleExamples.sample_at_center`.
- `source_position_error`: (5), consuming the original global Lipschitz
  theorem and including cutoff corners. No smoothness of the indicator is assumed.
- `finiteSine_sample_error`: finite signed synthesis plus norm triangle
  inequality. Consumer: original finite trial scalar tables.
- `paired_shift_sample`: both source orientations with both errors.
- `symmetric_difference_sample`: original gamma difference and all three
  errors, with its exact center coefficient 2.

Definitions `triple`, `TraceValid`, `phaseCenter` and `phaseRadius` name the
finite quantities above. The `Decidable` instance checks only the finite
rational conditions and has no analytical oracle. No new RH criterion or
matrix checker is introduced.

## Source pins and prior-art scope

Inspected base: `grwtsk/math@00f5367de2fff82799f87dc68a00fdee4aea49ba`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Exact upstream sources, used by import rather than copied implementation:

- Mathlib `Mathlib/Analysis/Complex/Trigonometric.lean`, blob
  `d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c`, namespace Real,
  `sin_bound` (the |x|^5/100 remainder in the inspected edition),
  `sin_three_mul`, and `abs_sin_le_one`. Upstream authors Chris Hughes and
  Abhimanyu Pallavi Sudhir. Original source is under Apache 2.0, used by import.
  [Pinned source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Trigonometric.lean).
- Mathlib `Mathlib/Analysis/SpecialFunctions/Trigonometric/Bounds.lean`,
  blob `9b22d7d3ae7887e57f48d1a13aeb7544a1a69277`, namespace Real,
  `abs_sin_sub_sin_le`. Upstream authors David Loeffler, Yaël Dillies and
  Bhavik Mehta. This existing fact is also consumed by
  the already inspected canonical supported-sine Lipschitz proof.
- [WeilOddSineProjection.lean](WeilOddSineProjection.lean), blob
  `f4417e2b06319a9ab4f1e922df1216be555f72e5`: exact supported mode.
- [WeilOddGammaOutput.lean](WeilOddGammaOutput.lean), blob
  `b8513ef86ef6b18f7f4247967fd6ace194a0af36`,
  `zeroExtendedSine_eq_clamp` and `lipschitzWith_zeroExtendedSine`.

Related public Mathlib discussion and pending SeriesBounds work were screened
on 2026-11-18. `SeriesBounds.lean` was unavailable at the pinned revision and
is NOT imported. This increment does not claim a new arbitrary-order Taylor
bound, new range-reduction method, or literature priority. It specializes
existing elementary identities to the original source observation problem.
No claim of exhaustive literature absence or independent proof is made.

## Verification and limitations

The complete written argument is above. Finite rational traces and negative
controls are in the companion fixture and coordinating issue math#1837.
Lean parsing/elaboration, exact signatures, fresh kernel replay, transitive
axiom audit, clean dependency replay and independent review: **NOT_RUN**.
Source may need elaboration repairs; imported candidates retain their status.

No complete source row, primitive-character transfer, high floor, favorable
signed matrix, universal all-window coverage, or RH/GRH result is supplied.
The immediately remaining numerical work includes other sine modes/points,
sinh and gamma constants, actual prime weights, complete source tables and
successful paid matrix certificates. A scalar sample has exactly scalar scope.
