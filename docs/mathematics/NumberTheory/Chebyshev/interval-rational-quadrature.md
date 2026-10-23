# A complete rational uniform-interval check

Owner #194; consumers #189/#209/#261. Additive continuation of draft #274.
Parent: `2d753fb9b64f1fa6a78c2c4802466e373020d83e`.
Parent tree: `d3490aafef64c962f3dbad3a49d01d0098373f70`.
Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** These are Lean proof candidates,
not accepted proof terms, a qualified executable, or a spectral prime certificate.
All earlier source, hypotheses and replay targets are preserved. The estimates
and finite checking pattern are elementary; no originality claim is made.

## 1. Scope: from an actual density node to its integral

The preceding rational node checker concerns

    f_z(t) = exp((z-1) log t).

An accurate list of such values does not establish an integral error. The
interval must be the intended one, every used node must match its position,
cell lengths must have the correct sign, and discretization and arithmetic
errors must still be charged. This increment supplies those finite checks for
one **uniform** interval, using the unchanged integral-defined Mellin kernel.
It does not yet implement arbitrary user-supplied partitions or a finite zeta
family. Uniform coverage is constructed, not inferred from an unverified list.

The external rational inputs are a,b,z and a natural cell count N. Acceptance
requires

    1<a<=b, N>0, Re(z)<=1.

Define, in exact rational arithmetic,

    d=(b-a)/N, x_i=a+i*d, i=0,...,N.

The cast lemmas identify x with the existing real uniformNodes. Positive N
supplies x_0=a and x_N=b; a<=b supplies d>=0 and monotonicity of the whole affine
node function. There is no rounded-node convention or approximate endpoint
matching. N=0 is rejected even when a=b; a=b is admitted at positive N and then
all weights vanish. This is a domain choice of this checker, not an assertion
that the degenerate integral needs numerical sampling.

## 2. Every node uses its own exact external input

A sample holds only its natural resolutions and the preceding exponential
trace. Exactly N sample records are required. At index i the checker invokes
RationalMellinNode.check on the same external z and the computed x_i. The log
center, logarithm error, exponent, bound, and complete seed/squaring trace are
therefore checked at that literal node. There is no separately supplied node
coordinate, weight, claimed exponent identity, or total error to trust.

Let v_i be the output of that checked node and E_i its computed total allowance.
The inherited node theorem gives

    |f_z(x_i)-v_i|<=E_i.

E_i already includes the logarithm-input charge and the complete exponential
trace allowance. No new logarithm or exponential is defined by this increment.
The same shared-log uncertainty remains charged, without independence claims.

The exact rational term list is recomputed as

    term_i = d*v_i, i<N.

Changing b or N changes the weights and possibly the nodes. Equal numerical
values at different positions do not license omitting a position; exactly N
records and checks are retained. A record legitimately accurate at several
inputs may pass at each with the corresponding bound. This is not a uniqueness
or source-label authentication theorem.

## 3. A checked weighted accumulation, not a claimed final sum

RationalFiniteSum is a generic arithmetic component taking an external list
of exact rational complex terms. Its trace contains N+1 accumulator values
and N radius entries. The Boolean test checks these exact lengths, A_0=0, and
for EVERY i<N

    inBall(A_(i+1)-(A_i+term_i), r_i)=true.

It reuses the exact squared Euclidean ball test with the radius sign guard.
Missing values and missing radii cannot become evidence through defaulted
accessors. Negative radii and imaginary defects are tested. Extra entries are
rejected rather than ignored. A chain of exact additions from a nonzero seed
is rejected: such a chain does not represent the intended sum.

The existing finite-step theorem, together with rational/complex cast identities,
derives

    |sum_(i<N) term_i-A_N| <= sum_(i<N) r_i.

Comparison is with the EXACT term d*v_i. Hence a caller performing a rounded
multiplication must account for it as well as any rounded addition; neither
operation is automatically exact. The generic rational reference constructor
computes every partial sum and supplies zero local radii, with an acceptance
proof candidate for every finite term list. The empty list still requires a
single zero accumulator entry; this differs from missing all records.

## 4. The total kernel tolerance includes the mesh error

Let q=|Re(z)-1|+|Im(z)|. The inherited quadrature theorem at horizontal bound 2,
together with Re(z)<=1 and its arithmetic spatial majorant, gives

    |F_(a,b)(z)-sum_(i<N) d*v_i|
      <= (q/2) N*d^2 + sum_(i<N) d*E_i.

This bound is derived from the actual integral and density. It is not a supplied
kernel-approximation premise. The mesh term is also proved equal to

    q*(b-a)^2/(2N).

The complete checker computes its output allowance by finite rational arithmetic:

    E_total = q*(b-a)^2/(2N) + sum_(i<N) d*E_i + sum_(i<N) r_i.

In code meshError is written as (q/2)*(N*d^2), retaining total arithmetic even
before domain tests; only accepted positive-N inputs receive the endpoint and
analytic conclusions. The main theorem candidate is

    check(z,a,b,N,trace)=true ==> |F_(a,b)(z)-A_N|<=E_total.

checkWithin additionally checks an external epsilon>=0 and E_total<=epsilon.
Its soundness conclusion refers to the original integral at the original a,b,z,
not just to a sum of samples. It adds no user-supplied integral, node-error,
accumulation-error or final-tolerance theorem argument: those premises follow
from the finite checks and inherited analytic proofs.

Every node allowance and arithmetic allowance is nonnegative on accepted data.
Consequently successful requested precision must be at least the mesh allowance.
This is a lower bound on THIS SUFFICIENT CHECKER'S charged error, not on the
actual numerical error. Failure can reflect a conservative bound and does not
prove inaccuracy, a zero, noncoverage, or any prime-count statement.

## 5. Constructed acceptance and controls

referenceTrace constructs all N exact node traces from a resolution function
at the uniform nodes and the exact rational accumulation of their outputs.
reference_checked targets acceptance whenever the explicit per-node log-scale
and Taylor guards hold, with the external interval and horizontal conditions.
It does not assume an accepted node list or a successful full trace as a witness.
No automatic precision or scale selection is implemented.

A nonconstant example reuses the node at z=0,t=2 and a single cell [2,3]:

    v_0=7921/16384,
    E_node=74833/262144,
    E_mesh=1/2,
    E_total=205905/262144 < 4/5.

The full checker accepts tolerance 4/5. The node alone accepts 3/10, but the
integral checker does NOT accept 3/10. This is not a claim that the actual error
of approximating log(3/2) by v_0 is as large as either bound.

For z=1, [2,3] and one cell, exact-one node data and accumulation give output
one at zero tolerance. Reusing that accumulation for [2,4] fails because its
correct weight is now two, even though the left node is still two.

On two cells of [2,3] at z=1, a rounded accumulator 0,3/5,11/10 with local radii
1/10,0 has total error allowance 1/10. It accepts that tolerance, rejects 1/20,
and rejects replacing its first nonzero arithmetic radius by zero. Independent
controls reject nonzero initialization, negative radii, imaginary defects,
missing/extra samples or accumulator entries, reversed endpoints, a<=1,
Re(z)>1 and negative tolerances. These are elementary-function examples, not
zeta-zero data. The literal Lean decisions have not executed here.

## 6. Acceptance and next scope

The isolated root is GRWTSK.Interfaces.QuadraticIntervalRationalQuadratureCore.
The static target is docs/verification/Interfaces/QuadraticIntervalRationalQuadratureCore/quadratic-interval-rational-quadrature-v0.1.toml.
It retains the predecessor target chain, every required type/name/control, all
generated structures and decision instances, and full transitive import/trust
obligations. Repeated source entries with empty name arrays do not waive earlier
requirements. Static hashes and names are not kernel acceptance.

Exact-head elaboration, source repair and independent trust review remain
mandatory. Python diagnostics are a separate model of finite formulas, not
execution of the Lean checker or validation of compiler output. No parser,
serializer, process runner, native evaluation or bounded-resource runtime is
added. Operational limits for cell counts, internal resolutions, trace lengths
and rational bit sizes belong outside this pure mathematics repository.

The next integration is a same-source finite parameter-family sum, followed by
an explicit adapter for the distinct triangular weight where needed. Changing
from the interval to a tent is not accomplished by relabeling the output. Actual
zero identification, multiplicities and complete-head agreement, independent
coordinate errors, the full source identity, omitted tails and strict arithmetic
margins remain separate. No finite evaluation, failed check, or source-draft
acceptance implies Legendre, RH, or a new prime-distribution estimate.
