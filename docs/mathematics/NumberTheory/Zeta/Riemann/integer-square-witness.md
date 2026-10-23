# Checked integer-state witnesses, not imported computation results

Owner #135; finite arithmetic supplier #194; canonical/prime consumer #261.
Parent `1e1394ea8a8b15694e4c35070746391ac9920584`, tree
`f11750d426138a85e1f3e1d3cc9feab1c912f1bb`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All new and inherited Lean
scripts remain unelaborated. No original block equality or contour Success has
been proved. This increment supplies a checked-witness route for the inverse-power
leaf, not a new contour evaluator or an accepted actual-zero count.

## 1. Six inequalities replace division in the transition checker

The preceding state is three unbounded integers (A,B,E) on scale D=2^bits>0.
The old transition computes the exact midpoint floors and full error ceiling.
A proposed next state (a,b,e) is now checked using only integer multiplication,
addition, absolute values and order comparisons. Define

    U=A^2-B^2, V=2AB,
    r=abs(a*D-U)+abs(b*D-V), W=2*E*D+E^2+r.

Check ALL of

    a*D <= U < (a+1)*D,
    b*D <= V < (b+1)*D,
    (e-1)*D < W <= e*D.

The first two half-open intervals identify the signed floors uniquely, including
negative U or V. The last identifies the ceiling uniquely. Positivity of D is
derived from the precision, not an editable witness field. Once the coordinates
are identified, r is exactly the old residual, so `stepBounds_iff` targets

    StepBounds(bits,x,y) iff y=oldIntegerStep(bits,x).

The interval endpoint conventions are essential: permitting equality at the
upper floor boundary or lower ceiling boundary can accept a one-unit error.
The proposed residual is recomputed, not supplied. Both coordinate displacements
and E^2 survive. A larger proposed radius may be a safe enclosure for some target
but still fails this EXACT-refinement checker; a smaller radius fails too.

`checkStep` does not call the old step, division, floor or ceiling. Its theorem
uses the existing scalar floor identities to justify the check. This does NOT
make the whole inverse-power evaluation division-free: the original logarithm,
Taylor seed, initial rounding, final logarithm sensitivity and source guards
still use their existing rational calculations. No speedup or kernel-cost bound
is inferred from the simpler local predicate.

## 2. Bind every transition to one fixed initial state and exact count

`walk(bits,count,initial,rows)` consumes successor states only. The initial state
and count are external fixed arguments. Every row must pass `checkStep` relative
to the previous state. A missing/extra row rejects, including extra copies of a
fixed-point state. Zero requested steps requires an empty list and returns the
actual initial state. Any failed intermediate row rejects even if the last row
is the correct final answer.

`walk_sound` identifies the accepted terminal state with the SAME old ordered
recurrence. `walk_length` derives exact row count. `rowsFor` constructs a witness
for every recurrence, and `exists_checked_iff` supplies the converse: this is not
an always-reject specification. `check_append` composes pieces only through the
same COMPLETE intermediate state, including the error integer. Matching only
the two midpoint coordinates does not supply this seam.

The arithmetic relation also applies to negative error integers. Such a state
is not thereby a valid complex enclosure. The original analytic guards and the
original computed initial error remain required by the source-facing wrapper.
No parser, external request authentication, byte-size bound or runtime receipt
is represented by these typed mathematical data.

## 3. Supply the original inverse power, not an unrelated valid trace

`CheckedIntegerPower.evaluate` fixes the literal complex parameter, rational
base and resolution outside the witness. It checks the SAME original semantic
admissibility guard and recomputes the logarithm, derived exponent and complete
Taylor seed state. The witness cannot choose a convenient seed or edit its error.
The checked terminal state is decoded and the original-log sensitivity is charged
once, with the same upward rounding.

`evaluate_refines` targets equality with the OLD RationalPowerValue evaluator,
including both coordinates and its full radius. `evaluate_sound` reuses its
actual t^(-s) theorem. `exists_rows_iff` is an exact equivalence with old guarded
success. No new analytic error assumption, zeta formula or enclosure definition
is introduced. `evaluateWithin` separately checks the complete radius against a
nonnegative requested tolerance; arithmetical validity need not meet precision.

This is an ADDITIVE LEAF ADAPTER. It is not yet a transcript-driven replacement
for every finite prefix, source-jet plan or the complete contour verifier. The
original 2,379-cell data, all source tails, strict disk tests, shared images,
signed index and 38 pending block obligations remain unchanged. Equality with
the old leaf permits later source-identical composition; it is not that complete
composition or a proof of any large target equality.

## 4. A literal seven-step example exposes the remaining seed binding

`Checks.HeightFifteenSquareWitness` uses cell275/base16 of the unchanged candidate.
Its center is (1/4)+(248819/16384)i and resolution is the original 80-bit,
seven-square, sixteen-Taylor-term schedule. Cell275 is contour bookkeeping, not
a zero location. Eight literal states record the initial state and seven successors.
Seven `norm_num` proof scripts test the six integer inequalities for each step;
`tail_checked` composes them without asking the reducer to perform the old divisions.
These proof scripts, like the entire inherited chain, remain NOT_RUN.

The source does NOT assert that the literal initial state is the computed Taylor
seed. `SeedBinding` defines precisely that still-unproved equation. `SourceReady`
combines it with the original source guard. The example's leaf and enclosure
consumers retain SourceReady as an explicit premise. Passing seven numerical
transitions from an arbitrary initial state is not an actual inverse-power proof.
The GENERIC source wrapper recomputes its seed internally and needs no such free
premise; this split is only for the literal example's proof decomposition.

## 5. Fresh complete leaf-witness evidence, not a new contour-count run

Ten bounded normal batches and ten optimized batches regenerated all 38,064
inverse-power leaves from the same exact candidate source snapshot, covering all
2,379 source-plan centers and all 266,448 square transitions. Every one of the
six transition inequalities is checked. A one-unit mutation in EACH proposed
coordinate/error field is rejected at every transition. Every accepted terminal
is decoded and receives the original final log-sensitivity charge; its complete
power ball equals the preceding integer model's output exactly.

Per mode, 142,498 generic assertions plus 2,626,436 target assertions pass:
**2,768,934 assertions per mode**, with byte-identical corresponding reports.
The generic checks include signed scalar uniqueness, all chain splits, wrong
initial/final states, canceled-looking earlier corruption, omitted/extra rows,
fixed-point counts, radius tightness and twenty-one directed controls. Inputs
are reused across properties, not counted as independent proofs or zeros.

The delivered compressed witness records include every initial and successor
integer state and the final power-ball coordinates/radius. An additional 76,163
checks re-read the serialized rows, confirm their hashes, exact unique (cell,base)
coverage and complete linkage. READBACK alone checks arithmetic relative to the
stored initial state. The constructor separately regenerated the initial state
from the literal input; the Lean source wrapper recomputes it. Neither hashes
nor stored labels authenticate an external request or replace the seed equation.

No new full source-jet/polygon/count evaluation, transcendental comparison,
actual zero inventory or root finder was performed. The prior +1 full-contour
model result is inherited, not re-reported as a fresh count experiment. Seeds,
logarithm primitives and source formulas are shared with the previous diagnostic;
the new tests do not independently prove them. Python execution is not a Lean
proof, formal compiler refinement or qualification of the diagnostic parser.

An initial multi-batch command timed out after completing batches4..8 and8..12.
The unfinished12..16 batch was rerun separately; reconciliation requires all ten
complete paired reports. No partial output is counted and no guard was relaxed.
Scripts and expanded witness inventories remain outside the pure-math repository.

## 6. Remaining acceptance

Pinned elaboration/repairs, all generic and seven concrete transition scripts,
the example seed/guard binding, any future transcript-to-whole-jet integration,
the SAME38 original block equations, every inherited exact type/generated member,
and complete import/axiom/native review remain necessary. Selected manifest files
are not the full closure. No native result becomes an axiom and no mathematical
premise is discharged by a stored PASS or JSON record.

No Lean/Lake invocation, installation, worker/build/replay request, execution-hold
release, merge, public-root import or issue-state change is introduced. No accepted
K(15)=1, canonical head exhaustion, bounded-line certificate, all-height RH,
omitted-divisor tail or strict every-interval prime margin is claimed.
