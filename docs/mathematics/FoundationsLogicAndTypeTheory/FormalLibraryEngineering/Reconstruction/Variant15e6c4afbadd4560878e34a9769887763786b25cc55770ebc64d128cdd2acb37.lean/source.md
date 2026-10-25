# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reconstruction.Variant15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aa0b45c40aa5006d91bb7058aec5aedebb6bf6e` · SHA-256 `15e6c4afbadd4560878e34a9769887763786b25cc55770ebc64d128cdd2acb37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Set.Function
import Mathlib.Data.Set.Lattice

/-!
# Exact reconstruction from a supplied cover

These elementary results consume a cover. They do not produce a revised-GCH
covering family. The index type is retained verbatim, including empty indices
and repeated blocks; reconstruction does not require disjointness.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

universe u v w

variable {X : Type u} {Y : Type v} {I : Type w}

/-- All subsets of individual source blocks. -/
def downwardClosure (blocks : Set (Set X)) : Set (Set X) :=
  {B | ∃ C ∈ blocks, B ⊆ C}

@[simp]
theorem mem_downwardClosure (blocks : Set (Set X)) (B : Set X) :
    B ∈ downwardClosure blocks ↔ ∃ C ∈ blocks, B ⊆ C := Iff.rfl

/-- A target restriction is contained in its original source block. -/
theorem restriction_subset_block (A : Set X) (C : I → Set X) (i : I) :
    A ∩ C i ⊆ C i := Set.inter_subset_right

theorem restriction_mem_downwardClosure (blocks : Set (Set X))
    (A : Set X) (C : I → Set X) (hC : ∀ i, C i ∈ blocks) (i : I) :
    A ∩ C i ∈ downwardClosure blocks :=
  ⟨C i, hC i, restriction_subset_block A C i⟩

/-- Exact recovery retains the same index type as the covering witness. -/
theorem reconstruct_of_cover (A : Set X) (C : I → Set X)
    (hcover : A ⊆ ⋃ i, C i) : A = ⋃ i, A ∩ C i := by
  ext x
  constructor
  · intro hx
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp (hcover hx)
    exact Set.mem_iUnion.mpr ⟨i, hx, hi⟩
  · intro hx
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx
    exact hi.1

theorem mem_reconstruction_iff (A : Set X) (C : I → Set X)
    (hcover : A ⊆ ⋃ i, C i) (x : X) :
    x ∈ A ↔ ∃ i, x ∈ A ∩ C i := by
  constructor
  · intro hx
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp (hcover hx)
    exact ⟨i, hx, hi⟩
  · rintro ⟨i, hx, _⟩
    exact hx

/-- Downward closure admits smaller restrictions, even for equal-sized blocks. -/
theorem empty_mem_downwardClosure (blocks : Set (Set X)) (h : blocks.Nonempty) :
    ∅ ∈ downwardClosure blocks := by
  obtain ⟨C, hC⟩ := h
  exact ⟨C, hC, Set.empty_subset C⟩

/-- Image transport uses an actual injection for exact intersections. -/
theorem image_restriction (f : X → Y) (hf : Function.Injective f)
    (A C : Set X) : f '' (A ∩ C) = f '' A ∩ f '' C :=
  Set.image_inter hf

theorem image_difference (f : X → Y) (hf : Function.Injective f)
    (A C : Set X) : f '' (A \ C) = f '' A \ f '' C := by
  ext y
  constructor
  · rintro ⟨x, ⟨hx, hnot⟩, rfl⟩
    refine ⟨⟨x, hx, rfl⟩, ?_⟩
    rintro ⟨z, hz, heq⟩
    exact hnot (hf heq ▸ hz)
  · rintro ⟨⟨x, hx, rfl⟩, hnot⟩
    exact ⟨x, ⟨hx, fun hxC ↦ hnot ⟨x, hxC, rfl⟩⟩, rfl⟩

theorem image_cover (f : X → Y) (A : Set X) (C : I → Set X)
    (hcover : A ⊆ ⋃ i, C i) : f '' A ⊆ ⋃ i, f '' C i := by
  rintro y ⟨x, hx, rfl⟩
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp (hcover hx)
  exact Set.mem_iUnion.mpr ⟨i, x, hi, rfl⟩

/-- Transported exact reconstruction, with no change to the covering indices. -/
theorem equiv_reconstruct_of_cover (e : X ≃ Y) (A : Set X) (C : I → Set X)
    (hcover : A ⊆ ⋃ i, C i) : e '' A = ⋃ i, e '' (A ∩ C i) := by
  rw [reconstruct_of_cover (e '' A) (fun i ↦ e '' C i) (image_cover e A C hcover)]
  simp_rw [image_restriction e e.injective]

end FormalResearch.MathematicalTooling.Coverage
```
