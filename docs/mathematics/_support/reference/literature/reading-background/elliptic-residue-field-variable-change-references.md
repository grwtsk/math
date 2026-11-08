# Source ledger: residue-field variable-change transport

Local attribution: grwtsk contributors. Date: 2026-11-01.

## Local mathematical source

This increment is a local source-bound derivation, not an imported proof of a
global elliptic or zeta theorem.

- **Result:** every Mathlib Weierstrass variable change over a field gives an
  explicit affine-equation-fiber equivalence; a DVR variable change therefore
  transports its residue special fiber and full good-reduction point count.
- **Lean source:** `GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticResidueFieldVariableChangePort.lean`.
- **Principal declarations:** `affineResidual_variableChange`,
  `variableChangeAffineEquiv`, `variableChangePointEquiv`,
  `residueVariableChangePointEquiv`,
  `integralModels_eq_of_descended_change`,
  `reductionPoint_natCard_eq_of_unit_scale`.
- **Verification:** source proof candidate; compilation, expected types, fresh
  kernel replay and transitive axiom audit `NOT_RUN`.

## Pinned upstream interfaces

### Mathlib: admissible Weierstrass changes

- **Source:** `Mathlib/AlgebraicGeometry/EllipticCurve/VariableChange.lean`.
- **Pinned revision:** `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- **Pinned blob:** `9ae1871e4ed729cefa7c5b7a68a60cf52c580a3a`.
- **Used interfaces:** `WeierstrassCurve.VariableChange`,
  `variableChange_a₁`, `variableChange_a₂`, `variableChange_a₃`,
  `variableChange_a₄`, `variableChange_a₆`, `VariableChange.map`,
  `map_variableChange`.
- **Role:** exact five-coefficient action, unit-valued scale and compatibility
  with residue/base change.

### Mathlib: affine equation and point type

- **Source:** `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Basic.lean`.
- **Pinned revision:** `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- **Pinned blob:** `8d41a9c9b8bc2d0858621d2183e518803d35f11b`.
- **Used interfaces:** `Affine.Equation`, `Affine.equation_iff'`,
  `Affine.equation_iff_nonsingular`.
- **Role:** source equation and equation-to-nonsingular bridge.

- **Source:** `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean`.
- **Pinned revision:** `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- **Pinned blob:** `2f10d185c70019fd37c82da3d09eb906e12ac9bb`.
- **Used interface:** `WeierstrassCurve.Affine.Point`, including the point at
  infinity and `Point.some.injEq`.
- **Role:** full special-fiber point type consumed by local factors.

### Mathlib: integral, minimal and reduction models

- **Source:** `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean`.
- **Pinned revision:** `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- **Pinned blob:** `67494c807f64aaf882dd2b6b0edf366df83ba3f0`.
- **Used interfaces:** `integralModel`, `baseChange_integralModel_eq`,
  `variableChange_integral_of_u_integral`, `IsMinimal`, `reduction`,
  `HasGoodReduction`, `hasGoodReduction_iff_isElliptic_reduction`.
- **Role:** descent of a fraction-field variable change after its scale is
  identified with a DVR unit, and construction of the actual special fiber.

### Mathlib: DVR valuation boundary

- **Source:** `Mathlib/RingTheory/Valuation/Discrete/IsDiscreteValuationRing.lean`.
- **Pinned revision:** `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- **Pinned blob:** `e59c952ac3bca7c7c6878da88c3ab56ba2a9b66e`.
- **Relevant but not yet consumed:** the valuation-one/unit image
  characterization.
- **Missing bridge:** prove that the specific fraction-field change between the
  explicit record model and Mathlib's chosen minimal model has scale in the
  image of a `PadicInt 7` unit.

## GRWTSK dependencies and consumers

- **Integral variable-change predecessor:**
  `EllipticPrimeResidueIntegralVariableChangePort.lean`, blob
  `cf01a4665bd1e33d2f18ef1c09372418f92b9d42`.
  It covers all changes over `ℤ`; the new source covers arbitrary residue-field
  units.
- **Native local-factor consumer:**
  `EllipticPowerSeriesLocalFactor.lean`, blob
  `61ba3e2fb70554bb42b194f287d2822f2be92433`.
  Its exact record-7-adic point-count hypothesis remains open until unit-scale
  descent and explicit residue-model identification are supplied.
- **Concurrent Möbius/elliptic comparison:**
  `MoebiusEllipticFiberKernelComparison.lean`, blob
  `df9ded979964790b92f3053efc3aedeb6e2dfa78`.
  The new result preserves the elliptic trace packet under local coordinate
  changes but does not estimate the complete signed Möbius defect.

## Literature context

The coordinate formulas are standard admissible Weierstrass changes, as in:

- Joseph H. Silverman, *The Arithmetic of Elliptic Curves*, second edition,
  Springer GTM 106, 2009, Chapter III.
- Stable DOI: `10.1007/978-0-387-09494-6`.

No theorem from Silverman is treated as a replay receipt. The formal source uses
the pinned Mathlib declarations above. Historical influence is not inferred from
an idea match.

## Precise remaining bridges

1. Prove the record curve's chosen fraction-field minimal-model change has scale
   descending from a `PadicInt 7` unit.
2. Identify the explicit `PadicInt 7` residue curve, through
   `PadicInt.residueField`, with the existing `ZMod 7` record model and its
   certified count `13`.
3. Compile and kernel-check the exact source and dependencies.
4. Keep global elliptic `L`-functions, BSD, the Möbius signed-defect estimate and
   RH separate.
