# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Negative.ReverseInversionMissingPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abfb90ef73f4fc0fc3b1dfd9c836b9dcf39f0392` · SHA-256 `bb724ee7f4be26fd7e0f3c4a4b0b348b7e3d294f06557a4e407a1ebeaa7bbebd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Missing-continuity counterexample for actual Mellin/Fourier integrals.
Mathematical direction grwtsk contributors; implementation OpenAI Codex.
Released under Apache 2.0; imports retain their authorship and licenses. -/
import GRWTSK.Analysis.MellinTransform.ReverseInversion

noncomputable section
open MeasureTheory Set Filter
open scoped Topology FourierTransform
open GRWTSK.Analysis.MellinTransform.ReverseInversion
namespace ReverseMellinControl

def pointSpike (s : ℂ) : ℂ := if s = 0 then 1 else 0

lemma pointSpike_on_line (y : ℝ) :
    pointSpike (2 * Real.pi * y * Complex.I) = if y = 0 then 1 else 0 := by
  simp [pointSpike, mul_eq_zero, Real.pi_ne_zero, Complex.I_ne_zero]

lemma pointSpike_line_ae_zero :
    (fun y : ℝ => pointSpike (2 * Real.pi * y * Complex.I)) =ᵐ[volume]
      (fun _ : ℝ => (0 : ℂ)) := by
  filter_upwards [volume.ae_ne (0 : ℝ)] with y hy
  simp [pointSpike_on_line, hy]

lemma pointSpike_line_integrable :
    Integrable (fun y : ℝ => pointSpike (2 * Real.pi * y * Complex.I)) :=
  (show Integrable (fun _ : ℝ => (0 : ℂ)) from integrable_zero ℝ ℂ volume).congr
    pointSpike_line_ae_zero.symm

lemma zero_mellin_convergent : MellinConvergent (fun _ : ℝ => (0 : ℂ)) 0 := by
  simp [MellinConvergent]

lemma pointSpike_inverse (x : ℝ) (hx : 0 < x) :
    (0 : ℂ) = mellinInv 0 pointSpike x := by
  rw [mellinInv_eq_fourierInv _ _ hx]
  simp only [neg_zero, Complex.cpow_zero, one_smul, Complex.ofReal_zero, zero_add]
  rw [Real.fourierInv_congr_ae pointSpike_line_ae_zero]
  simp [Real.fourierInv_eq]

lemma pointSpike_not_recovered :
    mellin (fun _ : ℝ => (0 : ℂ)) 0 ≠ pointSpike 0 := by
  simp [mellin, pointSpike]

lemma pointSpike_line_not_continuous :
    ¬ Continuous (fun y : ℝ => pointSpike (2 * Real.pi * y * Complex.I)) := by
  intro hc
  have h := mellin_mellinInv_eq 0 pointSpike (fun _ : ℝ => (0 : ℂ))
    zero_mellin_convergent (by simpa using pointSpike_line_integrable) (by simpa using hc)
    pointSpike_inverse 0
  exact pointSpike_not_recovered (by simpa using h)

end ReverseMellinControl

-- Intended rejection: integrability cannot supply the required continuity.
open ReverseMellinControl
example : mellin (fun _ : ℝ => (0 : ℂ)) 0 = pointSpike 0 := by
  simpa using (mellin_mellinInv_eq 0 pointSpike (fun _ : ℝ => (0 : ℂ))
    zero_mellin_convergent (by simpa using pointSpike_line_integrable)
    (by simpa using pointSpike_line_integrable) pointSpike_inverse 0)
```
