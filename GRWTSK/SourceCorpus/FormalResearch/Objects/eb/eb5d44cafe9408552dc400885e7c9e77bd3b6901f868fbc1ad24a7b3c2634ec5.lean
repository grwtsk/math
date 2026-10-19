import FormalResearch.MathematicalTooling.Coverage.Reconstruction
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Finset.Max
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.BigOperators

/-!
# Ordered ownership and finite restriction codes

An occurrence is assigned to the first covering block. Equal payload values
never identify occurrences: the type `X` is the identity being partitioned.
Only commutative additive readouts may be reassembled by these sum lemmas.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

open scoped BigOperators

variable {X Y M : Type*} [DecidableEq X] {n : ℕ}

/-- Exact target occurrences in block `i` that no earlier block owns. -/
def ownedPiece (A : Finset X) (C : Fin n → Finset X) (i : Fin n) : Finset X :=
  (A ∩ C i).filter fun x ↦ ∀ j : Fin n, j < i → x ∉ C j

@[simp]
theorem mem_ownedPiece (A : Finset X) (C : Fin n → Finset X)
    (i : Fin n) (x : X) :
    x ∈ ownedPiece A C i ↔ x ∈ A ∧ x ∈ C i ∧ ∀ j, j < i → x ∉ C j := by
  simp only [ownedPiece, Finset.mem_filter, Finset.mem_inter, and_assoc]

theorem ownedPiece_subset (A : Finset X) (C : Fin n → Finset X) (i : Fin n) :
    ownedPiece A C i ⊆ A ∩ C i := Finset.filter_subset _ _

@[simp]
theorem ownedPiece_empty (C : Fin n → Finset X) (i : Fin n) :
    ownedPiece ∅ C i = ∅ := by simp [ownedPiece]

omit [DecidableEq X] in
/-- Empty indices cover precisely the empty inventory. -/
theorem empty_index_cover_iff (A : Finset X) (C : Fin 0 → Finset X) :
    (∀ x ∈ A, ∃ i, x ∈ C i) ↔ A = ∅ := by
  constructor
  · intro h
    apply Finset.eq_empty_of_forall_notMem
    intro x hx
    obtain ⟨i, _⟩ := h x hx
    exact Fin.elim0 i
  · rintro rfl
    simp

/-- The executable filter is precisely subtraction of all earlier blocks. -/
theorem ownedPiece_eq_sdiff (A : Finset X) (C : Fin n → Finset X) (i : Fin n) :
    ownedPiece A C i = (A ∩ C i) \
      ((Finset.univ.filter fun j : Fin n ↦ j < i).biUnion C) := by
  ext x
  simp only [mem_ownedPiece, Finset.mem_sdiff, Finset.mem_inter, Finset.mem_biUnion,
    Finset.mem_filter, Finset.mem_univ, true_and, not_exists, not_and, and_assoc]

theorem ownedPiece_disjoint (A : Finset X) (C : Fin n → Finset X)
    (i j : Fin n) (hij : i ≠ j) : Disjoint (ownedPiece A C i) (ownedPiece A C j) := by
  apply Finset.disjoint_left.mpr
  intro x hxi hxj
  obtain ⟨_, hCi, hfirsti⟩ := (mem_ownedPiece A C i x).mp hxi
  obtain ⟨_, hCj, hfirstj⟩ := (mem_ownedPiece A C j x).mp hxj
  rcases lt_or_gt_of_ne hij with hlt | hgt
  · exact hfirstj i hlt hCi
  · exact hfirsti j hgt hCj

/-- Every covered occurrence has a unique owner, which is its least covering index. -/
theorem exists_unique_owner (A : Finset X) (C : Fin n → Finset X)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) (x : X) (hx : x ∈ A) :
    ∃! i, x ∈ ownedPiece A C i := by
  let S := Finset.univ.filter fun i : Fin n ↦ x ∈ C i
  have hS : S.Nonempty := by
    obtain ⟨i, hi⟩ := hcover x hx
    exact ⟨i, by simp [S, hi]⟩
  let i := S.min' hS
  have hi : x ∈ C i := by
    have := S.min'_mem hS
    simpa only [S, Finset.mem_filter, Finset.mem_univ, true_and] using this
  have howned : x ∈ ownedPiece A C i := by
    refine (mem_ownedPiece A C i x).mpr ⟨hx, hi, ?_⟩
    intro j hji hxj
    have hjS : j ∈ S := by simp [S, hxj]
    exact (not_le_of_gt hji) (S.min'_le j hjS)
  refine ⟨i, howned, ?_⟩
  intro j hj
  by_contra hji
  exact (Finset.disjoint_left.mp (ownedPiece_disjoint A C j i hji)) hj howned

theorem ownedPiece_first (A : Finset X) (C : Fin n → Finset X)
    (i : Fin n) (x : X) (hx : x ∈ ownedPiece A C i) :
    x ∈ C i ∧ ∀ j, x ∈ C j → i ≤ j := by
  obtain ⟨_, hi, hfirst⟩ := (mem_ownedPiece A C i x).mp hx
  refine ⟨hi, ?_⟩
  intro j hj
  exact le_of_not_gt (fun hji ↦ hfirst j hji hj)

theorem ownedPieces_reconstruct (A : Finset X) (C : Fin n → Finset X)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) :
    Finset.univ.biUnion (ownedPiece A C) = A := by
  ext x
  constructor
  · intro hx
    obtain ⟨i, _, hi⟩ := Finset.mem_biUnion.mp hx
    exact ((mem_ownedPiece A C i x).mp hi).1
  · intro hx
    obtain ⟨i, hi, _⟩ := exists_unique_owner A C hcover x hx
    exact Finset.mem_biUnion.mpr ⟨i, Finset.mem_univ _, hi⟩

/-- Signed weights and repeated payloads are preserved by exact ownership. -/
theorem sum_ownedPieces [AddCommMonoid M] (A : Finset X) (C : Fin n → Finset X)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) (w : X → M) :
    ∑ x ∈ A, w x = ∑ i, ∑ x ∈ ownedPiece A C i, w x := by
  calc
    _ = ∑ x ∈ Finset.univ.biUnion (ownedPiece A C), w x := by
      rw [ownedPieces_reconstruct A C hcover]
    _ = _ := by
      apply Finset.sum_biUnion
      intro i _ j _ hij
      exact ownedPiece_disjoint A C i j hij

/-- Different ordered covers may change owners, but preserve the total readout. -/
theorem sum_ownedPieces_order_invariant [AddCommMonoid M]
    (A : Finset X) (C D : Fin n → Finset X)
    (hC : ∀ x ∈ A, ∃ i, x ∈ C i) (hD : ∀ x ∈ A, ∃ i, x ∈ D i) (w : X → M) :
    (∑ i, ∑ x ∈ ownedPiece A C i, w x) =
      ∑ i, ∑ x ∈ ownedPiece A D i, w x := by
  rw [← sum_ownedPieces A C hC w, ← sum_ownedPieces A D hD w]

/-- Actual injections preserve the first-owner partition, including differences. -/
theorem image_ownedPiece [DecidableEq Y] (f : X → Y) (hf : Function.Injective f)
    (A : Finset X) (C : Fin n → Finset X) (i : Fin n) :
    (ownedPiece A C i).image f =
      ownedPiece (A.image f) (fun j ↦ (C j).image f) i := by
  simp only [ownedPiece_eq_sdiff, Finset.image_sdiff _ _ hf,
    Finset.image_inter _ _ hf, Finset.biUnion_image]

theorem equiv_ownedPiece_card [DecidableEq Y] (e : X ≃ Y)
    (A : Finset X) (C : Fin n → Finset X) (i : Fin n) :
    (ownedPiece (A.image e) (fun j ↦ (C j).image e) i).card =
      (ownedPiece A C i).card := by
  rw [← image_ownedPiece e e.injective, Finset.card_image_of_injective _ e.injective]

/-- Readout transport consumes the compatibility equation on every occurrence. -/
theorem equiv_ownedPiece_readout [DecidableEq Y] [AddCommMonoid M] (e : X ≃ Y)
    (A : Finset X) (C : Fin n → Finset X) (i : Fin n)
    (wX : X → M) (wY : Y → M) (compat : ∀ x, wY (e x) = wX x) :
    (∑ y ∈ ownedPiece (A.image e) (fun j ↦ (C j).image e) i, wY y) =
      ∑ x ∈ ownedPiece A C i, wX x := by
  rw [← image_ownedPiece e e.injective, Finset.sum_image e.injective.injOn]
  exact Finset.sum_congr rfl fun x _ ↦ compat x

/-- A restriction code has one bit per member of its identified source block. -/
abbrev BlockMask (C : Fin n → Finset X) (i : Fin n) := {x // x ∈ C i} → Bool

/-- Decode by traversing only the identified source block. -/
def decodeMask (C : Fin n → Finset X) (i : Fin n) (mask : BlockMask C i) : Finset X :=
  ((C i).attach.filter fun x ↦ mask x = true).image Subtype.val

theorem decodeMask_subset (C : Fin n → Finset X) (i : Fin n) (mask : BlockMask C i) :
    decodeMask C i mask ⊆ C i := by
  intro x hx
  obtain ⟨y, _, rfl⟩ := Finset.mem_image.mp hx
  exact y.property

/-- Encode a supported restriction without constructing the powerset catalogue. -/
def encodeMask (C : Fin n → Finset X) (i : Fin n) (B : Finset X) : BlockMask C i :=
  fun x ↦ decide (x.val ∈ B)

theorem decode_encodeMask (C : Fin n → Finset X) (i : Fin n)
    (B : Finset X) (hB : B ⊆ C i) : decodeMask C i (encodeMask C i B) = B := by
  ext x
  simp only [decodeMask, encodeMask, Finset.mem_image, Finset.mem_filter,
    Finset.mem_attach, true_and, decide_eq_true_eq]
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact hy
  · intro hx
    exact ⟨⟨x, hB hx⟩, hx, rfl⟩

theorem decode_ownedPiece_mask (A : Finset X) (C : Fin n → Finset X) (i : Fin n) :
    decodeMask C i (encodeMask C i (ownedPiece A C i)) = ownedPiece A C i :=
  decode_encodeMask C i _ (fun _ hx ↦ (Finset.mem_inter.mp (ownedPiece_subset A C i hx)).2)

omit [DecidableEq X] in
/-- Mask dimension is the source-block size; no subset catalogue is stored. -/
theorem blockMask_dimension (C : Fin n → Finset X) (i : Fin n) :
    Fintype.card {x // x ∈ C i} = (C i).card := Fintype.card_coe _

theorem decodeMask_card_le (C : Fin n → Finset X) (i : Fin n) (mask : BlockMask C i) :
    (decodeMask C i mask).card ≤ (C i).card :=
  Finset.card_le_card (decodeMask_subset C i mask)

/-- Complete untyped reconstruction payload for a fixed ordered source family.
Its many masks are different data from one member of the fragment catalogue.
Typing and gluing evidence, when needed, must be supplied by the typed consumer. -/
abbrev ReconstructionMasks (C : Fin n → Finset X) := ∀ i, BlockMask C i

/-- A payload slot identifies both its source block and its member. Source-family
metadata is fixed; this counts Boolean payload coordinates, not native bytes. -/
abbrev MaskSlot (C : Fin n → Finset X) := Σ i, {x // x ∈ C i}

/-- The complete mask payload is exactly one Boolean value per identified slot. -/
def maskSlotPayloadEquiv (C : Fin n → Finset X) :
    ReconstructionMasks C ≃ (MaskSlot C → Bool) where
  toFun code slot := code slot.1 slot.2
  invFun payload i x := payload ⟨i, x⟩
  left_inv _ := rfl
  right_inv payload := by
    funext slot
    cases slot
    rfl

def maskStorageSlots (C : Fin n → Finset X) : ℕ := Fintype.card (MaskSlot C)

omit [DecidableEq X] in
theorem maskStorageSlots_eq (C : Fin n → Finset X) :
    maskStorageSlots C = ∑ i, (C i).card := by
  unfold maskStorageSlots MaskSlot
  rw [Fintype.card_sigma]
  simp_rw [Fintype.card_coe]

/-- Complete mask codes have a separate size from the catalogue of fragments.
This counts all masks, including those that do not encode a disjoint ownership. -/
theorem card_reconstructionMasks (C : Fin n → Finset X) :
    Fintype.card (ReconstructionMasks C) = 2 ^ (∑ i, (C i).card) := by
  rw [Fintype.card_pi]
  simp_rw [BlockMask, Fintype.card_fun, Fintype.card_bool, Fintype.card_coe]
  exact Finset.prod_pow_eq_pow_sum _ _ _

def decodeReconstructionMasks (C : Fin n → Finset X) (code : ReconstructionMasks C) :
    Finset X := Finset.univ.biUnion fun i ↦ decodeMask C i (code i)

def encodeOwnedMasks (A : Finset X) (C : Fin n → Finset X) : ReconstructionMasks C :=
  fun i ↦ encodeMask C i (ownedPiece A C i)

/-- Decoder correctness includes empty inventories, repeated blocks and empty masks. -/
theorem decode_encodeOwnedMasks (A : Finset X) (C : Fin n → Finset X)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) :
    decodeReconstructionMasks C (encodeOwnedMasks A C) = A := by
  unfold decodeReconstructionMasks encodeOwnedMasks
  simp_rw [decode_ownedPiece_mask]
  exact ownedPieces_reconstruct A C hcover

/-- The number of mask entries traversed across all fixed source blocks.
This semantic visit count does not claim a native time or byte-memory bound. -/
def maskEntryVisits (C : Fin n → Finset X) : ℕ := ∑ i, (C i).attach.card

omit [DecidableEq X] in
theorem maskEntryVisits_eq (C : Fin n → Finset X) :
    maskEntryVisits C = ∑ i, (C i).card := by simp [maskEntryVisits]

omit [DecidableEq X] in
theorem maskEntryVisits_le (C : Fin n → Finset X) (b : ℕ)
    (hsize : ∀ i, (C i).card ≤ b) : maskEntryVisits C ≤ n * b := by
  rw [maskEntryVisits_eq]
  calc
    _ ≤ ∑ _i : Fin n, b := Finset.sum_le_sum fun i _ ↦ hsize i
    _ = n * b := by simp

omit [DecidableEq X] in
/-- Fixed-family mask storage and its decoder traversal share the same linear
coordinate bound. No cost for serializing the family metadata is included. -/
theorem maskStorageSlots_le (C : Fin n → Finset X) (b : ℕ)
    (hsize : ∀ i, (C i).card ≤ b) : maskStorageSlots C ≤ n * b := by
  simpa only [maskStorageSlots_eq, maskEntryVisits_eq] using maskEntryVisits_le C b hsize

/-- Catalogue of all individual source-block restrictions; duplicates merge. -/
def fragmentCatalogue {I : Type*} [DecidableEq I] (indices : Finset I)
    (C : I → Finset X) : Finset (Finset X) := indices.biUnion fun i ↦ (C i).powerset

theorem card_fragmentCatalogue_le {I : Type*} [DecidableEq I]
    (indices : Finset I) (C : I → Finset X) :
    (fragmentCatalogue indices C).card ≤ ∑ i ∈ indices, 2 ^ (C i).card := by
  simpa only [fragmentCatalogue, Finset.card_powerset] using
    (Finset.card_biUnion_le (s := indices) (t := fun i ↦ (C i).powerset))

theorem card_fragmentCatalogue_le_uniform {I : Type*} [DecidableEq I]
    (indices : Finset I) (C : I → Finset X) (b : ℕ)
    (hsize : ∀ i ∈ indices, (C i).card ≤ b) :
    (fragmentCatalogue indices C).card ≤ indices.card * 2 ^ b := by
  calc
    _ ≤ ∑ i ∈ indices, 2 ^ (C i).card := card_fragmentCatalogue_le indices C
    _ ≤ ∑ _i ∈ indices, 2 ^ b := Finset.sum_le_sum fun i hi ↦
      Nat.pow_le_pow_right (by decide) (hsize i hi)
    _ = indices.card * 2 ^ b := by simp

end FormalResearch.MathematicalTooling.Coverage
