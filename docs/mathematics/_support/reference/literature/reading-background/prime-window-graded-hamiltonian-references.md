# Prime-window graded Hamiltonian source ledger

Local mathematical attribution: grwtsk contributors.

## Source chain

- `PadicMobiusPrimeWindowSeam.lean`: literal von Mangoldt/PNT window and the
  exact Möbius-log identity.
- `WilsonFullRegulatedHamiltonian.lean`: whole gauge-invariant regulated
  Hilbert space, maximal logarithmic domain, graph self-adjoint Hamiltonian,
  normalized vacuum, and finite-regulator excitation estimate.
- `WilsonPrimeWindowResidueHamiltonian.lean`: singleton prime-window identity,
  positive injective real labels, and explicit log-prime transcendence field.
- `WilsonPrimeWindowShiftedHamiltonian.lean`: one-block scalar identity shift,
  shifted vacuum energy, centered form, eigenvalue translation, and shifted
  graph theorem.
- `WilsonPrimeWindowGradedHamiltonian.lean`: finite `PiLp 2` block sum, exact
  form decomposition, vacuum-energy readout, point-spectrum union, graph
  self-adjointness, and centered excitation estimate.

## Upstream formal APIs

- Mathlib `Analysis/InnerProductSpace/PiL2.lean` supplies the actual finite
  `L²` direct-sum inner product and `PiLp.inner_apply`.
- Mathlib `Analysis/Normed/Lp/PiLp.lean` supplies `PiLp.single`, coordinate
  evaluation, and the exact `L²` norm-square sum.
- Mathlib finite sums and function extensionality supply the block assembly.

## Mathematical provenance

The finite orthogonal-direct-sum and scalar-shift facts are standard functional
analysis. The local contribution is their exact integration with the existing
source-defined Wilson maximal domain and the literal arithmetic prime-window
labels, while preserving the distinction between absolute residue offsets and
vacuum-relative excitation gaps.

No paper-derived continuum, Yang--Mills mass-gap, or RH theorem is imported by
this stage.

## Evidence boundary

Repository source publication is separate from theorem acceptance. Lean
compilation, expected types, fresh kernel replay, transitive axiom audit, and
native execution remain `NOT_RUN` until exact-source receipts are produced.
