# Complete source: GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6651bb90786ddafc654210ab8c132a8ec859ee7b` · SHA-256 `97d2afe0c841048a5b2354877609bd86d1744cf91e0c8b920894f1ec924c2f57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# A generic positive-boundary control

This continuous exponential wave is not the arithmetic pickup. Its exact
integrability failure shows why one positive damping cannot be promoted to all
positive dampings solely from continuity and an initially paid integral.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set

theorem exponential_boundary_control :
    Continuous (fun u : ℝ ↦ Real.exp (u / 2)) ∧
      IntegrableOn (fun u : ℝ ↦ Real.exp (-2 * u) * Real.exp (u / 2) ^ 2) (Ici 0) ∧
      ¬ IntegrableOn (fun u : ℝ ↦ Real.exp (-u) * Real.exp (u / 2) ^ 2) (Ici 0) := by
  refine ⟨Real.continuous_exp.comp (continuous_id.div_const 2), ?_, ?_⟩
  · have he : (fun u : ℝ ↦ Real.exp (-2 * u) * Real.exp (u / 2) ^ 2) =
        (fun u ↦ Real.exp (-u)) := by
      funext u
      rw [pow_two, ← mul_assoc, ← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [he]
    exact (integrableOn_Ici_iff_integrableOn_Ioi).mpr (integrableOn_exp_neg_Ioi 0)
  · have he : (fun u : ℝ ↦ Real.exp (-u) * Real.exp (u / 2) ^ 2) =
        (fun _ ↦ (1 : ℝ)) := by
      funext u
      rw [pow_two, ← mul_assoc, ← Real.exp_add, ← Real.exp_add,
        show -u + u / 2 + u / 2 = 0 by ring, Real.exp_zero]
    rw [he]
    simp [integrableOn_const_iff, Real.volume_Ici]

end GRWTSK.RiemannHypothesis.CCC
```
