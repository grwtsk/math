# Complete finite endpoint-corrected jet for the existing local-zeta candidate

Owner #194; local analytic consumer #134/#139; downstream canonical consumer #261.
Additive extension of draft #274 at parent
`4d1c83576c58dad709e772aac9b9a34b0423c6cb`, tree
`7e79f0c1df4d627f05eb534b5099a3ad00227aac`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This is source-level finite-jet
refinement, not accepted Lean proof or a new unconditional numerical zero
certificate. The periodic-Bernoulli/Euler--Maclaurin infinite remainder remains
UNPROVED in the new source. No earlier source, target, literal candidate, public
root or execution hold is changed. This is classical finite differentiation and
validated arithmetic, not a claim of a new zeta representation.

## 1. The finite mathematical target is now explicit

Reuse the maintained inclusive finiteDirichletPowerSum: k=1,...,N, with N>=1.
Let P_m(s) be the EXISTING upstream ascPochhammer polynomial evaluated at s.
The new PochhammerJet slope satisfies

    P_0=1, D_0=0,
    P_(m+1)=P_m(s+m), D_(m+1)=D_m(s+m)+P_m.

hasDerivAt_value derives D_m as the actual complex derivative. There is no
factor division. For example, P_3(-1)=0 but D_3(-1)=-1. Multiplying the zero
product by a totalized logarithmic-derivative sum would lose this information.

The exact rational weight is drawn from Mathlib's bernoulli, not an unchecked
coefficient table:

    w_(N,j)=B_(2j)/((2j)! N^(2j-1)), j>=1.

Define the factored coefficient and finite model

    C_(N,p)(s)=N/(s-1)-1/2+sum_(j=1..p) w_(N,j) P_(2j-1)(s),
    Z_(N,p)(s)=sum_(k=1..N) k^(-s)+N^(-s) C_(N,p)(s).

The source proves an exact comparison with the previous finitePowerPoleModel
quotient plus the half-endpoint and Bernoulli corrections. The positive-base
power identity N^(-s)/N^m=N^(-s-m) identifies each denominator form with the
written endpoint-power convention. The model is finite; its definition is NOT
an assertion that a Dirichlet series converges in the critical strip.

The new source derives

    C'_(N,p)(s)=-N/(s-1)^2+sum_(j=1..p) w_(N,j) D_(2j-1)(s),
    Z'_(N,p)(s)=-sum_(k=1..N) log(k) k^(-s)
        +N^(-s)(C'_(N,p)(s)-log(N) C_(N,p)(s)).

The derivative theorem has the explicit nonpole condition s!=1. It is not
finite differencing, an asserted derivative label, or differentiation of an
error inequality. The finite complex theorem allows all s!=1; the rational
inverse-power supplier still has its own stricter Re(s)>=0 domain.

Controls retain B1=-1/2, every even coefficient through B16, the MINUS half term
for the inclusive cutoff, the nonzero endpoint derivative even when log(1)=0,
and derivatives at vanishing Pochhammer factors. With N=1,p=0,s=2 the finite
value is 3/2 and its derivative is -1, while the Dirichlet-part derivative is
zero. A plus half endpoint would instead give 5/2.

## 2. Construct all rounded exponential traces instead of assuming them

RationalRoundedExp starts from the old exact rational Taylor seed at w/2^s.
It floors that seed's coordinates, computes the exact seed residual, constructs
s successive rounded complex squares, and computes every exact local residual.
The complete lists have s+1 values and s square radii by construction.

trace_checked derives success of the UNCHANGED RationalExpTrace checker for
all w with Re(w)<=0 and the existing divided-argument Taylor condition. The
magnitude bound is derived from the existing L1 majorant. No passing trace or
local residual inequality is an additional application premise.

The output uses the previous upward-rounded domination recurrence, including
all seed and square errors and their nonlinear amplification. This is not an
identification of seed error with final error, and not equality of rounded and
unrounded error recurrences. The earlier checker and its hostile controls stay
unchanged.

The reference uses the canonical finite Taylor sum, NOT a claimed formal
refinement of the external prototype's Horner loop. Exact diagnostics compare
the seeds and outputs, but do not qualify a compiler, loop, parser or runtime.
No IO or execution machinery is added to the mathematical repository.

## 3. Refine the complete finite rational value and derivative

RationalEndpointJet computes the coefficient and its first derivative exactly
in Q(i). Its inverse-refinement theorem requires a nonzero actual denominator;
it does not infer validity from totalized division at s=1. The Pochhammer value
and tangent are constructed together and identified with the upstream polynomial
and the newly proved derivative. The Bernoulli source is unchanged.

The prefix folds ascending bases 1,...,N. It uses the existing Ball owner for
addition, multiplication and exact complex scaling. Both value and derivative
folds start at exact zero. Base zero is never read. The final endpoint uses
exactly the same last base N and the complete coefficient jet.

assemble_sound derives simultaneous enclosures for Z_(N,p)(s) and its ACTUAL
derivative from the leaf enclosures. It retains the product cross-radius,
coordinate-floor displacement, upward radius rounding, signs in the derivative,
all positive bases and all endpoint terms. Repeated use of the same uncertain
leaf is conservatively charged; cancellation of centers never cancels errors.

For the original literal center c=1/2+(14134725141735/10^12)i, the new concrete
source constructs every log, derived exponent, complete rounded trace and inverse
power, then the entire 81-term, eight-correction jet. The settings stay 32 log
terms, 32 Taylor terms, seven squarings and 160-bit directed rounding.
All 81 Taylor/domain guards are finite source decisions; trace acceptance and
inverse-power containment then follow by the generic source theorems.

candidate_finite_jet_sound has NO externally supplied accuracy premise. Its
targets are the exact finite function and its derivative. It is an unelaborated
proof candidate, NOT a report of kernel acceptance.

A final displacement to the old presented Newton constants is paid separately.
Independent exact diagnostics reproduce all old 81 power balls and BOTH complete
finite output balls. The approximate summaries of exact rational allowances are

    finite value arithmetic radius       1.990992490490e-29,
    finite derivative arithmetic radius  7.522952651324e-29,
    finite value at presented center      1.588887013980e-18,
    finite derivative at presented center 8.616167113488e-19.

The source deliberately targets the looser common finite tolerance 10^(-17).
The two large by-decide scripts recompute those budgets; no JSON truth value,
stored radius, code-generation annotation or unreported native decision is used.
They have NOT been executed and may require proof-script/resource repairs.

## 4. The one local analytic application premise left is explicit

The new centerEstimates_of_uniform_source theorem candidate requires LITERALLY

    forall z in closedBall(c,1/4),
      |riemannZeta(z)-Z_(81,8)(z)| <= 10^(-16).

It does not construct this premise. The existing written periodic-Bernoulli
argument suggests a much smaller allowance, but the infinite identity, integration
by parts, boundary limits, coefficient majorant and exact uniform bound must still
be formalized and connected to this same finite model.

The new finite model's differentiability and the outer disk's pole exclusion
are supplied in source. Cauchy on the actual analytic difference then gives
first-derivative source error at most 4*10^(-16). Combining with the constructed
finite budgets gives 1.1*10^(-16) for the value and 4.1*10^(-16) for the derivative,
both below the unchanged 10^(-15) centerData errors.

Thus the new conditional local theorem composes into the SAME old Newton
criterion and canonical simple-zero conclusion, without a separate finite-
evaluation premise. The actual analytic remainder is still required. This does
NOT assert an unconditional CenterEstimates proof, critical-line status, ordinal
zero number, complete finite-height inventory, upper count, divisor tail or prime
margin. The Mellin/EM integration remainder is not an omitted-zero tail.

## 5. Evidence and next acceptance boundary

2,709 exact-rational diagnostic assertions passed. These include all 81 generated
traces, 567 actual local-square residuals, seed-versus-Horner comparisons, all
81 preceding power/log records, two independent Bernoulli recurrences, 648
Pochhammer value/derivative cases, 810 coefficient-jet cases, both final output
comparisons and explicit coverage/pole/endpoint controls. Categories reuse inputs
and must not be counted as independent numerical zeros. Every candidate trace
is emitted in the diagnostic inventory. No root finder or zeta evaluator is used.

191 additional ordinary comparisons at 100 decimal digits passed: 54 finite
factorizations, 54 first-derivative checks, 81 original inverse powers and two
complete finite-output checks. These comparisons are NOT interval arithmetic,
not proofs of uniformity, and not execution of the Lean source. The exact source
and all transitive imports/types/axioms still require pinned elaboration and
independent acceptance. Operational resources and parser/compiler correctness are
separate duties. No Lean/Lake invocation, worker action, replay request, hold
release, merge or issue closure is represented by this increment.

Next: formalize the actual periodic-Bernoulli remainder on the exact outer disk,
prove its bound below 10^(-16), and supply it to the literal conditional theorem.
No field may be filled by a numerical plot, a sampled contour or a report label.
