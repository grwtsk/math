# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalDecay.Variantaf1ed08f0c2851759a646abd674047ad299c80f924787910b90954b3f0ebbccf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afb1bf513109ce8d2a1ab48385f689d5d742dbf2` · SHA-256 `fa14963710409e983d183495bbf1be549c88a4b7cf29294256650b829634f6e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.LaplaceSliceSchwartz.Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.LaplaceSliceSchwartz.Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"e7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Weil/VerticalDecay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.Weil.LaplaceTransform
public import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Tactic

/-!
# Fixed-real-part vertical decay

For a fixed real part `sigma`, the weighted function

`x ↦ g x * exp ((sigma - 1 / 2) * x)`

is a Schwartz function because it is smooth and compactly supported.  Its
Fourier transform is the vertical restriction of the centered bilateral
Laplace transform after the frozen `2 * pi` frequency rescaling.  This gives
rapid polynomial decay for each fixed `sigma`.

This module deliberately does not assert a constant uniform over a real
interval of `sigma`, a zero-counting estimate, or an explicit formula.
-/


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.LaplaceSliceSchwartz.Variante7c3eece212e48a9ba30686c4bd5fe7d0f098bd7769c95bb70c5b7097b81d200

public section

namespace Surface.Core.Weil

noncomputable section

open Set MeasureTheory Complex
open scoped ContDiff FourierTransform SchwartzMap RealInnerProductSpace

namespace PrimitiveWeilTestFunction

/-- The compactly supported Laplace slice at a fixed real part, packaged as a
Schwartz function. -/
@[expose]
def laplaceSliceSchwartz
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) : SchwartzMap ℝ ℂ :=
  (hasCompactSupport_primitiveWeilLaplaceIntegrand g (sigma : ℂ)).toSchwartzMap <| by
    unfold primitiveWeilLaplaceIntegrand
    have hcoe : ContDiff ℝ ∞ (fun x : ℝ ↦ (x : ℂ)) :=
      Complex.ofRealCLM.contDiff
    have hlinear : ContDiff ℝ ∞
        (fun x : ℝ ↦ ((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ)) :=
      contDiff_const.mul hcoe
    exact g.smooth.mul (Complex.contDiff_exp.comp hlinear)

@[surface_adapter, simp]
theorem laplaceSliceSchwartz_apply
    (g : PrimitiveWeilTestFunction) (sigma x : ℝ) :
    g.laplaceSliceSchwartz sigma x =
      primitiveWeilLaplaceIntegrand g (sigma : ℂ) x :=
  rfl

/-- Exact normalization bridge between the vertical Laplace restriction and
mathlib's Fourier transform. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_eq_fourier_laplaceSlice
    (g : PrimitiveWeilTestFunction) (sigma t : ℝ) :
    primitiveWeilLaplace g ((sigma : ℂ) + Complex.I * (t : ℂ)) =
      𝓕 (g.laplaceSliceSchwartz sigma) (-t / (2 * Real.pi)) := by
  rw [SchwartzMap.fourier_coe, Real.fourier_eq']
  unfold primitiveWeilLaplace
  apply integral_congr_ae
  filter_upwards with x
  rw [laplaceSliceSchwartz_apply]
  unfold primitiveWeilLaplaceIntegrand
  rw [smul_eq_mul]
  have hexponent :
      (((sigma : ℂ) + Complex.I * (t : ℂ)) - (1 / 2 : ℂ)) * (x : ℂ) =
        ((-(2 : ℝ) * Real.pi *
            inner ℝ x (-t / (2 * Real.pi)) : ℝ) : ℂ) * Complex.I +
          (((sigma : ℂ) - (1 / 2 : ℂ)) * (x : ℂ)) := by
    simp only [RCLike.inner_apply, conj_trivial]
    push_cast
    field_simp [Real.pi_ne_zero]
    ring
  rw [hexponent]
  rw [Complex.exp_add]
  ring

/-- Rapid vertical decay at a fixed real part, expressed in mathlib's
normalized Fourier frequency.  Since `2 * pi` is a fixed nonzero scalar, this
is equivalent to the usual polynomial decay in `|t|`. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_vertical_normalized_pow_bound
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (k : ℕ) :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
      ‖(-t / (2 * Real.pi) : ℝ)‖ ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C := by
  obtain ⟨C, hC, hbound⟩ :=
    (𝓕 (g.laplaceSliceSchwartz sigma) : SchwartzMap ℝ ℂ).decay k 0
  refine ⟨C, hC, fun t ↦ ?_⟩
  rw [primitiveWeilLaplace_eq_fourier_laplaceSlice]
  simpa only [norm_iteratedFDeriv_zero] using
    hbound (-t / (2 * Real.pi))

/-- Equivalent fixed-real-part decay in the unscaled vertical variable. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_vertical_pow_bound
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (k : ℕ) :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
      |t| ^ k *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C := by
  obtain ⟨C, hC, hbound⟩ :=
    primitiveWeilLaplace_vertical_normalized_pow_bound g sigma k
  have hscalePos : 0 < 2 * Real.pi := mul_pos (by norm_num) Real.pi_pos
  refine ⟨(2 * Real.pi) ^ k * C, mul_pos (pow_pos hscalePos k) hC, fun t ↦ ?_⟩
  have hscale :
      |t| = (2 * Real.pi) * ‖(-t / (2 * Real.pi) : ℝ)‖ := by
    rw [Real.norm_eq_abs, abs_div, abs_neg, abs_of_pos hscalePos]
    field_simp [ne_of_gt hscalePos]
  rw [hscale, mul_pow, mul_assoc]
  exact mul_le_mul_of_nonneg_left (hbound t) (pow_nonneg hscalePos.le k)

/-- Conventional rapid-decay estimate at a fixed real part. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_decay_fixedRealPart
    (g : PrimitiveWeilTestFunction) (sigma : ℝ) (k : ℕ) :
    ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
      ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤
        C / (1 + |t|) ^ k := by
  obtain ⟨C₀, hC₀, hzero⟩ :=
    primitiveWeilLaplace_vertical_pow_bound g sigma 0
  obtain ⟨Cₖ, hCₖ, hk⟩ :=
    primitiveWeilLaplace_vertical_pow_bound g sigma k
  let C := (2 : ℝ) ^ k * (C₀ + Cₖ)
  have hC : 0 < C := by
    dsimp [C]
    positivity
  refine ⟨C, hC, fun t ↦ ?_⟩
  rw [le_div_iff₀' (pow_pos (by positivity : 0 < 1 + |t|) k)]
  have hnorm :
      ‖primitiveWeilLaplace g
        ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul] using hzero t
  by_cases ht : |t| ≤ 1
  · calc
      (1 + |t|) ^ k * ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖
          ≤ (1 + |t|) ^ k * C₀ :=
        mul_le_mul_of_nonneg_left hnorm (pow_nonneg (by positivity) k)
      _ ≤ 2 ^ k * C₀ := by
        gcongr
        nlinarith
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]
  · have htOne : 1 ≤ |t| := le_of_not_ge ht
    have hsum : 1 + |t| ≤ 2 * |t| := by nlinarith
    calc
      (1 + |t|) ^ k * ‖primitiveWeilLaplace g
          ((sigma : ℂ) + Complex.I * (t : ℂ))‖
          ≤ (2 * |t|) ^ k * ‖primitiveWeilLaplace g
              ((sigma : ℂ) + Complex.I * (t : ℂ))‖ := by
        gcongr
      _ = 2 ^ k *
          (|t| ^ k * ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖) := by
        rw [mul_pow]
        ring
      _ ≤ 2 ^ k * Cₖ :=
        mul_le_mul_of_nonneg_left (hk t) (pow_nonneg (by norm_num) k)
      _ ≤ C := by
        dsimp [C]
        nlinarith [pow_nonneg (by norm_num : (0 : ℝ) ≤ 2) k]

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
```
