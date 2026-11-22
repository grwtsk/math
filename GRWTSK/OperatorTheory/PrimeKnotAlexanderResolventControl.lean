/-
Copyright (c) 2026 grwtsk contributors. MIT.
-/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderWeightedCompressions

/-!
# Nonreal resolvents for the weighted Alexander incidence snapshots

Each snapshot carries the Euclidean inner product and has operator domain the
whole finite Hilbert space. The matrix retains the confining diagonal and every
weighted Alexander edge from `weightedFiniteDirac`. Its quadratic form is the
actual Hilbert pairing with this operator. The off-diagonal part is retained as
a generally signed contribution.

The bound follows by taking the imaginary part of the shifted quadratic pairing,
then applying Cauchy–Schwarz. It is uniform in the finite snapshot and applies
also to an empty snapshot. Inclusions can leak along cross-cut edges; the
intertwining formula expresses the exact effect of that leakage on the resolvent.
The construction supplies finite input to an infinite-dimensional approximation.
A common ambient Hilbert space, domain, convergence and arithmetic identification
with zeta remain further obligations.
-/

noncomputable section

open scoped BigOperators InnerProductSpace

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Prime Knot : Type*}

/-- The weighted matrix on a finite labelled source snapshot. -/
def weightedFiniteMatrix (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot)) :
    Matrix (SnapshotVertex F) (SnapshotVertex F) ℂ := by
  classical
  exact Matrix.diagonal (fun i : SnapshotVertex F => ((code i.1 + 1 : ℕ) : ℂ)) +
    Matrix.of (fun i j : SnapshotVertex F => weightedEntry s code i.1 j.1)

theorem weightedFiniteMatrix_isHermitian (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot)) :
    (weightedFiniteMatrix s code F).IsHermitian := by
  classical
  apply Matrix.IsHermitian.ext
  intro i j
  have hreal (u v : Vertex Prime Knot) :
      star (weightedEntry s code u v) = weightedEntry s code u v := by
    simp [weightedEntry]
  change star ((weightedFiniteMatrix s code F) j i) =
    weightedFiniteMatrix s code F i j
  simp only [weightedFiniteMatrix, Matrix.add_apply, Matrix.of_apply, star_add, hreal,
    weightedEntry_symmetric s code j.1 i.1]
  by_cases hij : i = j
  · subst j
    simp
  · simp [hij, Ne.symm hij]

/-- The actual bounded operator on the whole finite Hilbert space. -/
def weightedFiniteDiracCLM (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot)) :
    SnapshotHilbert F →L[ℂ] SnapshotHilbert F := by
  classical
  exact Matrix.toEuclideanCLM (𝕜 := ℂ) (n := SnapshotVertex F) (weightedFiniteMatrix s code F)

@[simp] theorem weightedFiniteDiracCLM_apply (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (x : SnapshotHilbert F) :
    weightedFiniteDiracCLM s code F x = weightedFiniteDirac s code F x := by
  classical
  apply PiLp.ext
  intro i
  change (Matrix.mulVec (weightedFiniteMatrix s code F) (fun j => x j)) i = _
  rw [weightedFiniteMatrix, Matrix.add_mulVec, Pi.add_apply, Matrix.mulVec_diagonal,
    weightedFiniteDirac_apply]
  congr 1
  simp only [Matrix.mulVec, dotProduct]
  rw [← Finset.sum_attach F (fun j => weightedEntry s code i.1 j * snapshotRead F x j)]
  change (∑ j ∈ F.attach, weightedEntry s code i.1 j.1 * x j) = _
  simp

theorem weightedFiniteDiracCLM_isSelfAdjoint (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot)) :
    IsSelfAdjoint (weightedFiniteDiracCLM s code F) := by
  classical
  exact (Matrix.isHermitian_iff_isSelfAdjoint.mp
    (weightedFiniteMatrix_isHermitian s code F)).map
      (Matrix.toEuclideanCLM (𝕜 := ℂ) (n := SnapshotVertex F))

/-- The finite source form is the complex Hilbert pairing with the weighted Dirac. -/
def weightedFiniteQuadraticForm (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (x : SnapshotHilbert F) : ℂ :=
  inner ℂ x (weightedFiniteDiracCLM s code F x)

theorem weightedFiniteQuadraticForm_eq_sum (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (x : SnapshotHilbert F) :
    weightedFiniteQuadraticForm s code F x =
      ∑ i : SnapshotVertex F, star (x i) *
        (((code i.1 + 1 : ℕ) : ℂ) * x i +
          ∑ j ∈ F, weightedEntry s code i.1 j * snapshotRead F x j) := by
  rw [weightedFiniteQuadraticForm, EuclideanSpace.inner_eq_star_dotProduct]
  simp [dotProduct, mul_comm]

private theorem quadratic_im_eq_zero {E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℂ E] [CompleteSpace E] {A : E →L[ℂ] E}
    (hA : IsSelfAdjoint A) (x : E) :
    (inner ℂ x (A x)).im = 0 := by
  have h := ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mp hA x x
  change inner ℂ (A x) x = inner ℂ x (A x) at h
  have hconj := inner_im_symm (𝕜 := ℂ) (A x) x
  change (inner ℂ (A x) x).im = -(inner ℂ x (A x)).im at hconj
  rw [h] at hconj
  linarith

theorem weightedFiniteQuadraticForm_im_eq_zero (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (x : SnapshotHilbert F) :
    (weightedFiniteQuadraticForm s code F x).im = 0 :=
  quadratic_im_eq_zero (weightedFiniteDiracCLM_isSelfAdjoint s code F) x

theorem weightedFiniteDiracCLM_mem_resolventSet (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) (hz : z.im ≠ 0) :
    z ∈ resolventSet ℂ (weightedFiniteDiracCLM s code F) := by
  by_contra h
  have hs : z ∈ spectrum ℂ (weightedFiniteDiracCLM s code F) := h
  exact hz ((weightedFiniteDiracCLM_isSelfAdjoint s code F).im_eq_zero_of_mem_spectrum hs)

/-- At nonreal parameters this is the bounded inverse of the shift `zI - D_F`. -/
def weightedFiniteResolvent (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) : SnapshotHilbert F →L[ℂ] SnapshotHilbert F :=
  resolvent (weightedFiniteDiracCLM s code F) z

theorem weightedFiniteResolvent_apply_inverse (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    weightedFiniteResolvent s code F z (z • x - weightedFiniteDiracCLM s code F x) = x := by
  have h := weightedFiniteDiracCLM_mem_resolventSet s code F z hz
  let A := weightedFiniteDiracCLM s code F
  have heq : resolvent A z * (algebraMap ℂ (SnapshotHilbert F →L[ℂ] SnapshotHilbert F) z -
      A) = 1 := by
    rw [spectrum.resolvent_eq h]
    exact h.val_inv_mul
  exact congrArg (fun T : SnapshotHilbert F →L[ℂ] SnapshotHilbert F => T x) heq

theorem weightedFiniteResolvent_inverse_apply (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    z • weightedFiniteResolvent s code F z x -
      weightedFiniteDiracCLM s code F (weightedFiniteResolvent s code F z x) = x := by
  have h := weightedFiniteDiracCLM_mem_resolventSet s code F z hz
  let A := weightedFiniteDiracCLM s code F
  have heq : (algebraMap ℂ (SnapshotHilbert F →L[ℂ] SnapshotHilbert F) z - A) *
      resolvent A z = 1 := by
    rw [spectrum.resolvent_eq h]
    exact h.mul_val_inv
  exact congrArg (fun T : SnapshotHilbert F →L[ℂ] SnapshotHilbert F => T x) heq

/-- Taking imaginary parts gives a lower bound for the shifted operator. -/
theorem weightedFiniteShift_norm_lower (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) (x : SnapshotHilbert F) :
    |z.im| * ‖x‖ ≤ ‖z • x - weightedFiniteDiracCLM s code F x‖ := by
  by_cases hx : x = 0
  · simp [hx]
  have him : (inner ℂ x (z • x - weightedFiniteDiracCLM s code F x)).im =
      z.im * ‖x‖ ^ 2 := by
    rw [inner_sub_right, inner_smul_right, inner_self_eq_norm_sq_to_K, Complex.sub_im,
      quadratic_im_eq_zero (weightedFiniteDiracCLM_isSelfAdjoint s code F) x, sub_zero]
    simp [pow_two, Complex.mul_im, Complex.mul_re]
  have hbound := (Complex.abs_im_le_norm (inner ℂ x
    (z • x - weightedFiniteDiracCLM s code F x))).trans
    (norm_inner_le_norm x (z • x - weightedFiniteDiracCLM s code F x))
  rw [him, abs_mul, abs_of_nonneg (sq_nonneg ‖x‖), sq] at hbound
  exact (mul_le_mul_iff_right₀ (norm_pos_iff.mpr hx)).mp (by
    simpa only [mul_left_comm] using hbound)

/-- A snapshot-independent operator norm bound for every nonreal parameter. -/
theorem weightedFiniteResolvent_norm_le (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) (hz : z.im ≠ 0) :
    ‖weightedFiniteResolvent s code F z‖ ≤ |z.im|⁻¹ := by
  have hp : 0 < |z.im| := abs_pos.mpr hz
  apply ContinuousLinearMap.opNorm_le_bound _ (inv_nonneg.mpr hp.le)
  intro x
  have h := weightedFiniteShift_norm_lower s code F z
    (weightedFiniteResolvent s code F z x)
  rw [weightedFiniteResolvent_inverse_apply s code F z hz] at h
  rw [inv_mul_eq_div, le_div_iff₀ hp, mul_comm]
  exact h

theorem weightedFiniteResolvent_isCompact (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (z : ℂ) :
    IsCompactOperator (weightedFiniteResolvent s code F z) :=
  isCompactOperator_of_locallyCompactSpace_dom (weightedFiniteResolvent s code F z)

private theorem snapshotExtend_shift {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (z : ℂ) (x y : SnapshotHilbert F) :
    snapshotExtend hFG (z • x - y) =
      z • snapshotExtend hFG x - snapshotExtend hFG y := by
  classical
  apply PiLp.ext
  intro i
  by_cases hi : i.1 ∈ F <;> simp [snapshotRead, hi]

/-- The exact resolvent defect is the larger resolvent applied to the
cross-cut Dirac defect evaluated on the smaller resolvent vector. -/
theorem weightedFiniteResolvent_extend_defect (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    weightedFiniteResolvent s code G z (snapshotExtend hFG x) -
      snapshotExtend hFG (weightedFiniteResolvent s code F z x) =
    weightedFiniteResolvent s code G z
      (weightedFiniteDiracCLM s code G
        (snapshotExtend hFG (weightedFiniteResolvent s code F z x)) -
        snapshotExtend hFG
          (weightedFiniteDiracCLM s code F (weightedFiniteResolvent s code F z x))) := by
  let y := weightedFiniteResolvent s code F z x
  have hF : snapshotExtend hFG x =
      z • snapshotExtend hFG y - snapshotExtend hFG (weightedFiniteDiracCLM s code F y) := by
    rw [← snapshotExtend_shift, weightedFiniteResolvent_inverse_apply s code F z hz]
  change weightedFiniteResolvent s code G z (snapshotExtend hFG x) -
      snapshotExtend hFG y =
    weightedFiniteResolvent s code G z
      (weightedFiniteDiracCLM s code G (snapshotExtend hFG y) -
        snapshotExtend hFG (weightedFiniteDiracCLM s code F y))
  calc
    _ = weightedFiniteResolvent s code G z (snapshotExtend hFG x) -
        weightedFiniteResolvent s code G z
          (z • snapshotExtend hFG y - weightedFiniteDiracCLM s code G (snapshotExtend hFG y)) := by
      rw [weightedFiniteResolvent_apply_inverse s code G z hz]
    _ = _ := by
      rw [← map_sub]
      congr 1
      rw [hF]
      abel

/-- With no cross-cut incidence, extension intertwines the two resolvents. -/
theorem weightedFiniteResolvent_extend_of_no_cut (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G)
    (hcut : ∀ i ∈ G, i ∉ F → ∀ j ∈ F, weightedEntry s code i j = 0)
    (z : ℂ) (hz : z.im ≠ 0) (x : SnapshotHilbert F) :
    weightedFiniteResolvent s code G z (snapshotExtend hFG x) =
      snapshotExtend hFG (weightedFiniteResolvent s code F z x) := by
  classical
  have hDirac (y : SnapshotHilbert F) :
      weightedFiniteDirac s code G (snapshotExtend hFG y) =
      snapshotExtend hFG (weightedFiniteDirac s code F y) := by
    apply PiLp.ext
    intro i
    by_cases hi : i.1 ∈ F
    · let j : SnapshotVertex F := ⟨i.1, hi⟩
      have h := congrArg (fun v : SnapshotHilbert F => v j)
        (weightedFiniteDirac_compress s code hFG y)
      simpa [j, snapshotRead, hi] using h
    · rw [weightedFiniteDirac_leakage_outside s code hFG y i hi, snapshotExtend_apply]
      have hzero : snapshotRead F (weightedFiniteDirac s code F y) i.1 = 0 := by
        simp [snapshotRead, hi]
      rw [hzero]
      exact Finset.sum_eq_zero (fun j hj => by simp [hcut i.1 i.property hi j hj])
  apply sub_eq_zero.mp
  rw [weightedFiniteResolvent_extend_defect s code hFG z hz]
  simp [hDirac]

private theorem sum_dyadic_weights_le_one (S : Finset ℕ) :
    (∑ n ∈ S, ((2 : ℝ)⁻¹) ^ (n + 1)) ≤ 1 := by
  classical
  have geom (N : ℕ) :
      (∑ n ∈ Finset.range N, ((2 : ℝ)⁻¹) ^ (n + 1)) = 1 - ((2 : ℝ)⁻¹) ^ N := by
    induction N with
    | zero => simp
    | succ N ih =>
      rw [Finset.sum_range_succ, ih, pow_succ ((2 : ℝ)⁻¹) N]
      ring
  have hS : S ⊆ Finset.range (S.sup id + 1) := fun _ hn =>
    Finset.mem_range.mpr (Nat.lt_succ_of_le (Finset.le_sup (f := id) hn))
  apply (Finset.sum_le_sum_of_subset_of_nonneg hS (fun n _ _ => by positivity)).trans
  rw [geom]
  exact sub_le_self _ (by positivity)

private theorem weightedEntry_norm_le (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (i j : Vertex Prime Knot) :
    ‖weightedEntry s code i j‖ ≤ (2 : ℝ)⁻¹ * ((2 : ℝ)⁻¹) ^ (code j + 1) := by
  have hedge : ‖(edgeWeight s i j : ℂ)‖ ≤ 1 := by
    classical
    cases i <;> cases j <;> simp [edgeWeight] <;> split_ifs <;> norm_num
  have hbase : ‖(2 : ℂ)‖ = 2 := by norm_num
  have hi : ((2 : ℝ)⁻¹) ^ code i ≤ 1 :=
    pow_le_one₀ (by norm_num) (by norm_num)
  rw [weightedEntry, norm_mul, norm_pow, norm_inv, hbase]
  calc
    _ ≤ ((2 : ℝ)⁻¹) ^ (code i + code j + 2) :=
      mul_le_of_le_one_left (by positivity) hedge
    _ = ((2 : ℝ)⁻¹) ^ code i * ((2 : ℝ)⁻¹ * ((2 : ℝ)⁻¹) ^ (code j + 1)) := by
      rw [show code i + code j + 2 = code i + (1 + (code j + 1)) by omega,
        pow_add, pow_add ((2 : ℝ)⁻¹) 1, pow_one]
    _ ≤ _ := mul_le_of_le_one_left (by positivity) hi

/-- An injective enumeration gives a uniform positive spectral gap.
Gershgorin bounds every eigenvalue by a disc of radius at most one half
about its confining diagonal entry, which is at least one. -/
theorem weightedFiniteDiracCLM_spectrum_re_ge_half (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (hcode : Function.Injective code)
    (F : Finset (Vertex Prime Knot)) {μ : ℂ}
    (hμ : μ ∈ spectrum ℂ (weightedFiniteDiracCLM s code F)) :
    (1 / 2 : ℝ) ≤ μ.re := by
  classical
  let A := weightedFiniteMatrix s code F
  have hspec : spectrum ℂ (weightedFiniteDiracCLM s code F) = spectrum ℂ A :=
    AlgEquiv.spectrum_eq
      (Matrix.toEuclideanCLM (𝕜 := ℂ) (n := SnapshotVertex F)).toAlgEquiv A
  have hA : μ ∈ spectrum ℂ (Matrix.toLin' A) := by
    rwa [Matrix.spectrum_toLin', ← hspec]
  obtain ⟨i, hi⟩ := eigenvalue_mem_ball
    (Module.End.HasEigenvalue.of_mem_spectrum hA)
  let S := Finset.univ.erase i
  let c : SnapshotVertex F → ℕ := fun j => code j.1
  have hc : Function.Injective c := fun _ _ h => Subtype.ext (hcode h)
  have hrow : (∑ j ∈ S, ‖A i j‖) ≤ (2 : ℝ)⁻¹ := calc
    _ ≤ ∑ j ∈ S, (2 : ℝ)⁻¹ * ((2 : ℝ)⁻¹) ^ (c j + 1) := by
      apply Finset.sum_le_sum
      intro j hj
      have hji : j ≠ i := (Finset.mem_erase.mp hj).1
      have hentry : A i j = weightedEntry s code i.1 j.1 := by
        simp [A, weightedFiniteMatrix, Matrix.diagonal_apply_ne _ hji.symm]
      rw [hentry]
      exact weightedEntry_norm_le s code i.1 j.1
    _ = (2 : ℝ)⁻¹ * ∑ n ∈ S.image c, ((2 : ℝ)⁻¹) ^ (n + 1) := by
      rw [Finset.mul_sum, Finset.sum_image (fun _ _ _ _ h => hc h)]
    _ ≤ _ := mul_le_of_le_one_right (by norm_num) (sum_dyadic_weights_le_one _)
  have hdiag : A i i = ((code i.1 + 1 : ℕ) : ℂ) := by
    have hzero : edgeWeight s i.1 i.1 = 0 := by
      cases i.1 <;> simp [edgeWeight]
    simp [A, weightedFiniteMatrix, weightedEntry, hzero]
  have hdist := (mem_closedBall_iff_norm'.mp hi).trans hrow
  have hre := (Complex.re_le_norm (A i i - μ)).trans hdist
  have hpos : (1 : ℝ) ≤ ((code i.1 + 1 : ℕ) : ℝ) := by
    exact_mod_cast Nat.succ_le_succ (Nat.zero_le (code i.1))
  simp only [hdiag, Complex.sub_re, Complex.natCast_re] at hre
  linarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
