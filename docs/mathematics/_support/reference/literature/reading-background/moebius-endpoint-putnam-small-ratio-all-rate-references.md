# Source ledger: Möbius endpoint small-ratio all-rate sector

Date: 2026-11-01

## Repository sources

- `MoebiusEndpointPutnamSparseGapYoung.lean`: literal response-Gram Young
  inequality and two-neighbour additive-distance count.
- `MoebiusEndpointPutnamSparseGapAllRate.lean`: complete signed additive gap
  degree bound, diagonal transport, and explicit `32/epsilon^2` rate.
- `MoebiusEndpointDenseLongGapSource.lean`: exact predecessor long-gap source
  and equivalence with the original RH-facing cross supplier.
- `MoebiusEndpointPutnamEnergyCounting.lean`: unchanged endpoint inventory,
  `pickupDiagonal`, rate gap set, and pure dense-degree obstruction.
- `GoodScaleEnergyCriterion.lean`: fixed-scale-set affine coverage and
  conditional return from the complete cross supplier to RH.

## Mathematical inputs

The new estimate uses only finite double counting, symmetry, the scalar
inequality `2|ab| <= a^2+b^2`, and the already formalized diagonal bound. No
external prime-correlation theorem, random-sign model, Chowla hypothesis,
zero-free theorem, or RH premise is used.

The source-specific statement is not presented as a new abstract graph-theory
theorem. Its contribution is the exact application to all actual Möbius
small-integer-ratio edges and the direct residual packet after simultaneous
additive and multiplicative localization.
