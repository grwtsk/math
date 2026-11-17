# Calibrated tape readout for the prime-addressed Riemann95 machine

grwtsk contributors

The declarations below are in
`GRWTSK.ComputerScience.Riemann95PrimeMachine` in
[Riemann95CalibratedTapeReadout.lean](Riemann95CalibratedTapeReadout.lean).
They are local consequences of the exact machine, using an elementary rational
calibration. The dispatch's HS observations enter as explicit hypotheses.

## Source and consumers

- The local dependency is [Riemann95PrimeMachine.lean at 5847ca52](https://github.com/grwtsk/math/blob/5847ca52b084396878e4aa5cfac80003f9d0709d/GRWTSK/ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/Riemann95PrimeMachine.lean),
  Git blob `1e24db31449f70226b03e2fc59e978545d565241`. This supplies
  `checkAddress`, `blank`, `run`, `run_tapeAgrees`, `Halts` and
  `halts_iff_not_RH`, retaining the original transitions, arithmetic
  counterexample predicate, prime ranks and initialization.
- The upstream source is the Cryptids contributors' repository edition
  `3647718b5df22e1a61462dec0376bd204526285a`. The machine and reduction are
  identified by
  [the native table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt),
  [the reduction support description](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/README.md),
  [`halts_candidate_iff_counterexample`](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L23) and
  [`halts_candidate_iff_not_riemannHypothesis`](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L13).
  The readout is a conditional interface to those results.
- [Issue 1821](https://github.com/grwtsk/math/issues/1821) coordinates the
  finite instruction-block verifier and the outstanding HS realization.

## Argument and scope

- `BitCalibration.decode_of_accurate` compares a sample to the mean
  of the codes for 0 and 1. The open error interval for 0 lies below
  the mean, and the open interval for 1 lies above it. Positive gain is
  implicit in the strict bound.
  `BitCalibration.midpoint_error` and
  `BitCalibration.no_closed_half_gap_decoder` give the hostile case.
  If the bound is closed and the gain is positive, the mean is admitted by
  both codes, so any deterministic decoder must fail for one of them.
- `idealTapeReadout_agrees` supplies exact samples at any positive gains.
  `decodeTapeReadout_eq_none_iff` rejects precisely prime codes outside the
  selected window, including composite numbers. An admitted address can
  still differ from the actual address. `decodeTapeReadout_tapeAgrees`
  keeps exact identity of the address and signed head position as hypotheses
  and recovers the scanned symbol and both sampled lists.
- `runFromReadout_agrees` composes the decoded prefix with the native
  finite propagation result. Input depth `n+d` supplies all cells that can
  affect a depth-`d` result after `n` instructions. One layer of the
  returned option indicates address validity, and the inner layer indicates
  whether the native run completed the requested instructions.
  `runFromReadout_eq_some_none_iff` proves the latter equivalence.
- `eval_dom_iff_exists_run_eq_none` identifies a finite budget with an
  absent result exactly when the native partial evaluation reaches a
  terminal state. A finite path to an undefined instruction gives such a
  budget. In the converse direction, induction on an absent budget removes
  each successful step until it finds an undefined instruction.
  `halts_iff_exists_readout_failure` takes the existential over finite
  budgets at the blank start. `exists_readout_failure_iff_not_RH`
  transfers this equivalence through the pinned Cryptids reduction.

The remaining HS premise is a source-bound map producing the exact metadata and
strict cellwise bounds at the required depths, including at successive
reachable block boundaries. The consumer supplies a proof of `ReadoutAgrees`
relative to the exact source configuration. Native execution supplies the
subsequent transition after decoding. A finite family of successful checks
gives only the corresponding lower bounds on runtime. The existing
arbitrary-start halting collision in `exists_tapeAgrees_opposite_halts`
limits fixed-depth observations even with ideal samples.

```text
Reachable HS boundary
  → exact metadata and strict cell errors at input depth n + d   [open]
  → ReadoutAgrees for the actual configuration
  → decoded TapeAgrees at depth n + d
  → native completion status and retained tape at depth d

Successive physical boundaries
  → preservation of the calibration and actual source input    [open]
  → repeated application of the finite-block theorem
```

## Verification

The checked Lean source has SHA-256
`a0ecc913d6876b6030a6487d7be48b8d80335840c9b4a3e63559df3d89cc4e85`.
Lean `v4.35.0-rc4`, the Cryptids revision above, and mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb` were used. The isolated Lake
target, standalone compilation with `--trust=0 -DwarningAsError=true`,
and target kernel replay passed. The transitive audit of the eleven
public theorems found only `propext`, `Classical.choice` and `Quot.sound`.

An executable control with bias `1/8`, gain `1/2` and one observed left
cell returned prime `227` and position `-1` after the first instruction
from address `2`. Left samples `5/16` and `7/16` gave next scanned bits
0 and 1 respectively. Composite address `4` and the next window's
first prime `503` returned outer absence. The valid terminal
state-61 instruction on symbol 1 returned `some none`. The midpoint
sample `3/8` gave absolute error `1/4` against each code.

Full fresh dependency replay, independent review and HS runtime parity
are `NOT_RUN`.

## Cofinal trials across prime windows

For every native start and any sequence of prime windows, assume
the samples at trial t accurately describe that same native start
readdressed in the trial's window, at input depth equal to the trial's
instruction budget b(t). If for every n some b(t) is at least n,
an inner readout failure exists exactly when the original start
halts. Readdressing commutes with the exact run and preserves its
absence. An absent run remains absent at any larger budget. Thus
any native failure budget is eventually met by some trial, even
when the budgets are nonmonotone.

Cofinality is necessary for this uniform guarantee over all native
starts. If all budgets are below n, the original state-12 sweep with
padding n eventually reaches the sole terminal cell. Its first
n+8 instructions all succeed, so even ideal unit-gain samples
give no failure at the scheduled budgets. For blank-start trials,
the positive theorem composes with the pinned halting equivalence
and yields a readout failure exactly when RH is false.

The scope of the necessity example is arbitrary starts. To apply
the sufficiency theorem to the physical controller, the sensor
must supply valid metadata and strict half-gap accuracy at each
trial, and the schedule must meet the cofinal budget condition.

Pinned strict compilation, target replay, the bounded-delay and
nonmonotone schedule controls, and all three axiom audits passed.
Fresh full import replay, independent review and physical HS
readout accuracy were NOT_RUN.

## Executable handoff check

`checkReadout_handoff_iff` assumes an accurate first sample at depth
`n+d` and a successful `n`-instruction prediction from that sample.
The native run then has a successor. For every destination window,
new calibration, and sample at depth `d`, the Boolean check against the
readdressed prediction succeeds exactly when the new sample is accurate
for the readdressed native successor. The finite visibility theorem
matches the address, signed position, scanned bit and both tape
prefixes at the boundary. Readdressing changes the two matched control
codes by the same map. Readout accuracy uses precisely this finite data,
so the rational error comparisons have the same inputs on both sides.

`shifted_readout_passes_address_but_disagrees` changes only the position
of an ideal sample. Its prime address remains valid while its absolute
position fails the accuracy predicate. This matters at any window
handoff, including one with exact tape samples.

The next physical premise is supplying the first accurate reading and
then presenting accurate boundary samples with depths sufficient for
the following blocks. The check certifies the supplied finite boundary
data under the first accuracy premise. It supplies neither an existence
theorem for sensor readings nor progress of the physical gate.

Strict target compilation and module kernel replay passed after rebuilding
the pinned prime-machine and prime-enumeration imports. All six theorem
axiom audits found only `propext`, `Classical.choice` and `Quot.sound`.
The first instruction from blank in window zero, followed by readdressing
to window one, gave prime 827 and position -1. The boundary check accepted
the ideal sample and rejected its shifted version. The address decoder
still accepted the shifted version. Source SHA-256
`a7ec071668698cadf4960bd72f424e8a33feaa7419bc588a2cc3b5392909d1ac`.
Full fresh import replay, independent review and physical validation
are `NOT_RUN`.
