# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1IntegralTailAPI.Variant8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21b1a75447f1f1e67dcad9b0c2429bfd166d3796` · SHA-256 `8ad39893d476a4494ba37649899b051ce35cfc4c829166e04b0c58cd61dc43d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaTailDerivatives

namespace ThetaTailRankTwoAPI
open MeasureTheory Set
open scoped Topology
noncomputable section

def integralTail (f : ℝ → ℝ) (t : ℝ) : ℝ := ∫ u in Ici t, f u

theorem integrableOn_Ici_all {f : ℝ → ℝ} (hc : Continuous f)
    (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) : IntegrableOn f (Ici t) := by
  by_cases ht : 0 ≤ t
  · exact hi.mono_set (Ici_subset_Ici.mpr ht)
  · apply ((hc.continuousOn.integrableOn_Icc (a := t) (b := 0)).union hi).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

theorem integralTail_eq_sub {f : ℝ → ℝ} (hc : Continuous f)
    (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    integralTail f t = integralTail f 0 - ∫ u in (0 : ℝ)..t, f u := by
  have h := intervalIntegral.integral_Ici_sub_Ici' hi (integrableOn_Ici_all hc hi t)
  dsimp [integralTail]
  linarith

theorem hasDerivAt_integralTail {f : ℝ → ℝ} (hc : Continuous f)
    (hi : IntegrableOn f (Ici (0 : ℝ))) (t : ℝ) :
    HasDerivAt (integralTail f) (-f t) t := by
  have heq : integralTail f = fun x => integralTail f 0 - ∫ u in (0 : ℝ)..x, f u :=
    funext (integralTail_eq_sub hc hi)
  rw [heq]
  exact (intervalIntegral.integral_hasDerivAt_right
    (hc.intervalIntegrable 0 t) (hc.stronglyMeasurableAtFilter volume _)
    hc.continuousAt).const_sub _

theorem integralTail_positive {f : ℝ → ℝ}
    (hi : IntegrableOn f (Ici (0 : ℝ))) (hp : ∀ u, 0 ≤ u → 0 < f u)
    {t : ℝ} (ht : 0 ≤ t) : 0 < integralTail f t := by
  change 0 < ∫ u in Ici t, f u
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (hi.mono_set (Ici_subset_Ici.mpr ht))).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have hut : t ≤ u := by have := hu.1; linarith
    exact ⟨(hp u (ht.trans hut)).ne', hut⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact (hp u (ht.trans hu)).le

theorem antitone_neg_reciprocal_ratio {f F : ℝ → ℝ}
    (hf : ∀ t, 0 ≤ t → 0 < f t) (hF : ∀ t, 0 ≤ t → 0 < F t)
    (hanti : AntitoneOn (fun t => F t / f t) (Ici (0 : ℝ))) :
    AntitoneOn (fun t => -f t / F t) (Ici (0 : ℝ)) := by
  intro t ht u hu htu
  apply (div_le_div_iff₀ (hF u hu) (hF t ht)).mpr
  have h := (div_le_div_iff₀ (hf u hu) (hf t ht)).mp (hanti ht hu htu)
  nlinarith only [h]

#check intervalIntegral.integral_Ici_sub_Ici'
#check intervalIntegral.integral_hasDerivAt_right
#check MeasureTheory.setIntegral_pos_iff_support_of_nonneg_ae
#print axioms hasDerivAt_integralTail
#print axioms integralTail_positive
#print axioms antitone_neg_reciprocal_ratio

end
end ThetaTailRankTwoAPI
```
