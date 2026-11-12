# GRWTSK.SpecialFunctions.ReciprocalGammaStrip.norm_inv_Gamma_le_strip

Local attribution: grwtsk contributors. Edition 1, 2026-11-11; math#1801.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Source [../ReciprocalGammaStrip.lean](../ReciprocalGammaStrip.lean).
Source SHA-256 `f9ba5b0102cbc3efcc6378a7d158ee9614e765d8a34944bdb67220961897338a`; Git blob `ed73e42a597153c4168308c8192b2d02890cb1a7`.

```lean
theorem norm_inv_Gamma_le_strip {z : ℂ}
    (hl : -1 ≤ z.re) (hu : z.re ≤ 2) (hi : 1 ≤ |z.im|) :
    ‖(Complex.Gamma z)⁻¹‖ ≤
      (2 * Real.exp (4 * Real.log 8) / Real.pi) * Real.exp (Real.pi * |z.im|)
```

Uniform reciprocal bound on -1<=Re(z)<=2, |Im(z)|>=1.
Ambient variables/instances are those of the linked module; number-theory
levels carry `[NeZero N]`. Retained hypotheses are exactly the displayed header.
Consumer: `DirichletStripBounds.norm_inv_gammaFactor_le_strip` and its return to LFunction.
Full argument, local dependencies and hostile boundary checks: [README.md](README.md).
This is a local consequence/pinned-API adaptation, not a new paper formalization.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/Gamma/Beta.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Beta.lean), `Complex.Gamma_ne_zero, Gamma_mul_Gamma_one_sub`; blob `612bc27a5af0f7c696a7ed1a4a84f67b3d91979e`. Apache-2.0.

Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN; prior candidate statuses
are unchanged. Proposed, NOT EXECUTED: `#print axioms GRWTSK.SpecialFunctions.ReciprocalGammaStrip.norm_inv_Gamma_le_strip`.
