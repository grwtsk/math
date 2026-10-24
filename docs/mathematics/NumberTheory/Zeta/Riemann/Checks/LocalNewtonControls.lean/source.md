# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.LocalNewtonControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18f428f8f1211e205d6a9235b42f0575da1582b6` · SHA-256 `4ce7201461198a75637fca065ab7397f03260ce269d7d7a0d650e164d40dc52d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalNewtonWitness
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Synthetic controls only; none is an actual zeta-value certificate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.RiemannHypothesis.Checks.LocalNewtonControls

open Metric
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalNewtonDisk
open GRWTSK.Analysis.Complex.NewtonDisk

/-- Center jet of z^2-2 at c=3/2, with exact inverse 1/3 and uniform |f''|=2. -/
def quadraticData : Data := ⟨(1/3, 0), (1/4, 0), (3, 0), 0, 0, 2⟩

theorem quadratic_margins :
    residual quadraticData = 1/12 ∧ contraction (1/4) quadraticData = 1/6 ∧
    check (1/4) quadraticData = true := by decide

/-- A small center residual alone does not imply strict contractivity. -/
theorem multiple_root_defect_rejected :
    check 1 ⟨one, zero, zero, 0, 0, 2⟩ = false := by decide

/-- A contraction may have its only fixed point outside the proposed disk. -/
theorem missing_selfmap_rejected :
    check 1 ⟨one, (-2, 0), one, 0, 0, 0⟩ = false := by decide

theorem zero_preconditioner_rejected :
    check 1 ⟨zero, zero, one, 0, 0, 0⟩ = false := by decide

/-- The imaginary derivative defect is not a real-part-only test. -/
theorem imaginary_defect_rejected :
    check 1 ⟨one, zero, (1, 1), 0, 0, 0⟩ = false := by decide

theorem negative_errors_rejected :
    check 1 ⟨one, zero, one, -1, 0, 0⟩ = false ∧
    check 1 ⟨one, zero, one, 0, -1, 0⟩ = false ∧
    check 1 ⟨one, zero, one, 0, 0, -1⟩ = false := by decide

/-- The zero disk and disks meeting either strip boundary are outside this supplier. -/
theorem geometry_controls :
    check 0 ⟨one, zero, one, 0, 0, 0⟩ = false ∧
    LocalNewtonWitness.checkAt (1/2, 0) (1/2) ⟨one, zero, one, 0, 0, 0⟩ = false ∧
    LocalNewtonWitness.checkAt (1/2, 0) (1/4) ⟨one, zero, one, 0, 0, 0⟩ = true := by decide

/-- False analytic data can pass arithmetic. The missing uniform estimate is NOT inferred.
For f(z)=z^2-z/50+1/5000 at zero, the true second bound 2 is essential. -/
theorem unproved_curvature_is_not_checked :
    check (1/50) ⟨(-50, 0), (1/5000, 0), (-1/50, 0), 0, 0, 0⟩ = true ∧
    check (1/50) ⟨(-50, 0), (1/5000, 0), (-1/50, 0), 0, 0, 2⟩ = false := by decide

/-- The strict Newton defect itself excludes the repeated-root derivative case. -/
theorem no_zero_derivative_defect (A : ℂ) : ¬ ‖1 - A * (0 : ℂ)‖ < 1 := by simp

/-- Genuine analytic nonvacuity through the Banach theorem, not an assumed root. -/
theorem affine_analytic_example :
    ∃ z ∈ closedBall (0 : ℂ) (1 : ℝ), z - 1/2 = 0 ∧ (1 : ℂ) ≠ 0 ∧
      ∀ v ∈ closedBall (0 : ℂ) (1 : ℝ), v - 1/2 = 0 → v = z := by
  apply exists_unique_zero (f := fun z : ℂ => z - 1/2) (g := fun _ => (1 : ℂ))
    (c := 0) (A := 1) (R := 1) (κ := 0) (η := 1/2)
  · norm_num
  · norm_num
  · norm_num
  · intro z _
    exact (hasDerivAt_id z).sub_const (1/2)
  · intro z _
    norm_num
  · norm_num
  · norm_num

end GRWTSK.RiemannHypothesis.Checks.LocalNewtonControls
```
