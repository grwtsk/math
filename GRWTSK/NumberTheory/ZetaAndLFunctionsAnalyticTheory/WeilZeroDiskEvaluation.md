# Zero-disk evaluation of the original primitive Weil head

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Primary MSC2020: 11M26; secondary 11M41, 65G20, 42A38.
Owner: [WeilZeroDiskEvaluation.lean](WeilZeroDiskEvaluation.lean).
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801),
[iteration scope](https://github.com/grwtsk/math/issues/1801#issuecomment-6983797790).
This is iteration 2 of conversational refinement, not a scheduled workflow.

## Exact objects and retained hypotheses

The finite set S consists of ACTUAL distinct elements of
`WeilNegativeWitness.CriticalStripZero chi`, with the ACTUAL analytic
multiplicity m(rho)=`zeroMultiplicity chi rho`. Its original complex
coordinate is z_rho=-i(rho-1/2), not the real ordinate projection.
No approximate center is declared a zero. No root existence, root uniqueness,
exact multiplicity or head completeness is inferred from a collection of disks.

For an integrable complex f supported in [-T,T], T>=0, let

    F_f(z)=integral_R f(t) exp(i z t) dt,
    W_f(rho)=integral_R correlation(f,u) exp((rho-1/2)u) du.

The existing source-return identity, with its original plus-sign convention, is

    W_f(rho)=F_f(z_rho) conj(F_f(conj(z_rho))).

For EACH rho in S, assume a center c_rho, radius delta_rho>=0, and center
approximations a_rho,b_rho with bounds e_plus,rho,e_minus,rho, satisfying

    |z_rho-c_rho| <= delta_rho,
    |F_f(c_rho)-a_rho| <= e_plus,rho,
    |F_f(conj(c_rho))-b_rho| <= e_minus,rho.

The latter errors are necessarily nonnegative by their hypotheses. These are
full-complex enclosures. Disks may overlap; their labels remain distinct ACTUAL
zeros. Overlap does not duplicate a zero or discard its analytic multiplicity.
A region supplier must still establish the actual labeled-zero statements.

## WZD-1: analytic finite-evaluation supplier

Use [FourierDiskEnclosure](../../MeasureAndIntegration/FourierDiskEnclosure.md):

    Delta_rho = T delta_rho exp(T|Im(c_rho)|+T delta_rho) ||f||_1,
    alpha_rho = Delta_rho + e_plus,rho,
    beta_rho  = Delta_rho + e_minus,rho,
    R_rho = alpha_rho |b_rho| + beta_rho |a_rho| + alpha_rho beta_rho.

Define the exact supplied-center estimate and the aggregate evaluation charge:

    V_S = Re sum_{rho in S} m(rho) a_rho conj(b_rho),
    R_S = sum_{rho in S} m(rho) R_rho.

Let P_S be the original `partialHeightContribution`. Then

    |P_S - V_S| <= R_S.                                  (WZD-1)

Proof: the exact correlation identity returns each weight to its reflected
Fourier product; FDE-2 bounds its deviation from a_rho conj(b_rho). Multiplying
by the same nonnegative analytic multiplicity, summing all norm bounds, and
using |Re(w)|<=|w| gives WZD-1. This supplies the AGGREGATE finite-evaluation
premise from LOCAL data, rather than simply renaming that premise.

The local location error itself has an analytic proof in the new provider;
it is not a supplied derivative or Lipschitz constant. Center-transform
enclosures are still supplied, not computed by this file. Thus this is not
a completed numerical quadrature or root-validation algorithm.

## WZD-2: full arithmetic enclosure and sign return

For the arithmetic endpoint chi is primitive and nonprincipal. Preserve the
original admissible smooth real odd f at radius T; use its complex real lift.
The function is Mathlib's analytically continued ordinary Dirichlet L-function.
Let S be a subset of the STRICT native height window |Im(rho)|<H, and let
M be a natural upper bound on the complete native analytic-multiplicity count.
Keep D,L>=0 and the source-matched all-height bound N_chi(U)<=D U(log U+L), U>=2.
Require 2^J<=1+H. Retain the unchanged charges from the preceding iteration:

    E_tail = 4 exp(T) D(L+1) d_1(f)^2 (J+2) 2^(-J),
    E_missing = (M-m(S)) exp(T) d_0(f)^2,
    d_k(f) = 2^k (integral |f| + integral |deriv^[k] f|).

Finally allow independently validated FINAL SUM rounding, |V_S-v|<=r. Then

    |Q_chi(f)-v| <= E_tail+E_missing+R_S+r.                (WZD-2)

This uses WZD-1, |P_S-v|<=R_S+r, and the existing
`abs_primitiveArithmeticValue_sub_partial_estimate_le` without changing it.
Its gamma, conductor, inverse-character return, primes and all omitted zeros
are those of the existing arithmetic consumer. A floating computation of V_S
or of any error budget is not certified merely by writing the displayed sum.
Such computation needs outward enclosures; an evaluated total upper bound
can be used by transitivity after proving that it bounds the displayed charge.

In particular,

    v+E_tail+E_missing+R_S+r < 0  ==> not CL(chi),          (WZD-3)

where CL(chi) is the unchanged `Conditional.DirichletCriticalLine chi`.
Under CL(chi), the existing original arithmetic positivity theorem makes
Q_chi(f)>=0, contradicting that negative upper endpoint. No actual negative
certificate, off-line zero, RH failure or GRH failure is exhibited.

The finite-head result WZD-1 also permits conductor one. WZD-2 and WZD-3
require chi!=1 and do NOT assert a pole-inclusive zeta endpoint. RH for zeta
is still explicit in any global GRH return. These statements cannot be
transferred to a broader L-function family without source-return theorems.

## Individual declaration correspondence

Prefix: `GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain`.

| Public declaration | Exact inputs and source-return role |
| --- | --- |
| `abs_partialHeightContribution_sub_zeroDiskEstimate_le` | WZD-1; exact canonical contour/Fourier identity, FDE-2, actual multiplicities. Retains local disk and BOTH center-evaluation bounds. |
| `abs_primitiveArithmeticValue_sub_zeroDisk_estimate_le` | WZD-2; WZD-1 plus the prior original arithmetic enclosure. Retains native count, strict-height subset, missing mass and final rounding. |
| `not_criticalLine_of_negative_zeroDisk_estimate` | WZD-3; WZD-2 and original same-character positivity under CL. Retains a strictly negative total upper endpoint. |

`zeroDiskEstimate` and `zeroDiskEvaluationBudget` define only finite approximations
and charges; neither is a replacement arithmetic Weil form or zero predicate.
The private `disk_lift_integrable_supported` extracts integrability/support
from the original admissible smooth domain, not an additional hypothesis.

This is a local consequence, not a direct new paper adaptation. Dated source
comparison, 2026-11-18: `WeilPartialHeightEnclosure` supplied |P_S-v|<=r as a
single premise. This increment proves that premise from explicit local data
and the analytic frequency estimate. `WeilCorrelationFourier` supplies the
same signed complex product; the source is not modified to force positivity.
No independent proof or novelty is claimed. Novelty UNASSESSED.

## Failure tests and first remaining obligations

1. Removing the alpha*beta term is false: a=b=0 and exact u=v=1 give a nonzero
   product error with both linear terms zero. Replacing a conj(b) by |a|^2 is
   also false in general (a=1,b=-1).
2. A list of disks with no source-root witness supplies none of the hypotheses
   about actual zeros. A list counting a multiple zero once as mass one is
   invalid. All charges scale by the exact analytic multiplicity.
3. Centers need not lie on the line. A full-complex displacement cannot be
   replaced by an ordinate-only tolerance. Errors at both reflected centers
   remain charged even when delta=0. Final arithmetic rounding also remains.
4. Zeros exactly at H belong to the infinite tail. Unknown zeros BELOW H are
   charged by the preceding missing-mass term. No term is silently dropped.

These are written hostile checks, not executed interval certificates or an
independent mathematical review. Next local suppliers: certify the association
between actual zeros and validated regions with analytic multiplicities; compute
outward enclosures of both literal center transforms and all error constants.
Universal lower certificates for every required character, support, test and
accuracy remain OPEN. The global arithmetic sign problem is not discharged.

## Exact-source evidence and reproduction

Inspected base: `grwtsk/math@749e1706a21a4fe07fda373fb58d5ed15800591c`.
Complete root tree: `1dff86fdf0376e612b2872150152e02b99dc6f4c`.
The concurrent translation-energy additions in that base are preserved. Root policies,
source ancestors and pins were inspected; target-scoped AGENTS requests returned
404. The unchanged .github tree has no Actions workflow. No pins, root imports,
existing sources or historical acceptance statuses are changed.

Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
`WeilPartialHeightEnclosure.lean` blob:
`db4f5876c2268ac8433fb335bc0b6fe38f41e94f`.
`WeilCorrelationFourier.lean` blob:
`082146c18fb6394c58af4c3d664480d7ed9cd4cf`.
The new Fourier provider is in this same publication, not independently verified.
Source hashes, changed paths and publication readback belong in issue #1801.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Elaboration, build, exact expected signatures, fresh kernel replay, transitive
axiom audit, certified computation and independent review: NOT_RUN. No provider
receipt is promoted to these new declarations. Static text checks are only text
checks; publication is not proof acceptance. No claim is made that the root
default target imports or checks these new modules.

Execution skill blocker: the canonical `noe-proof-automation/SKILL.md` returned
404 at Noe main `8ffd1c7de4f701a2fa7dc12d713bd2aaa637a4bd`; no verified local
skill directory or Lean/lake executable was available. Dependent proof execution
was not dispatched. Container public-GitHub retrieval failed due DNS resolution;
authenticated connector source reads/publication remained available.

After satisfying current execution policy in a clean exact-pin checkout, run

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroDiskEvaluation

This is an intended command, NOT_RUN. Then inspect all three expected public
signatures, freshly replay the reached declarations, and audit transitive axioms.
Preserve any future execution failure rather than relabeling it NOT_RUN.
