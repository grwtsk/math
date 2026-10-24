# Complete source: GRWTSK.Interfaces.PrimitiveLinearLatticeFoundation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3fa297ad075b832fb08b1dd7d4624b0ff455377` · SHA-256 `cc3508cfd45775f50b3cadfef6f3b822a8ee2cad742411faacc211375d31b159`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
import GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
import GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel
import GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame
import GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput
import GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls
import GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearFrameControls

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
```
