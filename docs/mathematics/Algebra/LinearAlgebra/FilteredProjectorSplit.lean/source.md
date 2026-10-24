# Complete source: GRWTSK.LinearAlgebra.FilteredProjectorSplit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de05b4131c05bb31b1e86b77093cfa5747f9bc83` · SHA-256 `ff703853b59757ef17efb493ee5804d53c1cd59a1e6a583b44641b93bddfc909`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib

/-!
# Filtration splitting by an idempotent projector

This file isolates the finite linear algebra beneath the filtered-Hecke
argument. If an idempotent projector preserves a finite-dimensional filtration
subspace \`F¹\`, then its complementary projector also preserves \`F¹\`, and
the two filtered pieces form a direct-sum decomposition of \`F¹\`.

No Frobenius, weak admissibility, Newton slope, or Hodge comparison theorem is
assumed here.
-/

set_option autoImplicit false

namespace GRWTSK.LinearAlgebra.FilteredProjectorSplit

variable {K D : Type*} [Field K] [AddCommGroup D] [Module K D]
  [FiniteDimensional K D]

/-- A linear idempotent together with one selected filtration subspace that it
preserves. -/
structure FilteredIdempotent where
  p : D →ₗ[K] D
  idempotent : IsIdempotentElem p
  F1 : Submodule K D
  preserves : ∀ x, x ∈ F1 → p x ∈ F1

/-- Complementary projector. -/
def FilteredIdempotent.q (P : FilteredIdempotent (K := K) (D := D)) :
    D →ₗ[K] D :=
  LinearMap.id - P.p

/-- The left filtered summand. -/
def FilteredIdempotent.left (P : FilteredIdempotent (K := K) (D := D)) :
    Submodule K D :=
  P.F1 ⊓ LinearMap.range P.p

/-- The complementary filtered summand. -/
def FilteredIdempotent.right (P : FilteredIdempotent (K := K) (D := D)) :
    Submodule K D :=
  P.F1 ⊓ LinearMap.range P.q

/-- Preservation by \`p\` automatically gives preservation by \`1-p\`. -/
theorem FilteredIdempotent.q_preserves
    (P : FilteredIdempotent (K := K) (D := D))
    {x : D} (hx : x ∈ P.F1) :
    P.q x ∈ P.F1 := by
  simpa [FilteredIdempotent.q] using P.F1.sub_mem hx (P.preserves x hx)

/-- The complementary projector is idempotent. -/
theorem FilteredIdempotent.q_idempotent
    (P : FilteredIdempotent (K := K) (D := D)) :
    IsIdempotentElem P.q := by
  simpa [FilteredIdempotent.q] using P.idempotent.one_sub

/-- The ranges of an idempotent and its complementary projector are
complementary. -/
theorem FilteredIdempotent.range_isCompl
    (P : FilteredIdempotent (K := K) (D := D)) :
    IsCompl (LinearMap.range P.p) (LinearMap.range P.q) := by
  have h := LinearMap.IsIdempotentElem.isCompl P.idempotent
  rw [LinearMap.IsIdempotentElem.ker_eq_range_one_sub P.idempotent] at h
  simpa [FilteredIdempotent.q] using h

/-- The two filtered pieces are disjoint. -/
theorem FilteredIdempotent.left_right_disjoint
    (P : FilteredIdempotent (K := K) (D := D)) :
    Disjoint P.left P.right := by
  exact P.range_isCompl.disjoint.mono inf_le_right inf_le_right

/-- Every filtered vector splits into its projected and complementary pieces. -/
theorem FilteredIdempotent.left_sup_right
    (P : FilteredIdempotent (K := K) (D := D)) :
    P.left ⊔ P.right = P.F1 := by
  apply le_antisymm
  · exact sup_le inf_le_left inf_le_left
  · intro x hx
    have hpF : P.p x ∈ P.F1 := P.preserves x hx
    have hpR : P.p x ∈ LinearMap.range P.p := ⟨x, rfl⟩
    have hqF : P.q x ∈ P.F1 := P.q_preserves hx
    have hqR : P.q x ∈ LinearMap.range P.q := ⟨x, rfl⟩
    have hl : P.p x ∈ P.left := ⟨hpF, hpR⟩
    have hr : P.q x ∈ P.right := ⟨hqF, hqR⟩
    have hl' : P.p x ∈ P.left ⊔ P.right := le_sup_left hl
    have hr' : P.q x ∈ P.left ⊔ P.right := le_sup_right hr
    have hs := (P.left ⊔ P.right).add_mem hl' hr'
    simpa [FilteredIdempotent.q] using hs

/-- Exact Hodge-dimension additivity for the filtration split. -/
theorem FilteredIdempotent.finrank_left_add_right
    (P : FilteredIdempotent (K := K) (D := D)) :
    Module.finrank K P.left + Module.finrank K P.right =
      Module.finrank K P.F1 := by
  have h := Submodule.finrank_sup_add_finrank_inf_eq P.left P.right
  rw [P.left_sup_right, P.left_right_disjoint.eq_bot, finrank_bot, add_zero] at h
  exact h


/-- A filtered idempotent equipped with one linear Frobenius operator and an
exact pointwise commutation law. This is finite linear algebra only; no
semilinearity, isocrystal, or weak-admissibility claim is encoded here. -/
structure FilteredFrobeniusProjector extends FilteredIdempotent (K := K) (D := D) where
  phi : D →ₗ[K] D
  commutes : ∀ x, p (phi x) = phi (p x)

/-- The complementary projector automatically commutes with the same Frobenius
operator. -/
theorem FilteredFrobeniusProjector.q_commutes
    (P : FilteredFrobeniusProjector (K := K) (D := D))
    (x : D) :
    P.toFilteredIdempotent.q (P.phi x) =
      P.phi (P.toFilteredIdempotent.q x) := by
  simp only [FilteredIdempotent.q, LinearMap.sub_apply, LinearMap.id_apply,
    map_sub, P.commutes]

/-- The image of the selected projector is Frobenius-stable. -/
theorem FilteredFrobeniusProjector.phi_mem_range_p
    (P : FilteredFrobeniusProjector (K := K) (D := D))
    {x : D} (hx : x ∈ LinearMap.range P.p) :
    P.phi x ∈ LinearMap.range P.p := by
  rcases hx with ⟨y, rfl⟩
  refine ⟨P.phi y, ?_⟩
  exact (P.commutes y).symm

/-- The image of the complementary projector is Frobenius-stable. -/
theorem FilteredFrobeniusProjector.phi_mem_range_q
    (P : FilteredFrobeniusProjector (K := K) (D := D))
    {x : D} (hx : x ∈ LinearMap.range P.toFilteredIdempotent.q) :
    P.phi x ∈ LinearMap.range P.toFilteredIdempotent.q := by
  rcases hx with ⟨y, rfl⟩
  refine ⟨P.phi y, ?_⟩
  exact (P.q_commutes y).symm

/-- The left filtered summand is Frobenius-stable once the ambient filtration
itself is stable. -/
theorem FilteredFrobeniusProjector.phi_mem_left
    (P : FilteredFrobeniusProjector (K := K) (D := D))
    (filtrationStable : ∀ x, x ∈ P.F1 → P.phi x ∈ P.F1)
    {x : D} (hx : x ∈ P.toFilteredIdempotent.left) :
    P.phi x ∈ P.toFilteredIdempotent.left := by
  exact ⟨filtrationStable x hx.1, P.phi_mem_range_p hx.2⟩

/-- The complementary filtered summand is Frobenius-stable under the same
ambient filtration-stability hypothesis. -/
theorem FilteredFrobeniusProjector.phi_mem_right
    (P : FilteredFrobeniusProjector (K := K) (D := D))
    (filtrationStable : ∀ x, x ∈ P.F1 → P.phi x ∈ P.F1)
    {x : D} (hx : x ∈ P.toFilteredIdempotent.right) :
    P.phi x ∈ P.toFilteredIdempotent.right := by
  exact ⟨filtrationStable x hx.1, P.phi_mem_range_q hx.2⟩

end GRWTSK.LinearAlgebra.FilteredProjectorSplit
```
