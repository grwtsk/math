# Second-block endpoint verification and terminal composition

## Immutable scope and status

Prepared against PR #340's exact head `793fcde91f6c8f0035b5edc049dfe341581e1042`,
tree `c1704e6d6de8c4cf9173f7d93694ad279f59c3c9`. Its first-block source is reused,
not recreated or claimed as work of this increment. PR #336 has since merged;
source integration is not Lean acceptance. The new patch preserves the exact
#340 parent rather than silently rebasing to a moving main branch.

The seven-file terminal patch from the preceding turn is carried byte-for-byte.
It was prepared against the common ancestor
`db54ffe311be3f7faaf15d0a9c0767a0bf52ba49` and is carried unchanged into this successor. Its historical
manifest and base binding are not rewritten. The combined patch adds those
seven files and this increment's eight files to the #340 head. It does not
modify any parent path, public aggregate import, source field, error budget,
terminal schedule, dependency pin, issue state, or execution hold.

**SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED.**
No Lean/Lake/native-decision/build/code-generation/worker action or accepted
external replay occurred. No theorem script in this delivery has been
elaborated. Large proof scripts may require repair or arithmetic decomposition.
The rational diagnostics below are not proofs of Lean equalities or inherited
analytic results. No measured proof-time, memory, or speedup claim is made.

## 1. A complete additional block, not a repeated first block

The canonical prefix has 4096 positions. For local `j : Fin 64`, this increment
uses global position `j+64` and integer base `j+65`. These are precisely global
positions 64 through 127 and bases 65 through 128. The inherited block label is
**one**, not zero. The separate terminal is still base 4097.

`prefixIndex`, `base_at_index`, `rational_base_at_index`, and `schedule_at_index`
bind this offset explicitly. `index_cover` derives a local preimage for every
member of the original second block, rather than assuming a count of 64 labels
establishes coverage. The proof reuses the original predicate `checkPrefix`.

The same exact source exponent remains

    -c = -1/2 - (7067362571/500000000)i.

The fixed schedule retains eighteen log terms, twenty-two Taylor terms, eight
squarings and sixty-four grid bits. For bases 65..127 the dyadic logarithm
exponent is six; base 128 changes it to seven. The seed scripts recompute the
original finite logarithm midpoint and complete width for every base. They do
not freeze the exponent at six, drop the mantissa width, or treat a rational
midpoint as the exact logarithm.

## 2. Reuse the canonical normalization and original seed error

The inherited `RationalTaylorSeedNormalization` uses the exact rational
argument `a=(x,y)` to define a positive common denominator

    D=den(x)*den(y), w=(num(x)*den(y),num(y)*den(x)).

Its existing source proof identifies `w/D=a`. At stage 21 the inherited
Gaussian-integer recurrence represents exactly twenty-two Taylor terms:

    S_0=P_0=1, C_0=1,
    P_(j+1)=P_j*w,
    S_(j+1)=D*(j+1)*S_j+P_(j+1), C_j=D^j*j!.

The same inherited refinement identifies `S_21/C_21` with the original
`QComplex.polynomial a 22`. This increment changes neither the recurrence nor
its proof. Its 64 initialization proposals are checked against the original
argument, radius R and logarithm displacement delta, with complete error

    t + 2*(rect(seed)+t)*delta, t=2*R^22/22!.

The generic exact error numerator/denominator is reused, not supplied as a
smaller allowance. Integer floor/ceiling windows retain the nonnegative stored
error, signed component floors, two-component initialization allowance and
strict endpoints. Eight groups of eight have closed source scripts for every
original guard and each seed window. The group coverage is inherited from the
first-block LOCAL indexing; the integer bases are this block's new bases.

These large `norm_num` scripts are unexecuted. A closed script is not evidence
that elaboration will succeed, fit a resource budget, or produce an accepted
theorem. Canonical product denominators are unreduced and may be large.

## 3. All output fields follow through the original eight steps

The new `output j` is defined as the decoded eighth iterate of the inherited
`EuclideanDyadicRun`, not a freely asserted final value. That source implements
component floors and the complete error ceiling by Euclidean integer division:

    Ar=u*u-v*v; Ai=2*u*v;
    Ae=e*(2*(abs(u)+abs(v))+e)+2*G;
    next=(Ar div G, Ai div G, -((-Ae) div G)), G=2^64.

`endpoint_compute` applies the inherited exact recurrence refinement to the
new seed scripts for every `j : Fin 64`. It derives equality with the same
original `RationalPowerEvaluation.compute`. `endpoint_enclosure` then reuses
the original positive-axis power theorem; no new exponential or zeta source is
introduced. Admissibility remains required and supplied by the seed scripts.

For scale, the external exact diagnostic gives the following final numerators,
all over G (third entry is the complete error numerator):

    base 65:  (-1769807689422709977, -1450135883186625908, 12266)
    base 128: ( 1404370951934898753,   828370823322078338,  9058)

The initial error numerators for these two cases are 40 and 47. These data are
diagnostics, not substitutes for any source proof or zero certificate.

## 4. Compose existing first-block and terminal sources without overwriting later records

`ConcreteNewtonSecondBlock.fill` changes only global positions 64..127.
`ConcreteNewtonTwoBlocksAndTerminal.fill` uses that partial fill as the later
records for the existing first-block fill, and attaches the unchanged terminal
record. The two ranges are disjoint. The source drafts derive the original
checks for block zero, block one and the terminal. They also derive exact
preservation of every still-unverified position at or above 128.

`remainingBlock : Fin 62 -> Fin 64` maps `j` to `j+2`. Its coverage and injection
are derived explicitly. `source_of_remaining` supplies the SAME original
`BlockObligations`, with the following application premises left explicit:

    all 62 block checks for labels 2..63;
    the original six-field final aggregation check, including both tolerances.

That is 63 remaining data-check premises at source-composition scope. The
3968 prefix bases 129..4096 remain unchecked by this increment. There is no
final-aggregation proof, no closed SourceAcceptance theorem, no accepted block,
and no accepted terminal theorem at Lean-kernel scope. The original definition
and conditional local-zero conclusion are unchanged.

An external transcript still requires exact equality with every included full
record. Equal displayed values, same record count, matching aggregate, or file
hashes cannot supply this equality. No parser, provenance authenticator, bounded
input service, or decoder-refinement theorem is supplied.

## 5. Bounded exact diagnostics, explicitly separate from formal acceptance

Eight normally completed chunks freshly recomputed bases 65..128 from the
original source and schedule. No retained endpoint values or prior checkpoints
were used to calculate the new seeds or outputs. The retained transcript was
loaded only after generation to compare base identities and all three fields.

The suite completed **14,116 explicit exact checks** in ordinary Python and
again in optimized Python, with byte-identical data and reports. Counts include
repeated elementary comparisons, not independent mathematical results. Tests
cover 64 guard sets; 1408 polynomial stages; 512 rational/integer transition
comparisons; 3456 individual trace-field mutations; 576 missing-state controls;
all 4096 positions of the partial-fill semantics; and index/signed-rounding
boundaries. Deliberate failure injection was rejected outside the successful
counts, including under optimized Python.

The candidate arithmetic reuses the retained standard-library terminal
reference. Direct factorial sums, coefficient recurrence, reverse Horner and
integer normalization are separately expressed internal checks, not an
independent complete implementation or accepted external replay. No floating
point, transcendental evaluation, full 4097-endpoint replay, new terminal
recomputation, joint-zeta calculation, actual complete-zero count, or prime
margin was used. The seven carried terminal files were checked for byte
identity; their earlier diagnostics were not rerun or recounted here.

The largest canonical seed denominator in this block has 4916 decimal digits;
the largest complete-error denominator has 7694. These are finite observed
sizes, not uniform bounds or Lean feasibility measurements. Source-text,
manifest, table and patch-application checks do not elaborate Lean or audit
the transitive dependency closure. The exact extent of those checks is in the
separate static report.

## Remaining obligations

The first milestone is still authorized, trusted elaboration and resource
assessment of the generic normalization, Euclidean recurrence and all seed
scripts, including carried terminal proofs. The remaining prefix blocks, the
complete final aggregation, exact types, generated declarations, imports,
axioms and computational dependencies require their own audit. A successful
local source packet would not by itself supply a sharp complete multiplicity
count, canonical head completeness, first-zero ordering, all-height line
status, or strict all-interval prime margins. No Legendre or RH proof is
represented. Source publication does not change any verification hold or acceptance boundary.
