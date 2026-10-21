/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.

Source attribution:
- Christian Bernert, Tim Browning, Jared Duker Lichtman, Joni Teräväinen,
  "Bounds on the exceptional set in the abc conjecture", arXiv:2410.12234v2
  (2026), Proposition 4.1.
- D. R. Heath-Brown, "Diophantine approximation with square-free numbers",
  Math. Z. 187 (1984), Lemma 3, for the still-open lattice estimate.

Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
-/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
import GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput
import GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls

set_option autoImplicit false

/-!
# Isolated primitive linear-lattice foundation

This source-only root exposes the exact finite primitive count, anisotropic
normalization, primitive coefficient kernel, and the adapter from the abc
geometry linearization.  It is intentionally not imported by `GRWTSK.lean`.

The absolute-constant Heath--Brown finite lattice-point inequality, its
covolume estimate, reduced-basis argument, primitive-ray payment, divisor-fibre
lifting, and Proposition 4.1 remain open.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_LATTICE_THEOREM_OPEN.
-/
