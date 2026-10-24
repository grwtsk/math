# Complete source: GRWTSK.Analysis.MeasureTheory.Integral.Centering

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07810ffb96cdee36436518589dcd3f49999565de` · SHA-256 `d13f66aedbfbbc050a323a14bbe2ef8fb35e9ddb2ae53406d47ddd6fa2467b7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib

/-! # Centering a real square-integrable observation

The mean is retained in the reconstruction theorem. The hypotheses state
ordinary integrability explicitly; no totalized integral is used as evidence
that a function is integrable.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory

namespace GRWTSK.MeasureTheory.Integral.Centering

variable {α : Type*} [MeasurableSpace α] (μ : Measure α)
  [hμ : IsProbabilityMeasure μ]

def mean (f : α → ℝ) : ℝ := ∫ x, f x ∂μ

def centered (f : α → ℝ) (x : α) : ℝ := f x - mean μ f

def energy (f : α → ℝ) : ℝ := ∫ x, (centered μ f x)^2 ∂μ

theorem integral_centered (f : α → ℝ) (hf : Integrable f μ) :
    (∫ x, centered μ f x ∂μ) = 0 := by
  unfold centered
  rw [integral_sub hf (integrable_const _)]
  simp [mean]

theorem centered_integrable (f : α → ℝ) (hf : Integrable f μ) :
    Integrable (centered μ f) μ :=
  hf.sub (integrable_const _)

theorem shifted_square_integrable (f : α → ℝ) (c : ℝ)
    (hf : Integrable f μ) (hf2 : Integrable (fun x ↦ f x ^ 2) μ) :
    Integrable (fun x ↦ (f x-c)^2) μ := by
  have hpoly : (fun x ↦ (f x-c)^2) =
      (fun x ↦ f x^2 - (2*c)*f x + c^2) := by
    funext x
    ring
  rw [hpoly]
  exact (hf2.sub (hf.const_mul (2*c))).add (integrable_const _)

theorem integral_shifted_square (f : α → ℝ) (c : ℝ)
    (hf : Integrable f μ) (hf2 : Integrable (fun x ↦ f x ^ 2) μ) :
    (∫ x, (f x-c)^2 ∂μ) =
      (∫ x, f x^2 ∂μ) - 2*c*mean μ f + c^2 := by
  have hpoly : (fun x ↦ (f x-c)^2) =
      (fun x ↦ f x^2 - (2*c)*f x + c^2) := by
    funext x
    ring
  rw [hpoly]
  have hadd := integral_add (hf2.sub (hf.const_mul (2*c)))
    (integrable_const (c^2) : Integrable (fun _ : α => c^2) μ)
  have hsub := integral_sub hf2 (hf.const_mul (2*c))
  simp only [Pi.sub_def] at hadd hsub
  rw [hadd, hsub, integral_const_mul]
  simp [mean]

omit hμ in
theorem energy_nonneg [IsProbabilityMeasure μ] (f : α → ℝ) : 0 ≤ energy μ f :=
  integral_nonneg (fun _ ↦ sq_nonneg _)

theorem energy_eq_second_moment_sub_mean_sq (f : α → ℝ)
    (hf : Integrable f μ) (hf2 : Integrable (fun x ↦ f x^2) μ) :
    energy μ f = (∫ x, f x^2 ∂μ) - (mean μ f)^2 := by
  unfold energy centered
  rw [integral_shifted_square μ f (mean μ f) hf hf2]
  ring

theorem reconstruct_second_moment (f : α → ℝ)
    (hf : Integrable f μ) (hf2 : Integrable (fun x ↦ f x^2) μ) :
    (∫ x, f x^2 ∂μ) = energy μ f + (mean μ f)^2 := by
  rw [energy_eq_second_moment_sub_mean_sq μ f hf hf2]
  ring

theorem center_is_minimizer (f : α → ℝ) (c : ℝ)
    (hf : Integrable f μ) (hf2 : Integrable (fun x ↦ f x^2) μ) :
    (∫ x, (f x-c)^2 ∂μ) = energy μ f + (mean μ f-c)^2 := by
  rw [integral_shifted_square μ f c hf hf2,
    energy_eq_second_moment_sub_mean_sq μ f hf hf2]
  ring

theorem center_minimal (f : α → ℝ) (c : ℝ)
    (hf : Integrable f μ) (hf2 : Integrable (fun x ↦ f x^2) μ) :
    energy μ f ≤ ∫ x, (f x-c)^2 ∂μ := by
  rw [center_is_minimizer μ f c hf hf2]
  exact le_add_of_nonneg_right (sq_nonneg _)

end GRWTSK.MeasureTheory.Integral.Centering
```
