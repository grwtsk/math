/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho
import Mathlib.NumberTheory.NumberField.FractionalIdeal
import Mathlib.NumberTheory.NumberField.InfinitePlace.Basic
import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas

/-!
# Determinants between fractional-ideal lattices

For projective lattices written in pseudo-bases, a matrix entry acts from
one coefficient ideal to another. The resulting bound on every minor keeps
both source and target coefficient ideals. The associated determinant ideal
has the field-norm factor and two fractional-ideal norm factors.
-/

open scoped nonZeroDivisors
open NumberField InnerProductSpace

namespace GRWTSK.NumberTheory.AlpogeDeterminantLattices

variable {R K : Type*} [CommRing R] [IsDedekindDomain R] [Field K] [Algebra R K]
    [IsFractionRing R K]
variable {ι : Type*} [Fintype ι] [DecidableEq ι]

omit [Fintype ι] in
private theorem prod_mem_fractionalIdeal_prod {a : ι → K}
    {I : ι → FractionalIdeal R⁰ K} (s : Finset ι) (h : ∀ i ∈ s, a i ∈ I i) :
    ∏ i ∈ s, a i ∈ ∏ i ∈ s, I i := by
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s hi ih =>
    rw [Finset.prod_insert hi, Finset.prod_insert hi]
    exact FractionalIdeal.mul_mem_mul (h i (Finset.mem_insert_self _ _))
      (ih (fun j hj => h j (Finset.mem_insert_of_mem hj)))

/-- The determinant of a square coefficient matrix carries the product of
the source coefficient ideals into the product of the target ones. -/
theorem det_mem_ideal_quotient (A : Matrix ι ι K) (I J : ι → FractionalIdeal R⁰ K)
    (h : ∀ i j, A i j ∈ J i / I j) :
    A.det ∈ (∏ i, J i) / (∏ j, I j) := by
  let T := (∏ i, J i) / (∏ j, I j)
  change A.det ∈ (T : Submodule R K)
  rw [Matrix.det_apply]
  apply Submodule.sum_mem
  intro σ _
  have ha := prod_mem_fractionalIdeal_prod (I := fun j => J (σ j) / I j)
    (a := fun j => A (σ j) j) Finset.univ (fun j _ => h (σ j) j)
  rw [Finset.prod_div_distrib, Equiv.prod_comp] at ha
  exact (T : Submodule R K).toAddSubgroup.zsmul_mem ha (Equiv.Perm.sign σ : ℤ)

/-- A common coefficient-ideal factor in a rectangular map occurs once per
row of each minor. Taking `D = 1` gives the ordinary pseudo-basis bound. -/
theorem minor_mem_with_common_factor {m n : Type*} (A : Matrix m n K)
    (I : n → FractionalIdeal R⁰ K) (J : m → FractionalIdeal R⁰ K) (D : FractionalIdeal R⁰ K)
    (h : ∀ i j, A i j ∈ D * J i / I j) (rows : ι ↪ m) (cols : ι ↪ n) :
    (A.submatrix rows cols).det ∈ D ^ Fintype.card ι * (∏ i, J (rows i)) /
      (∏ j, I (cols j)) := by
  have hdet := det_mem_ideal_quotient (A.submatrix rows cols) (I ∘ cols)
    (fun i => D * J (rows i)) (fun i j => h (rows i) (cols j))
  simpa [Function.comp_def, Finset.prod_mul_distrib] using hdet

/-- The normalized determinant ideal is integral. The coefficient-ideal
products in its numerator and denominator are part of the index. -/
theorem normalized_det_ideal_le_one (A : Matrix ι ι K) (I J : ι → FractionalIdeal R⁰ K)
    (hI : ∀ i, I i ≠ 0) (hJ : ∀ i, J i ≠ 0) (h : ∀ i j, A i j ∈ J i / I j) :
    FractionalIdeal.spanSingleton R⁰ A.det * (∏ j, I j) / (∏ i, J i) ≤ 1 := by
  have hI' : (∏ j, I j) ≠ 0 := Finset.prod_ne_zero_iff.mpr (fun i _ => hI i)
  have hJ' : (∏ i, J i) ≠ 0 := Finset.prod_ne_zero_iff.mpr (fun i _ => hJ i)
  have hdet := FractionalIdeal.spanSingleton_le_iff_mem.mpr (det_mem_ideal_quotient A I J h)
  have hl := (FractionalIdeal.le_div_iff_mul_le hI').mp hdet
  rw [div_eq_mul_inv]
  exact (mul_le_mul_left hl _).trans_eq (mul_inv_cancel₀ hJ')

/-- Changing the two determinant-line frames by nonzero scalars leaves the
normalized ideal itself unchanged, including when it is nonprincipal. -/
theorem determinant_ideal_change_frames (d u v : K) (hu : u ≠ 0) (hv : v ≠ 0)
    (I J : FractionalIdeal R⁰ K) (hJ : J ≠ 0) :
    FractionalIdeal.spanSingleton R⁰ (d * u / v) * (I / FractionalIdeal.spanSingleton R⁰ u) /
      (J / FractionalIdeal.spanSingleton R⁰ v) = FractionalIdeal.spanSingleton R⁰ d * I / J := by
  let s : K →*₀ FractionalIdeal R⁰ K :=
    { toFun := FractionalIdeal.spanSingleton R⁰
      map_zero' := FractionalIdeal.spanSingleton_zero
      map_one' := FractionalIdeal.spanSingleton_one
      map_mul' := fun a b => (FractionalIdeal.spanSingleton_mul_spanSingleton a b).symm }
  change s (d * u / v) * (I / s u) / (J / s v) = s d * I / J
  rw [map_div₀, map_mul]
  have hu' := (map_ne_zero s).mpr hu
  have hv' := (map_ne_zero s).mpr hv
  field_simp

/-- Complex Hadamard inequality for the Euclidean norms of the columns.
Gram–Schmidt preserves the absolute determinant when the coordinate
basis is changed and bounds each successive diagonal entry. -/
theorem norm_det_le_prod_columns {n : ℕ} (A : Matrix (Fin n) (Fin n) ℂ) :
    ‖A.det‖ ≤ ∏ j, ‖WithLp.toLp 2 (fun i => A i j)‖ := by
  let v (j : Fin n) : EuclideanSpace ℂ (Fin n) := WithLp.toLp 2 (fun i => A i j)
  let e := EuclideanSpace.basisFun (Fin n) ℂ
  have hdim : Module.finrank ℂ (EuclideanSpace ℂ (Fin n)) = Fintype.card (Fin n) := by simp
  let b := gramSchmidtOrthonormalBasis hdim v
  have hf : e.toBasis.det v = e.toBasis.det b * b.toBasis.det v := by
    simp only [Module.Basis.det_apply, ← Matrix.det_mul]
    exact congrArg Matrix.det (e.toBasis.toMatrix_mul_toMatrix b.toBasis v).symm
  have he : e.toBasis.det v = A.det := rfl
  rw [← he, hf, norm_mul, OrthonormalBasis.det_to_matrix_orthonormalBasis, one_mul,
    gramSchmidtOrthonormalBasis_det hdim v, norm_prod]
  gcongr with j
  exact (norm_inner_le_norm (𝕜 := ℂ) (b j) (v j)).trans_eq (by simp [b.orthonormal.norm_eq_one, v])

/-- Norm of the determinant ideal for pseudo-bases over a number field. -/
theorem determinant_ideal_absNorm {L : Type*} [Field L] [NumberField L]
    (A : Matrix ι ι L) (I J : ι → FractionalIdeal (𝓞 L)⁰ L) :
    FractionalIdeal.absNorm
        (FractionalIdeal.spanSingleton (𝓞 L)⁰ A.det * (∏ j, I j) / (∏ i, J i)) =
      |Algebra.norm ℚ A.det| * (∏ j, FractionalIdeal.absNorm (I j)) /
        (∏ i, FractionalIdeal.absNorm (J i)) := by
  simp [map_div₀, map_prod]

open UniqueFactorizationMonoid
open scoped Classical

/-- Logarithm of the absolute norm as the finite sum of log prime norms,
weighted by the actual multiplicities in the ideal factorization. -/
theorem log_absNorm_eq_sum_prime_logs {L : Type*} [Field L] [NumberField L]
    (I : Ideal (𝓞 L)) (hI : I ≠ ⊥) :
    Real.log (Ideal.absNorm I) = ∑ P ∈ (normalizedFactors I).toFinset,
      ((normalizedFactors I).count P : ℝ) * Real.log (Ideal.absNorm P) := by
  classical
  have hf : (∏ P ∈ (normalizedFactors I).toFinset, P ^ (normalizedFactors I).count P) = I :=
    (Finset.prod_multiset_count _).symm.trans (Ideal.prod_normalizedFactors_eq_self hI)
  have hprod := congrArg (fun J : Ideal (𝓞 L) => (Ideal.absNorm J : ℝ)) hf
  simp only [map_prod, map_pow, Nat.cast_prod, Nat.cast_pow] at hprod
  rw [← hprod, Real.log_prod]
  · simp [Real.log_pow]
  · intro P hP
    apply pow_ne_zero
    exact_mod_cast (Ideal.absNorm_ne_zero_iff_mem_nonZeroDivisors.mpr
      (mem_nonZeroDivisors_iff_ne_zero.mpr
        (irreducible_of_normalized_factor P (Multiset.mem_toFinset.mp hP)).ne_zero))

private theorem log_norm_eq_sum_over_embeddings {L : Type*} [Field L] [NumberField L]
    (a : L) (ha : a ≠ 0) :
    Real.log |(Algebra.norm ℚ a : ℝ)| = ∑ σ : L →ₐ[ℚ] ℂ, Real.log ‖σ a‖ := by
  have hh := congrArg (fun z : ℂ => ‖z‖) (Algebra.norm_eq_prod_embeddings ℚ ℂ a)
  have hemb : |(Algebra.norm ℚ a : ℝ)| = ∏ σ : L →ₐ[ℚ] ℂ, ‖σ a‖ := by
    rw [← Real.norm_eq_abs, Rat.norm_cast_real]
    simpa [norm_prod, ← Complex.ofReal_ratCast] using hh
  rw [hemb, Real.log_prod (fun σ _ => norm_ne_zero_iff.mpr ((map_ne_zero σ).mpr ha))]

/-- For an algebraic integer, the finite-place sum equals the sum over all
complex embeddings. Specializing to the determinant gives the free-lattice equality. -/
theorem principal_prime_logs_eq_embedding_logs {L : Type*} [Field L] [NumberField L]
    (a : 𝓞 L) (ha : a ≠ 0) :
    let f := normalizedFactors (Ideal.span {a})
    ∑ P ∈ f.toFinset, (f.count P : ℝ) * Real.log (Ideal.absNorm P) =
      ∑ σ : L →ₐ[ℚ] ℂ, Real.log ‖σ (a : L)‖ := by
  dsimp only
  rw [← log_absNorm_eq_sum_prime_logs _ (by simpa using ha),
    ← log_norm_eq_sum_over_embeddings _ (RingOfIntegers.coe_ne_zero_iff.mpr ha),
    Ideal.absNorm_span_singleton, ← Algebra.coe_norm_int]
  norm_cast
  congr 1
  rw [← Int.cast_natCast (R := ℝ), Int.natCast_natAbs]

/-- Over all complex embeddings, the total archimedean log determinant
is bounded by the sum of the logarithms of the column norms. Complex
conjugate embeddings occur separately. -/
theorem log_norm_det_le_log_columns {L : Type*} [Field L] [NumberField L] {n : ℕ}
    (A : Matrix (Fin n) (Fin n) L) (ha : A.det ≠ 0) :
    Real.log |(Algebra.norm ℚ A.det : ℝ)| ≤
      ∑ σ : L →ₐ[ℚ] ℂ, ∑ j, Real.log ‖WithLp.toLp 2 (fun i => σ (A i j))‖ := by
  classical
  have hpos (σ : L →ₐ[ℚ] ℂ) : 0 < ‖σ A.det‖ := norm_pos_iff.mpr ((map_ne_zero σ).mpr ha)
  rw [log_norm_eq_sum_over_embeddings A.det ha]
  apply Finset.sum_le_sum
  intro σ _
  have hle : ‖σ A.det‖ ≤ ∏ j, ‖WithLp.toLp 2 (fun i => σ (A i j))‖ := by
    rw [σ.map_det]
    exact norm_det_le_prod_columns (σ.mapMatrix A)
  have hp := Finset.prod_ne_zero_iff.mp (hpos σ |>.trans_le hle |>.ne')
  rw [← Real.log_prod hp]
  exact Real.log_le_log (hpos σ) hle

end GRWTSK.NumberTheory.AlpogeDeterminantLattices
