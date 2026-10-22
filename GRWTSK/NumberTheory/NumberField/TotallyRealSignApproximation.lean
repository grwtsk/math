/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Source pattern reviewed from openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DukePrimeDegree/Geometry/EmbeddingMatrix.lean (Apache-2.0),
together with Mathlib density of rational points in finite real products.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex
import Mathlib.RingTheory.Discriminant
import Mathlib.Topology.Instances.Rat

/-!
# Totally real sign approximation from the embedding matrix

For a totally real number field K, an ordering of the n real embeddings and a
rational basis give an invertible real embedding matrix. Rational coordinate
vectors are dense in R^n; transporting this density through the embedding
matrix proves density of the diagonal field embedding. As a finite
weak-approximation corollary, every prescribed +/- sign orthant contains an
element of K.

This is exactly the finite archimedean sign-selection mechanism needed by the
CM polarization bridge. No Hodge theory is used here.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.TotallyRealSignApproximation

open Matrix

noncomputable section

variable {K : Type*} [Field K] [NumberField K] [NumberField.IsTotallyReal K]
  {n : ℕ}

/-- An ordering of all complex embeddings; total reality lets us read them as
real embeddings. -/
abbrev EmbeddingOrder (K : Type*) [Field K] [NumberField K] (n : ℕ) :=
  Fin n ≃ (K →ₐ[ℚ] ℂ)

/-- Real embedding at one selected coordinate. -/
noncomputable def orderedRealEmbedding
    (σ : EmbeddingOrder K n) (j : Fin n) : K →+* ℝ :=
  (NumberField.IsTotallyReal.complexEmbedding_isReal (σ j).toRingHom).embedding

@[simp]
theorem orderedRealEmbedding_complex
    (σ : EmbeddingOrder K n) (j : Fin n) (x : K) :
    (orderedRealEmbedding σ j x : ℂ) = σ j x :=
  NumberField.ComplexEmbedding.IsReal.coe_embedding_apply _ _

/-- Rows are rational basis vectors and columns are ordered real embeddings. -/
noncomputable def realEmbeddingMatrix
    (b : Fin n → K) (σ : EmbeddingOrder K n) :
    Matrix (Fin n) (Fin n) ℝ :=
  fun i j => orderedRealEmbedding σ j (b i)

theorem realEmbeddingMatrix_complex
    (b : Fin n → K) (σ : EmbeddingOrder K n) :
    (realEmbeddingMatrix b σ).map Complex.ofRealHom =
      Algebra.embeddingsMatrixReindex ℚ ℂ b σ := by
  ext i j
  simp [realEmbeddingMatrix, Algebra.embeddingsMatrixReindex,
    Algebra.embeddingsMatrix]

/-- Discriminant nonvanishing makes the real embedding matrix invertible. -/
theorem det_realEmbeddingMatrix_ne_zero
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n) :
    (realEmbeddingMatrix (fun i => b i) σ).det ≠ 0 := by
  have hdisc : (algebraMap ℚ ℂ) (Algebra.discr ℚ b) ≠ 0 := by
    intro h
    apply Algebra.discr_not_zero_of_basis ℚ b
    apply (algebraMap ℚ ℂ).injective
    simpa only [map_zero] using h
  have heq := Algebra.discr_eq_det_embeddingsMatrixReindex_pow_two ℚ ℂ b σ
  have hdet : (Algebra.embeddingsMatrixReindex ℚ ℂ b σ).det ≠ 0 := by
    intro h
    apply hdisc
    rw [heq, h, zero_pow (by decide : (2 : ℕ) ≠ 0)]
  intro hreal
  apply hdet
  rw [← realEmbeddingMatrix_complex (fun i => b i) σ]
  change (Complex.ofRealHom.mapMatrix
      (realEmbeddingMatrix (fun i => b i) σ)).det = 0
  rw [← RingHom.map_det, hreal, map_zero]

/-- The diagonal real embedding. -/
def realEmbeddingVector
    (σ : EmbeddingOrder K n) (x : K) : Fin n → ℝ :=
  fun j => orderedRealEmbedding σ j x

/-- The transpose embedding matrix is a real continuous linear equivalence. -/
noncomputable def embeddingMatrixEquiv
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n) :
    (Fin n → ℝ) ≃L[ℝ] (Fin n → ℝ) := by
  let A : Matrix (Fin n) (Fin n) ℝ :=
    (realEmbeddingMatrix (fun i => b i) σ)ᵀ
  have hdet : A.det ≠ 0 := by
    simpa [A, Matrix.det_transpose] using
      det_realEmbeddingMatrix_ne_zero b σ
  have hunit : IsUnit A :=
    (Matrix.isUnit_iff_isUnit_det _).mpr
      (isUnit_iff_ne_zero.mpr hdet)
  exact (LinearEquiv.ofBijective (Matrix.toLin' A)
    ⟨Matrix.mulVec_injective_iff_isUnit.mpr hunit,
      Matrix.mulVec_surjective_iff_isUnit.mpr hunit⟩).toContinuousLinearEquiv

/-- Rational basis coordinates transported by the embedding matrix are exactly
the diagonal real embeddings of the corresponding field element. -/
theorem embeddingMatrixEquiv_rationalCoordinates
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n)
    (q : Fin n → ℚ) :
    embeddingMatrixEquiv b σ (fun i => (q i : ℝ)) =
      realEmbeddingVector σ (b.equivFun.symm q) := by
  funext j
  change
    ∑ i, orderedRealEmbedding σ j (b i) * (q i : ℝ) =
      orderedRealEmbedding σ j (b.equivFun.symm q)
  rw [Module.Basis.equivFun_symm_apply, map_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp [map_smul, Rat.smul_def, mul_comm]

/-- The diagonal embedding of a totally real number field is dense in its
finite real embedding space. This is finite archimedean weak approximation. -/
theorem realEmbeddingVector_denseRange
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n) :
    DenseRange (realEmbeddingVector σ) := by
  have hrat : DenseRange (fun q : Fin n → ℚ => fun i => (q i : ℝ)) :=
    DenseRange.piMap (fun _ : Fin n => Rat.denseRange_cast)
  let e := embeddingMatrixEquiv b σ
  have hcoord : DenseRange
      (fun q : Fin n → ℚ => e (fun i => (q i : ℝ))) :=
    e.surjective.denseRange.comp hrat e.continuous
  have hcoord' : DenseRange
      (fun q : Fin n → ℚ =>
        realEmbeddingVector σ (b.equivFun.symm q)) := by
    simpa [e, embeddingMatrixEquiv_rationalCoordinates] using hcoord
  apply hcoord'.mono
  rintro y ⟨q, rfl⟩
  exact ⟨b.equivFun.symm q, rfl⟩

/-- A canonical enumeration of all embeddings, used only to package the
existence theorem. No mathematical conclusion depends on the chosen ordering. -/
noncomputable def canonicalEmbeddingOrder :
    EmbeddingOrder K (Module.finrank ℚ K) := by
  letI : Algebra.IsAlgebraic ℚ K := NumberField.isAlgebraic K
  letI : Algebra.IsSeparable ℚ K :=
    Algebra.IsAlgebraic.isSeparable_of_perfectField
  exact (Fintype.equivFinOfCardEq (by rw [AlgHom.card])).symm

/-- Canonical diagonal real embedding using the finite-basis cardinality. -/
def canonicalRealEmbeddingVector (x : K) :
    Fin (Module.finrank ℚ K) → ℝ :=
  realEmbeddingVector (canonicalEmbeddingOrder (K := K)) x

/-- Canonical diagonal embedding is dense. -/
theorem canonicalRealEmbeddingVector_denseRange :
    DenseRange (canonicalRealEmbeddingVector (K := K)) := by
  simpa [canonicalRealEmbeddingVector] using
    realEmbeddingVector_denseRange
      (Module.finBasis ℚ K) (canonicalEmbeddingOrder (K := K))
/-- A finite sign pattern. -/
structure SignPattern (n : ℕ) where
  value : Fin n → ℤ
  isSign : ∀ i, value i = 1 ∨ value i = -1

/-- A real embedding vector realizes a sign pattern. -/
def RealizesSigns (s : SignPattern n) (z : Fin n → ℝ) : Prop :=
  ∀ i,
    (s.value i = 1 → 0 < z i) ∧
    (s.value i = -1 → z i < 0)

/-- Every prescribed finite sign pattern occurs on a totally real field
element. The proof approximates the +/-1 target vector within 1/2. -/
theorem exists_realEmbeddingVector_realizesSigns
    (b : Module.Basis (Fin n) ℚ K)
    (σ : EmbeddingOrder K n)
    (s : SignPattern n) :
    ∃ x : K, RealizesSigns s (realEmbeddingVector σ x) := by
  have hd := realEmbeddingVector_denseRange b σ
  obtain ⟨x, hx⟩ := hd.exists_dist_lt
    (fun i => (s.value i : ℝ)) (by norm_num : (0 : ℝ) < 1 / 2)
  refine ⟨x, ?_⟩
  intro i
  have hi :
      dist (realEmbeddingVector σ x i) (s.value i : ℝ) < (1 / 2 : ℝ) :=
    (dist_le_pi_dist (realEmbeddingVector σ x)
      (fun i => (s.value i : ℝ)) i).trans_lt hx
  rw [Real.dist_eq] at hi
  constructor
  · intro hs
    rw [hs] at hi
    norm_num at hi ⊢
    linarith [(abs_lt.mp hi).1]
  · intro hs
    rw [hs] at hi
    norm_num at hi ⊢
    linarith [(abs_lt.mp hi).2]

/-- Parameter-free finite weak approximation for a totally real number field. -/
theorem exists_canonicalRealEmbeddingVector_realizesSigns
    (s : SignPattern (Module.finrank ℚ K)) :
    ∃ x : K, RealizesSigns s (canonicalRealEmbeddingVector (K := K) x) := by
  simpa [canonicalRealEmbeddingVector] using
    exists_realEmbeddingVector_realizesSigns
      (Module.finBasis ℚ K) (canonicalEmbeddingOrder (K := K)) s
/-- Any sign-realizing element is nonzero as soon as there is at least one
embedding coordinate. -/
theorem ne_zero_of_realizesSigns
    [Nonempty (Fin n)]
    (σ : EmbeddingOrder K n)
    (s : SignPattern n)
    {x : K}
    (hx : RealizesSigns s (realEmbeddingVector σ x)) :
    x ≠ 0 := by
  intro hzero
  subst x
  let i : Fin n := Classical.choice (inferInstance : Nonempty (Fin n))
  rcases s.isSign i with hi | hi
  · exact (lt_irrefl (0 : ℝ)) (by simpa [hi] using (hx i).1 hi)
  · exact (lt_irrefl (0 : ℝ)) (by simpa [hi] using (hx i).2 hi)

end

end GRWTSK.NumberTheory.TotallyRealSignApproximation
