/-
Copyright (c) 2026 grwtsk contributors. MIT.

Source attribution:
- Christian Bernert, Tim Browning, Jared Duker Lichtman, Joni Teräväinen,
  "Bounds on the exceptional set in the abc conjecture", arXiv:2410.12234v2
  (2026), Proposition 4.1.
- D. R. Heath-Brown, "Diophantine approximation with square-free numbers",
  Math. Z. 187 (1984), Lemma 3, for the still-open lattice estimate.

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheory.GeometryOfNumbers.PrimitiveLinearBoxCount
import GRWTSK.NumberTheory.AlgebraicNumberTheory.GeometryOfNumbers.PrimitiveLinearKernel
import GRWTSK.NumberTheory.AlgebraicNumberTheory.GeometryOfNumbers.PrimitiveLinearUnimodularFrame
import GRWTSK.NumberTheory.AlgebraicNumberTheory.GeometryOfNumbers.PrimitiveLinearScaledArea
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput
import GRWTSK.NumberTheory.AlgebraicNumberTheory.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls
import GRWTSK.NumberTheory.AlgebraicNumberTheory.GeometryOfNumbers.Checks.PrimitiveLinearFrameControls

set_option autoImplicit false

/-!
# Isolated primitive linear-lattice foundation

This source-only root exposes the exact finite primitive count, anisotropic
normalization, primitive coefficient kernel, explicit unimodular integer
frame, exact box-scaled cross product and area formula, and the adapter from
the abc geometry linearization.  It is intentionally not imported by
`GRWTSK.lean`.

The frame now supplies determinant `-1` and the exact lower normalization

`max(aX,bY,cZ)/(XYZ) ≤ scaledArea`.

The absolute-constant Heath--Brown finite lattice-point inequality, the
identification with Mathlib's `ZLattice.covolume`, reduced-basis or
successive-minima argument, primitive-ray payment, divisor-fibre lifting,
and Proposition 4.1 remain open.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_LATTICE_THEOREM_OPEN.
-/
