/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.Algebra.Exact.Basic
import Mathlib.Tactic

/-!
# Exact maps on homogeneous quotient pieces

The degree pieces are actual submodules of the ring and its ideal quotients.
Multiplication by a homogeneous element and quotient projection produce the
sequence needed for the square-equation length estimate. Homogeneous ideal
membership supplies an actual preimage in the shifted degree. No regularity
of the multiplying element, finite-length assumption, or injectivity of the
first map is imposed.
-/

namespace GRWTSK.CommutativeAlgebra.GradedQuotientExact

variable {O A : Type*} [CommRing O] [CommRing A] [Algebra O A]
variable (𝒜 : ℤ → Submodule O A) [GradedAlgebra 𝒜]

/-- A homogeneous piece as a module over the degree-zero subring. -/
def degreePiece (w : ℤ) : Submodule (𝒜 0) A where
  carrier := 𝒜 w
  zero_mem' := (𝒜 w).zero_mem
  add_mem' := (𝒜 w).add_mem
  smul_mem' b a ha := by
    change (b : A) * a ∈ 𝒜 w
    simpa only [zero_add] using SetLike.GradedMul.mul_mem b.property ha

@[simp] theorem mem_degreePiece (w : ℤ) (a : A) :
    a ∈ degreePiece 𝒜 w ↔ a ∈ 𝒜 w := Iff.rfl

/-- The image of the homogeneous piece in the actual ideal quotient. -/
def quotientPiece (I : Ideal A) (w : ℤ) : Submodule (𝒜 0) (A ⧸ I) :=
  (degreePiece 𝒜 w).map (Ideal.Quotient.mkₐ (𝒜 0) I).toLinearMap

/-- A homogeneous representative gives an element of the quotient piece. -/
def pieceMk (I : Ideal A) (w : ℤ) (a : A) (ha : a ∈ 𝒜 w) :
    quotientPiece 𝒜 I w :=
  ⟨Ideal.Quotient.mk I a, a, ha, rfl⟩

theorem exists_pieceMk (I : Ideal A) (w : ℤ) (x : quotientPiece 𝒜 I w) :
    ∃ (a : A) (ha : a ∈ 𝒜 w), pieceMk 𝒜 I w a ha = x := by
  obtain ⟨a, ha, hax⟩ := x.property
  exact ⟨a, ha, Subtype.ext hax⟩

/-- The natural quotient map, considered over the degree-zero ring. -/
def quotientProjection (I J : Ideal A) (h : I ≤ J) :
    (A ⧸ I) →ₗ[𝒜 0] A ⧸ J :=
  (Submodule.mapQ I J (LinearMap.id : A →ₗ[A] A) h).restrictScalars (𝒜 0)

@[simp] theorem quotientProjection_mk (I J : Ideal A) (h : I ≤ J) (a : A) :
    quotientProjection 𝒜 I J h (Ideal.Quotient.mk I a) = Ideal.Quotient.mk J a := rfl

/-- Quotient projection preserves each homogeneous degree piece. -/
def pieceProjection (I J : Ideal A) (h : I ≤ J) (w : ℤ) :
    quotientPiece 𝒜 I w →ₗ[𝒜 0] quotientPiece 𝒜 J w :=
  (quotientProjection 𝒜 I J h).restrict (by
    rintro _ ⟨a, ha, rfl⟩
    exact ⟨a, ha, rfl⟩)

@[simp] theorem pieceProjection_mk (I J : Ideal A) (h : I ≤ J) (w : ℤ)
    (a : A) (ha : a ∈ 𝒜 w) :
    pieceProjection 𝒜 I J h w (pieceMk 𝒜 I w a ha) = pieceMk 𝒜 J w a ha := rfl

/-- Every homogeneous quotient representative lifts through the projection. -/
theorem pieceProjection_surjective (I J : Ideal A) (h : I ≤ J) (w : ℤ) :
    Function.Surjective (pieceProjection 𝒜 I J h w) := by
  intro x
  obtain ⟨a, ha, rfl⟩ := exists_pieceMk 𝒜 J w x
  exact ⟨pieceMk 𝒜 I w a ha, rfl⟩

/-- Multiplication descends whenever it sends the source ideal into the target. -/
def quotientMul (I J : Ideal A) (t : A) (h : ∀ a ∈ I, t * a ∈ J) :
    (A ⧸ I) →ₗ[𝒜 0] A ⧸ J :=
  (Submodule.mapQ I J (LinearMap.mulLeft A t) h).restrictScalars (𝒜 0)

@[simp] theorem quotientMul_mk (I J : Ideal A) (t : A)
    (h : ∀ a ∈ I, t * a ∈ J) (a : A) :
    quotientMul 𝒜 I J t h (Ideal.Quotient.mk I a) = Ideal.Quotient.mk J (t * a) := rfl

/-- A homogeneous multiplier shifts degree by its actual degree. -/
def pieceMul (I J : Ideal A) (t : A) (h : ∀ a ∈ I, t * a ∈ J)
    (d : ℤ) (ht : t ∈ 𝒜 d) (w : ℤ) :
    quotientPiece 𝒜 I (w - d) →ₗ[𝒜 0] quotientPiece 𝒜 J w :=
  (quotientMul 𝒜 I J t h).restrict (by
    rintro _ ⟨a, ha, rfl⟩
    refine ⟨t * a, ?_, rfl⟩
    change t * a ∈ 𝒜 w
    have hdegree : d + (w - d) = w := by omega
    simpa only [hdegree] using SetLike.GradedMul.mul_mem ht ha)

private theorem mul_mem_square_ideal (J : Ideal A) (t : A) :
    ∀ a ∈ J ⊔ Ideal.span {t}, t * a ∈ J ⊔ Ideal.span {t ^ 2} := by
  change J ⊔ Ideal.span {t} ≤
    Submodule.comap (LinearMap.mulLeft A t) (J ⊔ Ideal.span {t ^ 2})
  apply sup_le
  · intro a ha
    exact Submodule.mem_sup_left (J.mul_mem_left t ha)
  · apply Ideal.span_le.mpr
    intro a ha
    have ha' : a = t := Set.mem_singleton_iff.mp ha
    subst a
    change t * t ∈ J ⊔ Ideal.span {t ^ 2}
    rw [← pow_two]
    exact Submodule.mem_sup_right (Ideal.subset_span (Set.mem_singleton _))

private theorem square_ideal_le (J : Ideal A) (t : A) :
    J ⊔ Ideal.span {t ^ 2} ≤ J ⊔ Ideal.span {t} :=
  sup_le_sup_left (Ideal.span_singleton_le_span_singleton.mpr (dvd_pow_self t two_ne_zero)) J

/-- The multiplication map for the square-equation sequence. -/
def squareMul (J : Ideal A) (d : ℤ) (t : A) (ht : t ∈ 𝒜 d) (w : ℤ) :
    quotientPiece 𝒜 (J ⊔ Ideal.span {t}) (w - d) →ₗ[𝒜 0]
      quotientPiece 𝒜 (J ⊔ Ideal.span {t ^ 2}) w :=
  pieceMul 𝒜 _ _ t (mul_mem_square_ideal J t) d ht w

/-- The projection map for the square-equation sequence. -/
def squareProjection (J : Ideal A) (t : A) (w : ℤ) :
    quotientPiece 𝒜 (J ⊔ Ideal.span {t ^ 2}) w →ₗ[𝒜 0]
      quotientPiece 𝒜 (J ⊔ Ideal.span {t}) w :=
  pieceProjection 𝒜 _ _ (square_ideal_le J t) w

theorem squareProjection_surjective (J : Ideal A) (t : A) (w : ℤ) :
    Function.Surjective (squareProjection 𝒜 J t w) :=
  pieceProjection_surjective 𝒜 _ _ _ w

/-- Taking the correct homogeneous component supplies a shifted preimage. -/
theorem exists_homogeneous_factor (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (t : A) (ht : t ∈ 𝒜 d) (w : ℤ) (a : A) (ha : a ∈ 𝒜 w)
    (hmem : a ∈ J ⊔ Ideal.span {t}) :
    ∃ c : A, c ∈ 𝒜 (w - d) ∧ a - t * c ∈ J := by
  obtain ⟨j, hj, b, hb, hab⟩ := Submodule.mem_sup.mp hmem
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hb
  have hdiff : a - t * c ∈ J := by
    rw [← hab, mul_comm c t, add_sub_cancel_right]
    exact hj
  have hproj := hJ w hdiff
  change GradedRing.proj 𝒜 w (a - t * c) ∈ J at hproj
  rw [map_sub, GradedRing.proj_apply, DirectSum.decompose_of_mem_same 𝒜 ha] at hproj
  have hmul : GradedRing.proj 𝒜 w (t * c) =
      t * (DirectSum.decompose 𝒜 c (w - d) : A) := by
    change (DirectSum.decompose 𝒜 (t * c) w : A) = _
    have hdegree : w = d + (w - d) := by omega
    exact (congrArg
      (fun k : ℤ => (DirectSum.decompose 𝒜 (t * c) k : A)) hdegree).trans
      (DirectSum.coe_decompose_mul_add_of_left_mem 𝒜
        (a := t) (b := c) (i := d) (j := w - d) ht)
  rw [hmul] at hproj
  exact ⟨_, (DirectSum.decompose 𝒜 c (w - d)).property, hproj⟩

/-- The actual shifted multiplication and projection maps form an exact
sequence. Homogeneity is used to construct the preimage, not postulated. -/
theorem square_exact (J : Ideal A) (hJ : J.IsHomogeneous 𝒜)
    (d : ℤ) (t : A) (ht : t ∈ 𝒜 d) (w : ℤ) :
    Function.Exact (squareMul 𝒜 J d t ht w) (squareProjection 𝒜 J t w) := by
  intro y
  obtain ⟨a, ha, rfl⟩ := exists_pieceMk 𝒜 (J ⊔ Ideal.span {t ^ 2}) w y
  constructor
  · intro hz
    have hmem : a ∈ J ⊔ Ideal.span {t} :=
      Ideal.Quotient.eq_zero_iff_mem.mp (congrArg Subtype.val hz)
    obtain ⟨c, hc, hac⟩ := exists_homogeneous_factor 𝒜 J hJ d t ht w a ha hmem
    refine ⟨pieceMk 𝒜 (J ⊔ Ideal.span {t}) (w - d) c hc, Subtype.ext ?_⟩
    change Ideal.Quotient.mk (J ⊔ Ideal.span {t ^ 2}) (t * c) =
      Ideal.Quotient.mk (J ⊔ Ideal.span {t ^ 2}) a
    rw [eq_comm, Ideal.Quotient.eq]
    exact Submodule.mem_sup_left hac
  · rintro ⟨x, hx⟩
    rw [← hx]
    obtain ⟨c, hc, rfl⟩ := exists_pieceMk 𝒜 (J ⊔ Ideal.span {t}) (w - d) x
    apply Subtype.ext
    change Ideal.Quotient.mk (J ⊔ Ideal.span {t}) (t * c) = 0
    exact Ideal.Quotient.eq_zero_iff_mem.mpr
      (Submodule.mem_sup_right (Ideal.mul_mem_right c _ (Ideal.subset_span (Set.mem_singleton t))))

end GRWTSK.CommutativeAlgebra.GradedQuotientExact
