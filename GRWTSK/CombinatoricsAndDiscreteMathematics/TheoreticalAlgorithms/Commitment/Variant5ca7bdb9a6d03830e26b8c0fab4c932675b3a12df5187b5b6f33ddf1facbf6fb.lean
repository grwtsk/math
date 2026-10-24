-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AbsorbEquiv.Variantf674c8171294e81a11e627246f4421d47805334c757667f30b9a6ecf00aa4e2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f674c8171294e81a11e627246f4421d47805334c757667f30b9a6ecf00aa4e2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.AbsorbEquiv.Variantf674c8171294e81a11e627246f4421d47805334c757667f30b9a6ecf00aa4e2c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f674c8171294e81a11e627246f4421d47805334c757667f30b9a6ecf00aa4e2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/FilesystemCodec/Commitment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FilesystemCodec.Codec

/-!
# Reversible absorption and fixed-digest noninvertibility

An internal state permutation is reversible.  Absorbing a known block by an
additive translation followed by such a permutation is likewise reversible,
but only when the same block is retained for the inverse computation.  A whole
retained block sequence therefore determines an equivalence on states.

This does not make joint state/message absorption lossless: for finite types,
compressing `F × Block` back into `F` cannot be injective when more than one
block is possible.  The same cardinality boundary applies to fixed-width
digests and Merkle roots.  They can support verification or SAT preimage
search, but do not in general reconstruct a historically original snapshot;
uniqueness requires a separate injectivity or bijectivity theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AbsorbEquiv.Variantf674c8171294e81a11e627246f4421d47805334c757667f30b9a6ecf00aa4e2c

namespace FilesystemCodec

open SATReduction

universe u v

/-! ## Reversible absorption when the block is retained -/

/-- Add a known block to the state and then apply a state permutation. -/
def absorbEquiv
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (block : Block) :
    F ≃ F :=
  (Equiv.addRight (inject block)).trans P

/-- Forward known-block absorption. -/
def absorb
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (block : Block)
    (state : F) :
    F :=
  absorbEquiv P inject block state

/-- Undo absorption using the same retained block. -/
def unabsorb
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (block : Block)
    (next : F) :
    F :=
  (absorbEquiv P inject block).symm next

@[simp]
theorem unabsorb_absorb
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (block : Block)
    (state : F) :
    unabsorb P inject block (absorb P inject block state) = state :=
  (absorbEquiv P inject block).symm_apply_apply state

@[simp]
theorem absorb_unabsorb
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (block : Block)
    (next : F) :
    absorb P inject block (unabsorb P inject block next) = next :=
  (absorbEquiv P inject block).apply_symm_apply next

/-- The inverse first applies `P⁻¹` and then removes the retained block. -/
theorem unabsorb_apply
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (block : Block)
    (next : F) :
    unabsorb P inject block next = P.symm next - inject block := by
  rw [unabsorb, absorbEquiv, Equiv.symm_trans_apply]
  simp only [Equiv.addRight_symm_apply]
  rw [sub_eq_add_neg]

/-- Compose known-block absorption equivalences in list order. -/
def absorbSequenceEquiv
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F) :
    List Block → F ≃ F
  | [] => Equiv.refl F
  | block :: blocks =>
      (absorbEquiv P inject block).trans
        (absorbSequenceEquiv P inject blocks)

/-- A retained block sequence always induces a bijection on the state. -/
theorem absorbSequenceEquiv_bijective
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (blocks : List Block) :
    Function.Bijective (absorbSequenceEquiv P inject blocks) :=
  (absorbSequenceEquiv P inject blocks).bijective

@[simp]
theorem absorbSequence_inverse_forward
    {F : Type u}
    {Block : Type v}
    [AddGroup F]
    (P : F ≃ F)
    (inject : Block → F)
    (blocks : List Block)
    (state : F) :
    (absorbSequenceEquiv P inject blocks).symm
        (absorbSequenceEquiv P inject blocks state) = state :=
  (absorbSequenceEquiv P inject blocks).symm_apply_apply state

/-! ## Joint absorption is finite compression -/

/--
Absorbing an independent block together with the state into one finite state
cannot be injective when at least two blocks exist.  This argument uses only
domain/codomain cardinalities and does not assume a collision in `inject`.
-/
theorem absorb_pair_not_injective
    {F : Type u}
    {Block : Type v}
    [Fintype F]
    [Fintype Block]
    [AddGroup F]
    [Nonempty F]
    (P : F ≃ F)
    (inject : Block → F)
    (hBlock : 1 < Fintype.card Block) :
    ¬ Function.Injective
      (fun input : F × Block => absorb P inject input.2 input.1) := by
  intro hinjective
  have hle : Fintype.card (F × Block) ≤ Fintype.card F :=
    Fintype.card_le_of_injective _ hinjective
  rw [Fintype.card_prod] at hle
  have hpos : 0 < Fintype.card F := Fintype.card_pos
  exact (Nat.not_lt_of_ge hle) (lt_mul_of_one_lt_right hpos hBlock)

/-! ## Fixed-width digest quantization -/

/-- Regard a fixed-width matrix digest as an image quantizer. -/
def digestQuantizer
    {Snapshot : Type u}
    {r : Nat}
    (digest : Snapshot → BinMat 1 r) :
    BinMat.Quantizer Snapshot 1 r :=
  ⟨digest⟩

/-- A fixed `r`-bit digest realizes at most `2^r` distinct outputs. -/
theorem digest_effectiveStates_le
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BinMat 1 r) :
    (digestQuantizer digest).effectiveStates.card ≤ 2 ^ r := by
  simpa using
    (BinMat.Quantizer.card_effectiveStates_le_bits (digestQuantizer digest))

/-- More than `2^r` snapshots cannot inject into an `r`-bit digest. -/
theorem digest_not_injective_of_card_gt
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BinMat 1 r)
    (hcard : 2 ^ r < Fintype.card Snapshot) :
    ¬ Function.Injective digest := by
  intro hinjective
  have hle : Fintype.card Snapshot ≤ Fintype.card (BinMat 1 r) :=
    Fintype.card_le_of_injective digest hinjective
  rw [BinMat.Quantizer.card_binMat] at hle
  have hle' : Fintype.card Snapshot ≤ 2 ^ r := by
    simpa using hle
  exact Nat.not_le_of_lt hcard hle'

/-- Cardinal compression yields two distinct snapshots with the same digest. -/
theorem digest_has_collision_of_card_gt
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BinMat 1 r)
    (hcard : 2 ^ r < Fintype.card Snapshot) :
    ∃ x y, x ≠ y ∧ digest x = digest y := by
  obtain ⟨x, y, hxy, hne⟩ := Function.not_injective_iff.mp
    (digest_not_injective_of_card_gt digest hcard)
  exact ⟨x, y, hne, hxy⟩

/-- The collision is exactly indistinguishability for the digest quantizer. -/
theorem digest_has_distinct_indistinguishable_snapshots
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BinMat 1 r)
    (hcard : 2 ^ r < Fintype.card Snapshot) :
    ∃ x y,
      x ≠ y ∧
      (digestQuantizer digest).Indistinguishable x y :=
  digest_has_collision_of_card_gt digest hcard

/-- A decoder that reverses every digest would contradict finite compression. -/
theorem no_digest_decoder_of_card_gt
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BinMat 1 r)
    (hcard : 2 ^ r < Fintype.card Snapshot) :
    ¬ ∃ decode : BinMat 1 r → Option Snapshot,
        ∀ snapshot, decode (digest snapshot) = some snapshot := by
  rintro ⟨decode, hdecode⟩
  apply digest_not_injective_of_card_gt digest hcard
  intro x y hxy
  have h := congrArg decode hxy
  rw [hdecode x, hdecode y] at h
  exact Option.some.inj h

/-! ## SAT preimages versus unique preimages -/

/-- A witnessed collision prevents uniqueness of the digest preimage. -/
theorem collision_prevents_unique_preimage
    {n r : Nat}
    (digest : Bits n → Bits r)
    {x y : Bits n}
    (hxy : x ≠ y)
    (hcollision : digest x = digest y) :
    ¬ ∃! input, digest input = digest x := by
  rintro ⟨input, hinput, hunique⟩
  have hx : x = input := hunique x rfl
  have hy : y = input := hunique y hcollision.symm
  exact hxy (hx.trans hy.symm)

end FilesystemCodec
