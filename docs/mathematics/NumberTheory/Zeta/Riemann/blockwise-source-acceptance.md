# Exact endpoint transcripts and blockwise source acceptance

Human mathematical direction: R.A. Jacob Martone.
Proof drafting assistance: OpenAI ChatGPT.

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Parent: e915ff32d46f15fe70f7e2b18b4b2256bedeb8ab, PR #324.

## Purpose

The concrete Newton packet has a passing external rational computation but an
unproved Lean proposition `ConcreteNewtonPacket.SourceAcceptance`. This increment
does not assert that proposition. It factors the same proposition into 64 bounded
prefix checks, a separate terminal check, and one final exact aggregation check.
A small geometry check is supplied by a source proof draft. All new proof scripts
and all inherited dependencies still require elaboration and trust review.

This is decomposition, not discharge of the proof obligations. There is no
native decision, build invocation, worker request, admitted axiom, or trust in a
Python success flag. No execution authority is conferred by the static target.

## Exact source and transcript

Fix N, the rational complex center c, and the original Plan N. A Transcript N
contains N prefix States and one separate terminal State. Each State has two
rational coordinates and one rational error. There are no supplied analytic facts
and no cached logarithms in the transcript.

For zero-based prefix index i, check BOTH the original endpoint guards and

    RationalPowerEvaluation.compute (i+1) (-c) (plan.prefix i) = transcript.prefix i.

The terminal check has the same requirements at base N+1 and the terminal plan.
Equality includes the entire returned error, not only the approximate value.
The checker does not accept an asserted error merely because it is small.
The fixed center, exponent, base and schedule are not chosen by a record.

The transcript's diagnostic JSON representation is outside the pure-math source.
Its decoding, provenance, canonical encoding and resource bounds are not proved
in Lean here. The source theorem starts from typed rational data, not bytes.
Checksums identify files; they do not prove any of these mathematical equalities.

## Exact assembly

The finite values are assembled over the original Fin N index, exactly once.
Block summaries are NOT summed, and block coverage does not define a replacement
source or inventory. In particular, overlapping generic blocks only repeat checks;
they cannot double-count a term in the result.

For each accepted state (V,e), recompute the original rational logarithm center
lambda and error eta from its fixed base and schedule. Retain

    W = -lambda V,
    g = (abs(lambda)+eta)e + rect(V)eta.

The original H and J coefficient functions are reused, as are both analytic tails,
the original Cauchy radius, the separate value/slope grids, and `initialState`
rounding of the final values and complete errors. The terminal contributes to both
finite formulas with the original signs and coefficients.

For the canonical transcript made from the original endpoint computations,
`assemble_canonical` is an equality by definitional reduction to the SAME original
joint computation. Exact agreement of every claimed record identifies any accepted
transcript with that canonical transcript. This is stronger than overlap of intervals.

The final check compares all six output fields and both requested tolerances.
It is not sufficient on its own: two different prefix vectors can have the same sum
through cancellation. It is also not enough to count successful block labels without
proving that their index sets cover every prefix position.

## Logical equivalence

For a finite family of index sets covering every i in Fin N, the generic theorem
`verify_of_checks` composes:

1. the original geometry guards;
2. all block checks (every selected row's guards and exact state equality);
3. the separate terminal check;
4. the final aggregation equality and both tolerances.

The conclusion is the original `RationalZetaCenterEvaluation.verify = true`.
The converse is also proved at source-draft scope: original acceptance supplies
the canonical transcript and all of these checks. Hence the existential transcript
formulation is equivalent to the original acceptance predicate, not a weaker route.

No hash, scalar sum, row count, observed residual, or stored Boolean replaces a
proof of one of the exact equalities. The analytic meaning of acceptance continues
to come from the original refinement and analytic stack.

## The concrete 64-by-64 decomposition

Keep N=4096. Block b in Fin 64 contains exactly those zero-based indices i with

    i / 64 = b,

or equivalently

    64*b <= i < 64*(b+1).

The source drafts prove coverage and unique block membership using exact natural
arithmetic. Thus block 0 checks integer bases 1 through 64; block 63 checks bases
4033 through 4096. Base 4097 is the terminal, not another prefix position.

`BlockObligations t` is the conjunction of 64 block acceptance equalities, the
terminal acceptance equality, and the final six-field check. None of these 66
concrete data-check obligations is proved by this increment. The geometry equality
is separately a small `norm_num` proof draft, also not executed.

The source derives

    SourceAcceptance <-> exists t, BlockObligations t,

and a conditional local-zero theorem from BlockObligations. The existing
SourceAcceptance definition and its conditional theorem are untouched. There is
no closed zero-existence theorem, critical-line result, first-zero ordering,
complete head binding, global count or prime margin in this increment.

This split permits future exact equality proofs to be scoped to individual blocks
and reused by the composition theorem. It does not by itself reduce the total
arithmetic work or make the final aggregation cheap for the Lean kernel. No runtime,
code-generation, proof-size or asymptotic speedup claim is made. The block selector
is specified with finite-set filtering; no resource-bounded byte service is supplied.

## Diagnostic evidence

A fresh Python workflow recomputed all 4097 endpoint states from the fixed source
and plan without loading the earlier runtime checkpoints or endpoint results.
It retained the prior exact-rational endpoint implementation, so this is NOT an
independent full implementation or an accepted independent external replay.
For every endpoint, a separately expressed coefficient-recurrence polynomial and
an independent integer-grid squaring recurrence were checked against the candidate.
All nine grid stages were compared, including value coordinates and stored errors.

The run completed 61,687 exact assertions: 61,519 endpoint/block-generation checks
and 168 assembly/identity/rejection checks. These include repeated elementary checks,
not independent mathematical proof counts. The 64 block files were reconciled to
exact coverage of bases 1 through 4096 and the distinct terminal 4097. Reassembly
reproduced all six original claimed fields, both targets, and the same Newton
budgets and strictly positive self-map slack.

Directed controls changed each field of selected endpoint records, changed each
final claimed field, removed/repeated/reordered prefix records, substituted the last
prefix for the terminal, and exhibited equal totals with unequal individual rows.
The claimed error is always part of exact state equality. Metadata-layout checks
in Python are diagnostic input checks, not a proved decoder.

One larger diagnostic invocation timed out after printing results. Its entire last
16-block segment and terminal were rerun in smaller, normally completed chunks;
only the reconciled completed outputs enter the report. No failed invocation is
counted as a successful execution. There was no floating-point or mpmath evaluation,
Lean/Lake invocation, code-generation run, kernel proof, or accepted external replay.

The external transcript SHA-256 is
`0331d15ed05005d8e3a80877d95d440843faa383468d47e65f75fc6956f7529a`.
It is an identity aid, not evidence of SourceAcceptance.

## Remaining boundary

Concrete block equalities, terminal equality, and final aggregation acceptance must
still be established through an authorized trusted proof route. Exact types,
generated members, decidability, compilation, imports and all inherited axioms and
native dependencies still require audit. This target authorizes none of those runs.
The independent sufficiently tight complete zero count, authenticated source binding,
input/resource controls and strict all-interval prime margins are unchanged.
