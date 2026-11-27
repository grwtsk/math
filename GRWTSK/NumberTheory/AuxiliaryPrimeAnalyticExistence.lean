import GRWTSK.NumberTheory.AuxiliaryPrimeIdealDifference
import GRWTSK.NumberTheory.AuxiliaryPrimeFieldHeight
import GRWTSK.NumberTheory.AuxiliaryPrimeScale
import GRWTSK.NumberTheory.AuxiliaryPrimeNuisance
import GRWTSK.NumberTheory.AuxiliaryPrimeCyclotomic

/-!
# Uniform existence from the auxiliary-prime analytic estimates

Local source attribution: grwtsk contributors.

This module replaces a supplied strict surplus with two explicit smoothed
estimates, a field-height budget and an exceptional-term bound. It composes
the result with the actual prime-ideal extraction and executable search.
The separate mathematical proof in `AuxiliaryPrimeAnalyticExistence.md`
derives these estimates from the actual Dedekind zero-free strips. The
contour argument and Kummer splitting remain explicit formal inputs. The
actual cyclotomic congruence is proved in the imported companion module.
-/

noncomputable section

namespace GRWTSK.PrimeFieldFactoring.AnalyticExistence

open IdealDifference AnalyticScale

/-- The normalized smoothed estimate for the actual finite prime-ideal sum.
The intended exponent is `m = 1000000` (or `m = 32` for the stronger strip).
This is a hypothesis, not an assertion that a zero-free strip was supplied. -/
def SmoothedEstimate (F : Type*) [Field F] [NumberField F]
    (φ : ℝ → ℝ) (C : ℝ) (m : ℕ) : Prop :=
  ∀ x : ℕ, 2 ≤ x →
    |psi F φ x - (x : ℝ)| ≤
      C * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ) * FieldHeight.height F

def scale (T B m : ℕ) : ℕ := (T * B) ^ m

/-- The scale constant is chosen before all field and input parameters. -/
theorem exists_scale_constant (C H : ℝ) :
    ∃ T : ℕ, 2 ≤ T ∧ 576 * C ≤ (T : ℝ) ∧ 1920 * H ≤ (T : ℝ) := by
  obtain ⟨T, hT⟩ := exists_nat_ge (max (2 : ℝ) (max (576 * C) (1920 * H)))
  refine ⟨T, ?_, ?_, ?_⟩
  · exact_mod_cast (le_trans (le_max_left _ _) hT)
  · exact le_trans ((le_max_left _ _).trans (le_max_right _ _)) hT
  · exact le_trans ((le_max_right _ _).trans (le_max_right _ _)) hT

/-- Retain the coefficient `1/q` while combining the two actual estimates. -/
theorem weighted_error_le
    (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
    (φ : ℝ → ℝ) {C : ℝ} (hC : 0 ≤ C) {q B m x : ℕ}
    (hq : 0 < q) (hx : 2 ≤ x)
    (hK : SmoothedEstimate K φ C m) (hM : SmoothedEstimate M φ C m)
    (hbudget : FieldHeight.height K + FieldHeight.height M / (q : ℝ) ≤ 72 * B) :
    |psi K φ x - (x : ℝ)| + |psi M φ x - (x : ℝ)| / q ≤
      72 * C * B * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ) := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hq
  have hp : 0 ≤ C * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ) :=
    mul_nonneg hC (Real.rpow_nonneg (Nat.cast_nonneg _) _)
  calc
    _ ≤ C * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ) * FieldHeight.height K +
        (C * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ) * FieldHeight.height M) / q :=
      add_le_add (hK x hx) (div_le_div_of_nonneg_right (hM x hx) hq0.le)
    _ = (C * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ)) *
        (FieldHeight.height K + FieldHeight.height M / q) := by ring
    _ ≤ (C * (x : ℝ) ^ (1 - 1 / (m : ℝ) : ℝ)) * (72 * B) :=
      mul_le_mul_of_nonneg_left hbudget hp
    _ = _ := by ring

/-- At this numerical scale the estimates imply the strict surplus required
by the existing prime-ideal extraction theorem. -/
theorem surplus_at_scale
    (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
    (φ : ℝ → ℝ) {C H : ℝ} (hC : 0 ≤ C)
    {p q B T r : ℕ} (hq : 2 ≤ q) (hB : 1 ≤ B) (hT : 2 ≤ T) (hr : 1 ≤ r)
    (hCT : 576 * C ≤ (T : ℝ)) (hHT : 1920 * H ≤ (T : ℝ))
    (hK : SmoothedEstimate K φ C (4 * r)) (hM : SmoothedEstimate M φ C (4 * r))
    (hbudget : FieldHeight.height K + FieldHeight.height M / (q : ℝ) ≤ 72 * B)
    (hnuisance : ∀ x : ℕ, 2 ≤ x →
      nuisance K φ p q x ≤ 240 * H * B * (x : ℝ) ^ (3 / 4 : ℝ)) :
    nuisance K φ p q (scale T B (4 * r)) <
      psi K φ (scale T B (4 * r)) - psi M φ (scale T B (4 * r)) / q := by
  have hm : 1 ≤ 4 * r := by omega
  have hbase : 2 ≤ T * B := by nlinarith
  have hx : 2 ≤ scale T B (4 * r) :=
    hbase.trans (le_self_pow₀ (by omega) (by omega))
  have hcast : (scale T B (4 * r) : ℝ) = ((T : ℝ) * B) ^ (4 * r) := by
    simp only [scale, Nat.cast_pow, Nat.cast_mul]
  have hB' : (1 : ℝ) ≤ B := by exact_mod_cast hB
  have hT' : (2 : ℝ) ≤ T := by exact_mod_cast hT
  have hbase' : (0 : ℝ) ≤ (T : ℝ) * B := by positivity
  have he := weighted_error_le K M φ hC (by omega : 0 < q) hx hK hM hbudget
  have hn := hnuisance (scale T B (4 * r)) hx
  rw [hcast, strip_power_nat _ hbase' _ hm] at he
  rw [hcast, quarter_power _ hbase' r] at hn
  apply strict_surplus (x := (scale T B (4 * r) : ℝ))
    (by exact_mod_cast (by omega : 0 < scale T B (4 * r)))
    (by exact_mod_cast hq)
  · rw [hcast]
    exact he.trans (analytic_error_at_power hB' hT' hCT hm)
  · rw [hcast]
    exact hn.trans (nuisance_error_at_quarter hB' hT' hHT hr)

/-- The returned prime satisfies the original rational congruences. Only the
two algebraic splitting facts and the displayed analytic estimates are used;
no bounded-existence or surplus hypothesis remains. -/
theorem auxiliary_at_scale
    (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M] [Algebra K M]
    (φ : ℝ → ℝ) (hφ : ∀ y, 0 ≤ φ y) {C H : ℝ} (hC : 0 ≤ C)
    (hH : 0 ≤ H) (hφH : ∀ y, φ y ≤ H)
    {p q B T r : ℕ} (hq : q.Prime) (hB : 1 ≤ B) (hT : 2 ≤ T) (hr : 1 ≤ r)
    (hCT : 576 * C ≤ (T : ℝ)) (hHT : 1920 * H ≤ (T : ℝ))
    (hK : SmoothedEstimate K φ C (4 * r)) (hM : SmoothedEstimate M φ C (4 * r))
    (hbudget : FieldHeight.height K + FieldHeight.height M / (q : ℝ) ≤ 72 * B)
    (hdegree : Module.finrank ℚ K ≤ 12 * B)
    (hcyclo : ∀ x, ∀ t ∈ window K x, ordinary K p q t → t.1.absNorm % (12*q) = 1)
    (hsplit : ∀ x, ∀ t ∈ window K x, ordinary K p q t →
      (p : ZMod t.1.absNorm) ^ ((t.1.absNorm - 1) / q) = 1 →
      q ≤ (fiber K M x t.1).card) :
    ∃ l, scale T B (4 * r) < l ∧ l < (2 * T ^ (4 * r)) * B ^ (4 * r) ∧
      AuxiliaryPrime p q l := by
  have hnuisance := fun x hx => nuisance_le_input_bound K p q x B hx hdegree φ H hH hφH
  have hs := surplus_at_scale K M φ hC hq.two_le hB hT hr hCT hHT hK hM hbudget hnuisance
  obtain ⟨l, hl, hu, ha⟩ := auxiliary_of_prime_ideal_difference K M p q
    (scale T B (4 * r)) hq φ hφ (hcyclo _) (hsplit _) hs
  refine ⟨l, hl, ?_, ha⟩
  simpa only [scale, polynomial_cap_identity] using hu

/-- A single numerical coefficient works before quantifying over any of the
fields and input integers. The supplied estimates are themselves field-uniform.
The multiplicative coefficient is a value bound, not a bit-width bound. -/
theorem uniform_auxiliary_cap (C H : ℝ) (hC : 0 ≤ C) (hH : 0 ≤ H)
    (r : ℕ) (hr : 1 ≤ r) :
    ∃ c : ℕ, ∀ (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
      [Algebra K M] (φ : ℝ → ℝ) (p q B : ℕ),
      (∀ y, 0 ≤ φ y) → (∀ y, φ y ≤ H) → q.Prime → 1 ≤ B →
      SmoothedEstimate K φ C (4 * r) → SmoothedEstimate M φ C (4 * r) →
      FieldHeight.height K + FieldHeight.height M / (q : ℝ) ≤ 72 * B →
      Module.finrank ℚ K ≤ 12 * B →
      (∀ x, ∀ t ∈ window K x, ordinary K p q t → t.1.absNorm % (12*q) = 1) →
      (∀ x, ∀ t ∈ window K x, ordinary K p q t →
        (p : ZMod t.1.absNorm) ^ ((t.1.absNorm - 1) / q) = 1 →
        q ≤ (fiber K M x t.1).card) →
      ∃ l ≤ c * B ^ (4 * r), AuxiliaryPrime p q l := by
  obtain ⟨T, hT, hCT, hHT⟩ := exists_scale_constant C H
  refine ⟨2 * T ^ (4 * r), ?_⟩
  intro K M _ _ _ _ _ φ p q B hφ hφH hq hB hK hM hbudget hdegree hcyclo hsplit
  obtain ⟨l, _, hl, ha⟩ := auxiliary_at_scale K M φ hφ hC hH hφH hq hB hT hr hCT hHT
    hK hM hbudget hdegree hcyclo hsplit
  exact ⟨l, hl.le, ha⟩

/-- The source's actual large branch now returns the least auxiliary prime.
The nuisance estimate, cyclotomic congruence, logarithmic input budget and
uniform numerical scale are proved in the imported modules. The retained
premises are the smoothed explicit-formula estimates, the two discriminant
bounds and field degree data, and norm-preserving Kummer splitting. -/
theorem uniform_large_branch_discovery (C H : ℝ) (hC : 0 ≤ C) (hH : 0 ≤ H)
    (r : ℕ) (hr : 1 ≤ r) :
    ∃ c : ℕ, ∀ (K M : Type*) [Field K] [Field M] [NumberField K] [NumberField M]
      [Algebra K M] (φ : ℝ → ℝ) (n p q : ℕ)
      [IsCyclotomicExtension {12 * q} ℚ K],
      (∀ y, 0 ≤ φ y) → (∀ y, φ y ≤ H) → p.Prime → q.Prime → q ≤ n →
      FieldHeight.inputSize n p ^ 200000 < p →
      SmoothedEstimate K φ C (4 * r) → SmoothedEstimate M φ C (4 * r) →
      Module.finrank ℚ K ≤ 12 * q →
      Module.finrank ℚ M = q * Module.finrank ℚ K →
      (Real.log (NumberField.discr K).natAbs ≤
        (Module.finrank ℚ K : ℝ) * Real.log (12 * q)) →
      (Real.log (NumberField.discr M).natAbs ≤
        q * Real.log (NumberField.discr K).natAbs +
        (Module.finrank ℚ K : ℝ) * (q * Real.log q + (q - 1) * Real.log p)) →
      (∀ x, ∀ t ∈ window K x, ordinary K p q t →
        (p : ZMod t.1.absNorm) ^ ((t.1.absNorm - 1) / q) = 1 →
        q ≤ (fiber K M x t.1).card) →
      let E := c * (FieldHeight.inputSize n p) ^ (4 * r)
      ∃ l, (discover p q E).1 = some l ∧ l ≤ E ∧ AuxiliaryPrime p q l ∧
        (∀ j, j < l → ¬ AuxiliaryPrime p q j) ∧ (discover p q E).2 ≤ E + 1 := by
  obtain ⟨c, hc⟩ := uniform_auxiliary_cap C H hC hH r hr
  refine ⟨c, ?_⟩
  intro K M _ _ _ _ _ φ n p q _ hφ hφH _hp hq hqn hlarge
    hEstK hEstM hdegreeK hdegreeM hDiscK hDiscM hsplit
  have hB : 1 ≤ FieldHeight.inputSize n p := by
    have := FieldHeight.inputSize_lower n p
    omega
  have hqB : q ≤ FieldHeight.inputSize n p := by
    have := FieldHeight.inputSize_lower n p
    omega
  have hbudget := FieldHeight.weighted_height_large_branch K M hq hqn hlarge
    hdegreeK hdegreeM hDiscK hDiscM
  have hdegree := hdegreeK.trans (Nat.mul_le_mul_left 12 hqB)
  have hcyclo := fun x t ht ho => cyclotomic_ordinary_norm_congruent_one K p q x hq t ht ho
  exact discover_complete (hc K M φ p q (FieldHeight.inputSize n p)
    hφ hφH hq hB hEstK hEstM hbudget hdegree hcyclo hsplit)

end GRWTSK.PrimeFieldFactoring.AnalyticExistence
