# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreeVaughanRightHarmonicCube.Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2555ee4232fc512e8ded72e74fedf561bc53a98f` · SHA-256 `d4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanRightSecondMoment
import Mathlib.Tactic

/-!
# Sharp harmonic-cube bound for the finite lcm envelope

This module closes the finite divisor-sum estimate left open by
`ConductorThreeVaughanRightSecondMoment`.  It uses only positive finite sums:
`gcd(d,e) * lcm(d,e) = d * e`, domination of the gcd by the sum of its
positive common divisors, and reindexing positive multiples by their
quotients.
-/

public section

namespace Surface.Core.ConductorThreeVaughanRightHarmonicCube

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeVaughanRightSecondMoment

private theorem cast_harmonic_eq_sum_Ioc_inv (V : ℕ) :
    (harmonic V : ℝ) =
      ∑ n ∈ Finset.Ioc 0 V, (n : ℝ)⁻¹ := by
  rw [harmonic_eq_sum_Icc]
  simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
  congr 1

private theorem positive_multiple_ratio_sum_eq (V r : ℕ) (hr : 0 < r) :
    (∑ d ∈ (Finset.Ioc 0 V).filter (fun d ↦ r ∣ d),
        (r : ℝ) / (d : ℝ)) =
      ∑ a ∈ Finset.Ioc 0 (V / r), (a : ℝ)⁻¹ := by
  apply Finset.sum_bij (fun d _ ↦ d / r)
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_Ioc] at hd ⊢
    rcases hd with ⟨⟨hdpos, hdV⟩, hrd⟩
    exact ⟨Nat.div_pos (Nat.le_of_dvd hdpos hrd) hr,
      Nat.div_le_div_right hdV⟩
  · intro d₁ hd₁ d₂ hd₂ hquot
    simp only [Finset.mem_filter] at hd₁ hd₂
    calc
      d₁ = r * (d₁ / r) := (Nat.mul_div_cancel' hd₁.2).symm
      _ = r * (d₂ / r) := by rw [hquot]
      _ = d₂ := Nat.mul_div_cancel' hd₂.2
  · intro a ha
    simp only [Finset.mem_Ioc] at ha
    refine ⟨r * a, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_Ioc]
      refine ⟨⟨Nat.mul_pos hr ha.1, ?_⟩, dvd_mul_right r a⟩
      rw [Nat.mul_comm]
      exact (Nat.le_div_iff_mul_le hr).mp ha.2
    · simp [hr.ne']
  · intro d hd
    simp only [Finset.mem_filter, Finset.mem_Ioc] at hd
    rcases hd with ⟨⟨hdpos, _⟩, hrd⟩
    let quotient : ℕ := d / r
    have hquotpos : 0 < quotient := Nat.div_pos (Nat.le_of_dvd hdpos hrd) hr
    have hd_eq : d = r * quotient := (Nat.mul_div_cancel' hrd).symm
    calc
      (r : ℝ) / (d : ℝ) =
          (r : ℝ) / ((r : ℝ) * (quotient : ℝ)) := by
        rw [hd_eq, Nat.cast_mul]
      _ = (quotient : ℝ)⁻¹ := by
        field_simp [hr.ne', hquotpos.ne']

private theorem positive_multiple_ratio_sum_le_harmonic
    (V r : ℕ) (hr : 0 < r) :
    (∑ d ∈ Finset.Ioc 0 V,
        if r ∣ d then (r : ℝ) / (d : ℝ) else 0) ≤
      (harmonic V : ℝ) := by
  rw [← Finset.sum_filter, positive_multiple_ratio_sum_eq V r hr,
    cast_harmonic_eq_sum_Ioc_inv]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro a ha
    simp only [Finset.mem_Ioc] at ha ⊢
    exact ⟨ha.1, ha.2.trans (Nat.div_le_self V r)⟩
  · intro a ha hnot
    positivity

private def positiveMultipleRatioSum (V r : ℕ) : ℝ :=
  ∑ d ∈ Finset.Ioc 0 V,
    if r ∣ d then (r : ℝ) / (d : ℝ) else 0

private def positiveMultipleInvSum (V r : ℕ) : ℝ :=
  ∑ d ∈ Finset.Ioc 0 V,
    if r ∣ d then (d : ℝ)⁻¹ else 0

private theorem positiveMultipleRatioSum_nonneg (V r : ℕ) :
    0 ≤ positiveMultipleRatioSum V r := by
  unfold positiveMultipleRatioSum
  positivity

private theorem positiveMultipleInvSum_nonneg (V r : ℕ) :
    0 ≤ positiveMultipleInvSum V r := by
  unfold positiveMultipleInvSum
  positivity

private theorem positiveMultipleRatioSum_le_harmonic
    (V r : ℕ) (hr : 0 < r) :
    positiveMultipleRatioSum V r ≤ (harmonic V : ℝ) :=
  positive_multiple_ratio_sum_le_harmonic V r hr

private theorem positiveMultipleInvSum_eq
    (V r : ℕ) (hr : 0 < r) :
    positiveMultipleInvSum V r =
      (r : ℝ)⁻¹ * positiveMultipleRatioSum V r := by
  unfold positiveMultipleInvSum positiveMultipleRatioSum
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  by_cases hrd : r ∣ d
  · rw [if_pos hrd, if_pos hrd]
    have hdpos : 0 < d := (Finset.mem_Ioc.mp hd).1
    field_simp [hr.ne', hdpos.ne']
  · simp [hrd]

private theorem positiveMultipleInvSum_le
    (V r : ℕ) (hr : 0 < r) :
    positiveMultipleInvSum V r ≤
      (r : ℝ)⁻¹ * (harmonic V : ℝ) := by
  rw [positiveMultipleInvSum_eq V r hr]
  exact mul_le_mul_of_nonneg_left
    (positiveMultipleRatioSum_le_harmonic V r hr) (by positivity)

private theorem cast_inv_lcm_eq_gcd_ratio
    (d e : ℕ) (hd : 0 < d) (he : 0 < e) :
    ((Nat.lcm d e : ℕ) : ℝ)⁻¹ =
      (Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ := by
  have hgcd : 0 < Nat.gcd d e :=
    Nat.pos_of_dvd_of_pos (Nat.gcd_dvd_left d e) hd
  have hlcm : 0 < Nat.lcm d e := Nat.lcm_pos hd he
  field_simp [hgcd.ne', hlcm.ne', hd.ne', he.ne']
  have hnat : d * e = Nat.lcm d e * Nat.gcd d e := by
    calc
      d * e = Nat.gcd d e * Nat.lcm d e := (Nat.gcd_mul_lcm d e).symm
      _ = Nat.lcm d e * Nat.gcd d e := Nat.mul_comm _ _
  exact_mod_cast hnat

private theorem gcd_le_commonDivisorSum
    (V d e : ℕ) (hd : d ∈ Finset.Ioc 0 V) :
    (Nat.gcd d e : ℝ) ≤
      ∑ r ∈ Finset.Ioc 0 V,
        if r ∣ d ∧ r ∣ e then (r : ℝ) else 0 := by
  have hdpos : 0 < d := (Finset.mem_Ioc.mp hd).1
  have hgpos : 0 < Nat.gcd d e :=
    Nat.pos_of_dvd_of_pos (Nat.gcd_dvd_left d e) hdpos
  have hgleV : Nat.gcd d e ≤ V :=
    (Nat.le_of_dvd hdpos (Nat.gcd_dvd_left d e)).trans
      (Finset.mem_Ioc.mp hd).2
  calc
    (Nat.gcd d e : ℝ) =
        if Nat.gcd d e ∣ d ∧ Nat.gcd d e ∣ e then
          (Nat.gcd d e : ℝ) else 0 := by
      simp [Nat.gcd_dvd_left, Nat.gcd_dvd_right]
    _ ≤ ∑ r ∈ Finset.Ioc 0 V,
          if r ∣ d ∧ r ∣ e then (r : ℝ) else 0 := by
      exact Finset.single_le_sum
        (s := Finset.Ioc 0 V)
        (f := fun r ↦ if r ∣ d ∧ r ∣ e then (r : ℝ) else 0)
        (fun r _ ↦ by split_ifs <;> positivity)
        (Finset.mem_Ioc.2 ⟨hgpos, hgleV⟩)

private def commonDivisorRatioSum (V d e : ℕ) : ℝ :=
  ∑ r ∈ Finset.Ioc 0 V,
    if r ∣ d ∧ r ∣ e then
      (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹
    else 0

private theorem gcdRatio_le_commonDivisorRatioSum
    (V d e : ℕ) (hd : d ∈ Finset.Ioc 0 V) :
    (Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ ≤
      commonDivisorRatioSum V d e := by
  have hfactor : 0 ≤ (d : ℝ)⁻¹ * (e : ℝ)⁻¹ := by positivity
  calc
    (Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ =
        (Nat.gcd d e : ℝ) * ((d : ℝ)⁻¹ * (e : ℝ)⁻¹) := by ring
    _ ≤ (∑ r ∈ Finset.Ioc 0 V,
          if r ∣ d ∧ r ∣ e then (r : ℝ) else 0) *
        ((d : ℝ)⁻¹ * (e : ℝ)⁻¹) :=
      mul_le_mul_of_nonneg_right (gcd_le_commonDivisorSum V d e hd) hfactor
    _ = commonDivisorRatioSum V d e := by
      rw [commonDivisorRatioSum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro r hr
      by_cases hcommon : r ∣ d ∧ r ∣ e
      · rw [if_pos hcommon, if_pos hcommon]
        ring
      · simp [hcommon]

private theorem sum_commonDivisorRatio_eq (V : ℕ) :
    (∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
      commonDivisorRatioSum V d e) =
    ∑ r ∈ Finset.Ioc 0 V,
      positiveMultipleRatioSum V r * positiveMultipleInvSum V r := by
  unfold commonDivisorRatioSum positiveMultipleRatioSum positiveMultipleInvSum
  let s := Finset.Ioc 0 V
  change (∑ d ∈ s, ∑ e ∈ s, ∑ r ∈ s,
      if r ∣ d ∧ r ∣ e then
        (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0) =
    ∑ r ∈ s,
      (∑ d ∈ s, if r ∣ d then (r : ℝ) / (d : ℝ) else 0) *
      (∑ e ∈ s, if r ∣ e then (e : ℝ)⁻¹ else 0)
  calc
    (∑ d ∈ s, ∑ e ∈ s, ∑ r ∈ s,
        if r ∣ d ∧ r ∣ e then
          (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0) =
      ∑ d ∈ s, ∑ r ∈ s, ∑ e ∈ s,
        if r ∣ d ∧ r ∣ e then
          (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0 := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [Finset.sum_comm]
    _ = ∑ r ∈ s, ∑ d ∈ s, ∑ e ∈ s,
        if r ∣ d ∧ r ∣ e then
          (r : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ r ∈ s,
        (∑ d ∈ s, if r ∣ d then (r : ℝ) / (d : ℝ) else 0) *
        (∑ e ∈ s, if r ∣ e then (e : ℝ)⁻¹ else 0) := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro d hd
      apply Finset.sum_congr rfl
      intro e he
      by_cases hrd : r ∣ d <;> by_cases hre : r ∣ e
      · simp [hrd, hre, div_eq_mul_inv]
      · simp [hrd, hre]
      · simp [hrd, hre]
      · simp [hrd, hre]

private theorem sum_ratio_mul_inv_le_harmonic_cube (V : ℕ) :
    (∑ r ∈ Finset.Ioc 0 V,
      positiveMultipleRatioSum V r * positiveMultipleInvSum V r) ≤
      (harmonic V : ℝ) ^ 3 := by
  have hH : 0 ≤ (harmonic V : ℝ) := by
    rw [cast_harmonic_eq_sum_Ioc_inv]
    positivity
  calc
    (∑ r ∈ Finset.Ioc 0 V,
        positiveMultipleRatioSum V r * positiveMultipleInvSum V r) ≤
      ∑ r ∈ Finset.Ioc 0 V,
        (harmonic V : ℝ) * ((r : ℝ)⁻¹ * (harmonic V : ℝ)) := by
      apply Finset.sum_le_sum
      intro r hr
      have hrpos : 0 < r := (Finset.mem_Ioc.mp hr).1
      exact mul_le_mul
        (positiveMultipleRatioSum_le_harmonic V r hrpos)
        (positiveMultipleInvSum_le V r hrpos)
        (positiveMultipleInvSum_nonneg V r) hH
    _ = (harmonic V : ℝ) ^ 3 := by
      rw [← Finset.mul_sum, ← Finset.sum_mul]
      rw [← cast_harmonic_eq_sum_Ioc_inv]
      ring

/-- The sharp finite harmonic-cube estimate for the exact lcm envelope. -/
@[surface_novel, surface_published]
theorem truncatedDivisorLcmEnvelope_le_harmonic_cube (V X : ℕ) :
    truncatedDivisorLcmEnvelope V X ≤
      (X : ℝ) * (harmonic V : ℝ) ^ 3 := by
  calc
    truncatedDivisorLcmEnvelope V X ≤
        ∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
          (X : ℝ) * commonDivisorRatioSum V d e := by
      rw [truncatedDivisorLcmEnvelope]
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro e he
      have hdpos : 0 < d := (Finset.mem_Ioc.mp hd).1
      have hepos : 0 < e := (Finset.mem_Ioc.mp he).1
      calc
        ((X / Nat.lcm d e : ℕ) : ℝ) ≤
            (X : ℝ) / (Nat.lcm d e : ℝ) := Nat.cast_div_le
        _ = (X : ℝ) * ((Nat.lcm d e : ℕ) : ℝ)⁻¹ := by
          rw [div_eq_mul_inv]
        _ = (X : ℝ) *
            ((Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹) := by
          rw [cast_inv_lcm_eq_gcd_ratio d e hdpos hepos]
        _ ≤ (X : ℝ) * commonDivisorRatioSum V d e :=
          mul_le_mul_of_nonneg_left
            (gcdRatio_le_commonDivisorRatioSum V d e hd) (by positivity)
    _ = (X : ℝ) *
        (∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
          commonDivisorRatioSum V d e) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d hd
      rw [Finset.mul_sum]
    _ = (X : ℝ) *
        (∑ r ∈ Finset.Ioc 0 V,
          positiveMultipleRatioSum V r * positiveMultipleInvSum V r) := by
      rw [sum_commonDivisorRatio_eq]
    _ ≤ (X : ℝ) * (harmonic V : ℝ) ^ 3 :=
      mul_le_mul_of_nonneg_left (sum_ratio_mul_inv_le_harmonic_cube V)
        (by positivity)

/-- The formerly open polylogarithmic-envelope proposition is inhabited
with the sharp constant `C = 1`. -/
@[surface_novel, surface_published]
theorem lcmEnvelopePolylogarithmic : LcmEnvelopePolylogarithmic := by
  refine ⟨1, by norm_num, ?_⟩
  intro V X
  simpa using truncatedDivisorLcmEnvelope_le_harmonic_cube V X

/-- The actual conductor-three Vaughan right coefficient inherits the sharp
harmonic-cube second-moment estimate. -/
@[surface_novel, surface_published]
theorem conductorThreeVaughanRightSecondMoment_le_harmonic_cube
    (V X : ℕ) :
    conductorThreeVaughanRightSecondMoment V X ≤
      (X : ℝ) * (harmonic V : ℝ) ^ 3 :=
  (conductorThreeVaughanRightSecondMoment_le_lcmEnvelope V X).trans
    (truncatedDivisorLcmEnvelope_le_harmonic_cube V X)

end

end Surface.Core.ConductorThreeVaughanRightHarmonicCube

end
```
