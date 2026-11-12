# Both weighted horizontal edges of the actual Weil contour

Attribution: grwtsk contributors. Date: 2026-11-11.
Inspection base: `21c3956913b469693e5acaf5bc6bf05c34c78196`; issue math#1801, scope comment 6815196548.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
MSC2020: primary 11M41; secondary 11M06, 30E20.
[Maintained Lean source](../WeilHorizontalEdges.lean).
Source SHA-256: `b9f529135bdbb5a2166f4343e239c1b4b0ae0c91a77a5b4740e52338af6693c2`; Git blob: `296421b2cc36962787cbc5f167bbad7dec9e2dfc`.

## Evidence boundary and consumer

SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay, transitive axiom
audit, independent mathematical review and repository-wide verification are NOT_RUN.
The source bodies and the mathematical argument below are distinct from those
checks. Imported source candidates retain their evidence status. Novelty is
UNASSESSED. No program is marked complete, and no RH/GRH or positivity conclusion
is asserted. These are classical contour-estimation arguments.

The consumer is the horizontal-boundary term in the actual pole-inclusive Weil
explicit formula. The preceding source supplied completed logarithmic derivative
bounds but did not integrate them. The new module supplies genuine integrability,
complete-edge estimates and limits, with both endpoint orientations preserved.
No arithmetic source, correlation, admissibility predicate, normalization, root
import or dependency pin is replaced.

## Exact objects and quantifier order

Use the unchanged correlation

    C_f(r) = integral_R conjugate(f(t))*f(t+r) dt,
    W_f(s) = integral_R C_f(r)*exp((s-1/2)*r) dr.

The test is the canonical Admissible f, meaning C-infinity and compact support,
with tsupport(f) contained in [-A,A], A>=0. It is not restricted to analytic
compact tests or to even, real-valued or pole-neutral tests. Define

    p_3(f) = derivativeL1Cost f 3
           = 2^3 (||f||_1 + ||f^(3)||_1).

For primitive chi of positive level N, the actual completion is
Lambda_chi = DirichletCharacter.completedLFunction chi. It contains the genuine
Gamma parity factor, but no extra N^(s/2). Set

    C_chi = horizontalLogDerivativeConstant chi + 1
            + gammaRLogDerivativeConstant > 0,
    K_chi(f,A) = C_chi * p_3(f)^2 * exp(3A/2)^2
               = C_chi * p_3(f)^2 * exp(3A).

The source theorem has the order

    for every primitive chi, there exists T:Nat->Real,
    for every admissible f and its support radius A, ... .

Thus T depends on the arithmetic source, not on the test. It satisfies
n+2<T_n<n+3 at every index. The actual completion is nonzero for every real
sigma on both lines sigma+i*T_n and sigma-i*T_n. Its source-derived bound is

    |Lambda'_chi/Lambda_chi(sigma+i*epsilon*T_n)|
      <= C_chi*(1+T_n)^4

for -1<=sigma<=2 and epsilon=-1,+1. No such bound is an extra hypothesis of
the final theorem. The generic helper statements explicitly retain their suppliers.

## 1. Integrability before estimating the integrals

Let U={s in C : Im(s) != 0}. It is open. The primary continued-source theorem
proves complex differentiability throughout U, since both exceptional points
0 and 1 are excluded there. DifferentiableOn.analyticOnNhd therefore proves
analyticity at every point of U. This is the private helper
analyticAt_completed_source_nonreal; it does not assume global entire completion
in the conductor-one case.

On a selected horizontal line, source nonvanishing and analyticity imply that
Lambda'/Lambda is analytic at every point. The canonical compact-support theorem
makes W_f entire. Their product, composed with sigma -> sigma+i*t, is continuous
on the closed segment [-1,2]. ContinuousOn.intervalIntegrable supplies the Bochner
integral on -1..2. Its symmetric counterpart supplies integrability on 2..-1.

This step is not inferred from the convention for an undefined integral. The
norm-horizontal-integral helper retains an explicit interval-integrability premise,
and the final actual-source consumer constructs it. The source estimates have
no path pole and no division at totalized exceptional values.

## 2. The all-point inverse-square bound

For every sigma in [-1,2], |sigma-1/2|<=3/2. The literal canonical contour-weight
theorem with derivative order k=3 gives

    |W_f(sigma+i*epsilon*T_n)|
      <= p_3(f)^2 * (exp(3A/2)/(1+T_n)^3)^2.

Multiply by the completed logarithmic derivative ceiling. Since 1+T_n>0,
exact algebra gives

    |W_f(s) Lambda'_chi/Lambda_chi(s)|
      <= K_chi(f,A)/(1+T_n)^2.                              (1)

Every point of each edge, both signs and every n are covered. This is not a
sampled norm bound. The full complex weight is retained, not its real part,
its ordinate projection or an off-axis norm square.

## 3. Both oriented edges and the residue normalization

Write

    J(t) = integral_-1^2 W_f(sigma+i*t)
                               Lambda'_chi/Lambda_chi(sigma+i*t) d sigma.

The segment length is exactly three, hence (1) gives

    |J(+T_n)|, |J(-T_n)| <= 3*K_chi(f,A)/(1+T_n)^2.          (2)

For the positively oriented rectangle, the top edge runs from 2+iT to -1+iT,
while the bottom runs from -1-iT to 2-iT. In each parametrization dz=d(sigma),
not i*d(sigma). Therefore the actual horizontal contribution is

    H(T) = [integral_2^-1 integrand(+T) d sigma
             + integral_-1^2 integrand(-T) d sigma]/(2*pi*i)
         = [J(-T)-J(+T)]/(2*pi*i).                         (3)

The theorem orientedHorizontalBoundary_eq proves (3) from the pinned
intervalIntegral.integral_symm. The exact pinned argument order is
integral_symm(-1,2), whose left side is the integral from 2 to -1.

The triangle inequality in (3), followed by |2*pi*i|=2*pi, gives

    |H(T_n)| <= (3/pi)*K_chi(f,A)/(1+T_n)^2.                (4)

Both complete integrals are paid separately; cancellation is not used to
conceal a nonvanishing edge. The denominator pi is positive before division.

## 4. Actual limits, including the reversed upper edge

Because n+2<T_n,

    0 <= K/(1+T_n)^2 <= K*(1/(n+1))^2

for every K>=0. The shifted reciprocal sequence tends to zero. Taking its
square and multiplying by the fixed coefficient preserves that limit, and
norm squeeze proves convergence of any complex sequence with this norm bound.
Apply this to (2), separately for epsilon=-1,+1, and to (4). The genuinely
reversed top integral is -J(+T_n), so its zero limit is proved as well. The
final theorem returns the full-edge bounds, both forward limits, the reversed
top limit and the oriented normalized limit.

The final zeta declaration uses the primary identity
completedLFunction(1 modulo 1) = completedRiemannZeta and canonical primitivity.
Both poles at 0 and 1 remain inside the prospective rectangles. No hypothesis
W_f(0)=0 or W_f(1)=0 is imposed. Nothing changes their separate logarithmic
residues or the two pole cross-products. All conductor, gamma/parity and
inverse-character arithmetic conventions are untouched.

## Falsification and scope checks

- Derivative order k=2 would leave only a constant upper budget after fourth-power
  growth; it would NOT prove vanishing. The source uses k=3 explicitly.
- A fixed-test result does not control tests f_n with growing p_3(f_n), or growing
  support A_n. Such variation requires the actual numerator divided by
  (1+T_n)^2 to tend to zero; this theorem does not supply that additional fact.
- Pointwise values on a finite grid do not imply (1); the bound is quantified over
  the entire closed edge. Source nonvanishing is supplied on the whole line.
- Reversing the bottom as well as the top, or inserting an extra i in dz, gives
  a wrong contour identity. The scalar orientation check with W(s)=s, D(s)=1
  gives H(T)=-3*T/pi. That check is algebraic and not an arithmetic certification.
- A function can have a totalized logarithmic derivative at a zero; no such
  value is used to claim regularity. Analyticity and nonvanishing precede integration.
- The alternative dominated-convergence proof on the fixed sigma interval gives
  the same fixed-test conclusion from (1); it is not a separate independent
  proof of the arithmetic growth supplier or of the full explicit formula.

## Source mapping and remaining obligations

## Source identities and primary provenance

Local attribution: grwtsk contributors (MIT). Inspected math main: `21c3956913b469693e5acaf5bc6bf05c34c78196`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local source SHA-256: `b9f529135bdbb5a2166f4343e239c1b4b0ae0c91a77a5b4740e52338af6693c2`. Local source Git blob: `296421b2cc36962787cbc5f167bbad7dec9e2dfc`.

Primary formal input: Yury Kudryashov, Patrick Massot and Sébastien Gouëzel,
Mathlib `MeasureTheory/Integral/IntervalIntegral/Basic.lean`, Apache-2.0,
`ContinuousOn.intervalIntegrable`, `intervalIntegral.integral_symm`, and
`intervalIntegral.norm_integral_le_of_norm_le_const`; blob
`2504147e2230a26eb804b0898004d0186c4e36a1` at the above pin.
[Exact upstream source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean).
The norm bound uses the actual pinned **uIoc** signature, not the current documentation's changed API.

The limit input is the mathlib community's
`Analysis/SpecificLimits/Basic.lean`, `tendsto_one_div_add_atTop_nhds_zero_nat`,
blob `c633976a412c7d498b55d6188e811d005fd73da4`; and Patrick Massot,
Johannes Hölzl and Yaël Dillies, `Analysis/Normed/Group/Continuity.lean`,
`squeeze_zero_norm` (generated additive declaration). Both are Apache-2.0.
[Exact limit source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecificLimits/Basic.lean).
[Exact norm-squeeze source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/Continuity.lean).

Actual-source regularity: David Loeffler and Michael Stoll,
`NumberTheory/LSeries/DirichletContinuation.lean`,
`differentiableAt_completedLFunction`, `completedLFunction_modOne_eq`,
blob `89c72580697983d86706cff17ccbea2cee6475a3` (Apache-2.0).
[Exact continuation source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean).

Canonical dependencies (MIT; grwtsk contributors) at inspected main:
`WeilContourWeight.lean`, `analyticOnNhd_correlation_contour_weight` and
`norm_correlation_contour_weight_le_strip`, blob
`aa53350b401764c081a0559833d7f840a5ecc847`;
`DirichletCompletedHorizontalLogDerivative.lean`,
`exists_horizontal_completedLFunction_logDeriv_bound`, blob
`4ca3d1fc73c6670a347f77943b403d10ad96a522`.
Imported candidates retain their unverified status. The mathematical argument
and declaration-specific dependency use are given below and in the [README](README.md).

The nine public theorems and three new definitions have individual exact-statement
records. The private helper is mapped in section 1 above. The current equivalent-
source search found and reused WeilContourWeight and the completed-source boundary
module. Code search returned no additional WeilHorizontal match; this is not a
corpus-wide absence or novelty conclusion. The intended new source path was
confirmed absent at the inspected main before publication.

RP-OC-02 receives actual horizontal removal at source-candidate level. RP-OC-01/B's
source-growth/count inputs are reused, not reverified or newly proved. A receives
statement/provenance correspondence, not formal admission. RP-OC-03 through
RP-OC-10, C-F, and the four marked-link, finite-field, higher-geometric and
prime-distribution extensions are unchanged by this increment. These labels are
program identifiers, not new frontier claim IDs.

The next formal obligation remains the finite rectangular residue/excision identity
for this actual weighted completed source, with the original zero multiplicities
and both applicable zeta poles. Full-line Fourier inversion, every prime-power and
dual-character contribution, compensated archimedean evaluation and arithmetic
limit assembly still require Lean implementations/checks. Arithmetic positivity
and joint varying-test interpolation-cost/tail control remain separate.

## Reproduction boundary

Proposed, NOT EXECUTED:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilHorizontalEdges

Then inspect each exact signature and run #print axioms for all nine public
theorems and their imported closure, followed by fresh kernel replay. No transitive
axiom report is presently available. Lean/Lake and verified local canonical skill
checkouts are absent. The prescribed proof-automation skill returned 404 at Noe
main `8b50d43323f27bb13bdcae9f2e2b4a81c9895827`; dependent execution stopped.
No runner or workflow was dispatched. Source integrity and publication observations
are recorded in math#1801; they are not parser, compiler or kernel evidence.
