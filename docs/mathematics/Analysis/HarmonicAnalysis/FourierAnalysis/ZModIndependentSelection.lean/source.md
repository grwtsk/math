# Complete source: GRWTSK.Analysis.Fourier.ZModIndependentSelection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81445acd3340984720843e8bc6b5ec40f5adecce` · SHA-256 `7c631d4a3587399bd9848da20ff669fd58adf2371ca95f3d14b9030271e830fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModSubsetSum
import GRWTSK.Analysis.Fourier.ZModCharacterEnergy

/-!
# Fourier inversion for independent finite selections

Uniformity and independence here are finite counting constructions: the sample
space is the full Cartesian product, with one choice in each coordinate. No
probabilistic or analytic estimate is assumed. The final estimate is (3.1) of
Pham–Sauermann, *On Graham's rearrangement conjecture*, arXiv:2602.15797v1.
It applies to any positive cyclic modulus and does not require primality.
-/

namespace GRWTSK.ZModIndependentSelection
open scoped BigOperators

variable {p : ℕ} [NeZero p]

/-- Character orthogonality, with Mathlib's positive-character convention. -/
theorem character_orthogonality (t : ZMod p) :
    (∑ χ : ZMod p, ZMod.stdAddChar (χ * t)) = if t = 0 then (p : ℂ) else 0 := by
  by_cases ht : t = 0
  · simp [ht]
  · rw [if_neg ht]
    simpa only [AddChar.mulShift_apply, mul_comm] using
      AddChar.sum_eq_zero_of_ne_one (ZMod.isPrimitive_stdAddChar p ht)

/-- The normalized character sum detects exact equality. -/
theorem equality_indicator (s z : ZMod p) :
    (if s = z then (1 : ℂ) else 0) =
      (p : ℂ)⁻¹ * ∑ χ : ZMod p, ZMod.stdAddChar (χ * (s - z)) := by
  rw [character_orthogonality]
  by_cases h : s = z
  · simp [h, NeZero.ne p]
  · simp [sub_ne_zero.mpr h, h]

/-- Uniform finite counting probability of the value of a finite-valued map. -/
noncomputable def valueProbability {Ω : Type*} [Fintype Ω]
    (value : Ω → ZMod p) (z : ZMod p) : ℝ := by
  classical
  exact ((Finset.univ.filter (fun x => value x = z)).card : ℝ) / Fintype.card Ω

omit [NeZero p] in
theorem valueProbability_nonneg {Ω : Type*} [Fintype Ω]
    (value : Ω → ZMod p) (z : ZMod p) : 0 ≤ valueProbability value z := by
  unfold valueProbability
  positivity

omit [NeZero p] in
/-- The counting probability is a normalized sum of equality indicators. -/
theorem valueProbability_eq_indicator {Ω : Type*} [Fintype Ω]
    (value : Ω → ZMod p) (z : ZMod p) :
    (valueProbability value z : ℂ) =
      (Fintype.card Ω : ℂ)⁻¹ * ∑ x : Ω, if value x = z then (1 : ℂ) else 0 := by
  classical
  simp only [valueProbability, Complex.ofReal_div, Complex.ofReal_natCast,
    ← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul, mul_one]
  rw [div_eq_inv_mul]

/-- Fourier inversion of a finite pushforward counting law. Empty source spaces
have mass zero; normalization as a probability law requires nonemptiness. -/
theorem valueProbability_fourier {Ω : Type*} [Fintype Ω]
    (value : Ω → ZMod p) (z : ZMod p) :
    (valueProbability value z : ℂ) = (p : ℂ)⁻¹ *
      ∑ χ : ZMod p, ZMod.stdAddChar (-(χ * z)) *
        ((Fintype.card Ω : ℂ)⁻¹ * ∑ x : Ω, ZMod.stdAddChar (χ * value x)) := by
  classical
  rw [valueProbability_eq_indicator]
  simp_rw [equality_indicator, mul_sub, sub_eq_add_neg, AddChar.map_add_eq_mul]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro χ _
  apply Finset.sum_congr rfl
  intro x _
  ring

/-- Summing all value fibers gives one on a nonempty finite sample space. -/
theorem valueProbability_total {Ω : Type*} [Fintype Ω] [Nonempty Ω]
    (value : Ω → ZMod p) : ∑ z, valueProbability value z = 1 := by
  classical
  have hc : ∑ z : ZMod p, (Finset.univ.filter (fun x => value x = z)).card =
      Fintype.card Ω := by
    symm
    exact Finset.card_eq_sum_card_fiberwise (fun x _ => Finset.mem_univ (value x))
  unfold valueProbability
  rw [← Finset.sum_div]
  have hc' : ∑ z : ZMod p,
      ((Finset.univ.filter (fun x => value x = z)).card : ℝ) = Fintype.card Ω := by
    exact_mod_cast hc
  rw [hc']
  exact div_self (Nat.cast_ne_zero.mpr Fintype.card_ne_zero)

/-- Uniform probability of any explicitly specified event in a finite type. -/
noncomputable def eventProbability {Ω : Type*} [Fintype Ω] (event : Ω → Prop) : ℝ := by
  classical
  exact ((Finset.univ.filter event).card : ℝ) / Fintype.card Ω

variable {ι : Type*} [Fintype ι] [DecidableEq ι]
variable {κ : ι → Type*} [∀ i, Fintype (κ i)]

/-- Exact independent uniform choice space; its size is the product of part sizes. -/
abbrev Selection (κ : ι → Type*) := ∀ i, κ i

/-- The modular sum of the selected coordinate values. -/
def selectionSum (value : ∀ i, κ i → ZMod p) (x : Selection κ) : ZMod p :=
  ∑ i, value i (x i)

/-- The mean of a character on one finite choice space. -/
noncomputable def coordinateCharacterAverage
    (value : ∀ i, κ i → ZMod p) (i : ι) (χ : ZMod p) : ℂ :=
  (Fintype.card (κ i) : ℂ)⁻¹ * ∑ x : κ i, ZMod.stdAddChar (χ * value i x)

/-- Uniform product counting really factors: this is not an independence premise. -/
theorem uniform_product_factorization {𝕜 : Type*} [Field 𝕜]
    (f : ∀ i, κ i → 𝕜) :
    (Fintype.card (Selection κ) : 𝕜)⁻¹ * ∑ x : Selection κ, ∏ i, f i (x i) =
      ∏ i, ((Fintype.card (κ i) : 𝕜)⁻¹ * ∑ a : κ i, f i a) := by
  rw [Fintype.card_pi, Nat.cast_prod, ← Finset.prod_inv_distrib, ← Fintype.prod_sum,
    Finset.prod_mul_distrib]

/-- Cylinder events factor exactly in the full Cartesian product. This verifies
independence and uniform coordinate laws directly, rather than postulating them. -/
theorem independent_cylinder_probability (events : ∀ i, κ i → Prop) :
    eventProbability (fun x : Selection κ => ∀ i, events i (x i)) =
      ∏ i, eventProbability (events i) := by
  classical
  have h := uniform_product_factorization
    (fun i (x : κ i) => if events i x then (1 : ℝ) else 0)
  simp only [Fintype.prod_boole, Finset.sum_boole] at h
  unfold eventProbability
  simp only [div_eq_inv_mul]
  convert h using 1
  congr 2
  congr 1
  ext x
  simp only [Finset.mem_filter]

/-- Character multiplicativity on an arbitrary finite sum. -/
theorem character_sum (f : ι → ZMod p) :
    ZMod.stdAddChar (∑ i, f i) = ∏ i, ZMod.stdAddChar (f i) := by
  classical
  have h (s : Finset ι) : ZMod.stdAddChar (∑ i ∈ s, f i) =
      ∏ i ∈ s, ZMod.stdAddChar (f i) := by
    induction s using Finset.induction_on with
    | empty => simp
    | @insert a s ha ih => simp [ha, AddChar.map_add_eq_mul, ih]
  exact h Finset.univ

/-- The exact finite product law for character means of independent selections. -/
theorem selection_character_factorization
    (value : ∀ i, κ i → ZMod p) (χ : ZMod p) :
    (Fintype.card (Selection κ) : ℂ)⁻¹ *
        ∑ x : Selection κ, ZMod.stdAddChar (χ * selectionSum value x) =
      ∏ i, coordinateCharacterAverage value i χ := by
  calc
    _ = (Fintype.card (Selection κ) : ℂ)⁻¹ *
        ∑ x : Selection κ, ∏ i, ZMod.stdAddChar (χ * value i (x i)) := by
      congr 1
      apply Finset.sum_congr rfl
      intro x _
      rw [selectionSum, Finset.mul_sum, character_sum]
    _ = _ := uniform_product_factorization (κ := κ)
      (fun i a => ZMod.stdAddChar (χ * value i a))

/-- Exact source Section 3 Fourier formula for a fixed partition. The full product
sample space constructs independence, and each coordinate is uniform by counting. -/
theorem independent_fourier_formula
    (value : ∀ i, κ i → ZMod p) (z : ZMod p) :
    (valueProbability (selectionSum value) z : ℂ) = (p : ℂ)⁻¹ *
      ∑ χ : ZMod p, ZMod.stdAddChar (-(χ * z)) *
        ∏ i, coordinateCharacterAverage value i χ := by
  rw [valueProbability_fourier]
  simp_rw [selection_character_factorization]

/-- The unconditional product norm bound (source (3.1)). It requires no
primality or lower bounds on part sizes and no unproved analytic premises. -/
theorem independent_mass_bound
    (value : ∀ i, κ i → ZMod p) (z : ZMod p) :
    valueProbability (selectionSum value) z ≤ (p : ℝ)⁻¹ *
      ∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖ := by
  have h : ‖(valueProbability (selectionSum value) z : ℂ)‖ ≤
      (p : ℝ)⁻¹ * ∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖ := by
    rw [independent_fourier_formula, norm_mul]
    simp only [norm_inv, Complex.norm_natCast]
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    calc
      ‖∑ χ : ZMod p, ZMod.stdAddChar (-(χ * z)) *
          ∏ i, coordinateCharacterAverage value i χ‖ ≤
          ∑ χ : ZMod p, ‖ZMod.stdAddChar (-(χ * z)) *
            ∏ i, coordinateCharacterAverage value i χ‖ := norm_sum_le _ _
      _ = ∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖ := by simp
  simpa only [Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (valueProbability_nonneg _ _)] using h

omit [Fintype ι] [DecidableEq ι] in
/-- The zero-frequency character average is exactly one for every nonempty part. -/
theorem coordinateCharacterAverage_zero [∀ i, Nonempty (κ i)]
    (value : ∀ i, κ i → ZMod p) (i : ι) :
    coordinateCharacterAverage value i 0 = 1 := by
  simp [coordinateCharacterAverage, Fintype.card_ne_zero]

/-- Separating the trivial frequency in (3.1) isolates the remaining analytic sum. -/
theorem independent_nontrivial_mass_bound [∀ i, Nonempty (κ i)]
    (value : ∀ i, κ i → ZMod p) (z : ZMod p) :
    valueProbability (selectionSum value) z ≤ (p : ℝ)⁻¹ *
      (1 + ∑ χ ∈ (Finset.univ.erase (0 : ZMod p)),
        ∏ i, ‖coordinateCharacterAverage value i χ‖) := by
  have h := independent_mass_bound value z
  have hz : (∏ i, ‖coordinateCharacterAverage value i (0 : ZMod p)‖) = 1 := by
    simp [coordinateCharacterAverage_zero]
  have hs : (∑ χ : ZMod p, ∏ i, ‖coordinateCharacterAverage value i χ‖) =
      1 + ∑ χ ∈ (Finset.univ.erase (0 : ZMod p)),
        ∏ i, ‖coordinateCharacterAverage value i χ‖ := by
    rw [← Finset.sum_erase_add _ _ (Finset.mem_univ (0 : ZMod p)), hz, add_comm]
  simpa only [hs] using h

/-- A finite part family gives the concrete space of one choice per part. -/
abbrev PartSelection (parts : ι → Finset (ZMod p)) := ∀ i, (parts i : Type)

/-- The usual character average of a finite part. -/
noncomputable abbrev characterAverage (part : Finset (ZMod p)) (χ : ZMod p) : ℂ :=
  GRWTSK.ZModCharacterEnergy.characterAverage part χ

omit [Fintype ι] [DecidableEq ι] in
/-- Subtype and finite-set formulations agree exactly. -/
theorem coordinateCharacterAverage_part (parts : ι → Finset (ZMod p))
    (i : ι) (χ : ZMod p) :
    coordinateCharacterAverage (fun i (x : (parts i : Type)) => (x : ZMod p)) i χ =
      characterAverage (parts i) χ := by
  classical
  unfold coordinateCharacterAverage characterAverage GRWTSK.ZModCharacterEnergy.characterAverage
  rw [Fintype.card_coe]
  congr 1
  exact Finset.sum_coe_sort (parts i) (fun x => ZMod.stdAddChar (χ * x))

/-- Source (3.1) in finite-set part notation. -/
theorem part_mass_bound (parts : ι → Finset (ZMod p)) (z : ZMod p) :
    valueProbability
      (selectionSum (fun i (x : (parts i : Type)) => (x : ZMod p))) z ≤
      (p : ℝ)⁻¹ * ∑ χ : ZMod p, ∏ i, ‖characterAverage (parts i) χ‖ := by
  simpa only [coordinateCharacterAverage_part] using
    independent_mass_bound (fun i (x : (parts i : Type)) => (x : ZMod p)) z

end GRWTSK.ZModIndependentSelection
```
