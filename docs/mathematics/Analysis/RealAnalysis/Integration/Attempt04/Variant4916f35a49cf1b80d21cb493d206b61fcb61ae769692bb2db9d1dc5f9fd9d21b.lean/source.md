# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variant4916f35a49cf1b80d21cb493d206b61fcb61ae769692bb2db9d1dc5f9fd9d21b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `261d15edf01927a8a9d0950a086019cec7838bf2` · SHA-256 `f18c4a35a8da85db8426b49265f4d668a6d1089bcca36b975179ab23314abaf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualClosedMangoldtMellinHeadSeven.Variant0aada59c3e767aaff14516b653acb994780a61381d6af9deccb3a16a3f09c93f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0aada59c3e767aaff14516b653acb994780a61381d6af9deccb3a16a3f09c93f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualClosedMangoldtMellinHeadSeven.Variant0aada59c3e767aaff14516b653acb994780a61381d6af9deccb3a16a3f09c93f","mathematical_subject":"Analysis.Integration","original_sha256":"0aada59c3e767aaff14516b653acb994780a61381d6af9deccb3a16a3f09c93f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-mellin-seven/attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiComplexMellin

/-!
The original shifted Chebyshev Mellin tail keeps its complete closed lower
head at seven, actual gamma constant and continuous pole. Genuine L1 and
closed Abel summation precede all operator splitting on Re(s)>1.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualClosedMangoldtMellinHeadSeven.Variant0aada59c3e767aaff14516b653acb994780a61381d6af9deccb3a16a3f09c93f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiMellinSeven
open MeasureTheory Set Filter Finset Complex
open scoped Topology Interval
open SourceActualPsiComplexMellin RH16ActualPsiNegativeBlock
noncomputable section

/-- The actual closed lower head includes prime seven and its zero unit coefficient. -/
def actualClosedMangoldtMellinHeadSeven (s : ℂ) : ℂ :=
  ∑ n ∈ Icc 0 7, ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) * (n : ℂ) ^ (-s)

/-- The literal actual Chebyshev Mellin tail after seven. -/
def actualPsiComplexMellinTailSeven (s : ℂ) : ℂ :=
  ∫ y in Ioi (7 : ℝ), (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1))

/-- The original shifted Chebyshev source is preserved in the Mellin tail. -/
def actualXiComplexMellinTailSeven (s : ℂ) : ℂ :=
  ∫ y in Ioi (7 : ℝ), (shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-(s + 1))

private theorem psi_complex_eq_sum (x : ℝ) :
    (Chebyshev.psi x : ℂ) =
      ∑ n ∈ Icc 0 (Nat.floor x), ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
  rw [Chebyshev.psi_eq_sum_Icc, ofReal_sum]

private theorem s_ne_zero {s : ℂ} (hs : 1 < s.re) : s ≠ 0 :=
  ne_zero_of_re_pos (by linarith)

private theorem positive_cpow_product {s : ℂ} {x : ℝ} (hx : 0 < x) :
    (x : ℂ) * (x : ℂ) ^ (-(s + 1)) = (x : ℂ) ^ (-s) := by
  calc
    _ = (x : ℂ) ^ (1 : ℂ) * (x : ℂ) ^ (-(s + 1)) := by rw [cpow_one]
    _ = (x : ℂ) ^ (1 + -(s + 1)) :=
      (cpow_add (1 : ℂ) (-(s + 1)) (ofReal_ne_zero.mpr hx.ne')).symm
    _ = _ := by congr 1; ring

/-- Closed finite Abel retains the lower prime-power inventory and true Psi(7) boundary. -/
theorem actualPsiMellinLowerSeven_eq_closed_head {s : ℂ} (hs : 1 < s.re) :
    actualClosedMangoldtMellinHeadSeven s = (Chebyshev.psi 7 : ℂ) * (7 : ℂ) ^ (-s) +
      s * ∫ y in (1 : ℝ)..7, (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)) := by
  let f : ℝ → ℂ := fun x => (x : ℂ) ^ (-s)
  let c : ℕ → ℂ := fun n => ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)
  have hf (x : ℝ) (hx : x ∈ Set.Icc (1 : ℝ) 7) : DifferentiableAt ℝ f x := by
    exact differentiableAt_id.ofReal_cpow_const
      (ne_of_gt (lt_of_lt_of_le (by norm_num) hx.1)) (neg_ne_zero.mpr (s_ne_zero hs))
  have hi : IntegrableOn (deriv f) (Set.Icc (1 : ℝ) 7) := by
    have hi0 := integrableOn_Ioi_deriv_ofReal_cpow (s := -s)
      (by norm_num : (0 : ℝ) < 1 / 2)
      (by simpa using (show -s.re < 0 by linarith))
    exact hi0.mono_set (fun x hx => by change 1 / 2 < x; linarith [hx.1])
  have ha := sum_mul_eq_sub_integral_mul₀ c (by simp [c]) (7 : ℝ) hf hi
  have he : (∫ y in Set.Ioc (1 : ℝ) 7, deriv f y * ∑ n ∈ Icc 0 (Nat.floor y), c n) =
      -s * ∫ y in (1 : ℝ)..7, (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)) := by
    rw [intervalIntegral.integral_of_le (by norm_num : (1 : ℝ) ≤ 7), ← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y hy
    dsimp only [f, c]
    rw [deriv_ofReal_cpow_const (ne_of_gt (by linarith [hy.1] : 0 < y))
      (neg_ne_zero.mpr (s_ne_zero hs)), ← psi_complex_eq_sum]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  rw [he] at ha
  simp only [Nat.floor_ofNat, f, c] at ha
  have hψ7 : (∑ n ∈ Icc 0 7, ((ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) =
      (Chebyshev.psi 7 : ℂ) := by simpa using (psi_complex_eq_sum (7 : ℝ)).symm
  rw [hψ7] at ha
  unfold actualClosedMangoldtMellinHeadSeven
  simpa only [mul_comm, neg_mul, sub_neg_eq_add, ofReal_natCast, ofReal_ofNat] using ha

/-- Genuine actual Psi-tail L1 follows before subtracting the closed finite lower head. -/
theorem actualPsiComplexMellinTailSeven_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun y : ℝ => (Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)))
      (Ioi (7 : ℝ)) :=
  (actualPsiComplexMellin_integrableOn hs).mono_set (Ioi_subset_Ioi (by norm_num))

/-- The actual prime-seven boundary and full lower head have their exact signed Mellin return. -/
theorem actualPsiComplexMellinTailSeven_mul_eq {s : ℂ} (hs : 1 < s.re) :
    s * actualPsiComplexMellinTailSeven s =
      -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
        (Chebyshev.psi 7 : ℂ) * (7 : ℂ) ^ (-s) := by
  have hi := actualPsiComplexMellin_integrableOn hs
  have he := intervalIntegral.integral_interval_add_Ioi hi
    (actualPsiComplexMellinTailSeven_integrableOn hs)
  have hf := actualPsiComplexMellin_mul_eq_neg_zeta_deriv hs
  unfold actualPsiComplexMellin at hf
  rw [← he] at hf
  have hh := actualPsiMellinLowerSeven_eq_closed_head hs
  unfold actualPsiComplexMellinTailSeven
  linear_combination hf + hh

/-- Each continuous pole and original gamma sector is genuinely L1 before the shifted split. -/
theorem actualXiComplexMellinTailSeven_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun y : ℝ => (shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-(s + 1)))
      (Ioi (7 : ℝ)) := by
  have hpsi := actualPsiComplexMellinTailSeven_integrableOn hs
  have hp : IntegrableOn (fun y : ℝ => (y : ℂ) ^ (-s)) (Ioi (7 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by simpa using (show -s.re < -1 by linarith)) (by norm_num)
  have hc : IntegrableOn (fun y : ℝ =>
      ((2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
        (y : ℂ) ^ (-(s + 1))) (Ioi (7 : ℝ)) :=
    (integrableOn_Ioi_cpow_of_lt
      (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num)).const_mul _
  apply ((hpsi.sub hp).add hc).congr_fun _ measurableSet_Ioi
  intro y hy
  simp only [Pi.add_apply, Pi.sub_apply]
  unfold shiftedActualChebyshev
  push_cast
  rw [← positive_cpow_product (s := s) (lt_trans (by norm_num : (0 : ℝ) < 7) hy)]
  ring

/-- The original source Mellin identity retains the gamma term and continuous pole exactly. -/
theorem actualXiComplexMellinTailSeven_mul_eq {s : ℂ} (hs : 1 < s.re) :
    s * actualXiComplexMellinTailSeven s =
      -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
        ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
          (7 : ℂ) ^ (-s) - s * (7 : ℂ) ^ (1 - s) / (s - 1) := by
  let c : ℂ := ((2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ)
  have hpsi := actualPsiComplexMellinTailSeven_integrableOn hs
  have hp : IntegrableOn (fun y : ℝ => (y : ℂ) ^ (-s)) (Ioi (7 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by simpa using (show -s.re < -1 by linarith)) (by norm_num)
  have hc : IntegrableOn (fun y : ℝ => c * (y : ℂ) ^ (-(s + 1))) (Ioi (7 : ℝ)) :=
    (integrableOn_Ioi_cpow_of_lt
      (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num)).const_mul c
  have he : actualXiComplexMellinTailSeven s = actualPsiComplexMellinTailSeven s -
      (∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-s)) +
        c * ∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-(s + 1)) := by
    unfold actualXiComplexMellinTailSeven actualPsiComplexMellinTailSeven
    calc
      _ = ∫ y in Ioi (7 : ℝ),
          ((Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)) - (y : ℂ) ^ (-s)) +
            c * (y : ℂ) ^ (-(s + 1)) := by
        apply setIntegral_congr_fun measurableSet_Ioi
        intro y hy
        dsimp only [c]
        unfold shiftedActualChebyshev
        push_cast
        rw [← positive_cpow_product (s := s)
          (lt_trans (by norm_num : (0 : ℝ) < 7) hy)]
        ring
      _ = _ := by
        have hia := integral_add (hpsi.sub hp) hc
        have his := integral_sub hpsi hp
        simp only [Pi.sub_apply] at his
        simp only [Pi.add_apply, Pi.sub_apply] at hia
        rw [hia, his, integral_const_mul]
  have hps := integral_Ioi_cpow_of_lt (a := -s)
    (by simpa using (show -s.re < -1 by linarith)) (by norm_num : (0 : ℝ) < 7)
  have hcs := integral_Ioi_cpow_of_lt (a := -(s + 1))
    (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num : (0 : ℝ) < 7)
  have hps' : (∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-s)) =
      (7 : ℂ) ^ (1 - s) / (s - 1) := by
    rw [hps, show -s + 1 = 1 - s by ring,
      show 1 - s = -(s - 1) by ring, neg_div_neg_eq]
    norm_num
  have hcs' : (∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-(s + 1))) =
      (7 : ℂ) ^ (-s) / s := by
    rw [hcs, show -(s + 1) + 1 = -s by ring, neg_div_neg_eq]
    norm_num
  rw [he, hps', hcs']
  rw [mul_add, mul_sub, actualPsiComplexMellinTailSeven_mul_eq hs]
  have hn : s - 1 ≠ 0 := by
    apply ne_zero_of_re_pos
    simpa using (show 0 < s.re - 1 by linarith)
  dsimp only [c]
  push_cast
  field_simp [s_ne_zero hs, hn]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiMellinSeven
```
