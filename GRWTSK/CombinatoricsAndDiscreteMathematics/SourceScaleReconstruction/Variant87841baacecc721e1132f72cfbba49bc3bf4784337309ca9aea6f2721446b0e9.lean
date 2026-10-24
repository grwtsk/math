import FormalResearch.PositiveAtlas.SourceAtlasConsumer
import FormalResearch.MathematicalTooling.Coverage.Ownership

/-!
# Finite source ownership in the actual conic coordinate

The physical state is `A ≥ 1`, and the chart coordinate is exactly `A⁻²`.
Coverage, first ownership, supported mask recovery and the signed terminal
readout use this actual equivalence. The finite fixture has scales `1, 2, 4`
and overlapping blocks `{1, 2}`, `{2, 4}`. Its support counts are preserved
exactly; no continuum cover, native real arithmetic algorithm or byte bound
is asserted.

Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.PositiveAtlas.SourceScaleReconstruction

noncomputable section

open scoped BigOperators
open CertificationSourceScale
open FormalResearch.MathematicalTooling.Coverage

local instance : DecidableEq Scale := Classical.decEq _
local instance : DecidableEq SmallCoordinate := Classical.decEq _

/-- The physical-to-small-to-large path is the directly defined large chart.
This is ordinary equality of equivalences, with no higher coherence claim. -/
theorem actual_chart_cocycle :
    smallScaleEquiv.trans reciprocalEquiv.symm = squareEquiv := by
  apply Equiv.ext
  intro A
  exact reciprocalEquiv.symm_apply_apply (squareEquiv A)

theorem actual_chart_transition_roundtrip :
    (smallScaleEquiv.trans reciprocalEquiv.symm).trans reciprocalEquiv = smallScaleEquiv := by
  rw [actual_chart_cocycle]
  rfl

/-- Actual source-coordinate transport preserves restrictions. -/
theorem chart_restriction (A C : Set Scale) :
    smallScaleEquiv '' (A ∩ C) = smallScaleEquiv '' A ∩ smallScaleEquiv '' C :=
  image_restriction smallScaleEquiv smallScaleEquiv.injective A C

theorem chart_difference (A C : Set Scale) :
    smallScaleEquiv '' (A \ C) = smallScaleEquiv '' A \ smallScaleEquiv '' C :=
  image_difference smallScaleEquiv smallScaleEquiv.injective A C

theorem chart_cover {I : Type*} (A : Set Scale) (C : I → Set Scale)
    (hcover : A ⊆ ⋃ i, C i) :
    smallScaleEquiv '' A ⊆ ⋃ i, smallScaleEquiv '' C i :=
  image_cover smallScaleEquiv A C hcover

theorem chart_reconstruct {I : Type*} (A : Set Scale) (C : I → Set Scale)
    (hcover : A ⊆ ⋃ i, C i) :
    smallScaleEquiv '' A = ⋃ i, smallScaleEquiv '' (A ∩ C i) :=
  equiv_reconstruct_of_cover smallScaleEquiv A C hcover

def chartInventory (A : Finset Scale) : Finset SmallCoordinate := A.image smallScaleEquiv

def chartBlocks {n : ℕ} (C : Fin n → Finset Scale) : Fin n → Finset SmallCoordinate :=
  fun i ↦ chartInventory (C i)

theorem finite_chart_cover {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) :
    ∀ s ∈ chartInventory A, ∃ i, s ∈ chartBlocks C i := by
  intro s hs
  obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hs
  obtain ⟨i, hi⟩ := hcover x hx
  exact ⟨i, Finset.mem_image.mpr ⟨x, hi, rfl⟩⟩

theorem chart_owned {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale) (i : Fin n) :
    chartInventory (ownedPiece A C i) = ownedPiece (chartInventory A) (chartBlocks C) i :=
  image_ownedPiece smallScaleEquiv smallScaleEquiv.injective A C i

theorem chart_owned_disjoint {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (i j : Fin n) (hij : i ≠ j) :
    Disjoint (ownedPiece (chartInventory A) (chartBlocks C) i)
      (ownedPiece (chartInventory A) (chartBlocks C) j) :=
  ownedPiece_disjoint _ _ i j hij

theorem chart_unique_owner {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) (s : SmallCoordinate) (hs : s ∈ chartInventory A) :
    ∃! i, s ∈ ownedPiece (chartInventory A) (chartBlocks C) i :=
  exists_unique_owner _ _ (finite_chart_cover A C hcover) s hs

theorem chart_owned_reconstruct {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) :
    Finset.univ.biUnion (ownedPiece (chartInventory A) (chartBlocks C)) = chartInventory A :=
  ownedPieces_reconstruct _ _ (finite_chart_cover A C hcover)

theorem chart_support_card (C : Finset Scale) : (chartInventory C).card = C.card :=
  Finset.card_image_of_injective C smallScaleEquiv.injective

theorem chart_owned_card {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale) (i : Fin n) :
    (ownedPiece (chartInventory A) (chartBlocks C) i).card = (ownedPiece A C i).card :=
  equiv_ownedPiece_card smallScaleEquiv A C i

theorem chart_owned_mask_recovery {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) :
    decodeReconstructionMasks (chartBlocks C)
      (encodeOwnedMasks (chartInventory A) (chartBlocks C)) = chartInventory A :=
  decode_encodeOwnedMasks _ _ (finite_chart_cover A C hcover)

/-- The compatibility equation is the existing native certificate recovery law. -/
theorem full_terminal_compatible (A : Scale) :
    smallRepresentation.recover .fullTerminal (smallScaleEquiv A) =
      family.observe .fullTerminal A :=
  smallRepresentation.recover_compress .fullTerminal A

/-- Transport the whole signed terminal observable, retaining cancellation. -/
theorem chart_owned_terminal {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (i : Fin n) :
    (∑ s ∈ ownedPiece (chartInventory A) (chartBlocks C) i,
      smallRepresentation.recover .fullTerminal s) =
        ∑ x ∈ ownedPiece A C i, family.observe .fullTerminal x :=
  equiv_ownedPiece_readout smallScaleEquiv A C i _ _ full_terminal_compatible

theorem chart_signed_reassembly {n : ℕ} (A : Finset Scale) (C : Fin n → Finset Scale)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) :
    (∑ x ∈ A, family.observe .fullTerminal x) =
      ∑ i, ∑ s ∈ ownedPiece (chartInventory A) (chartBlocks C) i,
        smallRepresentation.recover .fullTerminal s := by
  rw [sum_ownedPieces A C hcover]
  apply Finset.sum_congr rfl
  intro i _
  exact (chart_owned_terminal A C i).symm

def scaleOne : Scale := ⟨1, le_rfl⟩
def scaleTwo : Scale := ⟨2, by norm_num⟩
def scaleFour : Scale := ⟨4, by norm_num⟩

def fixtureInventory : Finset Scale := {scaleOne, scaleTwo, scaleFour}
def fixtureBlocks : Fin 2 → Finset Scale := ![{scaleOne, scaleTwo}, {scaleTwo, scaleFour}]

theorem fixture_cover : ∀ x ∈ fixtureInventory, ∃ i, x ∈ fixtureBlocks i := by
  intro x hx
  simp only [fixtureInventory, Finset.mem_insert, Finset.mem_singleton] at hx
  rcases hx with rfl | rfl | rfl
  · exact ⟨0, by simp [fixtureBlocks]⟩
  · exact ⟨0, by simp [fixtureBlocks]⟩
  · exact ⟨1, by simp [fixtureBlocks]⟩

theorem fixture_blocks_overlap : scaleTwo ∈ fixtureBlocks 0 ∩ fixtureBlocks 1 := by
  simp [fixtureBlocks]

theorem fixture_coordinates :
    (smallScaleEquiv scaleOne).1 = 1 ∧ (smallScaleEquiv scaleTwo).1 = 1 / 4 ∧
      (smallScaleEquiv scaleFour).1 = 1 / 16 := by
  norm_num [smallScaleEquiv_value, scaleOne, scaleTwo, scaleFour]

theorem fixture_support_cards : fixtureInventory.card = 3 ∧
    ∀ i, (fixtureBlocks i).card = 2 := by
  have h12 : scaleOne ≠ scaleTwo := by
    intro h
    have := congrArg Subtype.val h
    norm_num [scaleOne, scaleTwo] at this
  have h14 : scaleOne ≠ scaleFour := by
    intro h
    have := congrArg Subtype.val h
    norm_num [scaleOne, scaleFour] at this
  have h24 : scaleTwo ≠ scaleFour := by
    intro h
    have := congrArg Subtype.val h
    norm_num [scaleTwo, scaleFour] at this
  constructor
  · simp [fixtureInventory, h12, h14, h24]
  · intro i
    fin_cases i <;> simp [fixtureBlocks, h12, h24]

/-- Both actual chart blocks retain two support slots, including the overlap. -/
theorem fixture_chart_support_cards : (chartInventory fixtureInventory).card = 3 ∧
    ∀ i, (chartBlocks fixtureBlocks i).card = 2 := by
  constructor
  · rw [chart_support_card]
    exact fixture_support_cards.1
  · intro i
    rw [chartBlocks, chart_support_card]
    exact fixture_support_cards.2 i

/-- The fixed source-family mask payload retains the duplicated support slot.
The family metadata and real values are not counted as native bytes here. -/
theorem fixture_mask_slots : maskStorageSlots (chartBlocks fixtureBlocks) = 4 := by
  rw [maskStorageSlots_eq]
  simp_rw [fixture_chart_support_cards.2]
  norm_num

theorem fixture_decoder_visits : maskEntryVisits (chartBlocks fixtureBlocks) = 4 := by
  rw [maskEntryVisits_eq]
  simp_rw [fixture_chart_support_cards.2]
  norm_num

/-- Count all complete fixed-family masks separately from individual fragments. -/
theorem fixture_complete_mask_card :
    Fintype.card (ReconstructionMasks (chartBlocks fixtureBlocks)) = 16 := by
  rw [card_reconstructionMasks]
  simp_rw [fixture_chart_support_cards.2]
  norm_num

theorem fixture_recovery :
    decodeReconstructionMasks (chartBlocks fixtureBlocks)
      (encodeOwnedMasks (chartInventory fixtureInventory) (chartBlocks fixtureBlocks)) =
        chartInventory fixtureInventory :=
  chart_owned_mask_recovery fixtureInventory fixtureBlocks fixture_cover

/-- A source state in both supporting blocks is owned by the first one. -/
theorem fixture_overlap_first_owner :
    smallScaleEquiv scaleTwo ∈
      ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) 0 ∧
    smallScaleEquiv scaleTwo ∉
      ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) 1 := by
  have hx : scaleTwo ∈ ownedPiece fixtureInventory fixtureBlocks 0 := by
    simp [mem_ownedPiece, fixtureInventory, fixtureBlocks]
  have ht : smallScaleEquiv scaleTwo ∈
      ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) 0 := by
    rw [← chart_owned]
    exact Finset.mem_image.mpr ⟨scaleTwo, hx, rfl⟩
  refine ⟨ht, ?_⟩
  intro h1
  exact (Finset.disjoint_left.mp (chart_owned_disjoint fixtureInventory fixtureBlocks 0 1
    (by decide))) ht h1

theorem fixture_signed_terminal_recovery :
    (∑ x ∈ fixtureInventory, family.observe .fullTerminal x) =
      ∑ i, ∑ s ∈ ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) i,
        smallRepresentation.recover .fullTerminal s :=
  chart_signed_reassembly fixtureInventory fixtureBlocks fixture_cover

end
end FormalResearch.PositiveAtlas.SourceScaleReconstruction
