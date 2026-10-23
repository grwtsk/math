# Rational exponential traces: finite checks and analytic refinement

Owner #194; downstream consumers #189/#209/#261. Additive extension of #274.
Parent: `7c859ef091d2504c9dafd3e40f54e1b0c4e38d3a`.
Parent tree: `8e2ffc522c6979d9a74d6a3222b774a35d6699cd`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This note distinguishes the
finite rational definitions, the mathematical correctness argument, and their
pending Lean elaboration. No executable, parser, runtime or worker is qualified.
No originality claim is made for rational checking or scaling and squaring.
All previous mathematical sources, roots and targets are preserved.

## 1. The former gap

The preceding source proves a scaled-exponential theorem with local premises
about the norm of the seed error and every squaring error. It also notes that
its finite real/complex formulas become rational at rational inputs. Neither
observation alone is a proof that a concrete rational arithmetic representation
implements those formulas or that a finite data record meets those premises.

This increment adds a pure rational reference evaluator and a pure Boolean
checker. Source proof candidates connect their results to the existing complex
Taylor and scaling theorems. In particular, local error inequalities are checked
from exact rational values; they are not accepted as unverifiable data fields.
The analytic exponential remains the target, not an alternative definition.

## 2. Rational coordinates and their exact interpretation

Use coordinates (a,b) in Q x Q with interpretation iota(a,b)=a+ib in C. Named
addition, subtraction, multiplication, natural-denominator division, powers,
and a finite Taylor recursion operate only on rationals. No multiplication
instance is installed on the pair: the usual componentwise pair product is
NOT complex multiplication. The named product is

    (a,b) * (c,d) = (ac-bd, ad+bc).

The source derives preservation under iota for every used arithmetic operation
and for the M-term Taylor expression

    T_M(y)=sum_(j<M) y^j/j!.

The natural divisions used in the evaluator have denominators 2^s and j!;
these never vanish. No logarithm, complex exponential or floating arithmetic
is used by these data definitions. The interpretation in C is explicitly
noncomputable; it is used in the proof statements, not the Boolean test.

A rational complex ball is tested by

    inBall((a,b),r) = (0<=r AND a^2+b^2<=r^2).

The source derives its equivalence with |iota(a,b)|<=r from the squared-norm
identity. The sign guard is essential: squaring a negative claimed radius does
not make it valid. The test is Euclidean, not an L1 relaxation; (3,4) is accepted
at radius 5 and rejected at radius 4. Imaginary defects remain visible.

## 3. External input binding and complete trace coverage

The checked input is an externally supplied rational exponent w, rational
magnitude bound B, natural squaring count s and Taylor term count M. The trace
contains a finite list A of rational coordinate pairs, a rational seed radius,
and a finite list sigma of rational square radii. For K=2^s, the Boolean check
requires all of the following:

    Re(w)<=0;
    inBall(w,B);
    (B/K)/(M+1)<=1/2;
    length(A)=s+1;
    length(sigma)=s;
    inBall(T_M(w/K)-A[0], sigma_seed);
    inBall(A[j+1]-A[j]^2, sigma[j]) for EVERY j<s.

All tests are finite rational arithmetic, natural/list operations and finite
Boolean decisions. Radius nonnegativity is included by each ball test. Values
and radii at unused indices are irrelevant; the exact length tests also reject
extra records rather than silently ignoring them. Total defaulted accessors
are used for the mathematical functions, but acceptance requires every used
index to be present. Missing records do not become zero-valued evidence.

The input exponent is not read from an unverified label inside the trace.
Soundness refers to the literal external w checked by the function. A trace
that also legitimately satisfies the inequalities for another input is not a
contradiction; it then has the corresponding error bound for that other input.
A consumer still must identify w with its intended mathematical source exponent.

## 4. The output radius is computed, not trusted

Define in rational arithmetic

    delta = 2(B/K)^M/M!,
    E_0 = delta + sigma_seed,
    E_(j+1) = 2 E_j + E_j^2 + sigma[j].

The exact seed comparison and all exact local ball tests imply the complex norm
premises of the inherited `scaled_exp_trace_error`. Cast-refinement lemmas show
that the rational recurrence is exactly its real-valued roundedRadius. Therefore

    check(w,B,s,M,trace)=true
      ==> |exp(iota(w))-iota(A[s])| <= E_s.

This is the candidate `check_sound` theorem. It has no separate assumed seed
norm, square norms, or final error estimate. Its analytic dependency retains
Re(w)<=0: only the TRUE exponential iterates have norm at most one. The recorded
approximations can leave that disk; the quadratic term E_j^2 is retained.

A second checker, `checkWithin`, also checks an externally requested rational
precision epsilon>=0 and E_s<=epsilon. Its soundness theorem returns that
requested analytic error bound. This distinction is necessary: accepting a
consistent trace with a large error bound does not certify useful precision.
For example, an empty Taylor polynomial at w=0 can legitimately have radius 2,
but cannot pass a request for zero error. It is not a missing seed record.

## 5. Constructed acceptance, not an always-rejecting checker

The reference `exactValue` evaluates the exact rational seed and performs s
rational squarings. Its interpretation is proved equal to the inherited
`scaledTaylor`, not merely numerically close. `exactTrace` constructs the entire
s+1 value list and s zero local-error entries.

`exactTrace_checked` targets acceptance of that constructed trace for EVERY
input satisfying the explicit horizontal, magnitude and Taylor-ratio guards.
It does not assume that some accepted trace already exists. `exactValue_error`
then obtains the analytic output error from the general checker theorem.
This is a source-level total finite construction; it is not a performance bound
or evidence that generated code has executed correctly.

A small nonzero control uses w=-1, B=1, s=1, M=3:

    T_3(-1/2)=5/8,
    A[1]=(5/8)^2=25/64,
    delta=1/24,
    E_1=49/576 < 1/10.

The literal rational `checkWithin` is a named source control, and the composed
analytic theorem candidate is

    |exp(-1)-25/64| <= 1/10.

This is an actual exponential example, not zeta-zero data or a prime certificate.
The control's ordinary `decide` proof term has NOT been run here.

A rounded control uses w=0 with values 1, 11/10, 121/100, a zero seed error and
square radii 1/10,0. Its final error allowance is 21/100. It passes epsilon=1/4
but fails epsilon=1/10, so an early local error cannot be treated as an
unpropagated final error.

## 6. Boundaries that remain

The reference definitions and checker are written as computable Lean code;
only the analytic interpretation is noncomputable. Their refinement theorems
are still unelaborated proof candidates. Auxiliary Python tests below are a
separate model of the formulas, not execution of this Lean checker or evidence
of correctness of compiler output. Independent trust review and exact-head
elaboration remain required before acceptance.

No serialization, rational parser, binary floating-point implementation, process
runner, operational certificate service, memory/resource cap, or code-generation
pipeline is added. A caller must bound list lengths, natural parameters and
rational numerator/denominator sizes operationally. A finite mathematical
computation can still exceed practical resources; errors or interruption must
not be represented as successful checks.

The logarithm range-reduction formulas, selection of quadrature nodes and
precision, and outer weighted summation are NOT rational-refined by this
exponential-only increment. A downstream Mellin node must retain its exact
w=(z-1)c identity and its independently constructed logarithm uncertainty
q*eta; the checked exponential radius does not pay for that uncertainty twice
or remove it. Outer accumulation, same-family coordinates/multiplicities and
the complete analytic source/divisor-tail obligations remain separate. The
distinct triangular observable receives no automatic adapter.

## 7. Static source scope

New owners:

- `GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure`;
- `GRWTSK.Analysis.ErrorBounds.RationalExpTrace`.

The isolated root is `GRWTSK.Interfaces.QuadraticIntervalRationalTraceCore`.
The target is `docs/verification/Interfaces/QuadraticIntervalRationalTraceCore/quadratic-interval-rational-trace-v0.1.toml` and
inherits the exact prior exponential-scaling target. It requires all public
elaborated types, structure-generated declarations, finite decision instances,
full transitive imports/axioms, exact source identity and prior controls.
A static name list is not a type inventory or a kernel receipt.

Pinned upstream ingredients: Mathlib.Analysis.Complex.Norm
(`Complex.sq_norm`, `Complex.normSq_apply`); Mathlib.Data.Rat.Cast.Order
and its cast dependencies; Mathlib.Data.List.GetD (`List.getD_eq_getElem`,
`List.getD_replicate`); finite rational/list decisions and operations.
Their existing notices and authorship are preserved upstream. No source is
accepted through an import or a manifest alone. No worker qualification,
F06 release, build request, merge, issue closure, Legendre or RH claim is made.
