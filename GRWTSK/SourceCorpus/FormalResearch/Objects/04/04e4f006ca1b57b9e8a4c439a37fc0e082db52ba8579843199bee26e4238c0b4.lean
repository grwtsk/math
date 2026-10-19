import FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions

/-!
# Coherent weighted-Gram decoder pricing

The finite shell Rayleigh calculation is exact. Every positive diagonal
weighting of a coherent shell, together with its anchor, pays the retained
absolute decoder coefficients. Coherence and the matrix quadratic upper
bound are explicit hypotheses; no actual native translation coherence,
operator-norm identification or signed arithmetic estimate is assumed.

Source: audited RH conversation Batch 3, BL03-05. Human programme direction:
grwtsk contributors. Local finite laws and Lean implementation: OpenAI Codex.
Mathlib's finite Cauchy inequality retains its qualified source identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedGramPricing
open scoped BigOperators
noncomputable section

/-- The weighted gram in this module, with the following exact parameterization.

def weightedGram {ι : Type*} (b : ι → ℝ) (K : ι → ι → ℝ) : ι → ι → ℝ := fun i j ↦ b i * b j *
K i j
-/
def weightedGram {ι : Type*} (b : ι → ℝ) (K : ι → ι → ℝ) : ι → ι → ℝ :=
  fun i j ↦ b i * b j * K i j

/-- The shell mass in this module, with the following exact parameterization.

def shellMass {ι : Type*} (s : Finset ι) (b : ι → ℝ) : ℝ := ∑ i ∈ s, b i ^ 2
-/
def shellMass {ι : Type*} (s : Finset ι) (b : ι → ℝ) : ℝ := ∑ i ∈ s, b i ^ 2

/-- The shell form in this module, with the following exact parameterization.

def shellForm {ι : Type*} (s : Finset ι) (b : ι → ℝ) (K : ι → ι → ℝ) : ℝ := ∑ i ∈ s, ∑ j ∈ s,
b i * weightedGram b K i j * b j
-/
def shellForm {ι : Type*} (s : Finset ι) (b : ι → ℝ) (K : ι → ι → ℝ) : ℝ :=
  ∑ i ∈ s, ∑ j ∈ s, b i * weightedGram b K i j * b j

theorem coherent_shell_rayleigh_lower {ι : Type*} (s : Finset ι) (b : ι → ℝ)
    (K : ι → ι → ℝ) {γ : ℝ} (hK : ∀ i ∈ s, ∀ j ∈ s, γ ≤ K i j) :
    γ * (shellMass s b) ^ 2 ≤ shellForm s b K := by
  have hterm (i : ι) (hi : i ∈ s) (j : ι) (hj : j ∈ s) :
      γ * b i ^ 2 * b j ^ 2 ≤ b i * weightedGram b K i j * b j := by
    have h := mul_le_mul_of_nonneg_right (hK i hi j hj)
      (mul_nonneg (sq_nonneg (b i)) (sq_nonneg (b j)))
    unfold weightedGram
    nlinarith only [h]
  have hsum := Finset.sum_le_sum (fun i hi ↦ Finset.sum_le_sum (fun j hj ↦ hterm i hi j hj))
  apply le_trans _ hsum
  unfold shellMass
  simp_rw [← Finset.mul_sum]
  rw [← Finset.sum_mul, ← Finset.mul_sum]
  ring_nf
  rfl

theorem coherent_shell_quadratic_upper_prices_mass {ι : Type*} (s : Finset ι)
    (b : ι → ℝ) (K : ι → ι → ℝ) {γ L : ℝ}
    (hL : 0 ≤ L) (hK : ∀ i ∈ s, ∀ j ∈ s, γ ≤ K i j)
    (hupper : shellForm s b K ≤ L * shellMass s b) :
    γ * shellMass s b ≤ L := by
  have hR : 0 ≤ shellMass s b := Finset.sum_nonneg (fun i hi ↦ sq_nonneg _)
  have h := (coherent_shell_rayleigh_lower s b K hK).trans hupper
  by_cases hzero : shellMass s b = 0
  · simpa only [hzero, mul_zero] using hL
  · have hp : 0 < shellMass s b := lt_of_le_of_ne hR (Ne.symm hzero)
    exact (mul_le_mul_iff_of_pos_right hp).mp (by nlinarith only [h])

theorem retained_decoder_cauchy {ι : Type*} (s : Finset ι) (b c : ι → ℝ)
    {b₀ : ℝ} (hb₀ : 0 < b₀) (hb : ∀ i ∈ s, 0 < b i) :
    (∑ i ∈ s, |c i|) ^ 2 ≤ b₀ ^ 2 * shellMass s b *
      (∑ i ∈ s, (c i / (b₀ * b i)) ^ 2) := by
  have h := Finset.sum_mul_sq_le_sq_mul_sq s
    (fun i ↦ b₀ * b i) (fun i ↦ |c i / (b₀ * b i)|)
  have hid (i : ι) (hi : i ∈ s) :
      b₀ * b i * |c i / (b₀ * b i)| = |c i| := by
    rw [abs_div, abs_of_pos (mul_pos hb₀ (hb i hi))]
    field_simp [hb₀.ne', (hb i hi).ne']
  have hs : (∑ i ∈ s, (b₀ * b i) ^ 2) = b₀ ^ 2 * shellMass s b := by
    unfold shellMass
    simp_rw [mul_pow]
    rw [Finset.mul_sum]
  have heq : (∑ i ∈ s, b₀ * b i * |c i / (b₀ * b i)|) = ∑ i ∈ s, |c i| :=
    Finset.sum_congr rfl (fun i hi ↦ hid i hi)
  rw [heq, hs] at h
  simpa only [sq_abs] using h

theorem positive_diagonal_decoder_payment {ι : Type*} (s : Finset ι) (b c : ι → ℝ)
    {b₀ γ L : ℝ} (hb₀ : 0 < b₀) (hb : ∀ i ∈ s, 0 < b i) (hγ : 0 ≤ γ)
    (hanchor : b₀ ^ 2 ≤ L) (hshell : γ * shellMass s b ≤ L) :
    Real.sqrt γ * (∑ i ∈ s, |c i|) ≤
      L * Real.sqrt (∑ i ∈ s, (c i / (b₀ * b i)) ^ 2) := by
  let V : ℝ := ∑ i ∈ s, |c i|
  let D : ℝ := ∑ i ∈ s, (c i / (b₀ * b i)) ^ 2
  have hV : 0 ≤ V := Finset.sum_nonneg (fun i hi ↦ abs_nonneg _)
  have hD : 0 ≤ D := Finset.sum_nonneg (fun i hi ↦ sq_nonneg _)
  have hR : 0 ≤ shellMass s b := Finset.sum_nonneg (fun i hi ↦ sq_nonneg _)
  have hL : 0 ≤ L := (sq_nonneg b₀).trans hanchor
  have hcs : V ^ 2 ≤ b₀ ^ 2 * shellMass s b * D := retained_decoder_cauchy s b c hb₀ hb
  have hmul : b₀ ^ 2 * (γ * shellMass s b) ≤ L * L :=
    mul_le_mul hanchor hshell (mul_nonneg hγ hR) hL
  have hstep := mul_le_mul_of_nonneg_right hmul hD
  have hcsγ := mul_le_mul_of_nonneg_left hcs hγ
  have hsq : γ * V ^ 2 ≤ L ^ 2 * D := by nlinarith only [hcsγ, hstep]
  have hrootγ := Real.sq_sqrt hγ
  have hrootD := Real.sq_sqrt hD
  have hleft : 0 ≤ Real.sqrt γ * V := mul_nonneg (Real.sqrt_nonneg _) hV
  have hright : 0 ≤ L * Real.sqrt D := mul_nonneg hL (Real.sqrt_nonneg _)
  change Real.sqrt γ * V ≤ L * Real.sqrt D
  nlinarith only [hsq, hrootγ, hrootD, hleft, hright]

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedGramPricing
