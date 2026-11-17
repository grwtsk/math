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

## Verification

The isolated target built against the actual pinned Cryptids declarations.
Targeted kernel replay passed. Expected-type checks passed for both scanned
symbols at state 93 and for the obstruction with a 94-state target.
The seven audited theorems depend only on `propext`, `Classical.choice`,
and `Quot.sound`. Full fresh replay of the imported closure and independent
mathematical review remain `NOT_RUN`.
The fixed-encoder extension compiled with `--trust=0` and warnings as
errors on the same pins. Exact-type checks at target size 94 covered the
criterion, the conditional return to `¬ RiemannHypothesis` and the failed
91/93 merge. The identity encoder at size 95 passed as a positive control.
Target kernel replay passed. The eight new public declarations use only
subsets of `propext`, `Classical.choice` and `Quot.sound`. Fresh replay
of the full import closure and independent review are `NOT_RUN`.

[Coordination and verification record](https://github.com/grwtsk/math/issues/1822)
