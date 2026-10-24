# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6` · SHA-256 `b5cf94f6a997f5aca219b5966b14db1ca972208e7687dae2a002e489aacb29c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinApproximation

set_option autoImplicit false

/-!
# Source-bound Mellin evaluations and strict zero-exclusion margins

Finite-prefix enclosure error and the independently proved infinite tail are charged
separately, then multiplied by the exact pole-normalization coefficient. A numerical
routine must supply a rigorous prefix enclosure; the integral definition does not do so.

The cutoff-one model is explicit and yields the classical elementary zero-free region
Re(s)>0 and ||s-1||<Re(s). Pointwise convergence elsewhere gives a strict certificate
only when the actual source is nonzero. At an actual zero every strict margin fails.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinCertification

open Complex Filter Set
open scoped Topology

noncomputable section

/-- A prefix enclosure is evidence about the SAME finite integral, including cutoff
and parameter. No floating value or source label alone inhabits the record. -/
structure MellinPrefixEnclosure (T : ℝ) (s : ℂ) where
  value : ℂ
  error : ℝ
  error_nonneg : 0 ≤ error
  enclosed : ‖fractionalMellinTruncation T s - value‖ ≤ error

/-- Exact arithmetic on a supplied prefix value; any implementation roundoff in this
expression needs its own enclosure before this complex number is used numerically. -/
def poleMellinEvaluation (s value : ℂ) : ℂ := s - s * (s - 1) * value

/-- Complete residual: finite integration/evaluation plus the actual omitted tail. -/
theorem poleMellinEvaluation_residual {s q : ℂ} {T : ℝ}
    (hs : 0 < s.re) (hT : 1 ≤ T) :
    poleNormalizedZeta s - poleMellinEvaluation s q =
      -(s * (s - 1)) *
        ((fractionalMellinTruncation T s - q) + fractionalMellinTail T s) := by
  rw [poleNormalized_eq_fractional hs]
  unfold fractionalPoleModel poleMellinEvaluation
  rw [fractionalMellin_split hT hs]
  ring

/-- Both errors survive in the explicit upper bound; neither is inferred small from
metadata. This is valid throughout Re(s)>=a>0, including s=1 for H(1)=1. -/
theorem poleMellinEvaluation_error_le {s q : ℂ} {a T δ : ℝ}
    (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T)
    (henclosure : ‖fractionalMellinTruncation T s - q‖ ≤ δ) :
    ‖poleNormalizedZeta s - poleMellinEvaluation s q‖ ≤
      (‖s‖ * ‖s - 1‖) * (δ + mellinTailMajorant a T) := by
  rw [poleMellinEvaluation_residual (ha.trans_le has) hT,
    norm_mul, norm_neg, norm_mul]
  apply mul_le_mul_of_nonneg_left _ (mul_nonneg (norm_nonneg _) (norm_nonneg _))
  exact (norm_add_le _ _).trans
    (add_le_add henclosure (fractionalMellinTail_norm_le hT ha has))

/-- Strict separation of the computed model from its full source error excludes a
source zero. All arithmetic operations in q are exact complex operations here. -/
theorem poleNormalized_ne_zero_of_mellinEnclosure {s : ℂ} {a T : ℝ}
    (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T)
    (enc : MellinPrefixEnclosure T s)
    (hmargin : (‖s‖ * ‖s - 1‖) * (enc.error + mellinTailMajorant a T) <
      ‖poleMellinEvaluation s enc.value‖) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have hbound := poleMellinEvaluation_error_le ha has hT enc.enclosed
  rw [hzero, zero_sub, norm_neg] at hbound
  exact (not_le_of_gt hmargin) hbound

/-- Port from a certified finite-prefix value and a global derivative bound to an
actual normalized-zeta variation patch. The radius/convexity and derivative bound
remain real hypotheses; an evaluation certificate alone cannot cover a region. -/
def sampleVariationPatch_of_prefixEnclosure {U V : Set ℂ} (c : ℂ) (a T b M r : ℝ)
    (ha : 0 < a) (hac : a ≤ c.re) (hT : 1 ≤ T)
    (enc : MellinPrefixEnclosure T c) (hM : 0 ≤ M) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : c ∈ V) (hUV : U ⊆ V)
    (hderiv : ∀ z ∈ V, ‖deriv poleNormalizedZeta z‖ ≤ M)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hsample : b ≤ ‖poleMellinEvaluation c enc.value‖)
    (hmargin : (‖c‖ * ‖c - 1‖) * (enc.error + mellinTailMajorant a T) + M * r < b) :
    SampleVariationPatch poleNormalizedZeta U :=
  SampleVariationPatch.ofDerivativeEnclosure c (poleMellinEvaluation c enc.value) b
    ((‖c‖ * ‖c - 1‖) * (enc.error + mellinTailMajorant a T)) M r
    (mul_nonneg (mul_nonneg (norm_nonneg _) (norm_nonneg _))
      (add_nonneg enc.error_nonneg (mellinTailMajorant_nonneg ha hT)))
    hM hr hconv hc hUV
    (fun z _ => differentiable_poleNormalizedZeta z) hderiv hradius hsample
    (poleMellinEvaluation_error_le ha hac hT enc.enclosed) hmargin

/-- Same explicit derivative majorant as the shared Mellin-bounds producer. -/
def derivativeMajorant (a B : ℝ) : ℝ :=
  1 + (2 * B + 1) * (1 / a) + B * (B + 1) * (1 / a ^ 2)

/-- No derivative oracle is needed here. The existing analytic Mellin derivative
bound supplies it from a geometric half-plane/modulus enclosure of the ambient set.
Only the finite-prefix enclosure still needs a certified evaluator. -/
def sampleVariationPatch_of_geometric_prefixEnclosure {U V : Set ℂ}
    (c : ℂ) (a B T b r : ℝ) (ha : 0 < a) (hB : 0 ≤ B) (hT : 1 ≤ T)
    (enc : MellinPrefixEnclosure T c) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : c ∈ V) (hUV : U ⊆ V)
    (hregion : ∀ z ∈ V, 2 * a ≤ z.re ∧ ‖z‖ ≤ B)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hsample : b ≤ ‖poleMellinEvaluation c enc.value‖)
    (hmargin : (‖c‖ * ‖c - 1‖) * (enc.error + mellinTailMajorant (2 * a) T) +
      derivativeMajorant a B * r < b) : SampleVariationPatch poleNormalizedZeta U := by
  apply sampleVariationPatch_of_prefixEnclosure c (2 * a) T b (derivativeMajorant a B) r
    (by positivity) (hregion c hc).1 hT enc _ hr hconv hc hUV _ hradius hsample hmargin
  · unfold derivativeMajorant
    positivity
  · intro z hz
    exact poleNormalized_deriv_norm_le ha (hregion z hz).1 (hregion z hz).2

/-- The exact empty prefix at T=1 supplies the model s. No numerical zeta value or
unknown finite quadrature is needed for this elementary region. -/
theorem poleNormalized_ne_zero_of_mellin_distance {s : ℂ}
    (hs : 0 < s.re) (hdist : ‖s - 1‖ < s.re) : poleNormalizedZeta s ≠ 0 := by
  have hs0 : 0 < ‖s‖ := norm_pos_iff.mpr (Complex.ne_zero_of_re_pos hs)
  have hratio : ‖s - 1‖ / s.re < 1 := (div_lt_one hs).mpr hdist
  have hmargin : (‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re 1 < ‖s‖ := by
    simp only [mellinTailMajorant, Real.one_rpow]
    calc
      (‖s‖ * ‖s - 1‖) * (1 / s.re) = ‖s‖ * (‖s - 1‖ / s.re) := by ring
      _ < ‖s‖ * 1 := mul_lt_mul_of_pos_left hratio hs0
      _ = ‖s‖ := mul_one _
  intro hzero
  have hb := poleNormalized_truncation_error (le_refl (1 : ℝ)) hs (le_refl s.re)
  rw [hzero, pole_truncation_at_one, zero_sub, norm_neg] at hb
  exact (not_le_of_gt hmargin) hb

/-- Source-zero exclusion, using the already proved canonical zero transport to H. -/
theorem noTargetZero_in_mellin_distance_region :
    NoTargetZero {s : ℂ | 0 < s.re ∧ ‖s - 1‖ < s.re} := by
  intro s hs hzero
  exact poleNormalized_ne_zero_of_mellin_distance hs.1 hs.2
    (poleNormalizedZeta_zero_of_target hzero)

/-- The norm-distance condition in real coordinates. This classical elementary
parabolic region is not the whole right critical half-strip. -/
theorem poleNormalized_ne_zero_of_parabolic_bound {s : ℂ}
    (hpar : s.im ^ 2 < 2 * s.re - 1) : poleNormalizedZeta s ≠ 0 := by
  have hs : 0 < s.re := by nlinarith [sq_nonneg s.im]
  apply poleNormalized_ne_zero_of_mellin_distance hs
  have heq := Complex.norm_mul_self_eq_normSq (s - 1)
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.one_re,
    Complex.sub_im, Complex.one_im, sub_zero] at heq
  by_contra hnot
  have hle : s.re ≤ ‖s - 1‖ := le_of_not_gt hnot
  have hsq := mul_nonneg (sub_nonneg.mpr hle) (add_nonneg (norm_nonneg (s - 1)) hs.le)
  nlinarith

/-- The already sourced critical reflection supplies the left parabolic bound.
It is used on zero records, not as a value identity for H. -/
theorem target_zero_horizontal_defect_le_height_sq {z : ℂ}
    (hz : NontrivialZetaZero z) : |2 * z.re - 1| ≤ z.im ^ 2 := by
  have hright : 2 * z.re - 1 ≤ z.im ^ 2 := by
    apply le_of_not_gt
    intro hpar
    exact poleNormalized_ne_zero_of_parabolic_bound hpar
      (poleNormalizedZeta_zero_of_target hz)
  have hleft : 2 * (criticalReflection z).re - 1 ≤ (criticalReflection z).im ^ 2 := by
    apply le_of_not_gt
    intro hpar
    exact poleNormalized_ne_zero_of_parabolic_bound hpar
      (poleNormalizedZeta_zero_of_target hz.critical_reflection)
  have hre : (criticalReflection z).re = 1 - z.re := by simp [criticalReflection]
  have him : (criticalReflection z).im = z.im := by simp [criticalReflection]
  rw [hre, him] at hleft
  exact abs_le.mpr ⟨by linarith, hright⟩

/-- Reuse the atlas's proved root readout, rather than assigning an unrelated height. -/
theorem target_zero_horizontal_defect_le_root_height_sq {z : ℂ}
    (hz : NontrivialZetaZero z) :
    |2 * z.re - 1| ≤ (ZetaCommutatorRoot.root.heightAt z) ^ 2 := by
  simpa only [ZetaCommutatorRoot.heightAt_eq_im] using
    target_zero_horizontal_defect_le_height_sq hz

/-- An approximation with a vanishing error eventually has strict separation at a
fixed NONZERO source value. This theorem must never create its own nonzero premise. -/
theorem eventually_strict_margin_of_nonzero {w : ℂ} {q : ℕ → ℂ} {e : ℕ → ℝ}
    (hw : w ≠ 0) (hbound : ∀ n, ‖w - q n‖ ≤ e n)
    (hlim : Tendsto e atTop (𝓝 0)) : ∀ᶠ n in atTop, e n < ‖q n‖ := by
  have hpos : (0 : ℝ) < ‖w‖ / 2 := half_pos (norm_pos_iff.mpr hw)
  have hsmall : ∀ᶠ n in atTop, e n < ‖w‖ / 2 :=
    hlim.eventually (eventually_lt_nhds hpos)
  filter_upwards [hsmall] with n hn
  have htriangle : ‖w‖ ≤ ‖q n‖ + ‖w - q n‖ := by
    calc
      ‖w‖ = ‖q n + (w - q n)‖ := by congr 1; abel
      _ ≤ ‖q n‖ + ‖w - q n‖ := norm_add_le _ _
  linarith [hbound n]

/-- At an actual source zero, no cutoff satisfies a strict exact-tail margin. -/
theorem no_strict_mellin_margin_at_zero {s : ℂ} (hs : 0 < s.re)
    (hzero : poleNormalizedZeta s = 0) (n : ℕ) :
    ¬ ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re ((n : ℝ) + 1) <
      ‖truncatedPoleModel ((n : ℝ) + 1) s‖) := by
  have hb := poleNormalized_truncation_error
    (by have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n; linarith) hs (le_refl s.re)
  rw [hzero, zero_sub, norm_neg] at hb
  exact not_lt_of_ge hb

/-- Pointwise mathematical completeness of the exact-prefix certificate. It is not
a computed certificate, does not evaluate the finite integral, and cannot decide an
actual zero by a strictly-positive certificate. -/
theorem poleNormalized_ne_zero_iff_exists_mellin_margin {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s ≠ 0 ↔ ∃ n : ℕ,
      (‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re ((n : ℝ) + 1) <
        ‖truncatedPoleModel ((n : ℝ) + 1) s‖ := by
  constructor
  · intro hne
    have hevent := eventually_strict_margin_of_nonzero hne
      (fun n => poleNormalized_truncation_error
        (by have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n; linarith) hs (le_refl s.re))
      (poleMellinError_tendsto_zero hs)
    exact hevent.exists
  · rintro ⟨n, hn⟩ hzero
    exact no_strict_mellin_margin_at_zero hs hzero n hn

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.MellinCertification
```
