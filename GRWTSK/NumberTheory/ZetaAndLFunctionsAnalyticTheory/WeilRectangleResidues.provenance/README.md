# Finite residues of the original completed Dirichlet source

Local attribution: grwtsk contributors. Date: 2026-11-11.

Status: **SOURCE_PROOF_CANDIDATE**. Novelty: **UNASSESSED**, with no novelty claim.
The mathematical argument is written; Lean elaboration, fresh kernel replay,
transitive axiom audit, independent review and repository-wide checks are
**NOT_RUN**. Imported source candidates retain their own evidence status.

Inspected math source base: `7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No default-root import or dependency pin is changed.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).


Maintained source: [WeilRectangleResidues.lean](../WeilRectangleResidues.lean).
Source SHA-256: `294284f38f79a294864e46cfcb7e7f81988a1471b9e758b0a1850413edd1464a`. MSC2020: 11M41, 11M06, 30E20.

## Exact source return

Let chi be primitive of nonzero level N. Let T>0 and require, explicitly,

    forall s : Complex, abs(s.im)=T -> completedLFunction chi s != 0.

For an entire complex weight W, the new generic-height declaration asserts

    (2*pi*I)^(-1) B([-1,2]+i[-T,T]; W*logDeriv(completedLFunction chi))
      = sum rho in heightWindow chi hprim T, zeroMultiplicity chi rho * W(rho)
        - if N=1 then W(0)+W(1) else 0.

All index objects, values and multiplicities are the maintained ones. The
completion is exactly Mathlib's `DirichletCharacter.completedLFunction`, not a
function multiplied by N^(s/2). `logDeriv` is the source derivative divided by
the source value. This statement is complex-valued and does not discard an
imaginary part or replace a reflected pairing by an absolute square.

The literal zeta declaration uses `completedRiemannZeta` and gives the two
negative logarithmic pole terms -W(0)-W(1). A pole's logarithmic residue is its
negative order; it is not the residue of the completed function itself.

## How the existing construction is consumed

1. `exists_weil_rectangle_regularization` supplies the analytic remainder G and
   the actual weighted logarithmic-derivative equality away from the full finite
   singularity set. Its hypotheses are not restated as an unproved new source
   interface.
2. `weil_rectangle_regular_remainder_integral_zero` supplies B(G)=0. Analyticity
   supplies continuity and hence integrability on all four remainder edges.
3. Every typed height-window zero is strictly inside the rectangle: its real
   part is in (0,1), and its original imaginary part has absolute value <T.
   The two endpoint slots 0 and 1 are also strictly interior since T>0.
4. Apply the new general rectangular kernel and finite-linearity theorem. The
   local sum-type index has the original zero slots on the left and the literal
   finite set {0,1} on the right. It is only bookkeeping: the final statement
   again uses `heightWindow` without images, rounding or deduplication.
   The extra coefficients are -W(0), -W(1) when N=1 and zero otherwise.
5. `weil_boundary_not_mem_singularSet` proves the supplied source identity holds
   on every edge. Summing the original coefficients and cancelling the nonzero
   period yields the displayed formula.

No new zero inventory is assumed. The upstream regularization is responsible
for source nonvanishing outside the strip and local analytic multiplicities;
its current SOURCE_PROOF_CANDIDATE status is not upgraded by this consumer.

## Heights before tests

`exists_primitive_weil_rectangle_residue_identities` consumes the existing
`exists_primitive_weil_rectangle_regularizations`. Its quantifiers are

    forall primitive chi, exists T : Nat -> Real,
      (forall n, n+2 < T(n) < n+3) and
      forall f A, 0<=A -> Admissible f -> tsupport f subset [-A,A] -> forall n, ...

The sequence is selected before f and A. The weight is exactly

    W(s) = integral r, correlation f r * exp((s-1/2)*r).

There is no test-dependent reselection, fixed-window/conductor swap, symmetry
restriction or omitted central/real strip zero.

## Unchanged final targets and the next open premises

The inspected canonical target is
`GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi`, in
`NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilNegativeWitness.lean`.
It is literally the continued `LFunction` open-strip assertion displayed in the
mandate. `modOne_criticalStripStatement` identifies conductor one with the
continued zeta open-strip assertion. The primitive universal quantification is
not replaced by a different family or model. No new RH/GRH target is defined.
Its existing consumer `criticalStripStatement_of_detection_and_nonnegativity`
still requires both the genuine negative-test supplier and independent
nonnegativity of the same arithmetic form.

The finite contour theorem does not itself establish passage to infinite
height, zero-sum convergence, the prime-power inversion, compensated gamma
integration or full pole-inclusive arithmetic source identity. The inspected
`DirichletWeilIntegrand.lean` records that the plus-exponential chi-zero side
returns to the unchanged canonical arithmetic form indexed by chi inverse.
This finite calculation makes no same-character arithmetic assertion and does
not duplicate that integrand adapter. Every needed interchange and limiting
estimate remains a separate source-bound verification obligation.

Even after those evaluations, the first substantive arithmetic sign premise is
still the fixed-character all-window lower bound/nonnegativity. Neither this
finite identity nor a negative-witness criterion supplies it. The original
cofinal-bound consumer already exists; universal bound existence is not proved
by citing that implication. Interpolant-dependent tail constants, collisions
and all-scale quantifiers are untouched, not silently discharged.

## Individual source provenance

- grwtsk contributors,
  [WeilRectangleRegularization.lean at the source base](https://github.com/grwtsk/math/blob/7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilRectangleRegularization.lean),
  blob `ad9448234796d89275f0e45f34cc8458f22cfc63`; exact four consumer
  declarations named above, including the literal zeta regularization.
- grwtsk contributors, `DirichletZeroMultiplicity.lean`,
  blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d` at that same source base:
  `CriticalStripZero`, `zeroMultiplicity`, `heightWindow`, `mem_heightWindow`.
- grwtsk contributors, `WeilNegativeWitness.lean`,
  blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`: the exact target and
  `Admissible` (smooth order infinity, not analytic order top).
- grwtsk contributors, `DirichletWeilIntegrand.lean`,
  blob `4cdd68933d9bd8bf481d4b4ec4ace9689b967829`: completion and character
  convention, inspected before any arithmetic-source identification.
- [RectangleKernelIntegral provenance](../../../FunctionsOfAComplexVariable/RectangleKernelIntegral.provenance/README.md)
  gives the pinned Mathlib authors, locators, analytical argument and status for
  the actual contour integral. These dependencies are shared, not independent
  proof evidence.

Each public theorem has an individual adjacent record. No novelty or paper-to-
Lean correspondence beyond these identified formal sources is asserted.

## Hostile checks and evidence limits

The written argument covers arbitrary noncentral complex locations, unequal
multiplicities, and both distinct pole locations. At W=1 the pole correction is
exactly -2 for zeta, zero otherwise. Reversing contour orientation negates the
entire contour identity; dropping either vertical I is incompatible with the
explicit four-edge comparison. A boundary zero is not allowed by the generic
hypothesis, and source-selected heights supply avoidance before test selection.
No numerical fixtures are treated as proof or infinite coverage. Character
conjugation, tails and arithmetic positivity have not been inferred from the
finite head. Both the fixed-test/varying-interpolant distinction and collision
conditioning remain live obligations for the later negative-witness theorem.

No Lean build, kernel replay or axiom audit was run. The skill-access and runtime
blockers are recorded with the generic module. The `.github` tree at the
inspected base contains no workflows directory; this is not a passing CI
result. Required server-side protections, if any, remain binding. Exact source
publication and structural checks belong to the coordinating issue; they are
not certificates of checked mathematics.
