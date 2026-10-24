# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Defect.Variant4644ca94c64cfe1250645cddc1bf5f406f99fb31fc98087a675f20d6652ee893

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b771dec7c043e3e4cec59c6e72028b118ee67014` · SHA-256 `4644ca94c64cfe1250645cddc1bf5f406f99fb31fc98087a675f20d6652ee893`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Definitions
import Mathlib.Tactic

/-!
# The quadratic critical-line defect

The terminal proposition is Mathlib's exact `RiemannHypothesis`. The equivalence
below is a reformulation, not a proof that the defect vanishes on nontrivial zeros.
-/

namespace FormalResearch.RiemannHypothesis

/-- The definition is the ordinary squared complex norm used in the research statement. -/
theorem rh_defect_eq_norm_sq (s : ℂ) :
    rhDefect s = ‖s - criticalReflection s‖ ^ 2 :=
  Complex.normSq_eq_norm_sq _

/-- Positivity holds for every complex number, without any zeta-zero hypothesis. -/
theorem rh_defect_nonneg (s : ℂ) : 0 ≤ rhDefect s :=
  Complex.normSq_nonneg _

/-- The defect measures exactly the real displacement from the critical line. -/
theorem rh_defect_eq_square (s : ℂ) : rhDefect s = (2 * s.re - 1) ^ 2 := by
  simp [rhDefect, criticalReflection, Complex.normSq_apply, pow_two]
  ring

/-- Vanishing, rather than positivity, is the critical-line condition. -/
theorem rh_defect_eq_zero_iff (s : ℂ) : rhDefect s = 0 ↔ s.re = 1 / 2 := by
  rw [rh_defect_eq_square]
  constructor
  · intro h
    nlinarith [sq_nonneg (2 * s.re - 1)]
  · intro h
    rw [h]
    norm_num

/-- An exact reformulation of Mathlib's target, with every exclusion retained. -/
theorem riemann_hypothesis_iff_defect_zero :
    _root_.RiemannHypothesis ↔ ∀ s, NontrivialZetaZero s → rhDefect s = 0 := by
  constructor
  · intro h s hs
    exact (rh_defect_eq_zero_iff s).mpr (h s hs.1 hs.2.1 hs.2.2)
  · intro h s hz ht hp
    exact (rh_defect_eq_zero_iff s).mp (h s ⟨hz, ht, hp⟩)

/-- A hostile inference guard: universal nonnegativity is not universal vanishing.
The witness is not asserted to be a nontrivial zeta zero, so this does not refute RH. -/
theorem defect_nonnegative_does_not_force_universal_vanishing :
    (∀ s, 0 ≤ rhDefect s) ∧ ¬ (∀ s, rhDefect s = 0) := by
  refine ⟨rh_defect_nonneg, ?_⟩
  intro h
  have hzero := h 0
  norm_num [rh_defect_eq_square] at hzero

end FormalResearch.RiemannHypothesis
```
