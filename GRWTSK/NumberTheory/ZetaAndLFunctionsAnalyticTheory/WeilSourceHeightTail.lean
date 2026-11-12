/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZeroSumReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroCounting

/-!
# Actual-source Weil sums and complete strict-height error bounds

MSC2020: 11M41 (primary), 11M26, 40A05, 42A38.

The maintained source count supplies D = sourceCountConstant chi and L = 3.
It was already present at the inspection pin; the preceding handoff's claim
that a formal count supplier was still absent was incorrect. The parameterized
WeilZeroSumReturn declarations remain useful and are not changed. The present
endpoints have no counting, growth, or summability premise.

The quantitative increment bounds the SUM OF NORMS over the entire omitted
height complement, then returns that remainder to the original contour integral
plus both applicable poles. A norm bound on a signed radial sum alone would not
justify restriction to a height sub-tail. The positive decay moment does.
No zero enumeration, critical-line hypothesis, simplicity, real/even test
restriction, numerical certificate, or conductor-uniform constant is assumed.

The endpoint is still a contour expression, not the completed formal evaluation
as primitiveArithmeticValue. Gamma/orientation assembly and all-test arithmetic
nonnegativity remain separate. Convergence gives no lower sign.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, certified computation and independent review: NOT_RUN.
Novelty UNASSESSED. Individual declaration records and the complete argument:
WeilSourceHeightTail.provenance/README.md. Inspection pin: math
3b02408c60b704321cdf7e2afa452d458778ca1d; Lean v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination: math#1801,
scope comment 6829992098. No root import or dependency pin change.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators ComplexConjugate
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

variable {N : ℕ} [NeZero N]

/-- The original unordered zero sum, with its count supplied by the actual source.
Both poles are retained. Imported candidate status is not promoted by this application. -/
theorem primitive_hasSum_contour_weight_source_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) := by
  exact primitive_hasSum_contour_weight_of_heightCount chi hprim
    (sourceCountConstant chi) 3 (sourceCountConstant_nonneg chi) (by norm_num)
    (heightCount_le_source_bound chi hprim) f A hA hf hs

/-- Count-free return on the signed centered-Mellin pairing, not on absolute squares. -/
theorem primitive_hasSum_centered_mellin_pair_source_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) *
      (∫ x : ℝ, f x * Complex.exp ((rho.1 - 1 / 2) * (x : ℂ))) *
        conj (∫ x : ℝ, f x * Complex.exp ((1 - conj rho.1 - 1 / 2) * (x : ℂ))))
      ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) := by
  exact primitive_hasSum_centered_mellin_pair_of_heightCount chi hprim
    (sourceCountConstant chi) 3 (sourceCountConstant_nonneg chi) (by norm_num)
    (heightCount_le_source_bound chi hprim) f A hA hf hs

/-- Literal conductor-one zeta endpoint, including both pole orientations and the
full gamma/von-Mangoldt line. No independent zeta count hypothesis remains. -/
theorem zeta_hasSum_contour_weight_source_bound
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let V := fun t : ℝ =>
      let s := (2 : ℂ) + (t : ℂ) * Complex.I
      (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
        LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s)
    HasSum (fun rho : CriticalStripZero chi => (zeroMultiplicity chi rho : ℂ) * W rho.1)
      ((∫ t : ℝ, V t) / (2 * (Real.pi : ℂ)) + (W 0 + W 1)) := by
  exact zeta_hasSum_contour_weight_of_heightCount
    (sourceCountConstant (1 : DirichletCharacter ℂ 1)) 3
    (sourceCountConstant_nonneg _) (by norm_num) zeta_heightCount_le_source_bound
    f A hA hf hs

/-- The entire omitted HEIGHT tail is absolutely summable with an explicit bound
on its sum of norms. Equality at the height cutoff belongs to the tail. The dyadic
radial moment is a positive majorant, not the signed sum being estimated. -/
theorem primitive_height_tail_absolute_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k J : ℕ) (hk : 1 ≤ k)
    (H : ℝ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let v := fun rho : CriticalStripZero chi =>
      if H ≤ |rho.1.im| then (zeroMultiplicity chi rho : ℂ) * W rho.1 else 0
    Summable (fun rho => ‖v rho‖) ∧
      (∑' rho, ‖v rho‖) ≤ derivativeL1Cost f k ^ 2 *
        tailBudget A (1 / 2) (8 * sourceCountConstant chi) 1 k J := by
  classical
  intro W
  let m : CriticalStripZero chi → ℝ := fun rho => (zeroMultiplicity chi rho : ℝ)
  let z : CriticalStripZero chi → ℂ := fun rho => spectralCoordinate rho.1
  let D : ℝ := sourceCountConstant chi
  have hD : 0 ≤ D := sourceCountConstant_nonneg chi
  have hm (rho : CriticalStripZero chi) : 0 ≤ m rho := Nat.cast_nonneg _
  have hre (rho : CriticalStripZero chi) : (z rho).re = rho.1.im := by
    simp [z, spectralCoordinate, Complex.mul_re, Complex.mul_im]
  have hstrip (rho : CriticalStripZero chi) : |(z rho).im| ≤ 1 / 2 :=
    (spectralCoordinate_radius_bounds_of_strip rho.1 rho.2.2.1.le rho.2.2.2.le).1
  have hheight : ∀ U : ℝ, 2 ≤ U → ∀ S : Finset (CriticalStripZero chi),
      (∀ rho ∈ S, |(z rho).re| < U) →
      (∑ rho ∈ S, m rho) ≤ D * U * (Real.log U + 3) := by
    intro U hU S hS
    exact (heightCount_le_iff chi hprim U _).mp
      (heightCount_le_source_bound chi hprim U hU) S
      (fun rho hrho => by simpa only [hre] using hS rho hrho)
  have hd := dyadic_count_of_height_count m z D 3 hD (by norm_num) hheight
  have hC : 2 * D * ((3 : ℝ) + 1) = 8 * D := by ring
  rw [hC] at hd
  have hM := radial_tail_moment m z A (1 / 2) (8 * D) 1 hA (by positivity)
    (by norm_num) hm hstrip hd k J hk
  let u : CriticalStripZero chi → ℝ := fun rho =>
    if (2 : ℝ) ^ J ≤ 1 + ‖z rho‖ then m rho * decayWeight A k (z rho) ^ 2 else 0
  let v : CriticalStripZero chi → ℂ := fun rho =>
    if H ≤ |rho.1.im| then (m rho : ℂ) * W rho.1 else 0
  have hu : Summable u := hM.1
  have hu0 (rho : CriticalStripZero chi) : 0 ≤ u rho := by
    dsimp only [u]
    split_ifs <;> positivity
  have hp (rho : CriticalStripZero chi) :
      ‖v rho‖ ≤ derivativeL1Cost f k ^ 2 * u rho := by
    dsimp only [v]
    by_cases ht : H ≤ |rho.1.im|
    · have hr : (2 : ℝ) ^ J ≤ 1 + ‖z rho‖ :=
        hJ.trans (add_le_add_left (ht.trans
          (spectralCoordinate_radius_bounds_of_strip rho.1
            rho.2.2.1.le rho.2.2.2.le).2.1) 1)
      have hw : ‖W rho.1‖ ≤ derivativeL1Cost f k ^ 2 * decayWeight A k (z rho) ^ 2 := by
        dsimp only [W, z]
        rw [correlation_contour_weight_eq_fourier]
        exact norm_fourier_correlation_le_decay f A hf hs k (spectralCoordinate rho.1)
      rw [if_pos ht, show u rho = m rho * decayWeight A k (z rho) ^ 2 from if_pos hr,
        norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hm rho)]
      calc
        _ ≤ m rho * (derivativeL1Cost f k ^ 2 * decayWeight A k (z rho) ^ 2) :=
          mul_le_mul_of_nonneg_left hw (hm rho)
        _ = _ := by ring
    · rw [if_neg ht, norm_zero]
      exact mul_nonneg (sq_nonneg _) (hu0 rho)
  have hv : Summable (fun rho => ‖v rho‖) := by
    apply (hu.mul_left (derivativeL1Cost f k ^ 2)).of_norm_bounded
    intro rho
    simpa only [norm_norm] using hp rho
  have hb : (∑' rho, ‖v rho‖) ≤ derivativeL1Cost f k ^ 2 *
      tailBudget A (1 / 2) (8 * D) 1 k J := calc
    _ ≤ ∑' rho, derivativeL1Cost f k ^ 2 * u rho :=
      Summable.tsum_le_tsum hp hv (hu.mul_left _)
    _ = derivativeL1Cost f k ^ 2 * ∑' rho, u rho :=
      (hu.hasSum.mul_left _).tsum_eq
    _ ≤ _ := mul_le_mul_of_nonneg_left hM.2 (sq_nonneg _)
  simpa only [v, m, D, Complex.ofReal_natCast] using And.intro hv hb

/-- Source return of the complete tail to the ACTUAL arithmetic contour endpoint.
There is no good-height or boundary-zero avoidance condition on H. The finite
head is the canonical noncomputable heightWindow, not a supplied numerical list. -/
theorem primitive_heightWindow_error_le
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k J : ℕ) (hk : 1 ≤ k)
    (H : ℝ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ‖((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) -
      ∑ rho ∈ heightWindow chi hprim H, (zeroMultiplicity chi rho : ℂ) * W rho.1‖ ≤
        derivativeL1Cost f k ^ 2 * tailBudget A (1 / 2) (8 * sourceCountConstant chi) 1 k J := by
  classical
  intro W
  let v : CriticalStripZero chi → ℂ := fun rho => (zeroMultiplicity chi rho : ℂ) * W rho.1
  let S := heightWindow chi hprim H
  let u : CriticalStripZero chi → ℂ := fun rho => if rho ∈ S then v rho else 0
  let t : CriticalStripZero chi → ℂ := fun rho => if H ≤ |rho.1.im| then v rho else 0
  have habs : Summable (fun rho => ‖v rho‖) :=
    summable_norm_contour_weight_of_heightCount chi hprim
      (sourceCountConstant chi) 3 (sourceCountConstant_nonneg chi) (by norm_num)
      (heightCount_le_source_bound chi hprim) f A hA hf hs
  have hu : Summable u := by
    apply habs.of_norm_bounded
    intro rho
    dsimp only [u]
    split_ifs <;> simp
  have hhead : (∑' rho, u rho) = ∑ rho ∈ S, v rho := by
    rw [tsum_eq_sum (s := S) (fun rho hrho => by simp [u, hrho])]
    exact Finset.sum_congr rfl (fun rho hrho => by simp [u, hrho])
  have hsplit : (fun rho => v rho - u rho) = t := by
    funext rho
    dsimp only [u, t]
    by_cases hrho : rho ∈ S
    · have hh := (mem_heightWindow chi hprim H rho).mp hrho
      simp [hrho, not_le.mpr hh]
    · have hh : H ≤ |rho.1.im| := le_of_not_gt
        (fun h => hrho ((mem_heightWindow chi hprim H rho).mpr h))
      simp [hrho, hh]
  have hsum := (primitive_hasSum_contour_weight_source_bound chi hprim f A hA hf hs).sub hu.hasSum
  change HasSum (fun rho => v rho - u rho) _ at hsum
  rw [hsplit, hhead] at hsum
  have htail := primitive_height_tail_absolute_bound chi hprim f A hA hf hs k J hk H hJ
  change Summable (fun rho => ‖t rho‖) ∧ _ at htail
  change ‖_ - ∑ rho ∈ S, v rho‖ ≤ _
  rw [← hsum.tsum_eq]
  exact (tsum_of_norm_bounded (f := t) htail.1.hasSum (fun _ => le_rfl)).trans htail.2

/-- First-order closed budget. For H=2^J it is logarithmic-over-height, with the
full exp(A), derivative cost and source constant visible. No uniform L2 bound. -/
theorem primitive_heightWindow_error_le_first_order
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (J : ℕ) (H : ℝ)
    (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ‖((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) -
      ∑ rho ∈ heightWindow chi hprim H, (zeroMultiplicity chi rho : ℂ) * W rho.1‖ ≤
        16 * Real.exp A * sourceCountConstant chi * derivativeL1Cost f 1 ^ 2 *
          ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J := by
  intro W
  calc
    _ ≤ derivativeL1Cost f 1 ^ 2 *
        tailBudget A (1 / 2) (8 * sourceCountConstant chi) 1 1 J :=
      primitive_heightWindow_error_le chi hprim f A hA hf hs 1 J (by norm_num) H hJ
    _ = _ := by
      rw [tailBudget_one, show (2 : ℝ) * A * (1 / 2) = A by ring]
      ring

/-- Every tending-to-infinity height sequence has the same actual endpoint,
including nonmonotone sequences and heights passing through zero ordinates. -/
theorem tendsto_primitive_heightWindow_source_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (H : ℕ → ℝ) (hH : Tendsto H atTop atTop) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Tendsto (fun n => ∑ rho ∈ heightWindow chi hprim (H n),
      (zeroMultiplicity chi rho : ℂ) * W rho.1) atTop
      (𝓝 ((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0))) := by
  intro W
  exact (primitive_hasSum_contour_weight_source_bound chi hprim f A hA hf hs).comp
    ((tendsto_heightWindow_atTop chi hprim).comp hH)

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
