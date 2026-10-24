# Complete source: GRWTSK.Analysis.PivotOperatorBounds.Variantab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39a1323678eebe9b22c248e8e9cd3363449bba12` · SHA-256 `ab4e45a345b39da331d5eeb34cb53d4a0a63822959a3101bd842baa54e58a408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.PivotBounds
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Positive

/-!
# Euclidean operator consequences of controlled pivots

The spectral theorem proves the sharp inverse budget. Every norm here is
explicitly the Euclidean operator norm, including rectangular frame norms.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix Matrix.Norms.L2Operator

variable {k n : ℕ}

/-- Orthonormal-row frames are contractions in the specified Euclidean operator norm. -/
theorem l2_opNorm_le_one_of_orthonormalRows (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) : ‖A‖ ≤ 1 := by
  have h := Matrix.l2_opNorm_conjTranspose_mul_self A.transpose
  simp only [Matrix.conjTranspose_eq_transpose_of_trivial, Matrix.transpose_transpose] at h
  have ht : ‖A.transpose‖ = ‖A‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose A
  rw [ht, hA] at h
  have hone : ‖(1 : Matrix (Fin k) (Fin k) ℝ)‖ ≤ 1 := by
    rw [← Matrix.diagonal_one, Matrix.l2_opNorm_diagonal]
    exact (pi_norm_le_iff_of_nonneg zero_le_one).mpr (fun _ => by simp)
  nlinarith [norm_nonneg A]

/-- Direct Euclidean linear-map form of the specified matrix operator bound. -/
theorem l2_opNorm_toEuclideanLin_le (A : Matrix (Fin k) (Fin n) ℝ)
    (x : EuclideanSpace ℝ (Fin n)) :
    ‖Matrix.toEuclideanLin A x‖ ≤ ‖A‖ * ‖x‖ := by
  change ‖(Matrix.toEuclideanLin A).toContinuousLinearMap x‖ ≤
    ‖(Matrix.toEuclideanLin A).toContinuousLinearMap‖ * ‖x‖
  exact ContinuousLinearMap.le_opNorm _ x

/-- Restricting coordinates by an injection is a Euclidean contraction. -/
theorem euclidean_norm_restrict_le (c : Fin k → Fin n) (hc : Function.Injective c)
    (x : EuclideanSpace ℝ (Fin n)) :
    ‖WithLp.toLp 2 (fun i => x (c i))‖ ≤ ‖x‖ := by
  classical
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  change (∑ i : Fin k, ‖x (c i)‖ ^ 2) ≤ ∑ j : Fin n, ‖x j‖ ^ 2
  calc
    _ = ∑ j ∈ Finset.univ.image c, ‖x j‖ ^ 2 :=
      (Finset.sum_image (f := fun j : Fin n => ‖x j‖ ^ 2)
        (s := Finset.univ) (g := c) hc.injOn).symm
    _ ≤ ∑ j : Fin n, ‖x j‖ ^ 2 :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _) (fun _ _ _ => sq_nonneg _)

/-- Column restriction is bounded by the full frame's Euclidean operator norm. -/
theorem l2_opNorm_columnSubmatrix_le (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : Function.Injective c) :
    ‖columnSubmatrix A c‖ ≤ ‖A‖ := by
  have ht (B : Matrix (Fin k) (Fin n) ℝ) : ‖B.transpose‖ = ‖B‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose B
  have hs : ‖(columnSubmatrix A c).transpose‖ = ‖columnSubmatrix A c‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose (columnSubmatrix A c)
  rw [← hs, Matrix.l2_opNorm_def]
  apply ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg A)
  intro x
  have he : Matrix.toEuclideanLin (columnSubmatrix A c).transpose x =
      WithLp.toLp 2 (fun i => (Matrix.toEuclideanLin A.transpose x) (c i)) := rfl
  change ‖Matrix.toEuclideanLin (columnSubmatrix A c).transpose x‖ ≤ ‖A‖ * ‖x‖
  rw [he]
  exact (euclidean_norm_restrict_le c hc _).trans (by
    simpa only [ht A] using l2_opNorm_toEuclideanLin_le A.transpose x)

open scoped RealInnerProductSpace in
/-- Sharp lower singular-value estimate derived from the spectral theorem.
The product of Gram eigenvalues is at most each eigenvalue because all lie in `[0,1]`. -/
theorem det_sq_mul_norm_sq_le_image (M : Matrix (Fin k) (Fin k) ℝ)
    (hM : ‖M‖ ≤ 1) (x : EuclideanSpace ℝ (Fin k)) :
    M.det ^ 2 * ‖x‖ ^ 2 ≤ ‖Matrix.toEuclideanLin M x‖ ^ 2 := by
  classical
  let L := Matrix.toEuclideanLin M
  let P := LinearMap.adjoint L ∘ₗ L
  have hp : P.IsSymmetric := L.isSymmetric_adjoint_comp_self
  have hn : Module.finrank ℝ (EuclideanSpace ℝ (Fin k)) = k := by simp
  let b := hp.eigenvectorBasis hn
  let eigenval := hp.eigenvalues hn
  have hEigen0 (i : Fin k) : 0 ≤ eigenval i :=
    L.isPositive_adjoint_comp_self.nonneg_eigenvalues hn i
  have hEigenimage (i : Fin k) : eigenval i = ‖L (b i)‖ ^ 2 := by
    have h := hp.apply_eigenvectorBasis hn i
    have he := congrArg (fun y => ⟪b i, y⟫) h
    simpa only [P, LinearMap.comp_apply, LinearMap.adjoint_inner_right,
      inner_smul_right, real_inner_self_eq_norm_sq, OrthonormalBasis.norm_eq_one,
      one_pow, mul_one, b, eigenval, RCLike.ofReal_real_eq_id, id_eq] using he.symm
  have hEigen1 (i : Fin k) : eigenval i ≤ 1 := by
    rw [hEigenimage]
    have hnorm : ‖L (b i)‖ ≤ 1 := by
      have h := l2_opNorm_toEuclideanLin_le M (b i)
      change ‖L (b i)‖ ≤ ‖M‖ * ‖b i‖ at h
      simpa only [OrthonormalBasis.norm_eq_one, mul_one] using h.trans
        (mul_le_mul_of_nonneg_right hM (norm_nonneg _))
    nlinarith [norm_nonneg (L (b i))]
  have hgram : Matrix.toEuclideanLin (M.transpose * M) = P := by
    rw [Matrix.toLpLin_mul (q := 2)]
    have he := Matrix.toEuclideanLin_conjTranspose_eq_adjoint M
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      congrArg (fun F => F ∘ₗ L) he
  have hdet : M.det ^ 2 = ∏ i, eigenval i := by
    calc
      M.det ^ 2 = LinearMap.det P := by
        rw [← hgram, Matrix.toEuclideanLin_eq_toLin_orthonormal, LinearMap.det_toLin,
          Matrix.det_mul, Matrix.det_transpose, pow_two]
      _ = ∏ i, eigenval i := by
        simpa only [eigenval, RCLike.ofReal_real_eq_id, id_eq] using
          hp.det_eq_prod_eigenvalues hn
  have hsmall (i : Fin k) : M.det ^ 2 ≤ eigenval i := by
    rw [hdet, ← Finset.prod_erase_mul _ _ (Finset.mem_univ i)]
    have hprod : (∏ j ∈ Finset.univ.erase i, eigenval j) ≤ 1 := by
      calc
        _ ≤ ∏ _j ∈ Finset.univ.erase i, (1 : ℝ) :=
          Finset.prod_le_prod (fun j _ => hEigen0 j) (fun j _ => hEigen1 j)
        _ = 1 := by simp
    exact (mul_le_mul_of_nonneg_right hprod (hEigen0 i)).trans_eq (one_mul _)
  have hnorm : ‖x‖ ^ 2 = ∑ i, ⟪b i, x⟫ ^ 2 := (b.sum_sq_inner_right x).symm
  have himage : ‖L x‖ ^ 2 = ∑ i, eigenval i * ⟪b i, x⟫ ^ 2 := by
    calc
      ‖L x‖ ^ 2 = ⟪x, P x⟫ := by
        simp only [P, LinearMap.comp_apply, LinearMap.adjoint_inner_right,
          real_inner_self_eq_norm_sq]
      _ = ∑ i, ⟪x, b i⟫ * ⟪b i, P x⟫ := (b.sum_inner_mul_inner x (P x)).symm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro i _
        have he : ⟪b i, P x⟫ = eigenval i * ⟪b i, x⟫ := by
          simpa only [OrthonormalBasis.repr_apply_apply, b, eigenval,
            RCLike.ofReal_real_eq_id, id_eq] using
            hp.eigenvectorBasis_apply_self_apply hn x i
        rw [he, real_inner_comm x (b i)]
        ring
  rw [hnorm, himage, Finset.mul_sum]
  exact Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_right (hsmall i) (sq_nonneg _)

/-- A contraction with determinant margin has inverse norm at most the reciprocal margin. -/
theorem l2_opNorm_inverse_le_margin (M : Matrix (Fin k) (Fin k) ℝ)
    (hM : ‖M‖ ≤ 1) (δ : ℝ) (hδ : 0 < δ) (hdet : δ ≤ |M.det|) :
    ‖M⁻¹‖ ≤ δ⁻¹ := by
  have hne : M.det ≠ 0 := by
    intro h
    simp only [h, abs_zero] at hdet
    exact (not_le_of_gt hδ) hdet
  rw [Matrix.l2_opNorm_def]
  apply ContinuousLinearMap.opNorm_le_bound _ (by positivity)
  intro x
  let y := Matrix.toEuclideanLin M⁻¹ x
  have hcancel : Matrix.toEuclideanLin M y = x := by
    change Matrix.toEuclideanLin M (Matrix.toEuclideanLin M⁻¹ x) = x
    rw [← LinearMap.comp_apply, ← Matrix.toLpLin_mul (q := 2),
      Matrix.mul_nonsing_inv M (isUnit_iff_ne_zero.mpr hne), Matrix.toLpLin_one]
    rfl
  have h := det_sq_mul_norm_sq_le_image M hM y
  rw [hcancel] at h
  have hsq : δ ^ 2 ≤ M.det ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ (le_of_lt hδ) (abs_nonneg _)).mpr hdet
  have hle : δ * ‖y‖ ≤ ‖x‖ := by
    apply (sq_le_sq₀ (mul_nonneg hδ.le (norm_nonneg _)) (norm_nonneg _)).mp
    rw [mul_pow]
    exact (mul_le_mul_of_nonneg_right hsq (sq_nonneg _)).trans h
  change ‖y‖ ≤ δ⁻¹ * ‖x‖
  exact (le_inv_mul_iff₀ hδ).mpr hle

/-- All three operators of a controlled pivot have the same explicit budget. -/
theorem controlled_pivot_operator_bounds (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (c : Fin k → Fin n)
    (δ : ℝ) (hδ : 0 < δ) (hc : δ ≤ |columnMinor A c|) :
    ‖columnSubmatrix A c‖ ≤ 1 ∧
      ‖(columnSubmatrix A c)⁻¹‖ ≤ δ⁻¹ ∧ ‖pivotNormalize A c‖ ≤ δ⁻¹ := by
  have hne : columnMinor A c ≠ 0 := by
    intro h
    simp only [h, abs_zero] at hc
    exact (not_le_of_gt hδ) hc
  have hrestrict := (l2_opNorm_columnSubmatrix_le A c
    (injective_of_columnMinor_ne_zero A c hne)).trans
      (l2_opNorm_le_one_of_orthonormalRows A hA)
  have hinv := l2_opNorm_inverse_le_margin (columnSubmatrix A c) hrestrict δ hδ hc
  refine ⟨hrestrict, hinv, ?_⟩
  calc
    ‖pivotNormalize A c‖ ≤ ‖(columnSubmatrix A c)⁻¹‖ * ‖A‖ :=
      Matrix.l2_opNorm_mul _ _
    _ ≤ δ⁻¹ * 1 := mul_le_mul hinv (l2_opNorm_le_one_of_orthonormalRows A hA)
      (norm_nonneg A) (by positivity)
    _ = δ⁻¹ := mul_one _

/-- Both directions of a controlled overlap obey `δ⁻¹`, rather than `δ⁻²`. -/
theorem controlled_transition_operator_bounds (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (c d : Fin k → Fin n)
    (δ : ℝ) (hδ : 0 < δ) (hc : δ ≤ |columnMinor A c|)
    (hd : δ ≤ |columnMinor A d|) :
    ‖pivotTransition A c d‖ ≤ δ⁻¹ ∧ ‖(pivotTransition A c d)⁻¹‖ ≤ δ⁻¹ := by
  have hne (p : Fin k → Fin n) (hp : δ ≤ |columnMinor A p|) :
      columnMinor A p ≠ 0 := by
    intro h
    simp only [h, abs_zero] at hp
    exact (not_le_of_gt hδ) hp
  have bound (p q : Fin k → Fin n) (hp : δ ≤ |columnMinor A p|)
      (hq : δ ≤ |columnMinor A q|) : ‖pivotTransition A p q‖ ≤ δ⁻¹ := by
    have hbP := controlled_pivot_operator_bounds A hA p δ hδ hp
    have hbQ := controlled_pivot_operator_bounds A hA q δ hδ hq
    calc
      ‖pivotTransition A p q‖ ≤ ‖(columnSubmatrix A q)⁻¹‖ * ‖columnSubmatrix A p‖ :=
        Matrix.l2_opNorm_mul _ _
      _ ≤ δ⁻¹ * 1 := mul_le_mul hbQ.2.1 hbP.1
        (norm_nonneg _) (by positivity)
      _ = δ⁻¹ := mul_one _
  refine ⟨bound c d hc hd, ?_⟩
  rw [← pivotTransition_reverse A c d (hne c hc) (hne d hd)]
  exact bound d c hd hc

/-- The actual operator budget of every chart selected by the open cover. -/
theorem controlledCover_normalization_bound (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (I : Fin k ↪o Fin n)
    (hI : A ∈ controlledPivotDomain I) :
    ‖pivotNormalize A I‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) := by
  have hcount : 0 < (n.choose k : ℝ) := by
    exact_mod_cast Nat.choose_pos (orthonormalRows_dimension_le A hA)
  have hδ : 0 < controlledPivotThreshold k n := by
    unfold controlledPivotThreshold
    positivity
  have h := (controlled_pivot_operator_bounds A hA I
    (controlledPivotThreshold k n) hδ hI.le).2.2
  simpa only [controlledPivotThreshold, inv_inv] using h

/-- Both transition directions on an overlap have the same explicit dimension budget. -/
theorem controlledCover_transition_bounds (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (I J : Fin k ↪o Fin n)
    (hI : A ∈ controlledPivotDomain I) (hJ : A ∈ controlledPivotDomain J) :
    ‖pivotTransition A I J‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) ∧
      ‖(pivotTransition A I J)⁻¹‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) := by
  have hcount : 0 < (n.choose k : ℝ) := by
    exact_mod_cast Nat.choose_pos (orthonormalRows_dimension_le A hA)
  have hδ : 0 < controlledPivotThreshold k n := by
    unfold controlledPivotThreshold
    positivity
  simpa only [controlledPivotThreshold, inv_inv] using
    controlled_transition_operator_bounds A hA I J
      (controlledPivotThreshold k n) hδ hI.le hJ.le

/-- Rank zero has zero Euclidean operator norm; its determinant margin is still one. -/
theorem controlledCover_rank_zero (A : Matrix (Fin 0) (Fin n) ℝ)
    (I : Fin 0 ↪o Fin n) :
    orderedMinor A I = 1 ∧ ‖pivotNormalize A I‖ = 0 := by
  constructor
  · simp [orderedMinor, columnMinor, Matrix.det_isEmpty]
  · have h : pivotNormalize A I = 0 := by ext i; exact Fin.elim0 i
    rw [h, norm_zero]

end

end FormalResearch.PositiveAtlas.Grassmannian
```
