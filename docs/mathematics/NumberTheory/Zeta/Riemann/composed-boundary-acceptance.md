# First-block and terminal composition for the fixed Newton packet

Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.

This increment publishes the previously local terminal patch and composes it
with the independently developed first-block source in PR #340. It does not
change a historical verifier, endpoint schedule, arithmetic error, or analytic
estimate. No Lean/Lake execution or authority change accompanies this text.

## Source identities and scope

The integration parent is #340 at
`793fcde91f6c8f0035b5edc049dfe341581e1042`, tree
`c1704e6d6de8c4cf9173f7d93694ad279f59c3c9`. Its first-block target is
`docs/verification/Interfaces/ConcreteNewtonFirstBlockCore/concrete-newton-first-block-core-v0.1.toml`, blob
`1412513e3832ab60089d9733b10514452616e195`.

The seven terminal-patch files are preserved byte for byte from their local
preparation against #336 at
`db54ffe311be3f7faaf15d0a9c0767a0bf52ba49`, tree
`6bde817d4385c1d3ba5658318b174cfcc1a5fcd1`. Their original target and note keep
that historical preparation identity. The new composed target records BOTH
inherited targets. Preserving a historical preparation pin does not claim
that the new integration commit is the old parent or that the local patch
had previously been published.

The old root, source predicates, first-block files and all other existing
paths are untouched. The new branch does not modify #340 or infer its kernel
acceptance from source presence, diagnostic agreement, or repository status.

## Exact partial completion, not implicit coverage

Let `later : Fin 4096 -> State` contain arbitrary proposed records. Define

    completed(later) = FirstBlock.fill later terminalOutput.

At indices 0 through 63, this uses #340's integer-computed full states. At
indices 64 through 4095 it retains `later i` exactly. The separate terminal
field is the previously prepared base-4097 output. The source draft proves
these identities, including the stored error in every State.

The terminal state, with G=2^64, is

    value = (-67646576876192498 + 280143557688622374 i)/G,
    error = 3952/G.

The source-bound seed constructor retains the original 18-term logarithm
supplier, 22 Taylor terms, eight squarings and 64-bit grid. Its terminal
mantissa is 4097/4096 with reduction exponent 12. Both the value and uncertainty
of log(2) are multiplied by 12; the nonzero mantissa width is also retained.
The complete seed error is identified before any rounded-state comparison.

The terminal patch's generic `RationalPowerIntegerSeed` uses explicit integer
encodings and separately proved exact source bindings. #340 uses canonical
rational numerator/denominator extraction. Both reconstruct the SAME original
rational evaluator. They are not assumed interchangeable merely because some
rounded states coincide, and neither existing implementation is replaced.

The inherited `first_block_check` and new terminal proof script supply the
original block-zero and terminal predicates for `completed(later)`. A prefix
record is not a terminal record: base 4096 remains the last included prefix
base, and 4097 remains separate. No later record is set to zero or silently
removed by the partial fill.

## Remaining predicates and exact equivalence

Define

    RemainingChecks(later) :=
      (for every b : Fin 63, original checkPrefix on blockIndices(b.succ))
      AND original checkFinal on completed(later).

The successor index ranges over exactly 1,...,63. Coverage of all remaining
indices 64,...,4095 is derived; a count of 63 successful labels is insufficient.
Those 63 blocks contain 4032 distinct original prefix positions. The terminal
is not an additional prefix position.

The new `remaining_iff_original` source draft proves

    RemainingChecks(later) <-> BlockObligations(completed(later)).

Forward composition supplies block zero and terminal from their closed source
scripts, all successor blocks from the first conjunct, and the final predicate
from the second. The reverse direction extracts exactly those original checks.
This equivalence concerns the SAME partially filled transcript. It does not
assert that a passing `later` exists. It is not a proof of RemainingChecks.

`source_of_remaining` supplies the unchanged `SourceAcceptance` through the
historical composition theorem. Its input still contains 64 checks: 63 prefix
blocks plus ONE final aggregation check. The final check retains all six rational
output fields and BOTH tolerances, recomputes the original logarithm-products,
H/J coefficients, complete value and derivative tails, and both final roundings.
The present work does not compute or prove that final check.

`local_zero_of_remaining` only restates the old conditional local-zero result
through this composition. It does not prove SourceAcceptance, locate a new zero,
rank a zero, establish exact line membership, or count the complete height head.
At kernel-acceptance scope, even the supplied first-block and terminal scripts
remain unaccepted. Source-level removal of an application premise is not kernel
acceptance of the theorem used in its place.

## Review and bounded diagnostics

The terminal's seven prepared files and historical manifest were rechecked for
byte identity. The retained terminal checker was rerun from the fixed source,
with 1278 explicit exact-integer/Fraction assertions; its output data matches the
previous preparation exactly. This reuses the retained helper implementation,
not an independent verifier.

The new bounded diagnostic freshly computes bases 1 through 64 from their
original rational logarithms, argument, Taylor seed and complete seed error.
It compares the initialized grid states with the 64 proposals read from #340,
checks exact equality with integer-normalized seeds/errors, and compares each
of the eight steps with a separately expressed rational step. It reads the old
endpoint transcript only after computation, as a comparison target.

That suite completes 14152 explicit finite checks in each of normal and optimized
Python, with byte-identical reports. The checks include original guards for all
64 bases, complete seed identities, all 512 transitions, exact old-record
agreement, exhaustive retention of all 4032 later positions, successor-block
coverage, changed-error detection, Boolean composition models and omitted-check
controls. Each mode's deliberate failure injection exits nonzero. Repeated
arithmetic/layout comparisons contribute to the total; it is not a theorem count.

The diagnostic composition checks are finite data/Boolean models, not executions
of the Lean predicates. The initial table was transcribed from the live pinned
first-block file; the separately recomputed states agree. This is not a proof of
a general decoder or Python/Lean correspondence. No later-4032 endpoint replay,
new joint-zeta final aggregation, transcendental evaluation, zero count or prime
margin is performed. No floating-point arithmetic is used.

Direct container retrieval of a pinned GitHub file failed at network resolution;
the connected GitHub read supplied the source instead. No full checkout or full
transitive byte audit is claimed. Selected source texts, returned hashes, archive
identities and static manifests remain separate evidence from type correctness.

## Remaining obligations

Trusted elaboration and resource assessment of BOTH source routes are mandatory.
The terminal's unreduced integer denominators have 3461 and 7231 decimal digits;
its proof costs are unmeasured. #340's canonical first-block proof costs also
remain unmeasured. Both routes may need repair or further decomposition.

All 63 remaining prefix blocks and the full final check still need their own
proofs. The full inherited exact-type, generated-member, decidability, import,
axiom and computational-dependency audit remains required. SourceAcceptance,
independently justified sharp complete zero counts, canonical head completeness,
all-interval strict prime margins and external provenance/resource controls
remain open. No merge, issue closure, execution-hold release, worker/build request,
Legendre result or RH result is authorized or claimed by this target.
