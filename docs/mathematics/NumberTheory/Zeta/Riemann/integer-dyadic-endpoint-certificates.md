# Integer witnesses for directed dyadic squaring

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Parent: 3084340ce5ef250adcb2d40b642d99d93c864286 (PR #325).
Scope: #261 / #189 under #257. No Lean/Lake/native decision/build/worker
or accepted replay has been requested or run. This source increment does not
change the original endpoint algorithm, SourceAcceptance, or its analytic dependencies.

## The verification bottleneck

The existing block checker requires exact equality with every original rational
endpoint computation. A transcript is not trusted. The seed and its uncertainty
are rational expressions involving the existing logarithm and finite Taylor sum.
Once that seed has been rounded, all later value components and the complete
stored error are integer numerators over the fixed grid G=2^b.

This increment uses that invariant to expose local INTEGER inequalities whose
truth forces exact agreement with each original rational squaring operation.
It also provides a closed source proof script for the concrete base-one leaf.
The scripts have not been elaborated or executed; no accepted theorem count is claimed.

## One exact rounded transition

Represent the current state by integers (u,v,e), meaning value (u+iv)/G and
error e/G. Define

    Ar = u^2-v^2
    Ai = 2uv
    Ae = e[2(|u|+|v|)+e] + 2G.

A proposed next state (U,V,E) is accepted only when e,E are nonnegative and

    G U <= Ar < G(U+1)
    G V <= Ai < G(V+1)
    G(E-1) < Ae <= G E.

The first two are floor windows. The last is a ceiling window, because errors
are rounded upward. The positive denominator is derived from G=2^b. Negative
real and imaginary numerators need no special truncation convention: the exact
floor inequalities already cover them. No division, floor or rational
normalization occurs inside StepValid.

The strict sides are essential. At an exact grid boundary the neighboring
integer is rejected. The term e^2 and the local 2/G rounding allowance both
appear in Ae before the stored error is rounded upward. Nothing is dropped
because the represented complex number happens to have a simple exact value.

Int.floor_eq_iff from pinned Mathlib supplies the scalar proof. Pure rational
algebra identifies the scaled original expressions with Ar/G, Ai/G and Ae/G.
Thus step_refines concludes equality of the entire inherited State, including
its error, not merely overlap of two enclosures.

## Seed and trace boundaries

The initial trace state is checked against the ORIGINAL rational seed p and
complete seed error e0:

    u <= G Re(p) < u+1
    v <= G Im(p) < v+1
    E-1 < G(e0+2/G) <= E.

The seed test remains rational arithmetic. This increment does not replace the
seed, certify a different polynomial, or make seed recomputation cheap. The
first rounding is charged even for zero squarings.

A trace has exactly s+1 typed states and s checked adjacent transitions. The
initialization and every step are required. trace_refines proves exact equality
of the decoded final state with the original run. The endpoint checker still
requires the original rational admissibility predicates and exact equality
with the complete claimed output state. A requested tolerance remains a
separate test. Neither a hash nor a stored success flag is an input proof.

The new route is sufficient for the unchanged computation equality; no general
trace-generation algorithm, universal target-attainment theorem, runtime bound,
proof-size bound, byte-decoder refinement or measured speedup is supplied.

## A concrete closed proof script for the first leaf

At base 1, the fixed schedule has logarithm exponent zero. The existing finite
logarithm center and error are both zero. Therefore the 22-term small-argument
Taylor seed is exactly one and its pre-rounding error is zero.

Nevertheless the historical algorithm deliberately retains its rounding
allowances. At 64 grid bits the nine integer states are

    value numerators: (2^64,0) at every stage
    error numerators: 2,7,17,37,77,157,317,637,1277.

Equivalently e_j=5*2^j-3 for j=0,...,8. Each of the eight local integer checks
has a small norm_num proof script. They compose with the symbolic seed
identities to give first_endpoint_compute, whose conclusion is EXACTLY

    original_compute 1 (-c) (schedule 1) = (value=1, error=1277/2^64).

There is no SourceAcceptance premise in that script and no native decision.
It supplies the singleton first-prefix check for any transcript whose first
record is exactly this state. It is NOT the entire first 64-endpoint block.

No new closed Lean theorem has been accepted by execution in this work.
All 66 concrete block/terminal/final obligations remain unaccepted in Lean.
The remaining 4095 prefix endpoints, terminal endpoint, complete final
aggregation, and inherited analytic/type/axiom audits are not discharged by
the base-one identity. The old SourceAcceptance proposition is untouched.

## Bounded diagnostics

The exact-rational Python suite completed 13,517 assertions, including repeated
elementary comparisons. It covered 3,034 scalar candidate windows, 700 signed
transition models, 24 seed/zero-step models, and 65 freshly recomputed endpoints
(bases 1 through 64 and terminal 4097). Their 520 integer transitions passed;
all 65 final states matched the retained parent transcript. Each changed field
of selected transition states was rejected. The source controls also reject
negative truncation, wrong strict endpoints, dropping e^2, changing a value
numerator, and pretending the base-one computed error is zero.

The comparison uses the retained parent rational evaluator. The new integer
window checks are a separate expression of its rounding operations, but this
is NOT an independent full implementation or full packet replay. No actual
zeta computation, zero-count certificate, prime margin, floating-point
arithmetic or Lean invocation was used. The external trace JSON remains an
untrusted diagnostic artifact, not a committed mathematical certificate.

## Next proof work

Elaborate and audit the integer refinement and first-leaf scripts through an
authorized trusted route. Then provide similarly source-bound seed and step
proofs for nontrivial endpoint leaves, preserving all original guards and
states. The full terminal and final aggregation checks, complete zero count,
canonical head identity and all-interval strict prime margins remain independent.
No merge, issue-state change, verification-hold release, RH theorem or Legendre
theorem is represented by this increment.
