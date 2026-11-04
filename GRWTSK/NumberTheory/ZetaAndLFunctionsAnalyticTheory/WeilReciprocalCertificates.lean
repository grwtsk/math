/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSpectralCertificates

/-!
# Exterior certificates and operations on pure finite spectra

P_a(t) = L_a(t) P_(1/a)(1/t), where L_a(t)=product(-a_i*t).
If |a_i|=R>0, L_a is a known nonzero monomial away from zero. Dividing the
constructed reciprocal-spectrum approximation by this monomial, NOT by P_a,
produces explicit rational certificates on every exterior level
1/(R*|t|) <= (n+1)/(n+2). These levels exhaust |t|>1/R.

The inner and outer families therefore certify both components of the
complement of the root circle. Boundary zeros are kept, and multiplicities are
never dropped. Powers of eigenvalues (finite-field extensions), tensor products
and unit-modulus twists preserve the stated spectral radii; these are algebraic
operations, not claims that a geometric source realizes every possible list.

Primary proof: the exact reciprocal factor identity and the previously proved
geometric residual bound. Root localization also follows independently by
extracting one vanishing factor; the norm/purity hypotheses are shared.
No spectral theorem, cohomological comparison, or classical RH transfer is
assumed silently. AI-assisted formalization. Compilation, fresh kernel checking,
transitive axiom audit, independent review: NOT_RUN; novelty not assessed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilCertificates

open GRWTSK.Analysis.GeometricProduct
open GRWTSK.Analysis.Division

/-- The leading monomial is separate from the target polynomial. -/
def leadingMonomial : List ℂ → ℂ → ℂ
  | [], _ => 1
  | a :: as, z => (-a * z) * leadingMonomial as z

def reciprocalSpectrum (as : List ℂ) : List ℂ := as.map (fun a => a⁻¹)

def outerApproximation (as : List ℂ) (n : ℕ) (z : ℂ) : ℂ :=
  familyApproximation (reciprocalSpectrum as) n z⁻¹ / leadingMonomial as z

theorem leading_ne_zero (as : List ℂ) {z : ℂ} (hz : z ≠ 0)
    (ha : ∀ a ∈ as, a ≠ 0) : leadingMonomial as z ≠ 0 := by
  revert ha
  induction as with
  | nil => intro ha; exact one_ne_zero
  | cons a as ih =>
    intro ha
    exact mul_ne_zero (mul_ne_zero (neg_ne_zero.mpr (ha a (by simp))) hz)
      (ih (fun b hb => ha b (by simp [hb])))

/-- Reciprocal symmetry is a proved identity of these actual finite products. -/
theorem reciprocal_product (as : List ℂ) {z : ℂ} (hz : z ≠ 0)
    (ha : ∀ a ∈ as, a ≠ 0) :
    factorProduct as z = leadingMonomial as z * factorProduct (reciprocalSpectrum as) z⁻¹ := by
  revert ha
  induction as with
  | nil => intro ha; simp [factorProduct, leadingMonomial, reciprocalSpectrum]
  | cons a as ih =>
    intro ha
    have ha0 := ha a (by simp)
    have hs := ih (fun b hb => ha b (by simp [hb]))
    have hfactor : 1 - a * z = (-a * z) * (1 - a⁻¹ * z⁻¹) := by
      field_simp [ha0, hz]
      <;> ring
    simp only [factorProduct, leadingMonomial, reciprocalSpectrum, List.map_cons]
    rw [hfactor, hs]
    ring

/-- The exterior residual is exactly the interior residual of the reciprocal spectrum. -/
theorem outer_residual_identity (as : List ℂ) (n : ℕ) {z : ℂ} (hz : z ≠ 0)
    (ha : ∀ a ∈ as, a ≠ 0) :
    residual (factorProduct as z) (outerApproximation as n z) 1 =
      residual (factorProduct (reciprocalSpectrum as) z⁻¹)
        (familyApproximation (reciprocalSpectrum as) n z⁻¹) 1 := by
  have hlead := leading_ne_zero as hz ha
  unfold outerApproximation residual
  rw [reciprocal_product as hz ha]
  field_simp [hlead]
  <;> ring

theorem pure_coefficients_ne_zero (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (pure : ∀ a ∈ as, ‖a‖ = R) : ∀ a ∈ as, a ≠ 0 := by
  intro a ha
  apply norm_pos_iff.mp
  rw [pure a ha]
  exact hR

/-- Every exterior level has the same fixed residual allowance, at every point. -/
theorem universal_outer_residual (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (pure : ∀ a ∈ as, ‖a‖ = R) (n : ℕ) {z : ℂ} (hz : z ≠ 0)
    (level : (R * ‖z‖)⁻¹ ≤ ratio n) :
    ‖residual (factorProduct as z) (outerApproximation as n z) 1‖ ≤ 1 / 4 := by
  rw [outer_residual_identity as n hz (pure_coefficients_ne_zero as hR pure)]
  apply family_residual
  intro b hb
  obtain ⟨a, ha, rfl⟩ := List.mem_map.mp hb
  simpa only [norm_mul, norm_inv, pure a ha, mul_inv] using level

/-- The geometric exterior levels cover every point strictly outside the circle. -/
theorem exterior_has_level {R : ℝ} (hR : 0 < R) {z : ℂ}
    (outside : 1 / R < ‖z‖) : z ≠ 0 ∧ ∃ n : ℕ, (R * ‖z‖)⁻¹ < ratio n := by
  have hprod : 1 < R * ‖z‖ := by
    have h := (div_lt_iff₀ hR).mp outside
    simpa only [mul_comm] using h
  have hz : z ≠ 0 := norm_pos_iff.mp (lt_trans (div_pos (by norm_num) hR) outside)
  have hsmall : (R * ‖z‖)⁻¹ < 1 := by
    rw [← one_div]
    exact (div_lt_one (lt_trans (by norm_num) hprod)).mpr hprod
  exact ⟨hz, exists_ratio_above hsmall⟩

/-- Exterior nonvanishing is returned from the constructed residual, not assumed. -/
theorem outer_nonzero (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (pure : ∀ a ∈ as, ‖a‖ = R) {z : ℂ} (outside : 1 / R < ‖z‖) :
    factorProduct as z ≠ 0 := by
  obtain ⟨hz, n, hn⟩ := exterior_has_level hR outside
  exact nonzero_of_unit_residual (universal_outer_residual as hR pure n hz hn.le)
    (by norm_num)

/-- An exact return for every zero, not a statement about a sampled root inventory. -/
theorem nonzero_off_circle (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (pure : ∀ a ∈ as, ‖a‖ = R) {z : ℂ} (off : ‖z‖ ≠ 1 / R) :
    factorProduct as z ≠ 0 :=
  fun zero => off (pure_zero_radius as hR pure zero)

/-- Finite-field base extension raises each reciprocal root to an integer power. -/
theorem pure_power_spectrum (as : List ℂ) {R : ℝ}
    (pure : ∀ a ∈ as, ‖a‖ = R) (k : ℕ) :
    ∀ a ∈ as.map (fun a => a ^ k), ‖a‖ = R ^ k := by
  intro b hb
  obtain ⟨a, ha, rfl⟩ := List.mem_map.mp hb
  rw [norm_pow, pure a ha]

/-- Tensoring finite spectra multiplies their weights, retaining all pairs. -/
def tensorSpectrum (as bs : List ℂ) : List ℂ :=
  as.flatMap (fun a => bs.map (fun b => a * b))

theorem pure_tensor_spectrum (as bs : List ℂ) {R S : ℝ}
    (ha : ∀ a ∈ as, ‖a‖ = R) (hb : ∀ b ∈ bs, ‖b‖ = S) :
    ∀ c ∈ tensorSpectrum as bs, ‖c‖ = R * S := by
  intro c hc
  obtain ⟨a, ha', hmap⟩ := List.mem_flatMap.mp hc
  obtain ⟨b, hb', rfl⟩ := List.mem_map.mp hmap
  rw [norm_mul, ha a ha', hb b hb']

theorem pure_unit_twist (as : List ℂ) {R : ℝ} (pure : ∀ a ∈ as, ‖a‖ = R)
    {u : ℂ} (hu : ‖u‖ = 1) : ∀ b ∈ as.map (fun a => u * a), ‖b‖ = R := by
  intro b hb
  obtain ⟨a, ha, rfl⟩ := List.mem_map.mp hb
  rw [norm_mul, hu, pure a ha, one_mul]

/-- Repeated reciprocal roots are counted with their actual multiplicity. -/
theorem factorProduct_append (as bs : List ℂ) (z : ℂ) :
    factorProduct (as ++ bs) z = factorProduct as z * factorProduct bs z := by
  induction as with
  | nil => simp [factorProduct]
  | cons a as ih => simp only [List.cons_append, factorProduct, ih]; ring

/-- All positive extension powers inherit constructed certificates at every level. -/
theorem extension_core_certificates (as : List ℂ) {R : ℝ} (hR : 0 < R)
    (pure : ∀ a ∈ as, ‖a‖ = R) (k n : ℕ) :
    GRWTSK.Analysis.Division.Cover.FiniteCover
      (factorProduct (as.map (fun a => a ^ k))) (innerDomain (R ^ k))
      (innerCore (R ^ k) n) :=
  universal_inner_core_cover _ (pow_pos hR k)
    (fun a ha => (pure_power_spectrum as pure k a ha).le) n

/-- Tensor products inherit their own complete family, rather than a reused wrong radius. -/
theorem tensor_core_certificates (as bs : List ℂ) {R S : ℝ}
    (hR : 0 < R) (hS : 0 < S)
    (ha : ∀ a ∈ as, ‖a‖ = R) (hb : ∀ b ∈ bs, ‖b‖ = S) (n : ℕ) :
    GRWTSK.Analysis.Division.Cover.FiniteCover (factorProduct (tensorSpectrum as bs))
      (innerDomain (R * S)) (innerCore (R * S) n) :=
  universal_inner_core_cover _ (mul_pos hR hS)
    (fun c hc => (pure_tensor_spectrum as bs ha hb c hc).le) n

end GRWTSK.NumberTheory.WeilCertificates
