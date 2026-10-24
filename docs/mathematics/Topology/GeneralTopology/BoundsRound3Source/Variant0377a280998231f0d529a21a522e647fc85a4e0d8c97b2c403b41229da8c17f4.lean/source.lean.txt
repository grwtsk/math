import FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Topology.Instances.Matrix

/-!
# Ordered pivot margins and Euclidean operator budgets

Column subsets are enumerated once, increasingly. The all-functions
Cauchy--Binet identity is converted to this enumeration by the unique
increasing-selection/permutation decomposition, retaining its factorial.
Every matrix norm in this file is explicitly the Euclidean operator norm.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix Matrix.Norms.L2Operator

variable {k n : ℕ}

/-- The prescribed finite family indexes every column subset exactly once. -/
noncomputable instance orderedPivotFintype : Fintype (Fin k ↪o Fin n) :=
  Fintype.ofEquiv (Set.powersetCard (Fin n) k) Set.powersetCard.ofFinEmbEquiv.symm

/-- Increasing pivot count is the binomial coefficient, including dimension edges. -/
theorem card_orderedPivots : Fintype.card (Fin k ↪o Fin n) = n.choose k := by
  rw [← Nat.card_eq_fintype_card,
    Nat.card_congr Set.powersetCard.ofFinEmbEquiv, Set.powersetCard.card]
  simp

/-- Increasing pivots with a permutation enumerate all injective selections exactly once. -/
def orderedPermutationEquiv :
    ((Fin k ↪o Fin n) × Equiv.Perm (Fin k)) ≃
      {c : Fin k → Fin n // Function.Injective c} :=
  Equiv.ofBijective
    (fun p => ⟨fun i => p.1 (p.2 i), p.1.injective.comp p.2.injective⟩) (by
      constructor
      · intro p q hpq
        have he : (fun i => p.1 (p.2 i)) = fun i => q.1 (q.2 i) :=
          congrArg Subtype.val hpq
        have hr : Set.range p.1 = Set.range q.1 := by
          simpa only [← Function.comp_def, Set.range_comp, Equiv.range_eq_univ,
            Set.image_univ] using congrArg Set.range he
        have hI : p.1 = q.1 :=
          RelEmbedding.ext (fun i => congrFun (p.1.strictMono.range_inj q.1.strictMono |>.mp hr) i)
        have hp : p.2 = q.2 := by
          apply Equiv.ext
          intro i
          apply q.1.injective
          simpa only [hI] using congrFun he i
        exact Prod.ext hI hp
      · intro c
        obtain ⟨I, e, he⟩ := exists_ordered_selection c.val c.property
        exact ⟨(I, e), Subtype.ext (funext fun i => (he i).symm)⟩)

/-- A permutation changes the determinant sign, and leaves its square unchanged. -/
theorem columnMinor_comp_perm_sq (A : Matrix (Fin k) (Fin n) ℝ)
    (I : Fin k ↪o Fin n) (e : Equiv.Perm (Fin k)) :
    columnMinor A (fun i => I (e i)) ^ 2 = orderedMinor A I ^ 2 := by
  rw [columnMinor_comp_perm, mul_pow]
  have hs : (Equiv.Perm.sign e : ℝ) ^ 2 = 1 := by
    norm_cast
    simp
  rw [hs, one_mul]
  rfl

/-- Conversion of squared minors from tuples to unique increasing subsets. -/
theorem sum_columnMinor_sq (A : Matrix (Fin k) (Fin n) ℝ) :
    (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      (k.factorial : ℝ) * ∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2 := by
  classical
  have hs : (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      ∑ c : {c : Fin k → Fin n // Function.Injective c}, columnMinor A c.val ^ 2 := by
    rw [Finset.sum_subtype_eq_sum_filter]
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro c _ hc
    have h : ¬ Function.Injective c := by simpa using hc
    rw [columnMinor_eq_zero_of_not_injective A c h, zero_pow (by decide : 2 ≠ 0)]
  rw [hs, ← orderedPermutationEquiv.sum_comp]
  change (∑ p : (Fin k ↪o Fin n) × Equiv.Perm (Fin k),
    columnMinor A (fun i => p.1 (p.2 i)) ^ 2) = _
  rw [Fintype.sum_prod_type]
  simp only [columnMinor_comp_perm_sq, Finset.sum_const, Finset.card_univ,
    Fintype.card_perm, nsmul_eq_mul]
  rw [Finset.mul_sum]

/-- Cauchy--Binet squared-minor identity for orthonormal rows. -/
theorem sum_orderedMinor_sq_eq_one (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    (∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2) = 1 := by
  have h := Toeplitz.cauchyBinet_all_functions A A.transpose
  have ht (c : Fin k → Fin n) :
      A.transpose.submatrix c id = (columnSubmatrix A c).transpose := rfl
  simp only [ht, Matrix.det_transpose] at h
  change (k.factorial : ℝ) * Matrix.det (A * A.transpose) =
    ∑ c : Fin k → Fin n, columnMinor A c * columnMinor A c at h
  simp only [← pow_two] at h
  rw [hA, Matrix.det_one, sum_columnMinor_sq] at h
  exact (mul_left_cancel₀ (by positivity : (k.factorial : ℝ) ≠ 0) h).symm

/-- At least one ordered pivot has squared determinant at least `1 / choose n k`. -/
theorem exists_orderedMinor_sq_margin (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, 1 / (n.choose k : ℝ) ≤ orderedMinor A I ^ 2 := by
  classical
  have hs := sum_orderedMinor_sq_eq_one A hA
  have hn : Nonempty (Fin k ↪o Fin n) := by
    by_contra h
    have : IsEmpty (Fin k ↪o Fin n) := not_nonempty_iff.mp h
    simp at hs
  have hcard : 0 < (n.choose k : ℝ) := by
    have hc := Fintype.card_pos_iff.mpr hn
    rw [card_orderedPivots] at hc
    exact_mod_cast hc
  by_contra! h
  have ht : (∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2) <
      ∑ _I : Fin k ↪o Fin n, 1 / (n.choose k : ℝ) :=
    Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty (fun i _ => h i)
  simp only [Finset.sum_const, Finset.card_univ, card_orderedPivots, nsmul_eq_mul] at ht
  rw [hs, mul_one_div_cancel hcard.ne'] at ht
  exact (lt_irrefl (1 : ℝ)) ht

/-- The explicit determinant margin uses the positive square root of the pivot count. -/
theorem exists_orderedMinor_margin (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, (Real.sqrt (n.choose k : ℝ))⁻¹ ≤ |orderedMinor A I| := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_sq_margin A hA
  refine ⟨I, ?_⟩
  have hn : 0 ≤ (n.choose k : ℝ) := by positivity
  have hi : 0 ≤ (Real.sqrt (n.choose k : ℝ))⁻¹ := by positivity
  have hs : ((Real.sqrt (n.choose k : ℝ))⁻¹) ^ 2 = 1 / (n.choose k : ℝ) := by
    rw [inv_pow, Real.sq_sqrt hn, one_div]
  apply (sq_le_sq₀ hi (abs_nonneg _)).mp
  simpa only [hs, sq_abs] using hI

/-- A determinant margin is invariant under row changes with determinant of magnitude one. -/
theorem abs_columnMinor_mul_left (O : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hO : |O.det| = 1) :
    |columnMinor (O * A) c| = |columnMinor A c| := by
  rw [columnMinor_mul_left, abs_mul, hO, one_mul]

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

/-- Restricting coordinates by an injection is a Euclidean contraction. -/
theorem euclidean_norm_restrict_le (c : Fin k → Fin n) (hc : Function.Injective c)
    (x : EuclideanSpace ℝ (Fin n)) :
    ‖WithLp.toLp 2 (fun i => x (c i))‖ ≤ ‖x‖ := by
  classical
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  change (∑ i : Fin k, ‖x (c i)‖ ^ 2) ≤ ∑ j : Fin n, ‖x j‖ ^ 2
  rw [← Finset.sum_image (fun i _ j _ h => hc h)]
  exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _) (fun _ _ _ => sq_nonneg _)

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
  apply ContinuousLinearMap.opNorm_le_bound (norm_nonneg A)
  intro x
  have he : Matrix.toEuclideanLin (columnSubmatrix A c).transpose x =
      WithLp.toLp 2 (fun i => (Matrix.toEuclideanLin A.transpose x) (c i)) := rfl
  change ‖Matrix.toEuclideanLin (columnSubmatrix A c).transpose x‖ ≤ ‖A‖ * ‖x‖
  rw [he]
  exact (euclidean_norm_restrict_le c hc _).trans (by
    simpa only [ht A] using Matrix.l2_opNorm_mulVec A.transpose x)

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
  let λ := hp.eigenvalues hn
  have hλ0 (i : Fin k) : 0 ≤ λ i :=
    L.isPositive_adjoint_comp_self.nonneg_eigenvalues hn i
  have hλimage (i : Fin k) : λ i = ‖L (b i)‖ ^ 2 := by
    have h := hp.apply_eigenvectorBasis hn i
    have he := congrArg (fun y => ⟪b i, y⟫) h
    simpa only [P, LinearMap.comp_apply, LinearMap.adjoint_inner_right,
      inner_smul_right, real_inner_self_eq_norm_sq, OrthonormalBasis.norm_eq_one,
      one_pow, mul_one, b, λ] using he.symm
  have hλ1 (i : Fin k) : λ i ≤ 1 := by
    rw [hλimage]
    have hnorm : ‖L (b i)‖ ≤ 1 := by
      have h := Matrix.l2_opNorm_mulVec M (b i)
      change ‖L (b i)‖ ≤ ‖M‖ * ‖b i‖ at h
      simpa only [OrthonormalBasis.norm_eq_one, mul_one] using h.trans
        (mul_le_mul_of_nonneg_right hM (norm_nonneg _))
    nlinarith [norm_nonneg (L (b i))]
  have hgram : Matrix.toEuclideanLin (M.transpose * M) = P := by
    rw [Matrix.toLpLin_mul]
    have he := Matrix.toEuclideanLin_conjTranspose_eq_adjoint M
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      congrArg (fun F => F ∘ₗ L) he
  have hdet : M.det ^ 2 = ∏ i, λ i := by
    have hd := hp.det_eq_prod_eigenvalues hn
    rw [← hgram, Matrix.toEuclideanLin_eq_toLin_orthonormal, LinearMap.det_toLin,
      Matrix.det_mul, Matrix.det_transpose] at hd
    simpa only [pow_two] using hd
  have hsmall (i : Fin k) : M.det ^ 2 ≤ λ i := by
    rw [hdet, ← Finset.prod_erase_mul _ _ (Finset.mem_univ i)]
    have hprod : (∏ j ∈ Finset.univ.erase i, λ j) ≤ 1 := by
      calc
        _ ≤ ∏ _j ∈ Finset.univ.erase i, (1 : ℝ) :=
          Finset.prod_le_prod (fun j _ => hλ0 j) (fun j _ => hλ1 j)
        _ = 1 := by simp
    exact (mul_le_mul_of_nonneg_right hprod (hλ0 i)).trans_eq (one_mul _)
  have hnorm : ‖x‖ ^ 2 = ∑ i, ⟪b i, x⟫ ^ 2 := (b.sum_sq_inner_right x).symm
  have himage : ‖L x‖ ^ 2 = ∑ i, λ i * ⟪b i, x⟫ ^ 2 := by
    calc
      ‖L x‖ ^ 2 = ⟪x, P x⟫ := by
        simp only [P, LinearMap.comp_apply, LinearMap.adjoint_inner_right,
          real_inner_self_eq_norm_sq]
      _ = ∑ i, ⟪x, b i⟫ * ⟪b i, P x⟫ := (b.sum_inner_mul_inner x (P x)).symm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro i _
        have he := hp.eigenvectorBasis_apply_self_apply hn x i
        change ⟪b i, P x⟫ = λ i * ⟪b i, x⟫ at he
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
  apply ContinuousLinearMap.opNorm_le_bound (by positivity)
  intro x
  let y := Matrix.toEuclideanLin M⁻¹ x
  have hcancel : Matrix.toEuclideanLin M y = x := by
    change Matrix.toEuclideanLin M (Matrix.toEuclideanLin M⁻¹ x) = x
    rw [← LinearMap.comp_apply, ← Matrix.toLpLin_mul,
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

/-- Orthonormality rules out the over-dimensional locus. -/
theorem orthonormalRows_dimension_le (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) : k ≤ n := by
  obtain ⟨I, _⟩ := exists_orderedMinor_margin A hA
  simpa only [Fintype.card_fin] using Fintype.card_le_of_injective I I.injective

/-- Explicit strict threshold; no continuous choice of a single pivot is used. -/
def controlledPivotThreshold (k n : ℕ) : ℝ :=
  (2 * Real.sqrt (n.choose k : ℝ))⁻¹

/-- Open controlled pivot domains on the actual matrix presentation. -/
def controlledPivotDomain (I : Fin k ↪o Fin n) : Set (Matrix (Fin k) (Fin n) ℝ) :=
  {A | controlledPivotThreshold k n < |orderedMinor A I|}

/-- The threshold family is an open family in the matrix-entry topology. -/
theorem isOpen_controlledPivotDomain (I : Fin k ↪o Fin n) :
    IsOpen (controlledPivotDomain I) := by
  apply isOpen_lt continuous_const
  apply Continuous.abs
  apply Continuous.matrix_det
  exact continuous_matrix (fun i j =>
    (continuous_apply (I j)).comp (continuous_apply i))

/-- The prescribed open controlled family covers every orthonormal frame. -/
theorem controlledPivotDomain_cover (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, A ∈ controlledPivotDomain I := by
  have hcount : 0 < (n.choose k : ℝ) := by
    exact_mod_cast Nat.choose_pos (orthonormalRows_dimension_le A hA)
  have hs : 0 < Real.sqrt (n.choose k : ℝ) := Real.sqrt_pos.mpr hcount
  obtain ⟨I, hI⟩ := exists_orderedMinor_margin A hA
  refine ⟨I, ?_⟩
  change (2 * Real.sqrt (n.choose k : ℝ))⁻¹ < |orderedMinor A I|
  apply lt_of_lt_of_le _ hI
  apply inv_strictAnti₀ hs
  nlinarith

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

/-- Orthogonal matrices have determinant magnitude one, retaining orientation reversal. -/
theorem abs_det_eq_one_of_orthogonal (O : Matrix (Fin k) (Fin k) ℝ)
    (hO : O * O.transpose = 1) : |O.det| = 1 := by
  have h := congrArg Matrix.det hO
  rw [Matrix.det_mul, Matrix.det_transpose, Matrix.det_one] at h
  have hs : |O.det| ^ 2 = 1 := by simpa only [sq_abs, pow_two] using h
  nlinarith [abs_nonneg O.det]

/-- Controlled cover membership is invariant under replacement of an orthonormal row basis. -/
theorem controlledPivotDomain_orthogonal_iff (O : Matrix (Fin k) (Fin k) ℝ)
    (hO : O * O.transpose = 1) (A : Matrix (Fin k) (Fin n) ℝ)
    (I : Fin k ↪o Fin n) :
    O * A ∈ controlledPivotDomain I ↔ A ∈ controlledPivotDomain I := by
  change controlledPivotThreshold k n < |columnMinor (O * A) I| ↔ _
  rw [abs_columnMinor_mul_left O A I (abs_det_eq_one_of_orthogonal O hO)]

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
