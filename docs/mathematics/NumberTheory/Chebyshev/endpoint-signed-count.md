# Canonical signed-height counts and the remaining complete upper count

Owner #135; numerical supplier #194; local-zero consumer #134; canonical/prime
consumer #261. Parent `850215afea22b22a82d25abdb2a0f7c0293fc719`, tree
`39c51a8e23dd81580f058ee56731c243ffcc2886`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** New and inherited Lean scripts
have not been elaborated, reduced or independently axiom-audited. This increment
supplies no actual analytic upper count, contour certificate or bounded-RH proof.
All earlier source, targets, pins, literal candidate constants and public-root
imports remain unchanged. No numerical evaluation of zeta is performed here.

## 1. The precise counting mismatch

The existing `CanonicalZeroDivisor.heightCount T` counts all actual nontrivial
zeta zeros with |Im(z)| <= T, with their actual analytic multiplicities. Issue
135 describes a positive-sign convention 0 < Im(z) <= T. These are different
quantities. The isolated simple pair gives only a lower bound on the first.
A theorem about a one-sign count cannot be passed to the two-sign consumer just
because both are called a zero count.

`CanonicalSignedHeight.positiveHead T` is a FILTER of the existing complete
canonical head. No new zero predicate, independent enumeration, coefficient
label, or multiplicity source is introduced. Its count is

    N_+(T) = sum_(z actual, 0<Im(z)<=T) mult_zeta(z).

The count is noncomputable: it is a mathematical inventory, not a numerical
algorithm or permission to treat an external list as complete.

## 2. Analytic multiplicities, not just conjugate locations

The previous local transport proved simplicity of a conjugate when the original
point was simple. Counting the complete head must also handle any hypothetical
multiple zeros. `ConjugateAnalyticOrder` derives, from the actual function
identity f(conj(z)) = conj(f(z)), the symmetry of every iterated derivative.
It uses the PINNED `deriv_conj_conj`; both input AND output are conjugated.

The PINNED derivative characterization of finite analytic order then transports
an actual order-n equation between points where f is analytic. Applied to the
canonical zeta source, whose finite analytic-order equation is already proved
in the inherited source, this gives

    mult_zeta(conjugatePoint z) = mult_zeta(z)

for EVERY canonical point, not only order one. No RH or simplicity assumption is
inserted. A set with conjugate support but unequal assigned weights would not
satisfy this mathematical supplier.

## 3. Remove the fixed-height obstruction before doubling

Conjugation fixes real-axis points. A real zero would contribute unpaired mass,
so conjugation symmetry alone does not imply an even total. This source reuses
`CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero`, derived previously
from the actual fractional-Mellin real-axis sign and the maintained strip
restriction. It does not restate that exclusion as a new hypothesis.

The positive and negative filtered heads are disjoint and their union is the
ENTIRE existing closed head. Conjugation gives a bijection between them and
preserves their full analytic weights. The resulting source candidates are

    H(T) := heightCount(T) = 2*N_+(T),
    Even(H(T)),
    H(T)<=2*n iff N_+(T)<=n,
    H(T)<4 iff N_+(T)<=1.

They hold at every real T; both counts are zero for T<=0. None determines the
value of N_+(15). In particular H(15)>=2 does not become an upper bound.

## 4. The cutoff atom is retained

Define N_<(T) with 0<Im(z)<T and B(T) as the analytic multiplicity of the actual
positive-height points exactly at Im(z)=T. Exact finite disjoint decomposition
yields

    N_+(T)=N_<(T)+B(T),
    H(T)=2*N_<(T)+2*B(T).

The explicitly defined half-boundary rational convention is

    N_half(T)=N_<(T)+B(T)/2,
    H(T)=2*N_half(T)+B(T).

Thus multiplying a half-boundary count by two loses one copy of the positive
boundary mass. Equality with a strictly open or averaged count requires the
appropriate boundary proof; a sampled zero-free contour is not such a proof.
These are normalization identities, not adoption of any external theorem's
convention by name. Any argument-principle/Turing supplier must prove its own
exact agreement with the selected source and endpoints.

## 5. A finite window isolates only an independently enclosed count

`EvenIntegerWindow.check lo hi n` checks exact rational inequalities

    lo <= 2*n <= hi,
    2*n-2 < lo, hi < 2*n+2.

The subtractions are rational, not truncated natural subtraction. The target
zero remains valid. The guard excludes adjacent even counts; it does not prove
an analytic count lies inside the supplied window.

`EndpointCountNormalization.count_eq_of_window` needs BOTH actual real
inequalities lo <= H(T) and H(T) <= hi. With the proven canonical parity, it
then derives H(T)=2*n. The rational window [1,3] isolates two; [0,3] and [1,4]
are rejected because they contain another even integer. Without parity, [1,3]
also allows three. No approximate value, plot, JSON truth flag, or asymptotic
main term supplies these two analytic inclusion proofs.

## 6. What a complete upper bound would now establish at fifteen

The SAME inherited local point lies in the SAME unchanged disk and gives the
existing two distinct simple conjugates. The new normalization gives only
N_+(15)>=1 without additional counting input.

If independently proved H(15)<4 (equivalently N_+(15)<=1), evenness and the sourced
lower bound give H(15)=2 and N_+(15)=1. A complete real upper bound U<4 also
suffices, but the premise H(15)<=U must be a proved bound for the complete head.

The source then derives EXACT support equality

    heightHead(15) = {z, conjugatePoint z}.

Any additional distinct point would force the head cardinality, hence its
positive analytic mass, to be at least three. This contradicts the deduced count
two. Both existing weights remain one. The source composes this equality with
the inherited local critical-line result to obtain a bounded line conclusion
ONLY UNDER the independent upper-count premise. The declaration retains T=15.

The upper-count premise is NOT constructed in this increment. Consequently no
complete inventory, first-positive-zero assertion, bounded critical-line
certificate, source tail, prime margin or RH result is claimed. A non-strict
bound H<=4 cannot replace H<4. Two additional simple conjugate points would fit
H=4, and a repeated pair also changes the mass while preserving small cardinality.

## 7. Evidence and next boundary

6,151 exact-rational Python assertions passed: 72 symmetric weighted finite
models at eight cutoffs, 36 real-coefficient polynomial models with exact
repeated roots, 225 finite rational windows tested against eleven possible
counts, twelve directed controls and a finite support check. Inputs are reused
across properties. These are independent model diagnostics, not executed Lean
proofs or counts of certified zeta zeros. No transcendental arithmetic, actual
zeta evaluation, root finder, zero inventory or contour computation is used.

The new source has separate owners for general analytic-order transport,
rational even-lattice windows, canonical signed counts and application controls.
The static target retains all predecessor obligations and explicitly binds the
real-axis source, canonical multiplicity source and pinned upstream derivatives.
Its selected module list is NOT a complete transitive closure.

Exact-head elaboration, any proof-script repairs, large inherited reductions and
independent type/import/axiom review remain necessary. No Lean/Lake invocation,
worker/replay request, execution-hold change, merge or issue closure is represented.
The next analytic supplier remains a complete upper count on the exact canonical
head, including zero/pole-free contour requirements, argument normalization,
endpoint mass and rigorously propagated numerical errors. This increment does
not replace that supplier with a Boolean check or a lower-count theorem.
