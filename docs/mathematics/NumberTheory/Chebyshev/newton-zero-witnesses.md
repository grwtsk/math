# Local zeta-zero witnesses from center enclosures

Parent: grwtsk/math PR #317, exact head
`2f3b0f39afc901d69fec90a1207c4be8f4b61869`.
Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.
No Lean/Lake, compiled checker, build request, external replay, zero dataset,
actual zeta evaluation, or successful prime margin is represented here.

## What is derived and what remains supplied

The parent constructs a complete canonical head binding from separated,
contained local zero witnesses and a complete-count upper bound. This increment
supplies the local witnesses from center enclosures and rational Newton tests.
It does not supply those center enclosures for any actual data packet, and it
does not supply the independent sharp complete count.

There are exactly two local analytic input facts, for the actual source and at
the same exact rational complex center c:

    |zeta(c) - v| <= ev,
    |zeta'(c) - d| <= ed.

The center approximations, error numbers, disk radius, and approximate inverse
A are rational data. A Boolean success checks the finite inequalities below;
it does NOT prove either analytic input fact. In particular, unbound fabricated
v=0 and d=1 can pass arithmetic guards for a function with no zero.

## Fixed-inverse contraction

For a holomorphic f, use G(z)=z-A*f(z), with one fixed A != 0. This is not Newton
iteration with an inverse recomputed at each point. On the closed disk D(c,r),
suppose |1-A*f'(z)| <= q < 1, |A*f(c)| <= Y and Y+q*r <= r. The complex derivative
bound and the real-convex mean-value inequality give

    |G(z)-G(w)| <= q*|z-w|.

Also |G(z)-c| <= q*r+Y <= r, so G maps the complete closed disk to itself.
Banach's theorem supplies a fixed point; A != 0 converts its equation into
f(z)=0. The same contraction estimate proves uniqueness on the disk and

    |z-c| <= Y/(1-q).

The self-map budget may hold at equality. The contraction threshold q<1 is
strict. Zero inverse, a zero radius, q=1, or an excessive residual does not
satisfy this implementation. The derivative-defect condition excludes f'=0
throughout the disk, so this first-order method is not a multiple-root method.
The semantic construction retains the inherited classical foundations; it is
not a choice-free or executable root enumerator.

## Actual curvature, not another supplied derivative oracle

Reuse the existing signed centers C_N=2 +/- i*(N+3/2), N>=2, with the unchanged
source theorem |zeta(z)| <= (N+2)^3 on the COMPLETE closed radius-three disk.
That disk avoids the pole and all real-axis trivial zeros. For any w in its
closed radius-5/2 subdisk, the closed radius-1/2 disk around w lies inside it.
Cauchy's second-derivative estimate yields

    |zeta''(w)| <= 2!*(N+2)^3/(1/2)^2 = 8*(N+2)^3 = M_N.

The factorial two and squared radius are both retained. Analyticity on the
whole closed disk and its boundary is obtained from the actual zeta domain.
This estimate needs neither RH nor an observed zero list. It is deliberately
coarse and may force small certification disks.

A proposed disk D(c,r) is checked to lie in the 5/2 core using rational squared
norms:

    r>0, r<=5/2, normSq(c-C_N) <= (5/2-r)^2.

The nonnegative margin 5/2-r is indispensable; squaring a negative margin alone
would admit disks that are too large. Both signed charts are supported. This
method currently covers only the guarded N>=2 charts, not all low heights.

The curvature estimate supplies, throughout D(c,r),

    |zeta'(z)-zeta'(c)| <= M_N*|z-c| <= M_N*r.

No all-disk derivative bound is left as an application premise.

## Finite rational budgets

Let rect(a)=|Re(a)|+|Im(a)|. With the two center enclosures, compute

    Y = rect(A)*(rect(v)+ev),
    q = rect(1-A*d) + rect(A)*(ed+M_N*r).

The proof derives the actual residual and whole-disk defect bounds from these
expressions. The check requires nonnegative ev,ed, positive normSq(A), q<1,
and Y+q*r<=r, in addition to the chart geometry.

The resulting theorem produces an actual canonical ZeroPoint in the disk,
its tighter residual/(1-q) location bound, a nonzero actual derivative, and
uniqueness among actual canonical zeros in that disk. Nontriviality follows
from the entire chart's positive distance from the real axis and the actual
zero equation; it is not supplied as a new zero predicate or line projection.
A disk centered on Re=1/2 does not assert that its zero is on that line.

## Exact connection to the maintained numerical records

Each local Newton center and radius must equal the corresponding rational tent
row's center and coordinate radius. For unit-weight rows, the new constructor
supplies local existence to the parent's unchanged of_simple_witnesses.
The parent still requires strict pairwise separation, closed-height containment
at the SAME cutoff T, and the independent inequality heightCount(T)<=k.
It then constructs the original HeadBinding and yields exact multiplicities
and complete coverage. The count is not obtained from the submitted rows.

The numerical finite-head verifier, complete omitted-zero tail, signed
trivial-zero correction, proper-prime-power subtraction and strict prime
margin are unchanged. The new prime wrapper is conditional on both center
certification and global counting, numerical acceptance and the same positive
margin. No all-interval margin or Landau-problem conclusion is supplied.

## Validation boundary

The pure computational definitions use rational arithmetic and finite guards.
The analytic soundness proofs and data-to-zero construction are source drafts,
not accepted Lean results. They and their entire inherited closure still need
exact-head elaboration, generated-member/type review and axiom/native auditing.
No code-generation, local Lean evaluation or verification hold release occurred.

The companion diagnostic uses known-root complex polynomial models, whose
values and derivatives are computed independently by exact rational algebra.
It checks finite disk points, root locations, the residual/(1-q) bound, chart
geometry and deliberate failures. Finite point samples do not prove any
all-disk analytic assertion; Cauchy and Banach are the proof mechanisms.
The diagnostic explicitly exhibits arithmetic acceptance without semantic
center evidence. No actual zeta zero is certified by these synthetic checks.

## Source references and next obligations

Pinned Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.
Primary inspected suppliers are `Mathlib/Topology/MetricSpace/Contracting.lean`,
`Mathlib/Analysis/Complex/Liouville.lean`, the mean-value API, and the iterated
one-variable derivative API. The maintained actual-source supplier is
`GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean`.

Next local work is a checked evaluator for BOTH actual zeta(c) and zeta'(c),
including complete analytic tails and binding their rational enclosures to c.
The current endpoint power evaluator is not that zeta evaluator. A sufficiently
tight complete multiplicity count at the packet cutoff remains independently
necessary; coarse counting growth cannot be asserted to saturate the packet.
Input provenance, decoding/resource limits, practical precision and universal
strict prime margins remain separate. Existing modules and trust boundaries
are preserved.
