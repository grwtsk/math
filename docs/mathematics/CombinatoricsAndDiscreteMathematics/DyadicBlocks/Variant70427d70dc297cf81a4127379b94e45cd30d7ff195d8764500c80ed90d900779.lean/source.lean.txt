-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIDyadicBlock.Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeIIDyadicBlock.Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/DyadicBlocks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeTwistedVaughan
import Mathlib.Tactic

/-!
# Canonical dyadic blocks for the finite Vaughan Type II range

The half-open convention used here is

`2^j < n <= 2^(j+1)`.

Thus the canonical lower endpoint of a positive integer `n > 1` is
`2 ^ log2 (n - 1)`.  This convention assigns powers of two to the preceding
block and gives a genuinely disjoint partition of the positive Type II
indices.  All objects in this file are finite and contain no estimate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIDyadicBlock.Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870

public section

namespace Surface.Core.TypeII

noncomputable section

open Surface.Core.ConductorThreeTwistedVaughan

/-- The canonical lower endpoint `2 ^ floor(log_2 (n - 1))` for blocks of
the form `(M, 2M]`. -/
@[expose]
def dyadicLowerEndpoint (n : ℕ) : ℕ :=
  2 ^ Nat.log2 (n - 1)

@[surface_novel, surface_published]
theorem dyadicLowerEndpoint_pos (n : ℕ) :
    0 < dyadicLowerEndpoint n := by
  exact pow_pos (by decide) _

/-- Every `n > 1` lies strictly above its canonical lower endpoint. -/
@[surface_novel, surface_published]
theorem dyadicLowerEndpoint_lt {n : ℕ} (hn : 1 < n) :
    dyadicLowerEndpoint n < n := by
  unfold dyadicLowerEndpoint
  have hpred : n - 1 ≠ 0 := by omega
  have hle : 2 ^ Nat.log2 (n - 1) ≤ n - 1 := by
    rw [Nat.log2_eq_log_two]
    exact Nat.pow_log_le_self 2 hpred
  omega

/-- Every `n > 1` lies at or below twice its canonical lower endpoint. -/
@[surface_novel, surface_published]
theorem le_twice_dyadicLowerEndpoint {n : ℕ} (hn : 1 < n) :
    n ≤ 2 * dyadicLowerEndpoint n := by
  unfold dyadicLowerEndpoint
  have hpred : n - 1 ≠ 0 := by omega
  have hlt : n - 1 < 2 ^ (Nat.log2 (n - 1) + 1) := by
    rw [Nat.log2_eq_log_two]
    exact Nat.lt_pow_succ_log_self Nat.one_lt_two (n - 1)
  rw [pow_succ'] at hlt
  omega

/-- A power-of-two lower endpoint whose shell contains `n` is necessarily
the canonical one.  This is the disjointness statement for the convention
`(M,2M]`. -/
@[surface_novel, surface_published]
theorem dyadicLowerEndpoint_eq_of_mem {n M : ℕ} (hn : 1 < n)
    (hpower : ∃ j : ℕ, M = 2 ^ j)
    (hmem : M < n ∧ n ≤ 2 * M) :
    dyadicLowerEndpoint n = M := by
  obtain ⟨j, rfl⟩ := hpower
  unfold dyadicLowerEndpoint
  have hlower : 2 ^ j ≤ n - 1 := by omega
  have hupper : n - 1 < 2 ^ (j + 1) := by
    rw [pow_succ']
    omega
  rw [Nat.log2_eq_log_two,
    Nat.log_eq_of_pow_le_of_lt_pow hlower hupper]

/-- A dyadic rectangle which actually meets the effective finite Type II
range.  `M` and `K` are canonical powers of two; the witnesses record one
effective pair in `(M,2M] × (K,2K]` whose product is at most `2N`.

The witnesses make irrelevant empty rectangles unrepresentable.  They carry
no analytic data and no bound beyond the literal finite support conditions.
-/
structure TypeIIDyadicBlock (N : ℕ) where
  M : ℕ
  K : ℕ
  M_pos : 0 < M
  K_pos : 0 < K
  M_isPower : ∃ j : ℕ, M = 2 ^ j
  K_isPower : ∃ j : ℕ, K = 2 ^ j
  leftAboveCutoff : vaughanFourthRootCutoff N < 2 * M
  rightAboveCutoff : vaughanFourthRootCutoff N < 2 * K
  productRelevant : M * K ≤ 2 * N
  nonempty_effective : ∃ (m k : VaughanScaleIndex N),
    M < m.1 ∧ m.1 ≤ 2 * M ∧
      K < k.1 ∧ k.1 ≤ 2 * K ∧
      vaughanFourthRootCutoff N < m.1 ∧
      vaughanFourthRootCutoff N < k.1 ∧
      m.1 * k.1 ≤ 2 * N

@[ext]
theorem TypeIIDyadicBlock.ext {N : ℕ}
    {B C : TypeIIDyadicBlock N} (hM : B.M = C.M) (hK : B.K = C.K) :
    B = C := by
  cases B
  cases C
  simp_all

/-- The finite left shell `(M,2M]` inside the canonical Vaughan scale. -/
abbrev TypeIIDyadicBlock.Left {N : ℕ} (B : TypeIIDyadicBlock N) :=
  {m : VaughanScaleIndex N // B.M < m.1 ∧ m.1 ≤ 2 * B.M}

/-- The finite right shell `(K,2K]` inside the canonical Vaughan scale. -/
abbrev TypeIIDyadicBlock.Right {N : ℕ} (B : TypeIIDyadicBlock N) :=
  {k : VaughanScaleIndex N // B.K < k.1 ∧ k.1 ≤ 2 * B.K}

/-- The unique canonical dyadic block containing an effective Type II
factor atom. -/
@[expose]
def typeIIFactorDyadicBlock {N : ℕ} (a : VaughanTypeIIFactorAtom N) :
    TypeIIDyadicBlock N where
  M := dyadicLowerEndpoint a.1.1.1
  K := dyadicLowerEndpoint a.1.2.1
  M_pos := dyadicLowerEndpoint_pos _
  K_pos := dyadicLowerEndpoint_pos _
  M_isPower := ⟨Nat.log2 (a.1.1.1 - 1), rfl⟩
  K_isPower := ⟨Nat.log2 (a.1.2.1 - 1), rfl⟩
  leftAboveCutoff := by
    have hm : 1 < a.1.1.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)
    have hle := le_twice_dyadicLowerEndpoint
      hm
    exact a.2.2.1.trans_le hle
  rightAboveCutoff := by
    have hk : 1 < a.1.2.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)
    have hle := le_twice_dyadicLowerEndpoint
      hk
    exact a.2.2.2.trans_le hle
  productRelevant := by
    have hm : 1 < a.1.1.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)
    have hk : 1 < a.1.2.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)
    have hM := dyadicLowerEndpoint_lt hm
    have hK := dyadicLowerEndpoint_lt hk
    exact (Nat.mul_le_mul (Nat.le_of_lt hM) (Nat.le_of_lt hK)).trans a.2.1
  nonempty_effective := by
    have hm : 1 < a.1.1.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)
    have hk : 1 < a.1.2.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)
    refine ⟨a.1.1, a.1.2, dyadicLowerEndpoint_lt hm,
      le_twice_dyadicLowerEndpoint hm,
      dyadicLowerEndpoint_lt hk,
      le_twice_dyadicLowerEndpoint hk,
      a.2.2.1, a.2.2.2, a.2.1⟩

local instance (N : ℕ) : Fintype (VaughanTypeIIFactorAtom N) :=
  @Subtype.fintype _ (IsVaughanTypeIIFactor N)
    (by intro q; unfold IsVaughanTypeIIFactor; infer_instance) inferInstance

/-- The finite set of nonempty canonical dyadic Type II rectangles.  It is
the image of the literal effective factor atoms, hence cannot contain an
empty or post-selected block. -/
@[expose]
def conductorThreeTypeIIBlocks (N : ℕ) : Finset (TypeIIDyadicBlock N) := by
  classical
  exact Finset.univ.image typeIIFactorDyadicBlock

@[surface_novel, surface_published]
theorem typeIIFactorDyadicBlock_mem {N : ℕ}
    (a : VaughanTypeIIFactorAtom N) :
    typeIIFactorDyadicBlock a ∈ conductorThreeTypeIIBlocks N := by
  classical
  exact Finset.mem_image.mpr ⟨a, Finset.mem_univ _, rfl⟩

/-- The left coordinate of an atom lies in the left shell of its canonical
block. -/
@[expose]
def typeIIFactorLeftInBlock {N : ℕ} (a : VaughanTypeIIFactorAtom N) :
    (typeIIFactorDyadicBlock a).Left :=
  ⟨a.1.1, ⟨dyadicLowerEndpoint_lt
      ((show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)),
    le_twice_dyadicLowerEndpoint
      ((show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1))⟩⟩

/-- The right coordinate of an atom lies in the right shell of its canonical
block. -/
@[expose]
def typeIIFactorRightInBlock {N : ℕ} (a : VaughanTypeIIFactorAtom N) :
    (typeIIFactorDyadicBlock a).Right :=
  ⟨a.1.2, ⟨dyadicLowerEndpoint_lt
      ((show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)),
    le_twice_dyadicLowerEndpoint
      ((show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2))⟩⟩

end

end Surface.Core.TypeII
