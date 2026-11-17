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
blank projection + native bootstrap → executable bootstrap
blank evaluation + upstream source theorems → Shunia and RH equivalences
HS heat or waveform controller → exact step relation on the full state [open]
```

The heat-dependent implementation still needs a relation from its reachable
carrier to the executable configuration and a proof that initialized
states, successful instruction boundaries, and terminal results satisfy
that relation. The direct interpreter supplies the target for such a proof.

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
[Coordination and verification record](https://github.com/grwtsk/math/issues/1821)
