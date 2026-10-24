# Complete source: GRWTSK.Analysis.Complex.VerticalReflection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c797536a75b7ac2a2d2209f5eac1e06a8e0c7024` · SHA-256 `d172eb177ad085d7a624ef9442d957432113a185df307b36bfe09e00c1f5f944`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Retained critical-line defect

CCC/0.1 separates representational projection from theorem-level elimination.
The reflection and decomposition below apply to every complex number. No zeta
zero correspondence, determinant recognition, or RH proof is asserted.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

/-- Reflection about the critical line retains the height. -/
def criticalReflection (z : ℂ) : ℂ := 1 - star z

/-- The projected coordinate alone loses information. `criticalPacket` below
retains the original horizontal defect alongside it. -/
noncomputable def criticalCenter (z : ℂ) : ℂ := ⟨1 / 2, z.im⟩

noncomputable def horizontalDefect (z : ℂ) : ℝ := z.re - 1 / 2

theorem critical_reflection_re (z : ℂ) : (criticalReflection z).re = 1 - z.re := by
  simp [criticalReflection]

theorem critical_reflection_im (z : ℂ) : (criticalReflection z).im = z.im := by
  simp [criticalReflection]

theorem critical_reflection_involutive (z : ℂ) :
    criticalReflection (criticalReflection z) = z := by
  apply Complex.ext <;> simp [criticalReflection]

theorem critical_reflection_fixed_iff (z : ℂ) :
    criticalReflection z = z ↔ z.re = 1 / 2 := by
  constructor
  · intro h
    have hr := congrArg Complex.re h
    simp [criticalReflection] at hr
    linarith
  · intro h
    apply Complex.ext
    · simp [criticalReflection, h]
      norm_num
    · simp [criticalReflection]

theorem center_defect_reconstruct (z : ℂ) :
    criticalCenter z + (horizontalDefect z : ℂ) = z := by
  apply Complex.ext
  · simp [criticalCenter, horizontalDefect]
  · simp [criticalCenter]

/-- A faithful representational return carries both coordinates explicitly. -/
noncomputable def criticalPacket (z : ℂ) : ℂ × ℝ :=
  (criticalCenter z, horizontalDefect z)

theorem critical_packet_reconstruct (z : ℂ) :
    (criticalPacket z).1 + ((criticalPacket z).2 : ℂ) = z :=
  center_defect_reconstruct z

theorem critical_packet_injective : Function.Injective criticalPacket := by
  intro z w h
  have hr := congrArg (fun p : ℂ × ℝ ↦ p.1 + (p.2 : ℂ)) h
  simpa only [critical_packet_reconstruct] using hr

theorem reflected_defect (z : ℂ) :
    horizontalDefect (criticalReflection z) = -horizontalDefect z := by
  simp [horizontalDefect, criticalReflection]
  ring

theorem center_on_critical_line (z : ℂ) : (criticalCenter z).re = 1 / 2 := rfl

theorem center_equals_source_iff (z : ℂ) :
    criticalCenter z = z ↔ horizontalDefect z = 0 := by
  constructor
  · intro h
    have hr := congrArg Complex.re h
    simp [criticalCenter] at hr
    simp [horizontalDefect, ← hr]
  · intro h
    have hr : z.re = 1 / 2 := by
      simpa [horizontalDefect, sub_eq_zero] using h
    apply Complex.ext <;> simp [criticalCenter, hr]

/-- Theorem-level collapse requires the exact defect-vanishing premise. -/
theorem critical_line_of_defect_vanishing (eligible : ℂ → Prop)
    (vanishing : ∀ z, eligible z → horizontalDefect z = 0) :
    ∀ z, eligible z → z.re = 1 / 2 := by
  intro z hz
  simpa [horizontalDefect, sub_eq_zero] using vanishing z hz

/-- Projection can visibly discard a nonzero defect; projection alone proves no collapse. -/
theorem critical_projection_discards_defect :
    (criticalCenter (0 : ℂ)).re = 1 / 2 ∧ horizontalDefect (0 : ℂ) ≠ 0 := by
  constructor
  · rfl
  · norm_num [horizontalDefect]

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
