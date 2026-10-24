# Complete source: GRWTSK.Algebra.QuarticStabilizerOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94b33d8da1089a10d446e9c232f0298709b5fb0f` · SHA-256 `6edbe5fbe200b4f5fde90dff3c7a2c3c01b36a579ea738dbc7b1cfef03cd67a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticSplittingFaithfulness
import GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence

/-!
# Cardinality of the quartic adjacency stabilizer

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Only the intersection of the ACTUAL automorphism-image subgroup of S4
with the Klein four kernel occurs. No surjectivity onto S4 is assumed.
The cardinality equality is transported along the injective root-action
homomorphism, subject to exact splitting-field assumptions.
-/

namespace GRWTSK.Algebra.QuarticStabilizerOrder

open Polynomial
open GRWTSK.Algebra.QuarticMatchingAction
open GRWTSK.Algebra.QuarticGaloisMatching
open GRWTSK.Algebra.QuarticAdjacencyStabilizer
open GRWTSK.Algebra.QuarticRootFaithfulness
open GRWTSK.Algebra.QuarticSplittingFaithfulness
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The actual image of the root-permutation homomorphism. -/
def rootActionImage (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    Subgroup (Equiv.Perm (Fin 4)) :=
  (actualRootPermutationHom p e hne he).range

/-- The three-matching kernel is a genuine subgroup of S4. -/
def matchingKernel : Subgroup (Equiv.Perm (Fin 4)) :=
  MonoidHom.ker matchingActionHom

/-- The image intersection, not all four elements of V4. -/
def rootImageKleinIntersection (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    Subgroup (Equiv.Perm (Fin 4)) :=
  rootActionImage p e hne he ⊓ matchingKernel

/-- The stabilizer maps into the actual image intersection. -/
def stabilizerToImageIntersection (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    adjacencyStabilizer p e →
      rootImageKleinIntersection p e hne he :=
  fun φ => ⟨actualRootPerm p e hne he φ.1, by
    constructor
    · exact ⟨φ.1, rfl⟩
    · change matchingActionHom (actualRootPerm p e hne he φ.1) = 1
      exact (automorphism_matching_kernel_iff p e hne he φ.1).mp φ.2⟩

/-- Under root generation the stabilizer map is injective. -/
theorem stabilizerToImageIntersection_injective (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (hgen : RootsGenerate p e) :
    Function.Injective (stabilizerToImageIntersection p e hne he) := by
  intro φ ψ h
  apply Subtype.ext
  apply actualRootPermutationHom_injective_of_generates p e hne he hgen
  exact congrArg Subtype.val h

/-- Every element of the image intersection comes from the stabilizer. -/
theorem stabilizerToImageIntersection_surjective (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    Function.Surjective (stabilizerToImageIntersection p e hne he) := by
  rintro ⟨σ, hσ⟩
  obtain ⟨φ, hφ⟩ := hσ.1
  have hker : φ ∈ adjacencyStabilizer p e := by
    apply (automorphism_matching_kernel_iff p e hne he φ).2
    change matchingActionHom (actualRootPerm p e hne he φ) = 1
    rw [hφ]
    exact hσ.2
  refine ⟨⟨φ, hker⟩, ?_⟩
  apply Subtype.ext
  exact hφ

/-- The stabilizer cardinality equals that of the actual image
intersection, assuming generation by four roots. -/
theorem card_stabilizer_eq_card_image_intersection (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (hgen : RootsGenerate p e) :
    Nat.card (adjacencyStabilizer p e) =
      Nat.card (rootImageKleinIntersection p e hne he) := by
  exact Nat.card_congr (Equiv.ofBijective
    (stabilizerToImageIntersection p e hne he)
    ⟨stabilizerToImageIntersection_injective p e hne he hgen,
     stabilizerToImageIntersection_surjective p e hne he⟩)

end
end GRWTSK.Algebra.QuarticStabilizerOrder
```
