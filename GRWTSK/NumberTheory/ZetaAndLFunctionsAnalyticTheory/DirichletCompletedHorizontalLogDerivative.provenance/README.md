# Completed primitive Dirichlet horizontal logarithmic derivatives

Attribution: grwtsk contributors. Date: 2026-11-11.
Scope: math#1801, comment 6814543294.
Inspected main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source: [../DirichletCompletedHorizontalLogDerivative.lean](../DirichletCompletedHorizontalLogDerivative.lean).
Primary MSC2020: 11M41; secondary: 11M06, 11M26, 33B15.

## Exact result and evidence boundary

All new Lean bodies are SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. Canonical imported proof
candidates retain their evidence status; source composition is not their audit.
Novelty UNASSESSED. The following is a classical upper-growth estimate, not a
new zero-free region, arithmetic sign bound or RH/GRH proof.

For every positive level N and primitive Dirichlet character chi modulo N, the
source candidate constructs one sequence T:Nat->Real satisfying

    n+2 < T_n < n+3  for every n,

such that the ACTUAL completedLFunction chi is nonzero on both entire lines
Im s=+T_n and Im s=-T_n, and, for every n, every sigma in [-1,2] and both
signs epsilon=-1,+1,

    |logDeriv(completedLFunction chi)(sigma+i epsilon T_n)|
      <= (C_chi+1+C_Gamma)(1+T_n)^4.                         (1)

Here C_chi is the unchanged horizontalLogDerivativeConstant chi, already
constructed from the original source's circle-growth and multiplicity-count
constants. C_Gamma is gammaRLogDerivativeConstant from
[the new Gamma source estimate](../../../SpecialFunctions/GammaLogDerivativeBounds.provenance/README.md),
a positive finite expression independent of chi, N, height and test function.
The combined constant in (1) remains source-dependent through C_chi; no
conductor-uniform bound for that combined constant is claimed.

The final theorem has only positive-level and primitivity arithmetic premises.
It has no supplied height sequence, zero list, separation, Gamma magnitude,
circle growth, normalized logarithm or logarithmic-derivative bound.
Nonreal characters and possible real/central zeros are not excluded. Simplicity
or RH/GRH is not assumed. The zeta theorem specializes literally to
completedRiemannZeta at the primitive level-one character.

## 1. Preserve the actual completion and both parities

Mathlib uses

    gammaFactor chi s = GammaR(s)       if chi is even,
                       GammaR(s+1)     otherwise,
    GammaR(w) = pi^(-w/2) Gamma(w/2).

At nonreal s the established exact source equality is

    completedLFunction chi s = LFunction chi s * gammaFactor chi s.   (2)

There is NO extra N^(s/2) in this definition. Consequently no log N/2 is added
to the logarithmic derivative of (2). The existing dual-character functional
equation retains the conductor through its actual N^(s-1/2) factor. This file
changes neither that equation nor the inverse-character source-return correction
for the plus-sign Fourier correlation.

The new special-function core proves

    |logDeriv GammaR(w)| <= C_Gamma(1+|Im w|)

for -1<=Re w<=3 and |Im w|>=2, with both endpoints included. For s in the
original strip [-1,2], both w=s and w=s+1 lie in this domain. Translation by
one has derivative one. Thus the same constant yields

    |logDeriv(gammaFactor chi)(s)| <= C_Gamma(1+|Im s|).      (3)

The proof controls the full complex norm; it is not an inference from a bound
on only the centered real part. Regularity of both actual parity factors is
proved separately from their magnitude bound. The nonreal hypothesis excludes
all real Gamma poles before the derivative and division identities are used.

## 2. Neighborhood equality is needed for the derivative

Suppose s is nonreal and completedLFunction chi s is nonzero. Equation (2)
shows LFunction chi s is nonzero, while gammaFactor chi s is nonzero by the
canonical Gamma-factor theorem. Continuity of the imaginary coordinate gives
a neighborhood of s consisting of nonreal points. On that whole neighborhood,
(2) holds for the same continued source. Thus logarithmic differentiation gives

    logDeriv(completedLFunction chi)(s)
      = logDeriv(LFunction chi)(s)+logDeriv(gammaFactor chi)(s).       (4)

The declaration logDeriv_completedLFunction_of_nonreal establishes this equality
using actual differentiability and nonvanishing of the factors. Pointwise
agreement at s alone would not justify the derivative step. No identity at
s=0 or s=1 is asserted from a totalized quotient.

## 3. Keep the existing two-sided height sequence

The canonical exists_horizontal_LFunction_logDeriv_bound supplies one T_n,
its n+2<T_n<n+3 inequalities, completed-source nonvanishing on both entire
horizontal lines, and

    |logDeriv(LFunction chi)(sigma+i epsilon T_n)|
      <= (C_chi+1)(1+T_n)^4.                                (5)

Its original counting, distance floor and treatment of real zeros are reused,
not assumed as new interface fields or replaced with a numerical zero list.
The sequence is independent of the test function, real coordinate and sign.

For every n, T_n>2 and |epsilon T_n|=T_n. Applying (3), then (4) and (5), gives

    |logDeriv(completedLFunction chi)(s)|
      <= (C_chi+1)(1+T_n)^4+C_Gamma(1+T_n).

Since 1+T_n <= (1+T_n)^4 and C_Gamma>0, this proves (1). No subsequence,
height-dependent constant or lost lower-height range is introduced.

## 4. Literal zeta return and remaining consumer

The final zeta declaration uses only the exact level-one completedLFunction
identity and the canonical primitivity theorem. Both completed zeta poles at
0 and 1 remain in the arithmetic explicit formula. They are off the selected
horizontal boundaries, not deleted from the source or from a future residue sum.

Equation (1) supplies the missing completed-source magnitude component for the
finite-to-infinite contour route. It does not by itself prove any horizontal
integral limit: that needs the actual contour weight, its admissibility and
sufficient decay. Finite rectangular excision/residue identities, inversion,
compensated archimedean evaluation and the complete arithmetic limit remain
separate formal obligations. The full prime-power sum, character phases,
conductor, parity, multiplicities and both pole orientations are unchanged.

RP-OC-01/B retain the original divisor and gain a completed-source boundary
estimate. RP-OC-02 gains this analytic component, not the full explicit formula
or arithmetic nonnegativity. A gains source-to-declaration provenance, not checked
admission. RP-OC-03--10, C--F and the four marked-link, finite-field,
higher-geometric and prime-distribution extensions are unchanged by this module.
These are program identifiers, not newly registered frontier claim identifiers.
No program is complete. Fixed-source height bounds do not establish varying-test
interpolation cost/tail control or positivity for all windows.

## Source comparison, hostile checks and exact pins

The generic core and its full primary argument are documented in the linked
Gamma record. The alternative compensated digamma integral/partial-fraction
route is classical but is not imported as an unproved source hypothesis.
CenteredDigammaShift.lean's finite-shift result and unresolved zero-residual
identification remain separate; this module neither depends on nor promotes it.

Exp(bz) shows why zero avoidance alone cannot bound a logarithmic derivative;
the canonical original-source result includes the actual growth/anchor argument.
A centered real-part bound does not control a complex norm. Pointwise agreement
does not control derivatives. These potential shortcuts are not used here.
Two proof scripts are not claimed as independent analytic verification.

Canonical sources at inspected math main (MIT; grwtsk contributors):
- DirichletHorizontalLogDerivative.lean, exists_horizontal_LFunction_logDeriv_bound,
  gammaFactor_ne_zero_of_nonreal, completedLFunction_eq_mul_of_nonreal;
  blob `df57cc0537745d34b8a6c5451eeb636d829d108d`.
- GammaLogDerivativeBounds.lean, published with this module; individual theorem
  records give its primary/canonical dependencies. No historical blob identity
  is assigned to newly authored bytes before publication.

Pinned Mathlib primary inputs (Apache-2.0):
- David Loeffler and Michael Stoll, NumberTheory/LSeries/DirichletContinuation.lean:
  actual gammaFactor/completedLFunction, differentiableAt_LFunction and the
  level-one identities; blob `89c72580697983d86706cff17ccbea2cee6475a3`.
- Chris Birkbeck, Analysis/Calculus/LogDeriv.lean, product and chain rules;
  blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`.

Each of the five public theorems has a verbatim-statement provenance record.
Proposed check, NOT EXECUTED:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCompletedHorizontalLogDerivative

Fresh kernel replay and individual transitive axiom queries, including imported
candidates, remain required. No local Lean/Lake or verified canonical skill
checkout was available. The prescribed proof-execution skill returned 404 at
Noe revision `a5ef0a774b3e5decabc2ed2885108805ea7022bc`. Dependent execution stopped;
ordinary authorized source publication does not change any verification status.
