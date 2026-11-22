# Reachable compression obstructions in the original Riemann95 machine

Local source attribution is grwtsk contributors.
The maintained declarations are in
[GRWTSK.ComputerScience.Riemann95ReachableCompression](Riemann95ReachableCompression.lean).

This module uses the original Cryptids tape, configuration, transition
table, and blank input. The source is Google DeepMind Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, copyright Google LLC,
Apache-2.0. Its toolchain is Lean 4.35.0-rc4 with Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`. The literal transition table
`artifacts/riemann_95/machine.txt` has Git blob
`d6f841a883bcf826d1fbdbd1c66497e072231c55`.
[Original table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt)

## The blank run reaches both read cells in state 93

`blank_reads_zero_at_93` and `blank_reads_one_at_93` each give a
natural time and a native configuration reached from the original blank
tape at that time. Their native control is 93 and their scanned bits are
0 and 1, respectively. In particular, `state93_not_avoidable` refutes
the reachability premise for deleting state 93 as unused.

1. The source bootstrap reaches the exact stage-zero physical
   configuration in 3,634 instructions. If each earlier arithmetic
   argument passes, the passing branch of the stage theorem reaches the
   next root and increases its padding. The source's certified finite
   safety bound supplies the induction for stage indices 34 and 123,
   corresponding to arithmetic arguments 36 and 125.
   [Bootstrap](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean#L72-L77) ·
   [Stage outcomes](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean#L26-L32) ·
   [Finite safety bound](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L436-L449)
2. Typed prewidth, precredit, entry, and the first two halvings give a
   bounded trace to depth zero of the third halving with the original
   Shunia deficit still in the bank. Kernel decisions give deficits 1 and
   2 at arguments 36 and 125. The first positive branch reaches local
   word 15. A second positive branch at argument 125 reaches local
   word 16. Budget 19 suffices for both traces and the stage padding
   suffices to lift them to the original tape.
   [Prewidth](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/TypedPrewidth95.lean#L237-L243) ·
   [Precredit](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/PrecreditTrace95.lean#L98-L101) ·
   [Bounded halvings](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bounded95.lean#L122-L137) ·
   [Trace lift](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/PhysicalTrace95.lean#L127-L143)
3. The twelve-bit word for local label 15 has a checked right-moving,
   read-preserving walk from native state 15 to native state 93. The
   physical parser theorem preserves the exact unread right tape. After
   this prefix, local label 15 has a zero padding cell. Local label 16
   extends the same prefix by one bit equal to 1. Those are the two
   native scanned bits in the source's physical configurations.
   [Control words](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/ControllerSchema95.lean#L16-L45) ·
   [Physical parser traversal](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Parser95.lean#L87-L115) ·
   [Root tape layout](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Physical95.lean#L22-L25)

## Consequences for exact control quotients

`PreservesReachedCells encode table` requires matching the original
instruction at each read cell reached by the blank run. It preserves
the write, move and absence of an instruction. On a successful instruction
its successor is the code of the original successor.

`blank_reads_one_at_91` follows by cutting a native run to 93 just before
its final step. A finite check of all 190 cells proves its only incoming
cell is `(91,1)`. The blank state is zero, so the run ending at 93 has
a final step. Since both `(91,1)` and `(93,1)` occur, any exact
reachable-cell quotient with `encode 91 = encode 93` must identify
`encode 93 = encode 43`. These are the respective successors of the two
observed instructions. This is
`merging_91_93_forces_43`. A quotient identifying just 91 and 93
therefore fails even under the reachable-only requirement.

`row94_fold_forces_collision` considers reusing row 94 for state 93 at
read zero. The observed `(93,0)` goes to 56 while `(94,0)` prescribes
58. Exactness at the observed cell forces `encode 58 = encode 56`.
This rules out the single merge with the stated row choice.

These obstructions concern instruction-by-instruction control quotients.
A smaller machine that changes tape encoding or uses more than one
instruction per simulated step still needs its own source simulation.
The lane's physical lane count and serialized description cost use
different observables and do not enter these reached-cell arguments.

```text
blank bootstrap + certified earlier arguments → native stage roots
bounded initial parser traces + exact deficits → local words 15 and 16
physical lift + native parser prefix → observed cells (93,0) and (93,1)
unique incoming instruction → observed cell (91,1)
observed cells + exact reachable-cell quotient → forced code collisions
alternative tape layout or macro simulation → exact original halting return [open]
```

<<<<<<< HEAD
=======
## Exact quotient criterion for a fixed encoder

`ReachedCell q b` means that the original blank run reaches native state
`q` reading bit `b`. For any natural target state count `n` and control
encoder `e : Fin 95 → Fin n`, `exists_reached_quotient_iff` is the exact
criterion for a table obeying `PreservesReachedCells e`. For every
`q,r : Fin 95` and `b : Fin 2`, if `e q = e r` and both source cells are
reached at bit `b`, the two mapped instructions must agree. Equality of
the optional instructions includes the write bit, direction, encoded
successor and terminal outcome.

Necessity compares both prescriptions with the same target table cell.
For sufficiency, choose one reached source cell for each occupied target
cell and use its mapped instruction. Pairwise agreement makes the choice
irrelevant to the prescribed instruction. Set the remaining target cells
to halt. The existence proof uses classical choice over the exact reached
cells. A concrete table construction by this route still needs evidence
for which source cells the run can reach.

`step_encodeCfg_of_reached` shows that a matching instruction performs
exactly the same write and move on the intact native tape. A successful
step from any configuration reached at time `t` gives a configuration
reached at time `t+1`. The resulting simulation relation relates a
reached configuration to its encoding and matches terminal steps.
`eval_reached_quotient` proves equality of partial evaluations from the
encoded blank start, including the entire encoded terminal tape whenever
the run halts. If `e 0 = 0`, the encoded blank is the target's own blank
configuration, giving `halts_reached_quotient_iff`.

`not_reachedCellsAgree_of_merge_91_93` checks the criterion against the
observed cells above. A merge of 91 and 93 with 43 still separate fails
even if all unreached cells are unconstrained. The next step for a
94-state candidate in this class is to exhibit a zero-preserving encoder
with agreement on all its reached collisions. A changed tape or an
instruction-block simulation requires a separate relation.

```text
agreement of mapped prescriptions ↔ existence of a reached-cell quotient
reached-cell quotient → exact step on the encoded tape → exact partial evaluation
exact partial evaluation + e 0 = 0 → equivalence of native blank-start halting
```

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
## Verification

The isolated target built against the actual pinned Cryptids declarations.
Targeted kernel replay passed. Expected-type checks passed for both scanned
symbols at state 93 and for the obstruction with a 94-state target.
The seven audited theorems depend only on `propext`, `Classical.choice`,
and `Quot.sound`. Full fresh replay of the imported closure and independent
mathematical review remain `NOT_RUN`.
<<<<<<< HEAD
=======
The fixed-encoder extension compiled with `--trust=0` and warnings as
errors on the same pins. Exact-type checks at target size 94 covered the
criterion, the conditional return to `¬ RiemannHypothesis` and the failed
91/93 merge. The identity encoder at size 95 passed as a positive control.
Target kernel replay passed. The eight new public declarations use only
subsets of `propext`, `Classical.choice` and `Quot.sound`. Fresh replay
of the full import closure and independent review are `NOT_RUN`.

## Exact minimum for the reached-cell class

`exists_exact_94_iff_RH` states that there exist a control map
`e : Fin 95 → Fin 94` with `e 0 = 0` and a two-symbol target table
satisfying `PreservesReachedCells e` if and only if the Riemann Hypothesis
holds. The representation keeps the entire original tape and tests the
optional instruction at every cell the original blank run encounters.
`states_ge_94_of_preserves_reached` excludes every smaller table in
this class. If RH is false, `injective_of_preserves_reached_of_not_RH`
forces at least 95 states. The native table and identity map attain 95.

The proof uses three facts.

1. `trackReads` runs the original certified fast step for 14,293 reads
   from the blank start, setting bit `2*q+b` each time state `q` scans
   bit `b`. Kernel computation gives 181 observed cells. The soundness
   argument sends each fast step to an exact step of the original tape
   machine. First-halving parser words at arguments 3 and 4 supply
   `(87,1)`, `(94,0)` and `(94,1)`. At argument 125 the third
   halving produces a positive quotient. The resulting local word 19
   exposes `(92,1)`. Together with the prior cells `(91,1)`, `(93,0)`
   and `(93,1)`, this certifies all cells except `(41,1)` and `(61,1)`.
   [Certified fast execution](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Zf380.lean) ·
   [Bounded halving](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bounded95.lean)
2. A probe follows the native control successors of two states on the
   same sequence of read symbols. Each cell compared must be certified
   reached somewhere on the blank run. The symbols need not occur at
   consecutive times. If the states have the same target code, their
   mapped writes, directions and terminal outcomes must agree. When
   both continue, their successors also have equal codes. A mismatch
   along the probe therefore separates the initial codes. Five words
   of length at most nine distinguish all unequal pairs except 61 with
   25, 91, or 93. Omitting 61 leaves 94 distinct codes.
3. State 61 reading 1 is the source table's sole missing instruction.
   Each of the three partners is reached reading 1 and continues there.
   If the source halts, then no collision with 61 survives. The upstream
   equivalence identifies that case with `¬ RiemannHypothesis`. If RH
   holds, deleting row 61 and mapping that state to any of the three
   partners preserves every reached cell. The original bit-0 instruction
   is identical at all four states. The same-tape return to native
   halting is `halts_reached_quotient_iff`.
   [Pinned RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean)

All three copied-row tables simulate every successful native prefix even
under the hypothesis that RH is false. Each table is total, so the
successful-prefix test misses the absent instruction where the original
would halt. The exact observation of `(92,1)` also refutes the separate
proposals to fold just 92 into 45 or 52, which agree at bit 0.

```text
certified reads + common-read probes → only three possible nontrivial pairs
source halting ↔ reached (61,1) → every such pair is forbidden
no source halt → explicit 94-state reached-cell quotient
different tape encoding or macro simulation → terminality proof [open]
```

Isolated Lean 4.35.0-rc4 compilation with `--trust=0` and warnings as
errors, target kernel replay, exact-type and hostile controls, and the
transitive axiom audit passed. The audited theorems use only subsets of
`propext`, `Classical.choice` and `Quot.sound`. Fresh replay of the full
import closure and independent mathematical review remain `NOT_RUN`.

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
[Coordination and verification record](https://github.com/grwtsk/math/issues/1822)
