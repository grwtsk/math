# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OwnershipReconstruction.Variant9863157a40bcefa83f58ccf87718831c4117d55b7cdbb4bdd846d28946c6762f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d35d062ca0f462cc59ca47c13dcfe0747867d8ea` · SHA-256 `844ccd62bd4f1b608fba83fe7a55d06d47cdf9481bda70b9c0e9dded29e9436d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourcePosition.Variantf324533a9f22948ae54bd96d1ab4deb92e23ffd759d1c15bf053c367ca016c00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f324533a9f22948ae54bd96d1ab4deb92e23ffd759d1c15bf053c367ca016c00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourcePosition.Variantf324533a9f22948ae54bd96d1ab4deb92e23ffd759d1c15bf053c367ca016c00","mathematical_subject":"Computation.DataStructures","original_sha256":"f324533a9f22948ae54bd96d1ab4deb92e23ffd759d1c15bf053c367ca016c00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/OwnershipReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.Ownership
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.List.OfFn

/-!
# Exact ownership of the actual finite model inventory

Positions index the immutable snapshot's ordered occurrence list. A readout
receives the complete source scope, source position and occurrence record.
This retains equal-valued occurrences separately and supplies stable ordered
reassembly for folds that cannot commute. It does not restrict a typed context.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourcePosition.Variantf324533a9f22948ae54bd96d1ab4deb92e23ffd759d1c15bf053c367ca016c00

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

open scoped BigOperators
open FormalResearch.MathematicalTooling.Coverage

/-- Source positions, independent of the payload's equality or symbol spelling. -/
abbrev SourcePosition (snapshot : Snapshot) := Fin snapshot.occurrences.length

/-- Complete native occurrence record at an actual source position. -/
def occurrenceAt (snapshot : Snapshot) (position : SourcePosition snapshot) : Occurrence :=
  snapshot.occurrences.get position

/-- The positional sum is the actual list readout with every occurrence retained. -/
theorem source_list_readout_eq {M : Type*} [AddCommMonoid M]
    (snapshot : Snapshot) (weight : Occurrence → M) :
    (snapshot.occurrences.map weight).sum =
      ∑ p : SourcePosition snapshot, weight (occurrenceAt snapshot p) := by
  rw [← List.ofFn_getElem_eq_map snapshot.occurrences weight, Fin.sum_ofFn]
  simp only [occurrenceAt, List.get_eq_getElem]

/-- Each actual inventory occurrence has exactly one first owner. -/
theorem source_position_unique_owner (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot))
    (cover : ∀ p, ∃ i, p ∈ blocks i) (position : SourcePosition snapshot) :
    ∃! i, position ∈ ownedPiece Finset.univ blocks i :=
  exists_unique_owner Finset.univ blocks (fun p _ ↦ cover p) position (Finset.mem_univ _)

theorem source_masks_reconstruct (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot)) (cover : ∀ p, ∃ i, p ∈ blocks i) :
    decodeReconstructionMasks blocks (encodeOwnedMasks Finset.univ blocks) = Finset.univ :=
  decode_encodeOwnedMasks Finset.univ blocks (fun p _ ↦ cover p)

/-- Exact source-bound additive readout, including signed weights. -/
theorem source_readout_reassembly {M : Type*} [AddCommMonoid M]
    (snapshot : Snapshot) {n : ℕ} (blocks : Fin n → Finset (SourcePosition snapshot))
    (cover : ∀ p, ∃ i, p ∈ blocks i) (weight : SourceScope → ℕ → Occurrence → M) :
    (∑ p, weight snapshot.source p.val (occurrenceAt snapshot p)) =
      ∑ i, ∑ p ∈ ownedPiece Finset.univ blocks i,
        weight snapshot.source p.val (occurrenceAt snapshot p) :=
  sum_ownedPieces Finset.univ blocks (fun p _ ↦ cover p) _

/-- Stable interleaving selects covered positions in their original source order. -/
def stablePositions (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot)) : List (SourcePosition snapshot) :=
  (List.finRange snapshot.occurrences.length).filter fun p ↦
    decide (∃ i, p ∈ ownedPiece Finset.univ blocks i)

theorem stablePositions_eq (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot)) (cover : ∀ p, ∃ i, p ∈ blocks i) :
    stablePositions snapshot blocks = List.finRange snapshot.occurrences.length := by
  apply List.filter_eq_self.mpr
  intro p _
  obtain ⟨i, hi, _⟩ := source_position_unique_owner snapshot blocks cover p
  exact decide_eq_true ⟨i, hi⟩

/-- Order-restoring decoder; arbitrary block concatenation is not justified. -/
def stableReassemble (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot)) : List Occurrence :=
  (stablePositions snapshot blocks).map (occurrenceAt snapshot)

theorem stableReassemble_eq (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot)) (cover : ∀ p, ∃ i, p ∈ blocks i) :
    stableReassemble snapshot blocks = snapshot.occurrences := by
  rw [stableReassemble, stablePositions_eq snapshot blocks cover]
  exact List.map_get_finRange _

/-- Consequently every ordered fold is preserved, with no commutation premise. -/
theorem stable_fold_preserved {M : Type*} (snapshot : Snapshot) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition snapshot)) (cover : ∀ p, ∃ i, p ∈ blocks i)
    (step : M → Occurrence → M) (initial : M) :
    (stableReassemble snapshot blocks).foldl step initial =
      snapshot.occurrences.foldl step initial := by
  rw [stableReassemble_eq snapshot blocks cover]

namespace OwnershipFixtures

abbrev p0 : SourcePosition Fixtures.snapshot := ⟨0, by decide⟩
abbrev p1 : SourcePosition Fixtures.snapshot := ⟨1, by decide⟩
abbrev p2 : SourcePosition Fixtures.snapshot := ⟨2, by decide⟩
abbrev p3 : SourcePosition Fixtures.snapshot := ⟨3, by decide⟩

/-- Overlapping and repeated source blocks for the already admitted `(aa)` fixture. -/
def blocks : Fin 3 → Finset (SourcePosition Fixtures.snapshot)
  | 0 => {p1, p2}
  | 1 => {p0, p1, p3}
  | 2 => {p0, p1, p3}

theorem blocks_cover : ∀ p : SourcePosition Fixtures.snapshot, ∃ i, p ∈ blocks i := by decide

/-- The two `a` payloads remain separate source positions with IDs 11 and 12. -/
theorem equal_payload_distinct_occurrences :
    (occurrenceAt Fixtures.snapshot p1).symbol = (occurrenceAt Fixtures.snapshot p2).symbol ∧
    (occurrenceAt Fixtures.snapshot p1).id ≠ (occurrenceAt Fixtures.snapshot p2).id := by decide

theorem actual_partition :
    ownedPiece Finset.univ blocks 0 = {p1, p2} ∧
    ownedPiece Finset.univ blocks 1 = {p0, p3} ∧
    ownedPiece Finset.univ blocks 2 = ∅ := by decide

theorem ordered_inventory_recovered : stableReassemble Fixtures.snapshot blocks =
    Fixtures.snapshot.occurrences := stableReassemble_eq _ _ blocks_cover

theorem actual_masks_recover_inventory :
    decodeReconstructionMasks blocks (encodeOwnedMasks Finset.univ blocks) = Finset.univ :=
  source_masks_reconstruct _ _ blocks_cover

/-- The fragment catalogue and complete code space have distinct sizes. -/
theorem actual_fragment_catalogue_card :
    (fragmentCatalogue Finset.univ blocks).card = 10 := by decide

theorem actual_reconstruction_code_card : Fintype.card (ReconstructionMasks blocks) = 256 :=
  (card_reconstructionMasks blocks).trans (by decide)

theorem actual_mask_entry_visits : maskEntryVisits blocks = 8 := by decide

theorem actual_catalogue_bound : (fragmentCatalogue Finset.univ blocks).card ≤ 3 * 2 ^ 3 := by
  simpa only [Finset.card_univ, Fintype.card_fin] using
    card_fragmentCatalogue_le_uniform Finset.univ blocks 3 (by decide)

/-- Both duplicate-valued occurrences are counted by their source identities. -/
theorem duplicate_payload_count_preserved :
    (∑ p : SourcePosition Fixtures.snapshot,
      if (occurrenceAt Fixtures.snapshot p).symbol = ⟨1⟩ then (1 : ℤ) else 0) =
      ∑ i, ∑ p ∈ ownedPiece Finset.univ blocks i,
        if (occurrenceAt Fixtures.snapshot p).symbol = ⟨1⟩ then (1 : ℤ) else 0 :=
  source_readout_reassembly _ _ blocks_cover (fun _ _ occurrence ↦
    if occurrence.symbol = ⟨1⟩ then 1 else 0)

/-- A joint block cancels before any independent numerical bound is required. -/
theorem joint_signed_cancellation :
    (∑ p ∈ ownedPiece Finset.univ blocks 0,
      if p.val = 1 then (7 : ℤ) else -7) = 0 := by decide

/-- Concatenating the real disjoint ownership blocks changes source order. -/
theorem noncommutative_reordering_control :
    ([p1, p2, p0, p3] : List (SourcePosition Fixtures.snapshot)).map
      (occurrenceAt Fixtures.snapshot) ≠ Fixtures.snapshot.occurrences := by decide

end OwnershipFixtures

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
