# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPsiAbelReconstructionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b14f64ba3dd23eddf7aea01444f076ee3379ec6c` · SHA-256 `adac4ac8a07ca8230948f8d0e0678c0cc25bf2b8ed6f4747a2b0a464167c74bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem octave_psi_envelope_controls_cumulative
    {X : ℕ} (hX : 2 ≤ X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |cumulative X t| ≤ (3 * A + 1) / (X : ℝ) :=
  cumulative_abs_le_of_psiEnvelope hX hA ht

end GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls
```
