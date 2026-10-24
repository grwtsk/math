import ThetaJacobiUnitary

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

/-!
# Three-term coefficients of the actual theta polynomial basis

This review adapter uses the constructed countable basis and literal maximal
domain. Its hopping coefficients come from Gram–Schmidt remainder norms; no
constant-coefficient free/Catalan identification is imposed.
-/

namespace FormalResearch.RiemannHypothesis.ThetaJacobiRecurrence

open MeasureTheory Polynomial Filter
open scoped Topology ComplexConjugate InnerProductSpace
open ThetaMomentMeasure ThetaMultiplicationAdapter ThetaMultiplicationDomain
open ThetaPolynomialGraphCore ThetaJacobiUnitary

noncomputable section

/-- The maintained maximal multiplication map with its explicit literal domain type. -/
def multiplicationMap (t : ℝ) :
    coordinateDomain (momentMeasure t) →ₗ[ℂ] Lp ℂ 2 (momentMeasure t) :=
  (coordinateMultiplication (momentMeasure t)).toFun

/-- Exact symmetry of the explicit-domain multiplication map. -/
theorem multiplicationMap_formalAdjoint (t : ℝ)
    (f g : coordinateDomain (momentMeasure t)) :
    ⟪multiplicationMap t f, (g : Lp ℂ 2 (momentMeasure t))⟫_ℂ =
      ⟪(f : Lp ℂ 2 (momentMeasure t)), multiplicationMap t g⟫_ℂ :=
  coordinateMultiplication_formalAdjoint (momentMeasure t) f g

/-- Exact monomial action of the same actual multiplication map. -/
theorem multiplicationMap_powerVector {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    multiplicationMap t (polynomialDomainVector t ht (X ^ n)) = powerVector t ht (n + 1) :=
  coordinateMultiplication_powerVector n ht

/-- The actual polynomial flag through degree n. -/
def polynomialFlag (t : ℝ) (ht : 0 ≤ t) (n : ℕ) :
    Submodule ℂ (Lp ℂ 2 (momentMeasure t)) :=
  Submodule.span ℂ (powerVector t ht '' Set.Iic n)

/-- Every polynomial flag lies in the maximal multiplication domain. -/
theorem polynomialFlag_le_domain {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    polynomialFlag t ht n ≤ coordinateDomain (momentMeasure t) := by
  apply Submodule.span_le.mpr
  rintro x ⟨i, _, rfl⟩
  exact powerVector_mem_coordinateDomain i ht

/-- The unnormalized monic Gram–Schmidt remainder at degree n. -/
def monicVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : Lp ℂ 2 (momentMeasure t) :=
  InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n

/-- Strict theta polynomial positivity makes every remainder nonzero. -/
theorem monicVector_ne_zero {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    monicVector t ht n ≠ 0 :=
  InnerProductSpace.gramSchmidt_ne_zero n (powers_linearIndependent ht)

/-- Remainder norms are strictly positive at every degree. -/
theorem monicVector_norm_pos {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    0 < ‖monicVector t ht n‖ := norm_pos_iff.mpr (monicVector_ne_zero ht n)

/-- The monic remainder is an actual polynomial of the exact degree flag. -/
theorem monicVector_mem_flag {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    monicVector t ht n ∈ polynomialFlag t ht n :=
  InnerProductSpace.gramSchmidt_mem_span ℂ (powerVector t ht) le_rfl

/-- The normalized polynomial remains in the same degree flag. -/
theorem orthogonalPolynomial_mem_flag {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    orthogonalPolynomial t ht n ∈ polynomialFlag t ht n :=
  Submodule.smul_mem _ _ (monicVector_mem_flag ht n)

/-- All basis vectors belong to the literal maximal domain. -/
theorem orthogonalPolynomial_mem_domain {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    orthogonalPolynomial t ht n ∈ coordinateDomain (momentMeasure t) :=
  polynomialFlag_le_domain ht n (orthogonalPolynomial_mem_flag ht n)

/-- A polynomial basis vector is orthogonal to every strictly lower degree flag. -/
theorem monicVector_inner_flag_eq_zero {t : ℝ} (ht : 0 ≤ t) {j n : ℕ} (hn : n < j)
    (f : Lp ℂ 2 (momentMeasure t)) (hf : f ∈ polynomialFlag t ht n) :
    ⟪monicVector t ht j, f⟫_ℂ = 0 := by
  have hle : polynomialFlag t ht n ≤ (innerSL ℂ (monicVector t ht j)).toLinearMap.ker := by
    apply Submodule.span_le.mpr
    rintro x ⟨i, hi, rfl⟩
    exact InnerProductSpace.gramSchmidt_inv_triangular ℂ (powerVector t ht) (lt_of_le_of_lt hi hn)
  exact hle hf

/-- The normalized version retains exact lower-degree orthogonality. -/
theorem orthogonalPolynomial_inner_flag_eq_zero {t : ℝ} (ht : 0 ≤ t) {j n : ℕ} (hn : n < j)
    (f : Lp ℂ 2 (momentMeasure t)) (hf : f ∈ polynomialFlag t ht n) :
    ⟪orthogonalPolynomial t ht j, f⟫_ℂ = 0 := by
  change ⟪(‖monicVector t ht j‖ : ℂ)⁻¹ • monicVector t ht j, f⟫_ℂ = 0
  rw [inner_smul_left, monicVector_inner_flag_eq_zero ht hn f hf, mul_zero]

/-- The degree flag lifted into the actual maximal domain. -/
def domainFlag (t : ℝ) (ht : 0 ≤ t) (n : ℕ) :
    Submodule ℂ (coordinateDomain (momentMeasure t)) :=
  Submodule.span ℂ ((fun i => polynomialDomainVector t ht (X ^ i)) '' Set.Iic n)

/-- The lifted flag has exactly the literal polynomial flag as its ambient image. -/
theorem domainFlag_map_subtype {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    (domainFlag t ht n).map (coordinateDomain (momentMeasure t)).subtype =
      polynomialFlag t ht n := by
  rw [domainFlag, Submodule.map_span, Set.image_image]
  rfl

/-- Multiplication maps the degree-n flag into the degree-(n+1) flag. -/
theorem multiplication_flag {t : ℝ} (ht : 0 ≤ t) (n : ℕ)
    (f : coordinateDomain (momentMeasure t)) (hf : (f : Lp ℂ 2 (momentMeasure t)) ∈ polynomialFlag t ht n) :
    multiplicationMap t f ∈ polynomialFlag t ht (n + 1) := by
  have hfd : f ∈ domainFlag t ht n := by
    rw [← domainFlag_map_subtype ht n] at hf
    obtain ⟨g, hg, hgf⟩ := hf
    have heq : g = f := Subtype.ext hgf
    exact heq ▸ hg
  have hmap : (domainFlag t ht n).map (multiplicationMap t) ≤
      polynomialFlag t ht (n + 1) := by
    rw [domainFlag, Submodule.map_span, Set.image_image]
    apply Submodule.span_le.mpr
    rintro x ⟨i, hi, rfl⟩
    have hmul := multiplicationMap_powerVector ht i
    change multiplicationMap t (polynomialDomainVector t ht (X ^ i)) ∈ _
    rw [hmul]
    exact Submodule.subset_span ⟨i + 1, by change i ≤ n at hi; exact Nat.add_le_add_right hi 1, rfl⟩
  exact hmap ⟨f, hfd, rfl⟩

/-- Basis vectors regarded as actual maximal-domain vectors. -/
def basisDomainVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : coordinateDomain (momentMeasure t) :=
  ⟨orthogonalPolynomial t ht n, orthogonalPolynomial_mem_domain ht n⟩

/-- Exact upper bandwidth follows from degree and orthogonality. -/
theorem upper_band_zero {t : ℝ} (ht : 0 ≤ t) {i n : ℕ} (hin : n + 1 < i) :
    ⟪orthogonalPolynomial t ht i,
      multiplicationMap t (basisDomainVector t ht n)⟫_ℂ = 0 :=
  orthogonalPolynomial_inner_flag_eq_zero ht hin _
    (multiplication_flag ht n _ (orthogonalPolynomial_mem_flag ht n))

/-- Symmetry gives the matching exact lower bandwidth. -/
theorem lower_band_zero {t : ℝ} (ht : 0 ≤ t) {i n : ℕ} (hin : i + 1 < n) :
    ⟪orthogonalPolynomial t ht i,
      multiplicationMap t (basisDomainVector t ht n)⟫_ℂ = 0 := by
  change ⟪(basisDomainVector t ht i : Lp ℂ 2 (momentMeasure t)),
    multiplicationMap t (basisDomainVector t ht n)⟫_ℂ = 0
  rw [← multiplicationMap_formalAdjoint t, inner_eq_zero_symm]
  exact upper_band_zero ht hin

/-- Monic polynomial vectors admitted by the literal maximal domain. -/
def monicDomainVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : coordinateDomain (momentMeasure t) :=
  ⟨monicVector t ht n, polynomialFlag_le_domain ht n (monicVector_mem_flag ht n)⟩

/-- The actual monic remainder's pairing with its leading monomial is its norm square. -/
theorem monicVector_inner_power {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪monicVector t ht n, powerVector t ht n⟫_ℂ = (‖monicVector t ht n‖ : ℂ) ^ 2 := by
  have h := congrArg (fun f => ⟪monicVector t ht n, f⟫_ℂ)
    (InnerProductSpace.gramSchmidt_def'' ℂ (powerVector t ht) n)
  simp only [inner_add_right, inner_sum, inner_smul_right] at h
  have hs : (∑ i ∈ Finset.Iio n,
      (⟪InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i, powerVector t ht n⟫_ℂ /
        (‖InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i‖ : ℂ) ^ 2) *
      ⟪monicVector t ht n, InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i⟫_ℂ) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hz : ⟪monicVector t ht n, InnerProductSpace.gramSchmidt ℂ (powerVector t ht) i⟫_ℂ = 0 :=
      InnerProductSpace.gramSchmidt_orthogonal ℂ (powerVector t ht) (Finset.mem_Iio.mp hi).ne'
    rw [hz, mul_zero]
  simp only [monicVector] at h hs ⊢
  have hh : ⟪InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n, powerVector t ht n⟫_ℂ =
      ⟪InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n,
        InnerProductSpace.gramSchmidt ℂ (powerVector t ht) n⟫_ℂ + 0 := by
    convert h using 1
    congr 1
    exact hs.symm
  rw [add_zero, inner_self_eq_norm_sq_to_K] at hh
  exact hh

/-- Leading monomial decomposition lifted to the literal maximal domain. -/
theorem powerDomain_monic_decomposition {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    polynomialDomainVector t ht (X ^ n) = monicDomainVector t ht n +
      ∑ i ∈ Finset.Iio n,
        (⟪monicVector t ht i, powerVector t ht n⟫_ℂ / (‖monicVector t ht i‖ : ℂ) ^ 2) •
          monicDomainVector t ht i := by
  apply Subtype.ext
  simp only [Submodule.coe_add, Submodule.coe_smul, Submodule.coe_sum]
  convert InnerProductSpace.gramSchmidt_def'' ℂ (powerVector t ht) n using 1
  all_goals rfl

/-- Multiplication couples successive monic remainders by the next norm square. -/
theorem monicVector_inner_multiplication {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪monicVector t ht (n + 1),
      multiplicationMap t (monicDomainVector t ht n)⟫_ℂ =
        (‖monicVector t ht (n + 1)‖ : ℂ) ^ 2 := by
  have h := congrArg (fun f : coordinateDomain (momentMeasure t) =>
    ⟪monicVector t ht (n + 1), multiplicationMap t f⟫_ℂ)
      (powerDomain_monic_decomposition ht n)
  simp only [map_add, map_sum, map_smul, inner_add_right, inner_sum, inner_smul_right] at h
  have hs : (∑ i ∈ Finset.Iio n,
      (⟪monicVector t ht i, powerVector t ht n⟫_ℂ / (‖monicVector t ht i‖ : ℂ) ^ 2) *
      ⟪monicVector t ht (n + 1),
        multiplicationMap t (monicDomainVector t ht i)⟫_ℂ) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hn : i + 1 < n + 1 := by have := Finset.mem_Iio.mp hi; omega
    rw [monicVector_inner_flag_eq_zero ht hn _
      (multiplication_flag ht i _ (monicVector_mem_flag ht i)), mul_zero]
  rw [hs, add_zero] at h
  rw [multiplicationMap_powerVector ht n, monicVector_inner_power ht (n + 1)] at h
  exact h.symm

/-- Positive actual hopping coefficient, the ratio of successive remainder norms. -/
def hopping (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : ℝ :=
  ‖monicVector t ht (n + 1)‖ / ‖monicVector t ht n‖

/-- Every off-diagonal hopping coefficient is strictly positive. -/
theorem hopping_positive {t : ℝ} (ht : 0 ≤ t) (n : ℕ) : 0 < hopping t ht n :=
  div_pos (monicVector_norm_pos ht (n + 1)) (monicVector_norm_pos ht n)

/-- The hopping coefficient is the literal matrix coefficient of the actual operator. -/
theorem upper_hopping_coefficient {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪orthogonalPolynomial t ht (n + 1),
      multiplicationMap t (basisDomainVector t ht n)⟫_ℂ =
        (hopping t ht n : ℂ) := by
  have hd : basisDomainVector t ht n = (‖monicVector t ht n‖ : ℂ)⁻¹ •
      monicDomainVector t ht n := Subtype.ext rfl
  rw [hd, map_smul]
  change ⟪(‖monicVector t ht (n + 1)‖ : ℂ)⁻¹ • monicVector t ht (n + 1),
    (‖monicVector t ht n‖ : ℂ)⁻¹ •
      multiplicationMap t (monicDomainVector t ht n)⟫_ℂ = _
  rw [inner_smul_left, inner_smul_right, monicVector_inner_multiplication ht n]
  simp only [Complex.conj_inv, Complex.conj_ofReal, hopping, Complex.ofReal_div]
  have hn : (‖monicVector t ht n‖ : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (monicVector_norm_pos ht n).ne'
  have hn1 : (‖monicVector t ht (n + 1)‖ : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (monicVector_norm_pos ht (n + 1)).ne'
  field_simp

/-- Symmetry retains the same real positive coefficient below the diagonal. -/
theorem lower_hopping_coefficient {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪orthogonalPolynomial t ht n,
      multiplicationMap t (basisDomainVector t ht (n + 1))⟫_ℂ =
        (hopping t ht n : ℂ) := by
  change ⟪(basisDomainVector t ht n : Lp ℂ 2 (momentMeasure t)),
    multiplicationMap t (basisDomainVector t ht (n + 1))⟫_ℂ = _
  rw [← multiplicationMap_formalAdjoint t, ← inner_conj_symm]
  change (starRingEnd ℂ) ⟪orthogonalPolynomial t ht (n + 1),
    multiplicationMap t (basisDomainVector t ht n)⟫_ℂ = _
  rw [upper_hopping_coefficient ht n, Complex.conj_ofReal]

/-- The actual real diagonal coefficient is the real part of its cyclic basis coefficient. -/
def diagonal (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : ℝ :=
  (⟪orthogonalPolynomial t ht n,
    multiplicationMap t (basisDomainVector t ht n)⟫_ℂ).re

/-- Symmetry proves that the diagonal has no imaginary component. -/
theorem diagonal_coefficient {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪orthogonalPolynomial t ht n,
      multiplicationMap t (basisDomainVector t ht n)⟫_ℂ =
        (diagonal t ht n : ℂ) := by
  have hsym := multiplicationMap_formalAdjoint t
    (basisDomainVector t ht n) (basisDomainVector t ht n)
  rw [← inner_conj_symm] at hsym
  apply Complex.ext
  · rfl
  · have h := congrArg Complex.im hsym
    simp only [Complex.conj_im] at h
    change (⟪(basisDomainVector t ht n : Lp ℂ 2 (momentMeasure t)),
      multiplicationMap t (basisDomainVector t ht n)⟫_ℂ).im = 0
    linarith

/-- Exact half-line boundary recurrence for the continuous theta polynomial basis. -/
theorem multiplication_basis_zero {t : ℝ} (ht : 0 ≤ t) :
    multiplicationMap t (basisDomainVector t ht 0) =
      (diagonal t ht 0 : ℂ) • orthogonalPolynomial t ht 0 +
        (hopping t ht 0 : ℂ) • orthogonalPolynomial t ht 1 := by
  apply (polynomialHilbertBasis t ht).repr.injective
  apply lp.ext
  funext i
  simp only [HilbertBasis.repr_apply_apply, polynomialHilbertBasis_apply,
    inner_add_right, inner_smul_right,
    orthonormal_iff_ite.mp (orthogonalPolynomial_orthonormal ht)]
  by_cases hi0 : i = 0
  · subst i
    rw [diagonal_coefficient ht 0]
    simp
  by_cases hi1 : i = 1
  · subst i
    rw [upper_hopping_coefficient ht 0]
    simp
  rw [upper_band_zero ht (by omega)]
  simp [hi0, hi1]

/-- Exact three-term recurrence, with real diagonal and strictly positive hopping. -/
theorem multiplication_basis_succ {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    multiplicationMap t (basisDomainVector t ht (n + 1)) =
      (hopping t ht n : ℂ) • orthogonalPolynomial t ht n +
        (diagonal t ht (n + 1) : ℂ) • orthogonalPolynomial t ht (n + 1) +
          (hopping t ht (n + 1) : ℂ) • orthogonalPolynomial t ht (n + 2) := by
  apply (polynomialHilbertBasis t ht).repr.injective
  apply lp.ext
  funext i
  simp only [HilbertBasis.repr_apply_apply, polynomialHilbertBasis_apply,
    inner_add_right, inner_smul_right,
    orthonormal_iff_ite.mp (orthogonalPolynomial_orthonormal ht)]
  by_cases hi0 : i = n
  · subst i
    rw [lower_hopping_coefficient ht n]
    simp
  by_cases hi1 : i = n + 1
  · subst i
    rw [diagonal_coefficient ht (n + 1)]
    simp
  by_cases hi2 : i = n + 2
  · subst i
    rw [upper_hopping_coefficient ht (n + 1)]
    simp
  rcases lt_or_ge i (n + 1) with hlt | hge
  · rw [lower_band_zero ht (by omega)]
    simp [hi0, hi1, hi2]
  · rw [upper_band_zero ht (by omega)]
    simp [hi0, hi1, hi2]

/-- Each standard Jacobi vector is admitted by the transported maximal domain. -/
theorem standardVector_mem_jacobiDomain {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    lp.single 2 n (1 : ℂ) ∈ jacobiDomain t ht := by
  rw [mem_jacobiDomain_iff, pointedUnitary_single]
  exact orthogonalPolynomial_mem_domain ht n

/-- A standard Jacobi vector carrying its literal maximal-domain proof. -/
def standardDomainVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : jacobiDomain t ht :=
  ⟨lp.single 2 n (1 : ℂ), standardVector_mem_jacobiDomain ht n⟩

/-- The restricted unitary sends each standard domain vector to the actual polynomial. -/
theorem domainUnitary_standardVector {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    domainUnitary t ht (standardDomainVector t ht n) = basisDomainVector t ht n := by
  apply Subtype.ext
  exact pointedUnitary_single ht n

/-- The actual transported operator has the exact half-line Jacobi boundary action. -/
theorem jacobiOperator_standard_zero {t : ℝ} (ht : 0 ≤ t) :
    jacobiOperator t ht (standardDomainVector t ht 0) =
      (diagonal t ht 0 : ℂ) • lp.single 2 0 (1 : ℂ) +
        (hopping t ht 0 : ℂ) • lp.single 2 1 (1 : ℂ) := by
  apply (pointedUnitary t ht).injective
  rw [pointedUnitary_jacobiOperator, domainUnitary_standardVector]
  simp only [map_add, map_smul, pointedUnitary_single]
  exact multiplication_basis_zero ht

/-- Every interior standard vector has the exact three-term Jacobi action on D(J). -/
theorem jacobiOperator_standard_succ {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    jacobiOperator t ht (standardDomainVector t ht (n + 1)) =
      (hopping t ht n : ℂ) • lp.single 2 n (1 : ℂ) +
        (diagonal t ht (n + 1) : ℂ) • lp.single 2 (n + 1) (1 : ℂ) +
          (hopping t ht (n + 1) : ℂ) • lp.single 2 (n + 2) (1 : ℂ) := by
  apply (pointedUnitary t ht).injective
  rw [pointedUnitary_jacobiOperator, domainUnitary_standardVector]
  simp only [map_add, map_smul, pointedUnitary_single]
  exact multiplication_basis_succ ht n

end
end FormalResearch.RiemannHypothesis.ThetaJacobiRecurrence
