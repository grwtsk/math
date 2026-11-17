# A 94-control macro interpreter for Riemann95

grwtsk contributors

The declarations in
[Riemann95MacroCompression.lean](Riemann95MacroCompression.lean)
are in `GRWTSK.ComputerScience.Riemann95MacroCompression`. They interpret
the exact binary tape from the original machine at block boundaries. The
boundary controller has type `Fin 94` and skips native control 61. Its
guarded action can read a second cell and move twice. The 94 counts controls
at those boundaries. Realizing the guarded action in the ordinary read-one,
move-one model is a separate construction.

## Source and consumer

- The Cryptids contributors' repository edition is
  `3647718b5df22e1a61462dec0376bd204526285a`. The
  [native table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt)
  has Git blob `d6f841a883bcf826d1fbdbd1c66497e072231c55`. In zero-based
  numbering its sole incoming instruction to state 61 is row 90 on bit 1.
  Row 61 on bit 0 writes 0, moves right and continues at 56. Row 61 on
  bit 1 is the unique terminal cell. The original arithmetic return uses
  [`halts_candidate_iff_counterexample`](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L23)
  and
  [`halts_candidate_iff_not_riemannHypothesis`](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L13).
  The five-register transport in
  [`ReferencePermutation95.step_encode`](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/ReferencePermutation95.lean#L70)
  concerns a different layer. This interpreter operates on the original
  native tapes after that layer has been compiled.
- The local dependency
  [Riemann95ReachableCompression.lean at 2c44c3ba](https://github.com/grwtsk/math/blob/2c44c3ba8eb9a8b86b0b9e4585364d488025a437/GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/Riemann95ReachableCompression.lean)
  has Git blob `7cc750162fed691a9208784dddf355c9d41a4f92`. It supplies
  the increasing enumeration of the 94 retained states and identifies the
  table's missing instruction. Its reached-cell result gives the
  obstruction for a fixed control map and one unchanged native instruction
  per step.
- [Issue 1822](https://github.com/grwtsk/math/issues/1822) coordinates
  compression of the exact machine. The macro interpreter supplies the
  first and last native configurations of each block to a checkpoint
  consumer, including exact terminal tape recovery.

## Argument

- `instruction_eq_inspectRight_iff` places the guarded action at one
  of the 188 checkpoint cells, corresponding to native `(90, 1)`.
  `block_exact` expands an ordinary successful block to one native
  instruction and the guarded continuation to two. If the guard stops
  the controller, the first native move reaches `terminalView` and the
  next native instruction is undefined. The check of the incoming cell
  ranges over all 190 cells in the pinned table. The tape equalities hold
  for every binary tape carried by the checkpoint type.
- `eval_eq` identifies the native partial evaluation of every decoded
  checkpoint with the target partial evaluation mapped through
  `terminalView`. Concatenating native blocks sends every macro halt to a
  native halt with the specified tape. Conversely, if a finite native
  budget fails, a continuing macro block consumes a positive initial
  part of that budget and leaves a smaller failing budget. Strong
  induction therefore produces a macro halt. Uniqueness of the native
  terminal evaluation gives equality of the returned result. In
  particular `haltsMacro_iff_native` and `haltsMacro_iff_not_RH` apply
  from the ordinary blank tape in state 0.
- `right_neighbor_changes_macro_halt` compares checkpoint tapes starting
  with `[1, 0]` and `[1, 1]` in native control 90. The controls and
  scanned bits agree but the next cell determines opposite outcomes.
  This falsifies implementing this guarded outcome as a function of
  the control and scanned bit alone across all checkpoint inputs.

```text
Pinned transitions and full binary checkpoint tapes
  → one- or two-instruction native blocks, with precise terminal recovery
  → exact partial evaluation and blank-start halting return
  → native Shunia counterexample theorem
  → equivalence with ¬RH

Ordinary 94-state binary Turing implementation
  → specify tape encoding and realize the guarded action       [open]
  → prove source and target checkpoint correspondence
  → recover terminal outcomes and rule out extra divergence
```

## Verification

Lean `v4.35.0-rc4`, Cryptids at the revision above and mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb` were used. The checked Lean
SHA-256 is
`e12f29aa120957bb145db781375176d89ad9176cb28eb1c3605a83bc55caf28e`.
The isolated Lake target, standalone compilation with
`--trust=0 -DwarningAsError=true`, and target kernel replay passed.
The transitive axiom audit of all six public theorems returned only subsets
of `propext`, `Classical.choice` and `Quot.sound`.

Executable observations recorded the decoded control, scanned bit, left
neighbor and right neighbor. The ordinary blank-start block and one native
instruction both gave `(48, 0, 0, 1)`. The guarded block on `[1,0,1]`
and two native instructions both gave `(56, 1, 0, 0)`. The guarded block
on `[1,1,1]` stopped, with terminal observation `(61, 1, 1, 1)` matching
the single native arrival. A second native instruction was absent.
Full fresh dependency replay, independent review and HS runtime parity
are `NOT_RUN`.

## Exact native instruction count

For any successful run of n macro blocks, countedRun returns its exact
checkpoint and the number g of successful guarded continuations. The
native tape and control at that checkpoint are reached after exactly
n+g native instructions, with 0≤g≤n. Each ordinary block consumes one
instruction, and a guarded continuation consumes two. The block law
and native finite-run composition prove the cumulative count by
induction. A stopped checkpoint consumes its one incoming instruction
to reach state 61 with its terminal tape. Thus if that run of n blocks
ends at a stopped checkpoint, n+g+1 native instructions succeed and
the run of length n+g+2 returns none.

The controls use the blank ordinary block, the guard continuing on
[1,0,1], and the guard stopping on [1,1,1]. The count gives an exact
native clock for a checkpoint consumer. A 94-state ordinary binary
target still needs a concrete realization of the extra read and the
associated tape transport.

Strict pinned compilation, target kernel replay, the ordinary,
continuing and stopping controls, and all three transitive axiom
audits passed. Full fresh import replay and independent review
remain NOT_RUN.
