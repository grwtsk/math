# Executable prime addresses for the original Riemann95 machine

Local source attribution is grwtsk contributors. The maintained Lean source is
[Riemann95PrimeMachine.lean](Riemann95PrimeMachine.lean). Its declarations are
in `GRWTSK.ComputerScience.Riemann95PrimeMachine`.

The upstream is Google DeepMind Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC,
Apache-2.0. Its published theorem uses Lean 4.35.0-rc4 and Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`.
[Upstream proof guide](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/README.md)

## Numeric addresses

`encodeAddress_eq_nth` identifies the numeric address of each
`q : Fin 95` in every natural-number window `k` with
`Nat.nth Nat.Prime (95*k+q)`. The computable search finds the prime with
exactly that many primes below it. The canonical enumeration gives an
existence proof and also establishes uniqueness by `Nat.nth_count`.
`decode_encode` and `encode_decode` justify both directions of the
codec, and `encodeAddress_strictMono` proves ordered distinctness.
`checkAddress` returns a typed address exactly when the primality and
rank bounds hold. A failed address check is separate from the machine's
terminal instruction. The first window uses the exact ordinary
canonical prime enumeration in the research dispatch.
[Canonical enumeration](../../../NumberTheory/SpecificationAndPrimeEnumeration.lean)

## Full configurations and exact execution

`project_surjective` gives, for each source configuration and each chosen
integer head position, a target configuration with that position and the
given source projection. The executable representation has a numeric prime,
a signed head position, the scanned bit and both complete half-tape lists.
Each Mathlib-style blank quotient in the source has a list representative.
The target updates the integer position by one per instruction and projects
onto the source's head-relative tape. Distinct trailing-blank representatives
and distinct choices of absolute origin can have the same projection.

`project_step` states, for every window and every target configuration
`c`, that mapping `project` over the option returned by one executable
step is equal to the upstream step on `project c`. Both interpreters use
the original instruction table cell. For a left move, both scan the first
left-list symbol and push the written symbol onto the right list. For a
right move, the operations are symmetric. The quotient's head, tail and
cons agree with these list operations on every representative. An absent
instruction produces a terminal option in both interpreters.
[Original tape and step](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean#L124-L176)

`native_run_eq_some_iff` strengthens this to both directions for every
natural step count `n`, every executable start `c`, and every native
destination `d`. The native run ends at `d` after exactly `n` steps
if and only if the executable run ends at a representative projecting
to `d` after exactly `n` steps. This follows by induction through
`Option.bind`. The original `nSteps` is in
`Cryptids/Riemann95Definition.lean`, blob
`cabc27cb96a7eecdfb8254e98c8dc0a9c9144a38`. The exact table
`artifacts/riemann_95/machine.txt` has blob
`d6f841a883bcf826d1fbdbd1c66497e072231c55`.
[Native runner](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95Definition.lean#L21-L27)

`blank_reaches_initialRoot` specializes the result to the verified 3,634
instructions. The executable blank configuration has position zero and
projects to the original blank tape and state zero. Every prime window
then reaches a representative of the same native `initialRoot`. The source
`boot_reaches_initialRoot` is in `Bootstrap95.lean`, blob
`3c6eae70196edf6d1beb66c06d7b481e2acdf387`.
[Exact bootstrap](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean#L72-L77)

## Finite tape observations

`TapeAgrees depth c d` requires the same prime address, absolute head
position, scanned symbol, and the same first `depth` cells of both
half-tapes. Missing list entries contribute the blank symbol zero. This
compares the visible cells of the source tape even when the executable list
representatives have different amounts of trailing padding.

`step_tapeAgrees` uses agreement at depth `d+1` to obtain matching
terminal outcomes or agreement at depth `d` after one instruction. The
same address and scanned symbol select the same original table entry. A
move reads the first cell in the direction of motion, drops that cell
from its half-tape and pushes the written symbol onto the other side. A
final cell at depth `d` can therefore depend on at most one additional
initial cell in the direction of that move.

`run_tapeAgrees` iterates this comparison. For every prime window, every
pair of executable starts, and all natural `d,n`, initial agreement at
depth `d+n` gives matching outcomes after `n` instructions. When both
runs return a configuration, the results agree at depth `d`.
`run_truncateTape` applies this to the executable operation that keeps
the first `d+n` cells of each list. This supplies a finite-horizon
comparison for a controller that certifies the address, head and padded
cells at the start of an exact instruction block.

For every window and depth, `exists_tapeAgrees_project_ne` gives two
executable starts with the same finite observation and distinct native
projections. Put a one just beyond the observed left cells of a blank
configuration and compare the corresponding cell in the upstream
`ListBlank` quotient. The published one-step control below shows that
depth zero need not determine the next scanned bit.

## Halting and the original arithmetic source

`eval_project` identifies the entire partial terminal result for every
target starting configuration. A successful result preserves its exact
projected configuration and a terminal option agrees with the source.
The proof applies Mathlib's functional simulation theorem to the exact
step correspondence.

`halts_iff_native` specializes this result to blank initialization in
every window. `halts_iff_shunia` composes it with the source
`halts_candidate_iff_counterexample`, with the original arguments
`stage + 2` and no altered arithmetic predicate. The source
`Cryptids/Riemann95.lean` has blob
`3fd86d0b954485707b620846f36ccd98d5ba970f`.
[Original arithmetic return](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L19-L27)

`halts_iff_not_RH` further composes with
`halts_candidate_iff_not_riemannHypothesis` from
`Cryptids/Semantics/Riemann95.lean`, blob
`476d1101cb827e1a29ce61232d2e7b8b0727fecf`. These are local
consequences of the pinned halting theorems through a new representation.
[Original RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L11-L16)

## Control and remaining proof obligation

`left_neighbor_changes_next_scan` starts two configurations with the
same window, prime, scanned bit and absolute position. Changing just
the nearest left cell from blank to one changes the next scanned bit.
The example uses the literal row-zero, read-zero instruction. It rules
out a deterministic update of those three observables alone across all
configurations.

```text
ranked prime ↔ native control
actual instruction + complete tape lists → exact one-step projection
one-step projection → exact finite runs → exact partial evaluation
initial tape depth d+n → agreement of n-instruction results at depth d
blank projection + native bootstrap → executable bootstrap
blank evaluation + upstream source theorems → Shunia and RH equivalences
HS heat or waveform controller → exact step relation on the full state [open]
```

The heat-dependent implementation still needs a relation from its reachable
carrier to the executable configuration and a proof that initialized
states, successful instruction boundaries, and terminal results satisfy
that relation. The direct interpreter supplies the target for such a proof.

## Closed walks with absolute head position

`run_position_parity` tracks displacement modulo two for every successful
exact-length run. Each source instruction moves the absolute head one
cell left or right, and both moves reverse its parity. Induction gives
displacement congruent to the number of instructions. A closed walk
of whole executable configurations has zero displacement, so
`closed_run_even` forces even length. In particular, `run95_ne_self`
excludes a 95-instruction closed walk in every prime window.

This is an obstruction for the graph whose vertices carry the whole
executable configuration. The native projection forgets absolute
position, and a loop in a control or projected graph needs a separate
lift to certify a closed walk with absolute position.
The original table entry at state 12 reading zero writes zero and
moves right to state 12. Starting on an all-blank pointed tape,
`exists_projected_run95_return` runs this entry 95 times. Both
half-tapes still represent blanks in the native quotient, while the
absolute position has increased by 95. This gives a genuine projected
loop that fails the full-configuration return condition.

## Verification

The isolated Lake target built on Lean 4.35.0-rc4 with the actual pinned
Cryptids imports. Standalone compilation with `--trust=0` and warnings
as errors passed. Targeted kernel replay passed. The expected bootstrap and RH theorem
types checked.
The twelve audited declarations use only `propext`, `Classical.choice`,
and `Quot.sound`.

The address controls accepted 499 in window zero, rejected 503 in window
zero, accepted 503 in window one, and rejected composite 4. Starting from
prime 2 at position zero, one executable step gave prime 227 and position
−1 in both tape controls. The resulting scanned bits were 0 and 1.

Full fresh replay of the dependency closure, independent mathematical
review and HS controller parity are `NOT_RUN`.
The finite tape extension elaborated with `--trust=0` and warnings as
errors on the same isolated pins. Exact-type checks, target kernel replay
and executable one-step truncation controls passed. The transitive audit
of the eight added public declarations reported only `propext`,
`Classical.choice` and `Quot.sound`. Full fresh transitive replay and
independent mathematical review of the extension are `NOT_RUN`.

[Coordination and verification record](https://github.com/grwtsk/math/issues/1821)

## Finite roots cannot represent all path lengths at a fixed tape depth

For every window and padding `p`, `delayedStop window p` is the
native state-12 right scan with the scanned zero followed by `p`
extra zeros and then eight ones. It takes `p+1` right steps to reach
the first one. The next seven steps reach state 61 scanning the final
one, whose instruction is absent. The compositional run law therefore
gives a successful path of length `n` exactly when `n ≤ p+8`.
All shorter prefixes exist by splitting that successful run. Any
longer run would need an instruction at its terminal cell.

For any fixed observation depth `d`, the configurations with
`p=d+k` all agree with the all-zero scan at depth `d`. Their maximum
successful path lengths are the distinct numbers `d+k+8`. If two
of these starts share a root in an exact rooted graph, that root must
admit the longer of the two maximum lengths for both starts. The
shorter source run rejects it. Thus the roots must give an injection
of the natural numbers into the graph's vertices. This rules out
finite root sets in this scope even when only path lengths are
retained. The same argument applies to a finite set of possible
initial vertex subsets.

The control at zero padding succeeds at length 8 and fails at length
9. Adding one zero makes length 9 succeed. The arbitrary-start result
provides a necessary test for a graph sandwich with exact upper and
lower languages. A graph restricted to the original blank orbit
requires its own reachability and language-lifting proof.

Strict pinned compilation, target replay, the three boundary
controls and transitive axiom inspection passed. Fresh replay of the
full import closure and independent review are `NOT_RUN`.

## Spurious walk using only observed blank-run edges

`observedRead_eq_native` identifies the observation after any number of
steps in any prime window with the pair of actual native control and
scanned bit at that time. `ObservedReadEdge` includes a pair of
observations exactly when they occur consecutively on the blank run.
`observedReadWalk_of_run` maps every successful rooted native prefix to a
walk of the same length in this graph.

`observedReadWalk_spurious` proves that for every window the graph admits
a nine-edge walk from `(0, 0)` to `(12, 1)`, while the native observation
after nine steps is `(12, 0)`. The literal
[Cryptids transition table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt)
gives `(12, 0)` after both eight and nine steps and `(12, 1)` after
ten. Append the actual ninth-to-tenth edge to the first eight steps.
The smaller observation identifies distinct points of the orbit and
allows this edge to be used early.

This falsifies reverse lifting for a control-and-scan graph, even
when every edge has a blank-run witness. Any enlargement of the graph
retaining these edges inherits the same walk. To use a richer
observation, prove that each admitted edge can be taken from the
particular reachable configuration lifting its prefix, preserving the
word and any terminal condition.

Strict target compilation, target kernel replay, and the transitive audit
of all three new theorems passed. The executable window-zero control
returned `[some (12,0), some (12,0), some (12,1)]`.
The audit reported only `propext`, `Classical.choice` and `Quot.sound`.
The source SHA-256 is
`9f3836ac5f1d16ddc87cdb575c36652427da72d9b74170bf81d37922b54be0dd`,
checked on the same Lean, Cryptids and mathlib pins above. Full fresh
dependency replay, independent review and HS runtime correspondence
are `NOT_RUN`.

## Exact switching between prime windows

`readdress` decodes the native control and encodes it at the target
window. It keeps the original scanned bit, the two literal tape lists
and the absolute head coordinate. `windowEquiv` has the reverse
readdressing as its inverse. This keeps even the list data that
the native pointed-tape quotient identifies.

`step_readdress` applies the same native instruction cell before and
after changing the prime label. A missing cell gives `none` on both
sides. For a successful instruction, the same move updates the same
scanned symbol, tape lists and head coordinate. Induction gives
`runOn_eq`: any finite list of working windows, with one entry per
instruction, gives the same result as the fixed-window run followed by
readdressing to the requested final window. The equality also preserves
failure by each instruction budget. `project_runOn` identifies the
result with the native exact-length run, and
`blank_runOn_reaches_initialRoot` applies the original 3,634-step
boot certificate for every schedule of that length.

The stale-address control `checkAddress_stale` rejects the original
raw prime in every different window because the two rank intervals are
disjoint. Re-encoding is therefore required when changing the physical
window. To apply the result to an HS runtime, show that its handoff
implements this exact readdressing and does not consume a native
instruction in the process. Verification of the extension is recorded
in [issue #1821](https://github.com/grwtsk/math/issues/1821).

## Handoff with equivalent tape representatives

The handoff view retains the native pointed tape, including decoded control,
and the absolute head coordinate. The theorem `runOn_handoffView_eq` uses
native relative-displacement determinism and the shared initial coordinate
to transport this view through any two schedules of equal length, even with
different final windows. The theorem `runOn_handoffView_some_iff` lifts
successful results in both directions. The hypothesis permits differences
in trailing blank storage. The budget-zero control shows why native projection
alone is insufficient to preserve absolute position. A concrete runtime must
still establish equality of the handoff views at its actual boundaries.
[Verification record](https://github.com/grwtsk/math/issues/1821)

## Composing checked window handoffs

`runOn_append` splits any schedule into two chunks at any chosen
intermediate window. The intermediate readdressing consumes zero
instructions. If the first chunk fails, the composite stays failed.
`runOn_append_with_handoff` permits a tape representative replacement
at a successful boundary, provided the native pointed tape and absolute
head position agree. It also permits a different suffix schedule of
the same length and a different final window. The optional result
view still agrees. This is the local rule needed to compose multiple
checked boundaries. Physical implementation of the check is separate.
[Verification record](https://github.com/grwtsk/math/issues/1821)
