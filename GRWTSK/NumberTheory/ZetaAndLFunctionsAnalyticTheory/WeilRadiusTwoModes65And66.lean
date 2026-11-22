/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBorderedFiniteReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateBounds

/-!
# Signed radius-two core on sine modes 65 and 66

The existing rational observations enclose the physical matrix entries,
including the complete signed prime sum and the gamma series remainder.
On the two-dimensional trial space the original core has floor `2` at
shift `-1/2`. After subtracting twice the mass, the diagonal lower bounds
are `8/35` and `14/5`. The absolute mixed coefficient is at most `8/5`,
so completing the square with `(2a ± 7b)^2` bounds the energy from below.
This supplies the first two modes above cutoff 64 for the radius-two
high-floor problem. The rest of the complement and its mixed terms still
need to be controlled in the full high-floor claim.

At shift `-3/10`, the two positive pivots give an exact Schur payment.
The receiving pairings are signed integrals of the original physical
outputs. Completing both squares gives the attained minimum for each
receiving function in the source form domain.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66

open OddBorderedExpansion OddBorderedFiniteReturn OddHighComplement OddSineForm
open OddResidualSourceComparison OddSchurAccounting RadiusTwoCandidateEntries
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.LinearAlgebra.SchurObserver

private abbrev mode65 : Fin 66 := ⟨64, by decide⟩
private abbrev mode66 : Fin 66 := ⟨65, by decide⟩

private theorem sum_modes {f : Fin 66 → ℝ} (hf : ∀ i : Fin 66, i.val < 64 → f i = 0) :
    (∑ i, f i) = f mode65 + f mode66 := by
  calc
    (∑ i, f i) = ∑ i ∈ ({mode65, mode66} : Finset (Fin 66)), f i := by
      symm
      apply Finset.sum_subset (Finset.subset_univ _)
      intro i _ hi
      apply hf i
      have h65 : i.val ≠ 64 := fun h => hi (by simp [(show i = mode65 from Fin.ext h)])
      have h66 : i.val ≠ 65 := fun h => hi (by simp [(show i = mode66 from Fin.ext h)])
      have hi' := i.isLt
      omega
    _ = f mode65 + f mode66 := by simp [show mode65 ≠ mode66 by decide]

private abbrev bounds (m n : ℕ) : Bounds :=
  physicalBoundsFrom 24 (RadiusTwoCandidateBounds.tables 24 1024) m n

private theorem bounds_sound {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hm' : m ≤ 2048) (hn' : n ≤ 512) :
    Encloses (bounds m n)
      (literalCoreEntry 2 m n - (if m = n then (-1 / 2 : ℝ) else 0)) :=
  physicalBoundsFrom_sound 24 (RadiusTwoCandidateBounds.tables_sound 24 (by decide : 1024 ≤ 1024))
    hm hn hm' hn'

private abbrev entry (m n : ℕ) : ℝ :=
  literalCoreEntry 2 m n - (if m = n then (-1 / 2 : ℝ) else 0)

private theorem core_eq (x : Fin 66 → ℝ) (hx : ∀ i : Fin 66, i.val < 64 → x i = 0) :
    shiftedOddCoreEnergy 2 (-1 / 2) (finiteSine 2 x) =
      entry 65 65 * x mode65 ^ 2 + entry 66 66 * x mode66 ^ 2 +
        (entry 65 66 + entry 66 65) * (x mode65 * x mode66) := by
  have h := shiftedOddBorderedEnergy_finiteSine_eq_quadratic 2 (by norm_num) (-1 / 2) x 0
  simp only [shiftedOddBorderedEnergy, mul_zero, zero_mul, add_zero,
    zero_pow (by decide : 2 ≠ 0), zero_div] at h
  rw [h]
  simp only [quadratic, dotProduct, Matrix.mulVec, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr,
    zero_mul, mul_zero, Finset.sum_const_zero, add_zero]
  have hrow (i : Fin 66) :
      (∑ j : Fin 66, shiftedBlock (borderedSourceMatrix 2 66) poleShiftMetric (-1 / 2)
          (Sum.inl i) (Sum.inl j) * x j) =
        shiftedBlock (borderedSourceMatrix 2 66) poleShiftMetric (-1 / 2)
          (Sum.inl i) (Sum.inl mode65) * x mode65 +
        shiftedBlock (borderedSourceMatrix 2 66) poleShiftMetric (-1 / 2)
          (Sum.inl i) (Sum.inl mode66) * x mode66 :=
    sum_modes fun j hj => by rw [hx j hj, mul_zero]
  simp_rw [hrow]
  rw [sum_modes (fun i hi => by rw [hx i hi, zero_mul])]
  simp only [shiftedBordered_physicalEntry 2 (by norm_num),
    show mode65.val + 1 = 65 by rfl, show mode66.val + 1 = 66 by rfl,
    ite_eq_right (by decide : mode65 ≠ mode66), ite_eq_right (by decide : mode66 ≠ mode65)]
  simp only [entry, ite_eq_right (by decide : 65 ≠ 66), ite_eq_right (by decide : 66 ≠ 65)]
  ring

set_option maxRecDepth 32768 in
set_option maxHeartbeats 0 in
private theorem rational_bounds :
    78 / 35 ≤ (bounds 65 65).1 ∧ 24 / 5 ≤ (bounds 66 66).1 ∧
      -(4 / 5) ≤ (bounds 65 66).1 ∧ (bounds 65 66).2 ≤ 4 / 5 ∧
      -(4 / 5) ≤ (bounds 66 65).1 ∧ (bounds 66 65).2 ≤ 4 / 5 := by
  decide +kernel

/-- The literal shifted core dominates twice the mass on the real span of
physical sine modes 65 and 66. -/
theorem two_mul_mass_le_shiftedOddCoreEnergy (x : Fin 66 → ℝ)
    (hx : ∀ i : Fin 66, i.val < 64 → x i = 0) :
    2 * (∫ t : ℝ, ‖finiteSine 2 x t‖ ^ 2) ≤ shiftedOddCoreEnergy 2 (-1 / 2) (finiteSine 2 x) := by
  obtain ⟨h65, h66, hlo₁, hhi₁, hlo₂, hhi₂⟩ := rational_bounds
  have hB65 := bounds_sound (m := 65) (n := 65) (by decide) (by decide) (by decide) (by decide)
  have hB66 := bounds_sound (m := 66) (n := 66) (by decide) (by decide) (by decide) (by decide)
  have hB65_66 := bounds_sound (m := 65) (n := 66) (by decide) (by decide) (by decide) (by decide)
  have hB66_65 := bounds_sound (m := 66) (n := 65) (by decide) (by decide) (by decide) (by decide)
  have hdiag₁ := ((Rat.cast_le (K := ℝ)).mpr h65).trans hB65.1
  have hdiag₂ := ((Rat.cast_le (K := ℝ)).mpr h66).trans hB66.1
  have hcross₁lo := ((Rat.cast_le (K := ℝ)).mpr hlo₁).trans hB65_66.1
  have hcross₂lo := ((Rat.cast_le (K := ℝ)).mpr hlo₂).trans hB66_65.1
  have hcross₁hi := hB65_66.2.trans ((Rat.cast_le (K := ℝ)).mpr hhi₁)
  have hcross₂hi := hB66_65.2.trans ((Rat.cast_le (K := ℝ)).mpr hhi₂)
  push_cast at hdiag₁ hdiag₂ hcross₁lo hcross₂lo hcross₁hi hcross₂hi
  have hlo : -(8 / 5 : ℝ) ≤ entry 65 66 + entry 66 65 := calc
    _ = -(4 / 5 : ℝ) + -(4 / 5 : ℝ) := by norm_num
    _ ≤ _ := add_le_add hcross₁lo hcross₂lo
  have hhi : entry 65 66 + entry 66 65 ≤ 8 / 5 := calc
    _ ≤ (4 / 5 : ℝ) + (4 / 5 : ℝ) := add_le_add hcross₁hi hcross₂hi
    _ = _ := by norm_num
  simp only [Real.norm_eq_abs, sq_abs]
  rw [integral_finiteSine_sq 2 (by norm_num), sum_modes (fun i hi => by simp [hx i hi]),
    core_eq x hx]
  let a := x mode65
  let b := x mode66
  change 2 * (a ^ 2 + b ^ 2) ≤
    entry 65 65 * a ^ 2 + entry 66 66 * b ^ 2 + (entry 65 66 + entry 66 65) * (a * b)
  have ha := mul_le_mul_of_nonneg_right hdiag₁ (sq_nonneg a)
  have hb := mul_le_mul_of_nonneg_right hdiag₂ (sq_nonneg b)
  rcases le_total 0 (a * b) with hab | hab
  · calc
      _ ≤ (78 / 35 : ℝ) * a ^ 2 + (24 / 5 : ℝ) * b ^ 2 + (-(8 / 5 : ℝ)) * (a * b) := by
        nlinarith only [sq_nonneg (2 * a - 7 * b)]
      _ ≤ _ := add_le_add (add_le_add ha hb) (mul_le_mul_of_nonneg_right hlo hab)
  · calc
      _ ≤ (78 / 35 : ℝ) * a ^ 2 + (24 / 5 : ℝ) * b ^ 2 + (8 / 5 : ℝ) * (a * b) := by
        nlinarith only [sq_nonneg (2 * a + 7 * b)]
      _ ≤ _ := add_le_add (add_le_add ha hb) (mul_le_mul_of_nonpos_right hhi hab)

open Set OddRootProjection OddShiftEnergy OddWrapEnergy OddConcreteResidual
open OddGammaOutput OddPrimePoleOutput

/-- Coefficients of a trial on physical modes 65 and 66. -/
def trial (a b : ℝ) (i : Fin 66) : ℝ :=
  if i = mode65 then a else if i = mode66 then b else 0

private theorem trial_low (a b : ℝ) (i : Fin 66) (hi : i.val < 64) : trial a b i = 0 := by
  have h₁ : i ≠ mode65 := by
    intro h
    subst i
    change 64 < 64 at hi
    omega
  have h₂ : i ≠ mode66 := by
    intro h
    subst i
    change 65 < 64 at hi
    omega
  simp [trial, h₁, h₂]

private theorem trial65 (a b : ℝ) : trial a b mode65 = a := by simp [trial]

private theorem trial66 (a b : ℝ) : trial a b mode66 = b := by
  simp [trial, show mode66 ≠ mode65 by decide]

private theorem trial_mass (a b : ℝ) :
    (∫ t : ℝ, ‖finiteSine 2 (trial a b) t‖ ^ 2) = a ^ 2 + b ^ 2 := by
  simp only [Real.norm_eq_abs, sq_abs]
  rw [integral_finiteSine_sq 2 (by norm_num), sum_modes, trial65, trial66]
  intro i hi
  simp [trial_low a b i hi]

private abbrev margin (f : ℝ → ℝ) : ℝ := shiftedOddCoreEnergy 2 (-3 / 10) f

/-- First diagonal after reserving the requested mass floor. -/
def diagonal65 : ℝ := entry 65 65 - 1 / 5

/-- Second diagonal after reserving the requested mass floor. -/
def diagonal66 : ℝ := entry 66 66 - 1 / 5

/-- Symmetric mixed entry of the two-mode margin. -/
def mixedEntry : ℝ := (entry 65 66 + entry 66 65) / 2

/-- The physical output of a single sine at shift `-3/10` with pole coordinate zero. -/
def modeOutput (n : ℕ) (t : ℝ) : ℝ :=
  (Icc (-2 : ℝ) 2).indicator (gammaOutput (zeroExtendedSine 2 n)) t +
    primePoleOutput 2 (-3 / 10) (zeroExtendedSine 2 n) 0 t

private theorem trial_output (a b t : ℝ) :
    borderedTrialOutput 2 (-3 / 10) (trial a b) 0 t =
      a * modeOutput 65 t + b * modeOutput 66 t := by
  unfold borderedTrialOutput modeOutput
  have hz : primePoleOutput 2 (-3 / 10) (fun _ => 0) 0 t = 0 := by
    simp [primePoleOutput, primeOutput]
  rw [primePoleOutput_finiteSine, hz, add_zero,
    sum_modes (fun i hi => by rw [trial_low a b i hi, zero_mul])]
  simp only [trial65, trial66, show mode65.val + 1 = 65 by rfl,
    show mode66.val + 1 = 66 by rfl]
  by_cases ht : t ∈ Icc (-2 : ℝ) 2
  · simp only [indicator_of_mem ht]
    rw [gammaOutput_finiteSine 2 (by norm_num),
      sum_modes (fun i hi => by rw [trial_low a b i hi, zero_mul])]
    simp only [trial65, trial66, show mode65.val + 1 = 65 by rfl,
      show mode66.val + 1 = 66 by rfl]
    ring
  · simp only [indicator_of_notMem ht, zero_add]

/-- The signed mixed coefficient against a receiving function. -/
def coupling (n : ℕ) (g : ℝ → ℝ) : ℝ := ∫ t : ℝ, g t * modeOutput n t

private theorem coupling_integrable {g : ℝ → ℝ} (hg : MemLp g 2 volume) :
    Integrable (fun t => g t * modeOutput 65 t) ∧
      Integrable (fun t => g t * modeOutput 66 t) := by
  have h65 : borderedTrialOutput 2 (-3 / 10) (trial 1 0) 0 = modeOutput 65 := by
    funext t
    simp [trial_output]
  have h66 : borderedTrialOutput 2 (-3 / 10) (trial 0 1) 0 = modeOutput 66 := by
    funext t
    simp [trial_output]
  constructor
  · rw [← h65]
    exact hg.integrable_mul (borderedTrialOutput_memLp 2 (by norm_num) _ _ _)
  · rw [← h66]
    exact hg.integrable_mul (borderedTrialOutput_memLp 2 (by norm_num) _ _ _)

private theorem margin_eq (f : ℝ → ℝ) : margin f =
    shiftedOddCoreEnergy 2 (-1 / 2) f - (1 / 5 : ℝ) * (∫ t : ℝ, ‖f t‖ ^ 2) := by
  unfold margin shiftedOddCoreEnergy
  ring

private theorem trial_margin (a b : ℝ) :
    margin (finiteSine 2 (trial a b)) =
      diagonal65 * a ^ 2 + diagonal66 * b ^ 2 + 2 * mixedEntry * (a * b) := by
  rw [margin_eq, trial_mass, core_eq _ (trial_low a b), trial65, trial66]
  unfold diagonal65 diagonal66 mixedEntry
  ring

private theorem block_lower (a b : ℝ) :
    (9 / 5 : ℝ) * (a ^ 2 + b ^ 2) ≤
      diagonal65 * a ^ 2 + diagonal66 * b ^ 2 + 2 * mixedEntry * (a * b) := by
  have h := two_mul_mass_le_shiftedOddCoreEnergy (trial a b) (trial_low a b)
  rw [trial_mass] at h
  rw [← trial_margin, margin_eq, trial_mass]
  linarith only [h]

theorem diagonal65_pos : 0 < diagonal65 := by
  have h := block_lower 1 0
  norm_num at h
  linarith only [h]

/-- Second pivot of the two-mode Schur elimination. -/
def secondPivot : ℝ := diagonal66 - mixedEntry ^ 2 / diagonal65

theorem secondPivot_pos : 0 < secondPivot := by
  have h := block_lower (-(mixedEntry / diagonal65)) 1
  have hpoly : diagonal65 * (-(mixedEntry / diagonal65)) ^ 2 + diagonal66 * (1 : ℝ) ^ 2 +
      2 * mixedEntry * (-(mixedEntry / diagonal65) * 1) = secondPivot := by
    unfold secondPivot
    field_simp [diagonal65_pos.ne']
    ring
  rw [hpoly] at h
  nlinarith only [h, sq_nonneg (-(mixedEntry / diagonal65))]

/-- The verified block floor in the coordinates of its two Schur pivots. -/
theorem pivotEnergy_ge (a b : ℝ) :
    (9 / 5 : ℝ) * ((a - b * (mixedEntry / diagonal65)) ^ 2 + b ^ 2) ≤
      diagonal65 * a ^ 2 + secondPivot * b ^ 2 := by
  have h := block_lower (a - b * (mixedEntry / diagonal65)) b
  convert h using 1
  unfold secondPivot
  field_simp [diagonal65_pos.ne']
  ring

/-- Exact payment for eliminating modes 65 and 66 from the physical margin. -/
def schurPayment (g : ℝ → ℝ) : ℝ :=
  coupling 65 g ^ 2 / diagonal65 +
    (coupling 66 g - mixedEntry * coupling 65 g / diagonal65) ^ 2 / secondPivot

private theorem margin_add_trial {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hgγ : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0))
    (a b : ℝ) :
    margin (finiteSine 2 (trial a b) + g) =
      diagonal65 * a ^ 2 + diagonal66 * b ^ 2 + 2 * mixedEntry * (a * b) +
        2 * (a * coupling 65 g + b * coupling 66 g) + margin g := by
  obtain ⟨ha, hb⟩ := coupling_integrable hg
  have hpair : (∫ t : ℝ, g t * borderedTrialOutput 2 (-3 / 10) (trial a b) 0 t) =
      a * coupling 65 g + b * coupling 66 g := by
    simp_rw [trial_output, mul_add, mul_left_comm (g _)]
    rw [integral_add (ha.const_mul a) (hb.const_mul b), integral_const_mul, integral_const_mul]
    rfl
  have h := shiftedOddBorderedEnergy_add_finiteSine 2 (by norm_num) (-3 / 10)
    (trial a b) 0 hg hgm hgs hgγ
  simp only [shiftedOddBorderedEnergy, mul_zero, zero_mul, add_zero,
    zero_pow (by decide : 2 ≠ 0), zero_div] at h
  change margin (finiteSine 2 (trial a b) + g) =
    margin (finiteSine 2 (trial a b)) +
      2 * (∫ t : ℝ, g t * borderedTrialOutput 2 (-3 / 10) (trial a b) 0 t) + margin g at h
  rw [h, hpair, trial_margin]

/-- The exact minimum over both retained coefficients. Thus controlling the
remaining signed margin after this explicit payment is necessary and sufficient
for nonnegativity along every such two-mode variation. -/
theorem isLeast_margin_add_trial {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hgγ : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    IsLeast (Set.range fun p : ℝ × ℝ =>
      shiftedOddCoreEnergy 2 (-3 / 10) (finiteSine 2 (trial p.1 p.2) + g))
      (shiftedOddCoreEnergy 2 (-3 / 10) g - schurPayment g) := by
  let v := coupling 66 g - mixedEntry * coupling 65 g / diagonal65
  have complete (a b : ℝ) : margin (finiteSine 2 (trial a b) + g) =
      (margin g - schurPayment g) +
        (diagonal65 * (a + (mixedEntry * b + coupling 65 g) / diagonal65) ^ 2 +
          secondPivot * (b + v / secondPivot) ^ 2) := by
    rw [margin_add_trial hg hgm hgs hgγ]
    unfold schurPayment
    change _ = (margin g - (coupling 65 g ^ 2 / diagonal65 + v ^ 2 / secondPivot)) + _
    field_simp [diagonal65_pos.ne', secondPivot_pos.ne']
    unfold secondPivot v
    field_simp [diagonal65_pos.ne']
    ring
  constructor
  · let b := -(v / secondPivot)
    let a := -((mixedEntry * b + coupling 65 g) / diagonal65)
    refine ⟨(a, b), ?_⟩
    change margin (finiteSine 2 (trial a b) + g) = margin g - schurPayment g
    rw [complete]
    simp [a, b]
  · rintro _ ⟨⟨a, b⟩, rfl⟩
    change margin g - schurPayment g ≤ margin (finiteSine 2 (trial a b) + g)
    rw [complete]
    exact le_add_of_nonneg_right (add_nonneg
      (mul_nonneg diagonal65_pos.le (sq_nonneg _)) (mul_nonneg secondPivot_pos.le (sq_nonneg _)))

/-- The signed payment is precisely the bound the receiving margin must
satisfy to obtain nonnegativity for all trials on modes 65 and 66. -/
theorem schurPayment_le_iff {g : ℝ → ℝ} (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-2 : ℝ) 2 → g t = 0)
    (hgγ : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    schurPayment g ≤ shiftedOddCoreEnergy 2 (-3 / 10) g ↔
      ∀ a b : ℝ, 0 ≤ shiftedOddCoreEnergy 2 (-3 / 10) (finiteSine 2 (trial a b) + g) := by
  have h := isLeast_margin_add_trial hg hgm hgs hgγ
  constructor
  · intro hpay a b
    exact (sub_nonneg.mpr hpay).trans (h.2 (Set.mem_range_self (a, b)))
  · intro hall
    obtain ⟨⟨a, b⟩, heq⟩ := h.1
    exact sub_nonneg.mp (heq ▸ hall a b)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoModes65And66
