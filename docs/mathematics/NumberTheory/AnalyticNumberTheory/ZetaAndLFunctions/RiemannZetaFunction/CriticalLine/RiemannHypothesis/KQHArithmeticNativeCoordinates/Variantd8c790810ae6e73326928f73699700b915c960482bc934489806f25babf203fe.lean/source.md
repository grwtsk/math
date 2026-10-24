# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHArithmeticNativeCoordinates.Variantd8c790810ae6e73326928f73699700b915c960482bc934489806f25babf203fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79cec55af28fe49738571baa71660d02bbbf0f7a` · SHA-256 `d8c790810ae6e73326928f73699700b915c960482bc934489806f25babf203fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
# Exact native two-mode normalization and its positive Gram form

These identities preserve the source's actual rational normalization. They give
no estimate on the moving arithmetic compression. grwtsk contributors supplied
the originating direction and evaluation; OpenAI Codex supplied the proofs.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.KQHArithmeticNativeCoordinates

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

def gramForm (x y : ℝ) : ℝ :=
  (65536 / 109395 : ℝ) * x ^ 2 +
    2 * (-131072 / 45045 : ℝ) * x * y + (196608 / 5005 : ℝ) * y ^ 2

theorem gramForm_exact_square (x y : ℝ) :
    gramForm x y = (65536 / 109395 : ℝ) * (x - 34 / 7 * y) ^ 2 +
      (720896 / 28665 : ℝ) * y ^ 2 := by
  unfold gramForm
  ring

theorem gramForm_nonneg (x y : ℝ) : 0 ≤ gramForm x y := by
  rw [gramForm_exact_square]
  positivity

theorem gramForm_kernel (x y : ℝ) : gramForm x y = 0 ↔ x = 0 ∧ y = 0 := by
  rw [gramForm_exact_square]
  constructor
  · intro h
    have hy : y = 0 := by nlinarith [sq_nonneg (x - 34 / 7 * y), sq_nonneg y]
    subst y
    norm_num at h
    exact ⟨by nlinarith [sq_nonneg x], rfl⟩
  · rintro ⟨rfl, rfl⟩
    norm_num

theorem actual_source_normalization (A : ℝ) (hA : A ≠ 0) :
    gramForm (-1 / 4) (1 / A ^ 2) = SourcePairing.sourceNormalization A := by
  unfold gramForm SourcePairing.sourceNormalization
  field_simp [hA]
  ring

theorem source_direction_annihilated (A : ℝ) :
    (-1 / 4 : ℝ) * (1 / A ^ 2) + (1 / A ^ 2) * (1 / 4) = 0 := by ring

/-- The requested rank penalty vanishes exactly on the actual normalized source
direction. The uniform scalar `B` is an input, not produced by this theorem. -/
theorem compression_bound_of_rank_certificate (A B k : ℝ) (M : ℝ → ℝ → ℝ)
    (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - M x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2) :
    M (-1 / 4) (1 / A ^ 2) / SourcePairing.sourceNormalization A ≤ B := by
  have hp := SourcePairing.source_normalization_pos A hA
  have hA0 : A ≠ 0 := by linarith
  have hc := hcert (-1 / 4) (1 / A ^ 2)
  have hn : (1 / A ^ 2) * (-1 / 4 : ℝ) + (1 / A ^ 2) / 4 = 0 := by ring
  rw [actual_source_normalization A hA0, hn] at hc
  norm_num at hc
  apply (div_le_iff₀ hp).mpr
  simpa only [neg_div, one_div] using hc

/-- Application to the unchanged literal residual keeps its independent
compression readout equality as an explicit premise. This file does not prove
that equality for `T0,T2,T4`, or supply an all-scale certificate. -/
theorem native_residual_le_of_rank_certificate (A B k : ℝ) (M : ℝ → ℝ → ℝ)
    (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - M x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2)
    (hreadout : mertensResidual A =
        M (-1 / 4) (1 / A ^ 2) / SourcePairing.sourceNormalization A) :
    mertensResidual A ≤ B := by
  rw [hreadout]
  exact compression_bound_of_rank_certificate A B k M hA hcert

end FormalResearch.RiemannHypothesis.KQHArithmeticNativeCoordinates
```
