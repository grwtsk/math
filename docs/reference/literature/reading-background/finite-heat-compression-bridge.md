# Exact finite heat recovery and compression accounting

## Pinned status

- Bridge module: `GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean`
- Bridge commit: `d8246002f2159d4122ca3f5639dfb3087622bc77`
- Refreshed concurrent-main parent: `f23626b03ded1f45a4c6410231127e1b02024be7`
- Mathlib pin: `db584cd6d46c92f209a44c0f1c829460d327499d`
- Verification status: `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`
- Public-root status: neither bridge module is imported by `GRWTSK.lean`.

The bridge sharpens the proposed “heat flow as lossless compression” analogy.
At finite dimension and exact real precision, the existing Hodge/Newman channels
have explicit left inverses. This proves exact information preservation. It
does **not** prove finite-bit compression, Huffman optimality, numerical
stability, recovery of actual zeta zeros, or a theorem about zero ordinates.

## Consumed GRWTSK sources

### Finite Hodge heat recovery

- File: `GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean`
- Initial source commit: `31dc1dfe628a49c94921b5e41f3a7e92c02eb72f`
- Metric-chart extension: `e9eee6b9e24b15ba96460ef7bbde4d9b988092a4`
- Uniform inverse-gain characterization: `a4ba792528d23732d9b0c4e62176a19df7e7df57`
- Blob consumed at refreshed parent:
  `5a4961b03527b2a1de2a5254f6284052350a7b4b` if the exact blob is confirmed by
  the validation runner; the authoring interface inspected the file at parent
  `f23626b03ded1f45a4c6410231127e1b02024be7` but did not execute it.
- Exact methods consumed:
  - `diagonalHeat`
  - `inverseDiagonalHeat`
  - `inverse_after_heat`
  - `heat_after_inverse`
  - `diagonalHeat_injective`
- Hypotheses: an arbitrary supplied finite coordinate type, arbitrary real
  spectral values and time. No actual zeta spectral chart is supplied.
- Status: inherited source-only proof candidates; no kernel acceptance is
  inferred by this bridge.

### Finite Newman normalization

- File:
  `GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean`
- Source commit: `882947685b51abdd0469acdd1515096be604a91a`
- Exact methods consumed:
  - `squareFrequencies`
  - `newmanFiniteCoefficients`
  - `newman_positive_time_eq_inverse_heat`
- Mathematical scope: finite real frequency/coefficient vectors only. The
  Rodgers--Tao integral kernel, quadrature, zero motion and Newman-constant
  argument are not imported.
- Time-sign boundary: negative Newman time corresponds to dissipative forward
  Hodge heat; positive Newman time corresponds to the inverse coordinate heat
  channel. The bridge uses the exact coefficient identity for arbitrary real
  parameter and the Hodge inverse theorem.
- Status: inherited source-only proof candidate.

### Rodgers--Tao source

- Title: *The De Bruijn--Newman constant is non-negative*
- Authors: Brad Rodgers and Terence Tao
- Year: 2018 preprint; published 2020
- Stable identifier: arXiv:1801.05914
- Stable URL: https://arxiv.org/abs/1801.05914
- Use in this bridge: provenance and time-sign interpretation only. No theorem
  from the paper is represented as a Lean import.

### Huffman source

- Title: *A Method for the Construction of Minimum-Redundancy Codes*
- Author: David A. Huffman
- Year: 1952
- Stable identifier: DOI 10.1109/JRPROC.1952.273898
- Stable URL: https://doi.org/10.1109/JRPROC.1952.273898
- Use in this bridge: only the already defined exact binary prefix-code
  interface. Probability weights and minimum expected length remain outside
  the formalization.

## New declarations and exact claims

### Generic exact process recovery

- `ExactProcessRecovery process`
  - supplies an explicit left inverse on every source input;
  - says nothing about computability, precision, runtime or conditioning.
- `injective_of_exactProcessRecovery`
  - proves the process is injective.
- `factorsThrough_of_exactProcessRecovery`
  - proves every supplied readout factors through the process.

This is the exact formal meaning of a readout being “bound to a process.”

### Exact recovery versus Huffman codeability

- `AdmitsLosslessBinaryCode X`
  - asserts only that some exact binary prefix code exists on `X`.
- `huffmanLikeCover_iff_admitsLosslessBinaryCode`
  - under exact process recovery, a Huffman-like cover exists exactly when the
    source already admits such a code.

Consequently, exact heat preserves an independently available code but does
not manufacture finite-bit codeability. In particular, the bridge does not
assert a prefix code for a real coefficient space.

### Finite Hodge and Newman instances

- `diagonalHeat_exactProcessRecovery`
- `diagonalHeat_readout_bound`
- `diagonalHeat_huffmanLikeCover_iff`
- `newmanFiniteCoefficients_exactProcessRecovery`
- `newmanFiniteCoefficients_readout_bound`
- `newmanFiniteCoefficients_huffmanLikeCover_iff`

These declarations prove exact factorization for finite coefficient channels.
An actual zero-height function must still be defined and proved to be a
readout of the modeled finite coefficients before any zero recovery statement
can be instantiated.

### Selected sofic obstruction

- `diagonalHeat_not_soficThrough_of_state_collision`
- `newmanFiniteCoefficients_not_soficThrough_of_state_collision`

For one explicit finite state profile, equal states together with distinct
source signals contradict factorization of the exact heat trace through that
profile. This refutes only that selected presentation. It is not a theorem
about all sofic shifts, all labeled graphs, or an actual zeta-zero language.

## Relationship to the `7/8`, `3/4`, and height-arithmetic layer

The generic module
`GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean` remains responsible
for:

- the explicit `7/8` seed and conditional cofinal refinement above `3/4`;
- asymptotically-free accounting as a separate cost hypothesis;
- the conditional algebraic-height-to-sofic/non-sofic contradiction;
- the statement that predicate-form GRH adds critical-line placement only.

The finite heat bridge supplies none of the missing analytic or arithmetic
premises. In particular it does not prove:

- any stagewise zero-free estimate below `7/8`;
- the proposed cofinal family approaching `3/4`;
- an actual zeta-zero trace;
- algebraic ordinate implies sofic trace;
- non-soficity of that trace;
- irrationality or transcendence of any actual zero ordinate.

The correct adjective is *transcendental*. GRH alone does not imply that zero
ordinates are transcendental.

## Required verification

Run from a fresh checkout of exact bridge commit
`d8246002f2159d4122ca3f5639dfb3087622bc77`:

```bash
lake env lean GRWTSK/Logic/InformationLoss/FactorizationFiber.lean
lake env lean GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean
lake env lean GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean
lake env lean GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean
lake env lean GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean
lake build GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge
```

Create a fresh audit file importing the bridge and run `#print axioms` on at
least:

```text
GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge.factorsThrough_of_exactProcessRecovery
GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge.huffmanLikeCover_iff_admitsLosslessBinaryCode
GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge.diagonalHeat_readout_bound
GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge.newmanFiniteCoefficients_readout_bound
GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge.diagonalHeat_not_soficThrough_of_state_collision
GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge.newmanFiniteCoefficients_not_soficThrough_of_state_collision
```

Also audit the imported declarations named above and record the complete
transitive axiom/unsafe/native closure. Expected source checks are no `sorry`,
`admit`, new `axiom`, `unsafe`, or `native_decide` in the two new modules.

Actual status: no Lean/Lake execution or fresh kernel replay occurred in the
authoring runtime. Source inspection and GitHub publication are not kernel
acceptance.
