import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceSupplierReturn
import FormalResearch.RiemannHypothesis.Conversation.SupplierOriginalAdapters

/-!
# The native reset and weighted growth classes

Batch 39, `weighted-source-meter-energy.md`, sections 6–8. All scalars and
energies below are the existing original objects, with the closed window.
The exact reverse-137 estimate is an ordinary open proposition. The checked
growth-class equivalence keeps it as a premise; it does not prove that Bochner
identity or the arithmetic growth estimate. The reset/whole-pickup equivalence
requires no reverse estimate or arithmetic hypothesis.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchWeightedGrowth
open OriginalSignedSupplier SupplierOriginalAdapters
open GRWTSK.RiemannHypothesis.Conversation
open WeightedSourcePickup WeightedSourceEnergy WeightedSourceMass WeightedSourceSupplierReturn
open Set

/-- The centered pickup poly in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def CenteredPickupPoly : Prop := ∃ C p R : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → ∀ t ∈
readingWindow A, |centeredPickup A t| ≤ C * A ^ p
-/
def CenteredPickupPoly : Prop :=
  ∃ C p R : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → ∀ t ∈ readingWindow A, |centeredPickup A t| ≤ C * A ^ p

/-- The whole pickup poly in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def WholePickupPoly : Prop := ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1
+ t) ^ p
-/
def WholePickupPoly : Prop :=
  ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧
    ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p

/-- The native reverse137 problem in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def NativeReverse137Problem : Prop := ∀ A : ℝ, 1 ≤ A → ∀ t ∈ readingWindow A, ∀ F : ℝ, 0 ≤ F →
(∀ u ∈ Icc (2 * Real.log A) t, |centeredPickup A u| ≤ F) → sourceNorm A t ≤ 10 + 137 * F
-/
def NativeReverse137Problem : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ t ∈ readingWindow A, ∀ F : ℝ, 0 ≤ F →
    (∀ u ∈ Icc (2 * Real.log A) t, |centeredPickup A u| ≤ F) →
      sourceNorm A t ≤ 10 + 137 * F

/-- The native sharp diagonal problem in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def NativeSharpDiagonalProblem : Prop := ∀ A : ℝ, 1 ≤ A → ∀ t ∈ readingWindow A,
diagonalEnergy A t ≤ 8 * A
-/
def NativeSharpDiagonalProblem : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ t ∈ readingWindow A, diagonalEnergy A t ≤ 8 * A

theorem window_nonnegative {A t : ℝ} (hA : 1 ≤ A) (ht : t ∈ readingWindow A) :
    0 ≤ t := (mul_nonneg (by norm_num) (Real.log_nonneg hA)).trans ht.1

theorem reset_le_endpoint {A : ℝ} (hA : 1 ≤ A) : 2 * Real.log A ≤ 2 * A := by
  have h := Real.log_le_sub_one_of_pos (by linarith : 0 < A)
  linarith

theorem whole_to_centered {C p : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hW : ∀ t : ℝ, 0 ≤ t → |pickup t| ≤ C * (1 + t) ^ p)
    {A t : ℝ} (hA : 1 ≤ A) (ht : t ∈ readingWindow A) :
    |centeredPickup A t| ≤ (2 * C * 3 ^ p) * A ^ p := by
  have ha : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have hbase : ∀ s : ℝ, 0 ≤ s → s ≤ 2 * A → (1 + s) ^ p ≤ (3 * A) ^ p := by
    intro s hs hsa
    exact Real.rpow_le_rpow (by linarith) (by linarith) hp
  have h1 := mul_le_mul_of_nonneg_left (hbase t (window_nonnegative hA ht) ht.2) hC
  have h2 := mul_le_mul_of_nonneg_left (hbase _ ha (reset_le_endpoint hA)) hC
  have habs := abs_sub_le (pickup t) 0 (pickup (2 * Real.log A))
  simp only [sub_zero, zero_sub, abs_neg] at habs
  rw [centeredPickup]
  have hsplit : (3 * A) ^ p = 3 ^ p * A ^ p := Real.mul_rpow (by norm_num) (by linarith)
  rw [hsplit] at h1 h2
  linarith [hW t (window_nonnegative hA ht), hW _ ha]

theorem centered_of_whole : WholePickupPoly → CenteredPickupPoly := by
  rintro ⟨C, p, hC, hp, hW⟩
  refine ⟨2 * C * 3 ^ p, p, 1, by positivity, hp, le_rfl, ?_⟩
  intro A hA t ht
  exact whole_to_centered hC hp hW hA ht

theorem whole_of_centered : CenteredPickupPoly → WholePickupPoly := by
  rintro ⟨C, p, R, hC, hp, hR, hP⟩
  let q : ℝ := max p 1
  let D : ℝ := max (C + 1) (2 * (Real.exp R - 1))
  have hD : 0 ≤ D := (by linarith : 0 ≤ C + 1).trans (le_max_left _ _)
  have hq : 0 ≤ q := hp.trans (le_max_left _ _)
  refine ⟨D, q, hD, hq, ?_⟩
  intro T hT
  have hbase : 1 ≤ 1 + T := by linarith
  have hpowone : 1 ≤ (1 + T) ^ q := Real.one_le_rpow hbase hq
  by_cases hlarge : 2 * R ≤ T
  · have hA : 1 ≤ T / 2 := by linarith
    have ht : T ∈ readingWindow (T / 2) := by
      constructor
      · have h := reset_le_endpoint hA
        linarith
      · linarith
    have hcenter := hP (T / 2) (by linarith) T ht
    have hreset := reset_abs_le hA
    have hp1 : (T / 2) ^ p ≤ (1 + T) ^ p :=
      Real.rpow_le_rpow (by linarith) (by linarith) hp
    have hp2 : (1 + T) ^ p ≤ (1 + T) ^ q :=
      Real.rpow_le_rpow_of_exponent_le hbase (le_max_left _ _)
    have hTpow : T ≤ (1 + T) ^ q := by
      have h := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right p 1)
      rw [Real.rpow_one] at h
      exact (by linarith : T ≤ 1 + T).trans h
    have hcp := mul_le_mul_of_nonneg_left (hp1.trans hp2) hC
    have had : |pickup T| ≤ |centeredPickup (T / 2) T| + |pickup (2 * Real.log (T / 2))| := by
      simpa [centeredPickup] using abs_add_le (pickup T - pickup (2 * Real.log (T / 2)))
        (pickup (2 * Real.log (T / 2)))
    have hpre : |pickup T| ≤ (C + 1) * (1 + T) ^ q := by nlinarith
    exact hpre.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (by positivity))
  · have hsmall : T / 2 ≤ R := by linarith
    have he := Real.exp_le_exp.mpr hsmall
    have hconst : 0 ≤ 2 * (Real.exp R - 1) := by
      have h := Real.one_le_exp_iff.mpr (by linarith : 0 ≤ R)
      linarith
    have hbounded : |pickup T| ≤ 2 * (Real.exp R - 1) := by
      linarith [pickup_abs_le hT]
    exact hbounded.trans ((le_mul_of_one_le_right hconst hpowone).trans
      (mul_le_mul_of_nonneg_right (le_max_right _ _) (by positivity)))

theorem centered_iff_whole : CenteredPickupPoly ↔ WholePickupPoly :=
  ⟨whole_of_centered, centered_of_whole⟩

theorem centered_of_cross : SignedCrossEnergyProblem → CenteredPickupPoly := by
  rintro ⟨C, r, R, hC, _, hR, hX⟩
  refine ⟨returnConstant C, returnExponent r, R,
    mul_nonneg decoder_nonneg (Real.sqrt_nonneg _), ?_, hR, ?_⟩
  · unfold returnExponent
    positivity
  · intro A hA t ht
    exact centeredPickup_polynomial_return (hR.trans hA) ht hC (hX A hA t ht)

theorem diagonal_nonnegative (A t : ℝ) : 0 ≤ diagonalEnergy A t := by
  unfold diagonalEnergy
  exact Finset.sum_nonneg (fun n _ ↦ mul_nonneg (sq_nonneg _) (sq_nonneg _))

theorem cross_le_energy {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    crossEnergy A t ≤ physicalEnergy A t := by
  rw [physicalEnergy_eq_diagonal_add_cross hA]
  linarith [diagonal_nonnegative A t]

theorem cross_of_centered (hrev : NativeReverse137Problem) :
    CenteredPickupPoly → SignedCrossEnergyProblem := by
  rintro ⟨C, p, R, hC, hp, hR, hP⟩
  refine ⟨(10 + 137 * C) ^ 2, 2 * p, R, sq_nonneg _, by positivity, hR, ?_⟩
  intro A hA t ht
  have hA1 := hR.trans hA
  have hF : 0 ≤ C * A ^ p := by positivity
  have hn := hrev A hA1 t ht (C * A ^ p) hF (fun u hu ↦
    hP A hA u ⟨hu.1, hu.2.trans ht.2⟩)
  have hp1 : 1 ≤ A ^ p := Real.one_le_rpow hA1 hp
  have hn2 : sourceNorm A t ≤ (10 + 137 * C) * A ^ p := by nlinarith
  have hs := pow_le_pow_left₀ (Real.sqrt_nonneg (physicalEnergy A t)) hn2 2
  rw [Real.sq_sqrt (physicalEnergy_nonneg A t), mul_pow,
    ← Real.rpow_mul_natCast (by linarith : 0 ≤ A)] at hs
  have hexp : p * (2 : ℕ) = 2 * p := by ring
  simpa only [hexp] using (cross_le_energy hA1 t).trans hs

theorem cross_iff_centered (hrev : NativeReverse137Problem) :
    SignedCrossEnergyProblem ↔ CenteredPickupPoly :=
  ⟨centered_of_cross, cross_of_centered hrev⟩

theorem cross_iff_whole (hrev : NativeReverse137Problem) :
    SignedCrossEnergyProblem ↔ WholePickupPoly :=
  (cross_iff_centered hrev).trans centered_iff_whole

end FormalResearch.RiemannHypothesis.Conversation.BranchWeightedGrowth
