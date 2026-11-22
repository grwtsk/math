# Residual correction of the original signed Weil response

Local attribution: grwtsk contributors. Date: 2026-11-18.

Maintained source: [WeilResponseResidualCorrection.lean](WeilResponseResidualCorrection.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ResponseResidualCorrection`.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty is not claimed; prior-art
completeness is **UNASSESSED**. Each theorem below is a local consequence of
the inspected canonical source, not a claimed direct paper formalization.

## Exact target and domain

Fix T>0 and real beta, epsilon. Use the EXISTING complete real gamma form
domain V=`FormDomain T`, supported odd physical Hilbert space
H=`WindowPhysical T`, and contractive injection J=`windowInput T`.
Let q=`sourceForm T beta`, lambda=`regularization T beta`,
b=q+lambda<J-,J->, and W=`weakSolve T beta hT`. Retain the original
source coercivity b(z,z)>=||z||_V^2 and source identity on all domain tests.
No hypothesis asserts positivity of the unshifted arithmetic form.

Put c=lambda-epsilon. The target is the unchanged `responseDefect`

    D(h)=<h,JWh>-c||JWh||^2,

not a norm square manufactured to be nonnegative. For arbitrary v,w in V,
define the full continuous dual residuals

    r(z)=<h,Jz>-b(v,z),
    ell=h-2c Jv,
    s(z)=<ell,Jz>-b(w,z).

These are functionals on ALL V. A finite list of sampled residual rows is
not their norm. Let e=Wh-v and

    m=<h,Jv>-c||Jv||^2+r(w).

The consumer needs a lower bound for D(h). The first-order error bound in
`ResponseSignReturn.responseDefect_error_le` is preserved, not replaced.
The additional dual trial permits a different bound when its full residual
is small enough. There is no assertion that it is always cheaper or tighter.

## Complete primary analytical argument

Since JWh=Jv+Je, expansion of the actual squared physical norm gives

    D(h)-trialDefect(h,v)=<h-2cJv,Je>-c||Je||^2.

The source weak equation gives r(w)=b(e,w). Symmetry of b makes this b(w,e),
so subtracting the residual correction gives the EXACT identity

    D(h)-m=s(e)-c||Je||^2.                       (1)

There is no remainder of unproved order and no Galerkin-orthogonality
assumption. Coercivity, applied to the complete primal residual, yields
||e||_V<=||r||. If ||r||<=eta and ||s||<=sigma, these hypotheses themselves
imply eta,sigma>=0. Contractivity of J and duality then give

    ||Je||<=eta,       |s(e)|<=eta sigma.

Keeping the sign of c in (1), rather than replacing everything immediately
by absolute values, proves

    m-eta sigma-max(c,0)eta^2 <= D(h)
      <= m+eta sigma+max(-c,0)eta^2.              (2)

Consequently |D(h)-m|<=eta sigma+|c|eta^2. If eta and sigma both decay at
order tau with fixed T,beta,epsilon, the response-error charge is O(tau^2).
This is NOT an all-window uniform claim: c and the approximation constants
can depend on the window. If only the primal residual decreases, the
product eta sigma need not be quadratic in the primal accuracy.

For w=W ell, the dual residual vanishes by the same source weak equation.
Thus D(h)-m=-c||Je||^2. In particular, an exact dual solve does NOT remove the
quadratic term or reverse its sign.

## Independent check route and limits

For operator-domain trials, write B=A+lambda I and R=B^{-1}. With physical
primal residual r_H=h-BJv and dual residual s_H=ell-BJw, one has
Je=Rr_H and Rell=Jw+Rs_H. Symmetry of R independently rewrites the
remainder as

    <Rs_H,r_H>-c||Rr_H||^2.

The response contraction bounds it by ||r_H||||s_H||+|c|||r_H||^2.
This is a separate resolvent derivation of the same estimate, but it shares
the source realization and symmetry assumptions. It is not independent
mathematical review and does not establish an additional spectral theorem.
The main form-domain proof needs no operator-domain membership for v,w.

## Individual declaration correspondence

All names in this section have the namespace stated above.

### `responseDefect_trial_difference`

Statement: the exact quadratic Taylor identity for every h in H and v in V,
at every real epsilon. Source: canonical `responseDefect`, `trialDefect`,
linearity of J, and the real inner-product norm identity. Proof: substitute
JWh=Jv+Je and expand. Consumer: the remainder theorem. No asymptotic
Taylor theorem, differentiability oracle, or source sign is imported.

### `responseDefect_remainder`

Statement: equation (1) for every pair v,w in V. Sources:
`ShiftedSourceSolve.residualFunctional_eq_error` and
`ClosedSourceBilinear.coerciveForm_symmetric`. Proof: subtract r(w), change
b(e,w) to b(w,e), and use the definition of the dual residual. Consumer:
the signed enclosure. All full-domain quantifiers remain unchanged.

### `responseDefect_bounds`

Statement: both endpoints in (2), given the two full dual-norm bounds.
Source: `ShiftedSourceSolve.error_le_residual` and
`FormDomainDensity.windowInput_norm_le`. Proof: bound |s(e)| by duality and
bound c||Je||^2 above by max(c,0)eta^2 and below by
-max(-c,0)eta^2. Consumer: finite-sine source enclosure. No scalar tolerance
is assumed fixed across changing windows or loads.

### `responseDefect_error_le`

Statement: the symmetric allowance eta sigma+|c|eta^2. Proof: each max in
(2) is at most |c|. Consumer: symmetric error reporting. This theorem is
not the earlier first-order theorem in `ResponseSignReturn`; both retain
their original names in their distinct namespaces and their own premises.

### `responseDefect_exactDual`

Statement: with w=W ell the remainder is exactly -c||Je||^2. Proof: the
complete dual residual is the coercive form on W ell-W ell, hence zero.
Consumer: sign calibration and falsification of an omitted-square budget.
It does not construct a finite exact dual trial.

### `correctedTrial_finite`

Statement: for arbitrary finite dimensions M,K and real coefficients a,b,
the form residual correction is the physical pairing
`<physicalResidual(h,a),finiteInput(b)>`. Sources:
`FiniteSineSolveResidual.residualFunctional_eq_physical` and
`FiniteSineOperator.finiteLift_windowInput`. This preserves the literal
beta-lambda shift and the original minimizing negative-pole port.
Consumer: physical residual bounds and the quadrature module.

### `finite_responseDefect_bounds`

Statement: (2) with both norm bounds supplied by the complete physical
finite-sine residuals. Source:
`FiniteSineSolveResidual.residualFunctional_norm_le_physical`, applied to
the original load and to the explicitly computed derivative load.
Consumer: the new quadrature return. No assumption says either finite trial
family is a form core, no response coefficients are produced, and the full
remote residual has not been replaced by finite rows.

### `finite_lower_of_observation`

Statement: subtract an additional scalar rounding charge from the lower
endpoint when |m-observed|<=rounding. Proof: combine the lower half of that
absolute bound with the first endpoint of (2). Consumer: certified scalar
source evaluation. This does not evaluate the rounding charge.

Definitions `dualLoad`, `correctedTrial`, and `finiteCorrectedTrial` name
exactly the quantities above; they do not define a replacement RH target.

## Prior art, pins, and inspected sources

Roland Becker and Rolf Rannacher, *An optimal control approach to a posteriori
error estimation in finite element methods*, Acta Numerica 10 (May 2001),
1-102, DOI [10.1017/S0962492901000010](https://doi.org/10.1017/S0962492901000010).
The publisher's abstract and bibliographic record were inspected on
2026-11-18; it records online publication on 2003-01-09. Its dual-weighted
residual method and approximate adjoint solves are established prior art.
No theorem number from its uninspected full text is claimed. The declarations
here are derived explicitly above from the local quadratic source, not
presented as new general duality machinery or direct formalizations of a
particular paper theorem. Limited repository keyword search was inconclusive
and is not evidence that no equivalent declaration exists elsewhere.

Inspected base: `grwtsk/math@600fbd0d2b49d95ae2b289c7ea46b1e58b18a81c`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Canonical source-local dependencies and inspected Git blobs:

- [WeilResponseSignReturn.lean](WeilResponseSignReturn.lean):
  `c28b50f374fbd31060c868133e7907b18bd8d8eb`.
- [WeilShiftedSourceSolve.lean](WeilShiftedSourceSolve.lean):
  `e09524ffb0538023457b3d440144f8bd46fa9092`.
- [WeilFiniteSineSolveResidual.lean](WeilFiniteSineSolveResidual.lean):
  `4c023c9c33f256ba83bda68c47d6d66b47e36fa0`.

## Falsification and evidence

A one-dimensional control with B=I, c=1, h=1, v=0 and exact dual w=1 has
D=0, m=1, eta=1 and sigma=0. Omitting the square term would assert the false
lower bound 1<=0. With B=I, c=0, h=1, v=0 and w=2, omitting the dual residual
would assert the false lower bound 2<=1. These are synthetic algebraic
controls, not Weil counterexamples.

The coordinating issue math#1837 records exact rational tests of (1), (2),
the symmetric bound, and perturbed-residual charging. Those finite controls
are neither a universal proof nor an independent argument for Weil signs.
The complete primary analytic argument is written above. Formal parsing,
elaboration, exact signatures, fresh kernel replay, transitive axiom audit,
clean dependency replay, certified source computation and independent review
are **NOT_RUN**. Dependent source modules retain their own candidate status.

No admissible source sign, effective finite-sine response approximation,
universal certificate supply, primitive-character transfer, critical-line
localization or RH/GRH theorem is supplied here. The immediate consumer is
[WeilResponseQuadratureCorrection.lean](WeilResponseQuadratureCorrection.lean).
