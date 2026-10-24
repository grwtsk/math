# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variant389badc9c05c38ed8201bda50a58b002d6ba523587801cb8a06cb5d7f13fef39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bc07155b3b37b4d116bfd82b488756576395ef0` · SHA-256 `389badc9c05c38ed8201bda50a58b002d6ba523587801cb8a06cb5d7f13fef39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPeriodicColumnPrimitive

/-!
The actual signed divisor-period density has a genuine physical integral
primitive. Its exact affine interpolation retains every touching integer seam;
absolute continuity and a finite physical Abel formula preserve both traces.
Only on x>=U is this density identified with the original centered beta prefix
minus its retained signed mean. No source head or independent main is replaced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPhysicalPeriodicPrimitive
open ArithmeticFunction MeasureTheory Set Filter
open scoped BigOperators Interval
open SourceActualPeriodicColumnPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering
noncomputable section

/-- The actual finite signed period density is evaluated at the closed physical floor. -/
def actualPhysicalPeriodicDensity (U : ℕ) (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d (Nat.floor x)

/-- A genuine integral primitive; below U it remains the explicitly stated divisor-period density. -/
def actualPhysicalPeriodicPrimitive (U : ℕ) (x : ℝ) : ℝ :=
  ∫ v in (0 : ℝ)..x, actualPhysicalPeriodicDensity U v

/-- The integer-period residual has its unconditional half-unit bound. -/
theorem actualDivisorPeriodicResidual_abs_le_half (d M : ℕ) (hd : 1 ≤ d) :
    |actualDivisorPeriodicResidual d M| ≤ 1 / 2 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast (show 0 < d by omega)
  have hr0 : (0 : ℝ) ≤ ((M % d : ℕ) : ℝ) := Nat.cast_nonneg _
  have hr1 : ((M % d : ℕ) : ℝ) + 1 ≤ (d : ℝ) := by
    exact_mod_cast (Nat.succ_le_of_lt (Nat.mod_lt M (show 0 < d by omega)))
  have he : actualDivisorPeriodicResidual d M =
      (2 * ((M % d : ℕ) : ℝ) - (d : ℝ) + 1) / (2 * d) := by
    unfold actualDivisorPeriodicResidual
    field_simp
    ring
  rw [he]
  apply abs_le.mpr
  constructor
  · apply (le_div_iff₀ (by positivity : (0 : ℝ) < 2 * d)).mpr
    linarith
  · apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * d)).mpr
    linarith

/-- The physical density is genuinely measurable before integration. -/
theorem actualPhysicalPeriodicDensity_measurable (U : ℕ) :
    Measurable (actualPhysicalPeriodicDensity U) := by
  exact (measurable_of_countable (fun M : ℕ =>
    ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M)).comp
      Nat.measurable_floor

/-- The finite signed physical density has a genuine global bound. -/
theorem actualPhysicalPeriodicDensity_abs_le (U : ℕ) (x : ℝ) :
    |actualPhysicalPeriodicDensity U x| ≤ (U : ℝ) / 2 := by
  unfold actualPhysicalPeriodicDensity
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ) * actualDivisorPeriodicResidual d (Nat.floor x)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _d ∈ Finset.Icc 1 U, (1 / 2 : ℝ) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul]
      have hm : |(moebius d : ℝ)| ≤ 1 := by exact_mod_cast (abs_moebius_le_one (n := d))
      have hr := actualDivisorPeriodicResidual_abs_le_half d (Nat.floor x) (Finset.mem_Icc.mp hd).1
      nlinarith [abs_nonneg (actualDivisorPeriodicResidual d (Nat.floor x))]
    _ = _ := by simp [Nat.card_Icc]; ring

/-- Every finite interval is genuinely L1, including those crossing integer seams. -/
theorem actualPhysicalPeriodicDensity_intervalIntegrable (U : ℕ) (l b : ℝ) :
    IntervalIntegrable (actualPhysicalPeriodicDensity U) volume l b := by
  apply intervalIntegrable_iff.mpr
  have hb : ∀ᵐ x ∂volume.restrict (uIoc l b),
      ‖actualPhysicalPeriodicDensity U x‖ ≤ (U : ℝ) / 2 := by
    filter_upwards with x
    simpa only [Real.norm_eq_abs] using actualPhysicalPeriodicDensity_abs_le U x
  exact Measure.integrableOn_of_bounded (by simp)
    (actualPhysicalPeriodicDensity_measurable U).aestronglyMeasurable hb

/-- On the genuine physical source window, period centering is the original beta prefix. -/
theorem actualPhysicalPeriodicDensity_eq_original_prefix (U : ℕ) (x : ℝ)
    (hU : 1 ≤ U) (hUx : (U : ℝ) ≤ x) :
    actualPhysicalPeriodicDensity U x =
      (∑ n ∈ Finset.Ioc U (Nat.floor x), centeredBeta U n) - actualCenteredPrefixPeriodMean U := by
  have hM : U ≤ Nat.floor x := Nat.le_floor hUx
  have he := actual_closed_prefix_eq_period_mean U (Nat.floor x) hU hM
  unfold actualPhysicalPeriodicDensity
  linarith

private theorem aggregate_increment (U M : ℕ) :
    actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M := by
  unfold actualSignedPeriodicPrimitive
  rw [← Finset.sum_sub_distrib]
  simp_rw [← mul_sub]
  apply Finset.sum_congr rfl
  intro d hd
  rw [actualDivisorPeriodicPrimitive_succ d M (Finset.mem_Icc.mp hd).1]

/-- The physical density at an integer is the exact forward primitive increment. -/
theorem actualPhysicalPeriodicDensity_at_integer (U M : ℕ) :
    actualPhysicalPeriodicDensity U (M : ℝ) =
      actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M := by
  unfold actualPhysicalPeriodicDensity
  rw [Nat.floor_natCast]
  exact (aggregate_increment U M).symm

private theorem density_on_cell (U M : ℕ) {x : ℝ} (hx : x ∈ Ico (M : ℝ) ((M : ℝ) + 1)) :
    actualPhysicalPeriodicDensity U x = actualPhysicalPeriodicDensity U (M : ℝ) := by
  have hx0 : 0 ≤ x := (Nat.cast_nonneg M).trans hx.1
  have hf : Nat.floor x = M := (Nat.floor_eq_iff hx0).2 hx
  simp only [actualPhysicalPeriodicDensity, hf, Nat.floor_natCast]

private theorem cell_integral (U M : ℕ) :
    (∫ x in (M : ℝ)..((M : ℝ) + 1), actualPhysicalPeriodicDensity U x) =
      actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M := by
  have hae : ∀ᵐ x : ℝ, x ≠ (M : ℝ) + 1 := by simp [ae_iff]
  have he : (∫ x in (M : ℝ)..((M : ℝ) + 1), actualPhysicalPeriodicDensity U x) =
      ∫ _x in (M : ℝ)..((M : ℝ) + 1), actualPhysicalPeriodicDensity U (M : ℝ) := by
    apply intervalIntegral.integral_congr_ae
    rw [uIoc_of_le (by linarith)]
    filter_upwards [hae] with x hne hx
    exact density_on_cell U M ⟨hx.1.le, lt_of_le_of_ne hx.2 hne⟩
  rw [he, intervalIntegral.integral_const]
  simp only [add_sub_cancel_left, one_smul, actualPhysicalPeriodicDensity_at_integer]

private theorem sum_Ico_difference (L H : ℕ) (hLH : L ≤ H) (f : ℕ → ℝ) :
    (∑ M ∈ Finset.Ico L H, (f (M + 1) - f M)) = f H - f L := by
  refine Nat.le_induction ?_ ?_ H hLH
  · simp
  intro H hLH ih
  rw [Finset.sum_Ico_succ_top hLH, ih]
  ring

private theorem integer_integral (U M : ℕ) :
    actualPhysicalPeriodicPrimitive U (M : ℝ) = actualSignedPeriodicPrimitive U M := by
  have hs := intervalIntegral.sum_integral_adjacent_intervals_Ico (μ := volume)
    (a := fun k : ℕ => (k : ℝ)) (Nat.zero_le M)
    (fun k _ => actualPhysicalPeriodicDensity_intervalIntegrable U _ _)
  simp only [Nat.cast_zero, Nat.cast_add, Nat.cast_one] at hs
  unfold actualPhysicalPeriodicPrimitive
  rw [← hs]
  have he : (∑ k ∈ Finset.Ico 0 M,
      ∫ x in (k : ℝ)..((k : ℝ) + 1), actualPhysicalPeriodicDensity U x) =
      ∑ k ∈ Finset.Ico 0 M,
        (actualSignedPeriodicPrimitive U (k + 1) - actualSignedPeriodicPrimitive U k) := by
    apply Finset.sum_congr rfl
    intro k _
    exact cell_integral U k
  rw [he, sum_Ico_difference 0 M (Nat.zero_le M)]
  simp [actualSignedPeriodicPrimitive, actualDivisorPeriodicPrimitive]

/-- The integral primitive is exactly the affine interpolation through its closed integer values. -/
theorem actualPhysicalPeriodicPrimitive_eq_affine (U : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    actualPhysicalPeriodicPrimitive U x =
      actualSignedPeriodicPrimitive U (Nat.floor x) +
        (x - ((Nat.floor x : ℕ) : ℝ)) *
          (actualSignedPeriodicPrimitive U (Nat.floor x + 1) -
            actualSignedPeriodicPrimitive U (Nat.floor x)) := by
  let M := Nat.floor x
  have hM0 : (0 : ℝ) ≤ (M : ℝ) := Nat.cast_nonneg _
  have hMx : (M : ℝ) ≤ x := Nat.floor_le hx
  have hx1 : x < (M : ℝ) + 1 := Nat.lt_floor_add_one x
  have he : (∫ v in (M : ℝ)..x, actualPhysicalPeriodicDensity U v) =
      (x - (M : ℝ)) * actualPhysicalPeriodicDensity U (M : ℝ) := by
    calc
      _ = ∫ _v in (M : ℝ)..x, actualPhysicalPeriodicDensity U (M : ℝ) := by
        apply intervalIntegral.integral_congr
        intro v hv
        rw [uIcc_of_le hMx] at hv
        exact density_on_cell U M ⟨hv.1, hv.2.trans_lt hx1⟩
      _ = _ := by rw [intervalIntegral.integral_const, smul_eq_mul]
  have ha := intervalIntegral.integral_add_adjacent_intervals
    (actualPhysicalPeriodicDensity_intervalIntegrable U 0 (M : ℝ))
    (actualPhysicalPeriodicDensity_intervalIntegrable U (M : ℝ) x)
  unfold actualPhysicalPeriodicPrimitive
  rw [← ha, he, actualPhysicalPeriodicDensity_at_integer]
  change actualPhysicalPeriodicPrimitive U (M : ℝ) + _ = _
  rw [integer_integral U M]

/-- Convex interpolation keeps the unconditional quadratic signed primitive budget everywhere. -/
theorem actualPhysicalPeriodicPrimitive_abs_le (U : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    |actualPhysicalPeriodicPrimitive U x| ≤ (U : ℝ) * ((U : ℝ) + 1) / 16 := by
  let M := Nat.floor x
  let r := x - (M : ℝ)
  let C : ℝ := (U : ℝ) * ((U : ℝ) + 1) / 16
  have hr0 : 0 ≤ r := sub_nonneg.mpr (Nat.floor_le hx)
  have hr1 : r ≤ 1 := by have := Nat.lt_floor_add_one x; dsimp [r, M]; linarith
  rw [actualPhysicalPeriodicPrimitive_eq_affine U x hx]
  change |actualSignedPeriodicPrimitive U M + r *
    (actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M)| ≤ C
  have he : actualSignedPeriodicPrimitive U M + r *
      (actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M) =
      (1 - r) * actualSignedPeriodicPrimitive U M + r * actualSignedPeriodicPrimitive U (M + 1) := by
    ring
  rw [he]
  have hb0 := actualSignedPeriodicPrimitive_abs_le U M
  have hb1 := actualSignedPeriodicPrimitive_abs_le U (M + 1)
  have hh := abs_add_le ((1 - r) * actualSignedPeriodicPrimitive U M)
    (r * actualSignedPeriodicPrimitive U (M + 1))
  rw [abs_mul, abs_mul, abs_of_nonneg hr0, abs_of_nonneg (by linarith : 0 ≤ 1 - r)] at hh
  nlinarith [mul_nonneg (sub_nonneg.mpr hb0) (by linarith : 0 ≤ 1 - r),
    mul_nonneg (sub_nonneg.mpr hb1) hr0]

/-- The integral primitive is genuinely absolutely continuous across every physical seam. -/
theorem actualPhysicalPeriodicPrimitive_absolutelyContinuous (U : ℕ) {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    AbsolutelyContinuousOnInterval (actualPhysicalPeriodicPrimitive U) l b := by
  have hi := actualPhysicalPeriodicDensity_intervalIntegrable U 0 b
  have ha := hi.absolutelyContinuousOnInterval_intervalIntegral (by simp : (0 : ℝ) ∈ uIcc 0 b)
  apply ha.mono
  rw [uIcc_of_le hlb, uIcc_of_le (hl.trans hlb)]
  exact Icc_subset_Icc hl le_rfl

/-- The AE derivative is the literal period density; no integer jump is silently removed. -/
theorem actualPhysicalPeriodicPrimitive_ae_hasDerivAt (U : ℕ) {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    ∀ᵐ x, x ∈ uIcc l b →
      HasDerivAt (actualPhysicalPeriodicPrimitive U) (actualPhysicalPeriodicDensity U x) x := by
  have hi := actualPhysicalPeriodicDensity_intervalIntegrable U 0 b
  filter_upwards [hi.ae_hasDerivAt_integral] with x hx hm
  have hx0b : x ∈ uIcc (0 : ℝ) b := by
    rw [uIcc_of_le hlb] at hm
    rw [uIcc_of_le (hl.trans hlb)]
    exact ⟨hl.trans hm.1, hm.2⟩
  exact hx hx0b 0 (by simp)

/-- Genuine physical Abel retains the actual mean and both primitive boundary traces. -/
theorem actual_physical_prefix_abel (U : ℕ) {l b : ℝ} (hU : 1 ≤ U)
    (hl : (U : ℝ) ≤ l) (hlb : l ≤ b) (F : ℝ → ℝ)
    (hF : ContDiffOn ℝ 1 F (uIcc l b)) :
    (∫ x in l..b,
      ((∑ n ∈ Finset.Ioc U (Nat.floor x), centeredBeta U n) - actualCenteredPrefixPeriodMean U) * F x) =
      actualPhysicalPeriodicPrimitive U b * F b - actualPhysicalPeriodicPrimitive U l * F l -
        ∫ x in l..b, actualPhysicalPeriodicPrimitive U x * deriv F x := by
  have hl0 : 0 ≤ l := (Nat.cast_nonneg U).trans hl
  have hS := actualPhysicalPeriodicPrimitive_absolutelyContinuous U hl0 hlb
  have hFA : AbsolutelyContinuousOnInterval F l b := hF.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun x => actualPhysicalPeriodicDensity U x * F x) volume l b :=
    (actualPhysicalPeriodicDensity_intervalIntegrable U l b).mul_continuousOn hFA.continuousOn
  have hi2 : IntervalIntegrable (fun x => actualPhysicalPeriodicPrimitive U x * deriv F x)
      volume l b := hFA.intervalIntegrable_deriv.continuousOn_mul hS.continuousOn
  have he : (∫ x in l..b, deriv (actualPhysicalPeriodicPrimitive U) x * F x +
      actualPhysicalPeriodicPrimitive U x * deriv F x) =
      (∫ x in l..b,
        ((∑ n ∈ Finset.Ioc U (Nat.floor x), centeredBeta U n) - actualCenteredPrefixPeriodMean U) * F x) +
        ∫ x in l..b, actualPhysicalPeriodicPrimitive U x * deriv F x := by
    rw [← intervalIntegral.integral_add (by
      apply hi1.congr_uIoo
      intro x hx
      rw [uIoo_of_le hlb] at hx
      rw [actualPhysicalPeriodicDensity_eq_original_prefix U x hU (hl.trans hx.1.le)]) hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualPhysicalPeriodicPrimitive_ae_hasDerivAt U hl0 hlb] with x hx hm
    rw [(hx (uIoc_subset_uIcc hm)).deriv]
    have hxu : (U : ℝ) ≤ x := by
      rw [uIoc_of_le hlb] at hm
      exact hl.trans hm.1.le
    rw [actualPhysicalPeriodicDensity_eq_original_prefix U x hU hxu]
  have h := hS.integral_deriv_mul_eq_sub hFA
  rw [he] at h
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPhysicalPeriodicPrimitive
```
