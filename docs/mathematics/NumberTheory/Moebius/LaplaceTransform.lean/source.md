# Complete source: GRWTSK.NumberTheory.Moebius.LaplaceTransform

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dcfd7063a2522f7bc1e6fdf34d440aec8e2628a` · SHA-256 `e22e8035988db5cdb63e2915dc7aa240d02bd3d2f037943b91f66fcdaafaf72a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.NumberTheory.Moebius.MertensPrimitive
import Mathlib.Analysis.Complex.Exponential

/-!
# Fixed signed pickup Laplace definition

Human mathematical direction: grwtsk contributors. Implementation: OpenAI Codex.
This definition imports no RH consumer. Genuine integrability and holomorphy are
separate obligations; the totalized integral alone supplies neither.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

open Set MeasureTheory

/-- The genuine signed transform of the fixed arithmetic pickup. -/
def signedPickupLaplace (z : ℂ) : ℂ :=
  ∫ t in Ioi (0 : ℝ), Complex.exp (-z * (t : ℂ)) * (wholePickup t : ℂ)

/-- The analytic domain required by the energy-only return. -/
def pickupLaplaceDomain : Set ℂ := {z | 0 < z.re}

end GRWTSK.RiemannHypothesis.CCC
```
