# HS-95 lane 07 · Coherent energy measurement of the signed Weil term

Local source attribution is grwtsk contributors. Formalization and checking assistance by OpenAI Codex.

The [Lean source](WeilCoherentWindowReadout.lean) extends the per-delay balanced-energy construction from the offset lane 07 run. It synthesizes one common delayed arm before taking either detector integral. The same two energy measurements handle any finite set of active powers. The common arm still contains one calibrated term per included prime power. [Exact arithmetic expression and test domain](WeilFirstPrimeWindowReturn.lean) · [Lane 07 source record](https://github.com/grwtsk/math/issues/1819)

## Exact observation

For a finite set S of active powers and coefficients c(n), form the arm

```text
G(t) = Σ_{n in S} c(n) f(t + log n).
E± = ∫ over [-A,A] |f(t) ± G(t)|² dt.
D = (E+ − E−)/2.
```

For any square-integrable complex test f supported in the original interval, `clipped_decode_eq` proves

```text
D = 2 Re Σ_{n in S} c(n) C_f(log n),
C_f(r) = ∫ over ℝ conj(f(t)) f(t+r) dt.
```

The pointwise difference is four times the real part of conj(f) multiplied by G. All terms quadratic in G cancel, including overlaps and resonances between distinct translates. This remaining integrand vanishes outside the original interval because f vanishes there. Moving the integral to the whole line therefore preserves it. The finite sum can then be integrated termwise by the original source's square-integrable correlation bound.

For the physical formula, use c(n) = Λ(n)/√n times the conjugate of the value of the inverse character at n. `coherent_determines_window` gives an exact decoder on the original smooth compact test domain with S equal to the first-window powers. `physicalValue_coherent` takes S to contain every supported power and recovers the signed first and later terms together. The exact conductor, full gamma integral and original conductor-one poles retain the same test. `hasSum_coherent` uses the original explicit-formula sum as a premise and retains its index and summands. `physicalValue_coherent_calibrated` composes the existing exact inverse heat and unit-phase correction on the delay coefficients. [Active powers](WeilFirstPrimeWindow.lean) · [Exact complex phase correction](WeilWindowFilterLedger.lean)

## Error and falsification controls

For a shared measured arm with actual coefficients c′(n), exact target coefficients c(n), and additive detector errors e₊ and e₋, the original physical value minus the reported value is the real quantity

```text
2 Re Σ_{n in S} (c′(n) − c(n)) C_f(log n) + (e₊ − e₋)/2.
```

Its absolute value is at most 2‖f‖₂² times the sum of the coefficient error norms, plus (|e₊|+|e₋|)/2. A common additive detector bias cancels. The bound assumes exact evaluation of the retained gamma, conductor and pole terms.

`unequal_arm_energy_difference` gives the pointwise formula when the two arms differ. The imbalance of their squared norms survives, along with the cross term using their sum. With reference value 1 and arms 2 and 0, the decoded value is 4. Two arms both equal to their average 1 give decoded value 2. This falsifies matching only the mean arm as a sufficient calibration condition.

```text
Original active powers + inverse-character coefficients → common delayed arm
Two matched aperture energies → exact signed prime term
Coefficient and detector enclosures → signed whole-value error budget
Original pole-inclusive explicit-formula premise → same-source zero sum
Actual HS sensor realizes the two measurements or bounds their discrepancy
  → remaining physical source-return obligation
```

## Exact source scope

The new local namespace is `GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout`, source SHA-256 `1d2ac7bbf01c8a914b0534594e8dcc637c050698803232ff0d7e1a9b4feb5653`. The exact physical value and signed-window definitions come from Git blob `4cb82700d60528b5c51227e82fd641b156283a60`, the window partition from `0eb548b1a532ecbad2a0b804008634b718a5a4af`, the whole-line correlation from `6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6`, and the heat-wave ledger from `9d833ec85846f3ff396258721635160aaf397d34`. This is a local consequence of those exact source statements. [Source checks and baseline explicit-formula build limits](https://github.com/grwtsk/math/issues/1819#issuecomment-6942110519)

## Verification

The exact Lean source above passed the targeted Lake build, direct Lean elaboration with `--trust=0` and warnings as errors, and fresh `leanchecker` replay of the new module. With Lean v4.34.1 and Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`, the transitive axiom audit of the ten main declarations reported only `propext`, `Classical.choice` and `Quot.sound`. Whole dependency closure replay and independent analytic review were `NOT_RUN`. The linked issue records prior failures in a broader explicit-formula build. The local implication checks the return using the original `HasSum` premise. Calibration against actual HS-95 output remains open.
