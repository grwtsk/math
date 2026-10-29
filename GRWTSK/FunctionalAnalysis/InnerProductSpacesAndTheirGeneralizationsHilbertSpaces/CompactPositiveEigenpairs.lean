/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's spectral theorem retains Heather Macbeth's authorship. Symmetric,
orthogonal, compact-operator and finite-dimensional APIs retain their actual
upstream authorship and Apache-2.0 licenses. -/
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.InnerProductSpace.Orthonormal
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Successive positive eigenpairs of an infinite-rank compact real operator

The finite span is an actual span of previously chosen eigenvectors. Its
orthogonal complement is complete, invariant, and carries the actual compact
symmetric restriction. If that restriction were zero, symmetry would put the
whole original range in the finite span. The compact infinite-dimensional
spectral theorem therefore supplies a nonzero eigenvalue of the restriction.
Positivity makes it positive; normalization and subtype inclusion lift it.
Finite frames are extended by snoc, with their old entries unchanged.

This constructs a sequence, not a complete eigenbasis, ordering, simple
spectrum, all-L2 injectivity assumption, or physical Hamiltonian.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]

structure UnitEigenpair (A : E →L[ℝ] E) where
  value : ℝ
  vector : E
  positive : 0 < value
  upper : value ≤ ‖A‖
  unit : ‖vector‖ = 1
  equation : A vector = value • vector

/-- The restriction is constructed on the literal finite-span complement. -/
theorem exists_unitEigenpair_orthogonal (A : E →L[ℝ] E)
    (hc : IsCompactOperator A) (hs : A.toLinearMap.IsSymmetric)
    (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap))
    {n : ℕ} (v : Fin n → E) (λ : Fin n → ℝ)
    (he : ∀ i, A (v i) = λ i • v i) :
    ∃ p : UnitEigenpair A, ∀ i, inner ℝ (v i) p.vector = 0 := by
  let S : Submodule ℝ E := Submodule.span ℝ (Set.range v)
  letI : FiniteDimensional ℝ S := FiniteDimensional.span_of_finite ℝ (Set.finite_range v)
  letI : CompleteSpace S := FiniteDimensional.complete ℝ S
  have hS : S ≤ S.comap A.toLinearMap := by
    apply Submodule.span_le.mpr
    rintro _ ⟨i, rfl⟩
    change A (v i) ∈ S
    rw [he i]
    exact S.smul_mem (λ i) (Submodule.subset_span ⟨i, rfl⟩)
  have hV : ∀ x ∈ Sᗮ, A x ∈ Sᗮ := by
    intro x hx
    apply (Submodule.mem_orthogonal S (A x)).mpr
    intro y hy
    rw [← hs y x]
    exact (Submodule.mem_orthogonal S x).mp hx (A y) (hS hy)
  let R : Sᗮ →L[ℝ] Sᗮ := A.restrict hV
  have hRc : IsCompactOperator R := hc.restrict' hV
  have hRs : R.toLinearMap.IsSymmetric := hs.restrict_invariant hV
  have hR : R ≠ 0 := by
    intro hz
    have hvanish (y : E) (hy : y ∈ Sᗮ) : A y = 0 := by
      exact congrArg Subtype.val (DFunLike.congr_fun hz (⟨y, hy⟩ : Sᗮ))
    have hle : LinearMap.range A.toLinearMap ≤ S := by
      rintro _ ⟨x, rfl⟩
      rw [← Submodule.orthogonal_orthogonal S]
      apply (Submodule.mem_orthogonal Sᗮ (A x)).mpr
      intro y hy
      rw [← hs y x, hvanish y hy, inner_zero_left]
    exact hr (Submodule.finiteDimensional_of_le hle)
  obtain ⟨μ, hμ, hμ0⟩ : ∃ μ : ℝ, Module.End.HasEigenvalue R.toLinearMap μ ∧ μ ≠ 0 := by
    by_contra hn
    apply hR
    apply (ContinuousLinearMap.eq_zero_of_forall_hasEigenvalue_eq_zero hRc hRs).mp
    intro μ hμ
    by_contra hμ0
    exact hn ⟨μ, hμ, hμ0⟩
  have hμn : 0 ≤ μ := eigenvalue_nonneg_of_nonneg hμ (fun x => hp (x : E))
  have hμp : 0 < μ := lt_of_le_of_ne hμn (Ne.symm hμ0)
  obtain ⟨u, hu⟩ := hμ.exists_hasEigenvector
  let y : E := u
  have hy0 : y ≠ 0 := by
    intro hz
    exact hu.2 (Subtype.ext hz)
  have hye : A y = μ • y := congrArg Subtype.val hu.apply_eq_smul
  let e : E := ‖y‖⁻¹ • y
  have hen : ‖e‖ = 1 := by
    simp only [e, norm_smul, norm_inv, norm_norm]
    exact inv_mul_cancel₀ (norm_ne_zero_iff.mpr hy0)
  have hee : A e = μ • e := by
    rw [e, map_smul, hye, smul_smul, smul_smul, mul_comm]
  have hupper : μ ≤ ‖A‖ := by
    have hb := A.le_opNorm e
    simpa only [hee, norm_smul, Real.norm_eq_abs, abs_of_pos hμp, hen, mul_one] using hb
  refine ⟨⟨μ, e, hμp, hupper, hen, hee⟩, fun i => ?_⟩
  have hm : e ∈ Sᗮ := Sᗮ.smul_mem _ u.property
  exact (Submodule.mem_orthogonal S e).mp hm (v i) (Submodule.subset_span ⟨i, rfl⟩)

structure Frame (A : E →L[ℝ] E) (n : ℕ) where
  value : Fin n → ℝ
  vector : Fin n → E
  orthonormal : Orthonormal ℝ vector
  positive : ∀ i, 0 < value i
  upper : ∀ i, value i ≤ ‖A‖
  equation : ∀ i, A (vector i) = value i • vector i

def nextPair (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (hs : A.toLinearMap.IsSymmetric) (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap))
    {n : ℕ} (q : Frame A n) : UnitEigenpair A :=
  Classical.choose (exists_unitEigenpair_orthogonal A hc hs hp hr q.vector q.value q.equation)

theorem nextPair_orthogonal (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (hs : A.toLinearMap.IsSymmetric) (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap))
    {n : ℕ} (q : Frame A n) (i : Fin n) :
    inner ℝ (q.vector i) (nextPair A hc hs hp hr q).vector = 0 :=
  Classical.choose_spec
    (exists_unitEigenpair_orthogonal A hc hs hp hr q.vector q.value q.equation) i

theorem orthonormal_snoc {n : ℕ} {v : Fin n → E} (hv : Orthonormal ℝ v)
    {e : E} (he : ‖e‖ = 1) (ho : ∀ i, inner ℝ (v i) e = 0) :
    Orthonormal ℝ (Fin.snoc v e) := by
  constructor
  · intro i
    refine Fin.lastCases ?_ (fun j => ?_) i
    · simpa using he
    · simpa using hv.norm_eq_one j
  · intro i
    refine Fin.lastCases ?_ (fun i => ?_) i
    · intro j
      refine Fin.lastCases ?_ (fun j => ?_) j
      · intro h; exact (h rfl).elim
      · intro _
        simpa only [Fin.snoc_last, Fin.snoc_castSucc, real_inner_comm e] using ho j
    · intro j
      refine Fin.lastCases ?_ (fun j => ?_) j
      · intro _; simpa using ho i
      · intro hij
        have hne : i ≠ j := fun h => hij (congrArg Fin.castSucc h)
        simpa using hv.inner_eq_zero hne

def extend (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (hs : A.toLinearMap.IsSymmetric) (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap))
    {n : ℕ} (q : Frame A n) : Frame A (n + 1) where
  value := Fin.snoc q.value (nextPair A hc hs hp hr q).value
  vector := Fin.snoc q.vector (nextPair A hc hs hp hr q).vector
  orthonormal := orthonormal_snoc q.orthonormal (nextPair A hc hs hp hr q).unit
    (nextPair_orthogonal A hc hs hp hr q)
  positive i := Fin.lastCases (by simpa using (nextPair A hc hs hp hr q).positive)
    (fun j => by simpa using q.positive j) i
  upper i := Fin.lastCases (by simpa using (nextPair A hc hs hp hr q).upper)
    (fun j => by simpa using q.upper j) i
  equation i := Fin.lastCases (by simpa using (nextPair A hc hs hp hr q).equation)
    (fun j => by simpa using q.equation j) i

def frames (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (hs : A.toLinearMap.IsSymmetric) (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap)) : (n : ℕ) → Frame A n
  | 0 => ⟨Fin.elim0, Fin.elim0, Orthonormal.of_isEmpty _, Fin.elim0, Fin.elim0, Fin.elim0⟩
  | n + 1 => extend A hc hs hp hr (frames A hc hs hp hr n)

def eigenvector (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (hs : A.toLinearMap.IsSymmetric) (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap)) (n : ℕ) : E :=
  (frames A hc hs hp hr (n + 1)).vector (Fin.last n)

def eigenvalue (A : E →L[ℝ] E) (hc : IsCompactOperator A)
    (hs : A.toLinearMap.IsSymmetric) (hp : ∀ x, 0 ≤ inner ℝ x (A x))
    (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap)) (n : ℕ) : ℝ :=
  (frames A hc hs hp hr (n + 1)).value (Fin.last n)

variable (A : E →L[ℝ] E) (hc : IsCompactOperator A) (hs : A.toLinearMap.IsSymmetric)
  (hp : ∀ x, 0 ≤ inner ℝ x (A x))
  (hr : ¬ FiniteDimensional ℝ (LinearMap.range A.toLinearMap))

theorem frame_entry (n : ℕ) (i : Fin n) :
    (frames A hc hs hp hr n).vector i = eigenvector A hc hs hp hr i.val := by
  induction n generalizing i with
  | zero => exact Fin.elim0 i
  | succ n ih =>
    refine Fin.lastCases ?_ (fun j => ?_) i
    · rfl
    · simpa only [frames, extend, Fin.snoc_castSucc, Fin.val_castSucc] using ih j

theorem eigenvector_orthonormal : Orthonormal ℝ (eigenvector A hc hs hp hr) := by
  apply orthonormal_iff_ite.mpr
  intro i j
  let n := max i j + 1
  let i' : Fin n := ⟨i, by dsimp [n]; omega⟩
  let j' : Fin n := ⟨j, by dsimp [n]; omega⟩
  have hh := orthonormal_iff_ite.mp (frames A hc hs hp hr n).orthonormal i' j'
  simp only [frame_entry A hc hs hp hr] at hh
  simpa only [i', j', Fin.mk.injEq] using hh

theorem eigenvalue_positive (n : ℕ) : 0 < eigenvalue A hc hs hp hr n :=
  (frames A hc hs hp hr (n + 1)).positive (Fin.last n)

theorem eigenvalue_le_norm (n : ℕ) : eigenvalue A hc hs hp hr n ≤ ‖A‖ :=
  (frames A hc hs hp hr (n + 1)).upper (Fin.last n)

theorem eigenvector_equation (n : ℕ) :
    A (eigenvector A hc hs hp hr n) =
      eigenvalue A hc hs hp hr n • eigenvector A hc hs hp hr n :=
  (frames A hc hs hp hr (n + 1)).equation (Fin.last n)

end GRWTSK.FunctionalAnalysis.CompactPositiveEigenpairs
