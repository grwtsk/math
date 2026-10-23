import GRWTSK.Algebra.QuarticRootLocus
import GRWTSK.Algebra.QuarticRootPermutation

/-!
# The actual four-root locus and its automorphism permutation

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Set-level zero-locus invariance is upgraded to a unique permutation of
the four root labels, using an injective enumeration. The root multiset
preservation and group-homomorphism bridge are separate pending obligations.
No characteristic, irreducibility, or Galois group restriction is used.
-/

namespace GRWTSK.Algebra.QuarticRootLocusEnumeration

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticRootLocus

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The actual zero locus equals the range of the exact four-root
multiset enumeration, provided the polynomial is nonzero. -/
theorem rootLocus_eq_range_of_enumeration
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) :
    rootLocus p = Set.range e.r := by
  ext x
  have hmap : p.map (algebraMap K L) ≠ 0 :=
    (Polynomial.map_ne_zero_iff (algebraMap K L)).2 hne
  change (p.map (algebraMap K L)).eval x = 0 ↔ ∃ i, e.r i = x
  rw [← Polynomial.IsRoot.def, ← Polynomial.mem_roots hmap, e.roots_eq]
  simp only [Multiset.mem_cons, Multiset.mem_singleton]
  constructor
  · rintro (h | h | h | h)
    · exact ⟨0, h⟩
    · exact ⟨1, h⟩
    · exact ⟨2, h⟩
    · exact ⟨3, h⟩
  · rintro ⟨i, hi⟩
    fin_cases i <;> simp_all

/-- Every K-algebra automorphism permutes the four enumerated roots if
the enumeration is injective; no preservation premise is introduced. -/
theorem exists_unique_root_permutation_of_rootLocus
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    ∃! σ : Equiv.Perm (Fin 4),
      ∀ i, e.r (σ i) = φ (e.r i) := by
  have hrange := rootLocus_eq_range_of_enumeration p e hne
  have hmem (i : Fin 4) : φ (e.r i) ∈ Set.range e.r := by
    rw [← hrange]
    apply (rootLocus_iff p φ (e.r i)).2
    rw [hrange]
    exact ⟨i, rfl⟩
  let f : Fin 4 → Fin 4 := fun i => Classical.choose (hmem i)
  have hf (i : Fin 4) : e.r (f i) = φ (e.r i) :=
    Classical.choose_spec (hmem i)
  have hinj : Function.Injective f := by
    intro i j hij
    apply he
    apply φ.injective
    calc
      φ (e.r i) = e.r (f i) := (hf i).symm
      _ = e.r (f j) := congrArg e.r hij
      _ = φ (e.r j) := hf j
  let σ : Equiv.Perm (Fin 4) := Equiv.ofBijective f
    ⟨hinj, Finite.surjective_of_injective hinj⟩
  refine ⟨σ, hf, ?_⟩
  intro τ hτ
  ext i
  apply he
  exact (hf i).trans (hτ i).symm

end
end GRWTSK.Algebra.QuarticRootLocusEnumeration
