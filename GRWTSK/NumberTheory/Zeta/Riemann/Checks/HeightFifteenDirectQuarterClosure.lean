/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterClaimsA
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterClaimsB
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterClaimsC
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalJets

set_option autoImplicit false

/-!
# Compose 150 direct quarter scripts into the unchanged target

Every local decision uses the old direct cell predicate and signed term. Their
exact `Pieces` proof yields complete predicate coverage and signed total one,
which feeds the unchanged literal Success proposition. No contour, claim,
orientation, target, or consumer is replaced. All decisions remain unexecuted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectQuarterClosure

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Algebra.BigOperators.CheckedChunkComposition
open HeightFifteenBlockDecomposition HeightFifteenDirectQuarterBlocks
open HeightFifteenDirectQuarterClaims

/-- The exact 150-piece proof, assembled from separate local decisions. -/
theorem quarter_obligations : QuarterObligations := by
  unfold QuarterObligations quarterWidths quarterExpected
  simpa [Pieces] using ⟨quarter000,quarter001,quarter002,quarter003,quarter004,quarter005,quarter006,quarter007,quarter008,quarter009,quarter010,quarter011,quarter012,quarter013,quarter014,quarter015,quarter016,quarter017,quarter018,quarter019,quarter020,quarter021,quarter022,quarter023,quarter024,quarter025,quarter026,quarter027,quarter028,quarter029,quarter030,quarter031,quarter032,quarter033,quarter034,quarter035,quarter036,quarter037,quarter038,quarter039,quarter040,quarter041,quarter042,quarter043,quarter044,quarter045,quarter046,quarter047,quarter048,quarter049,quarter050,quarter051,quarter052,quarter053,quarter054,quarter055,quarter056,quarter057,quarter058,quarter059,quarter060,quarter061,quarter062,quarter063,quarter064,quarter065,quarter066,quarter067,quarter068,quarter069,quarter070,quarter071,quarter072,quarter073,quarter074,quarter075,quarter076,quarter077,quarter078,quarter079,quarter080,quarter081,quarter082,quarter083,quarter084,quarter085,quarter086,quarter087,quarter088,quarter089,quarter090,quarter091,quarter092,quarter093,quarter094,quarter095,quarter096,quarter097,quarter098,quarter099,quarter100,quarter101,quarter102,quarter103,quarter104,quarter105,quarter106,quarter107,quarter108,quarter109,quarter110,quarter111,quarter112,quarter113,quarter114,quarter115,quarter116,quarter117,quarter118,quarter119,quarter120,quarter121,quarter122,quarter123,quarter124,quarter125,quarter126,quarter127,quarter128,quarter129,quarter130,quarter131,quarter132,quarter133,quarter134,quarter135,quarter136,quarter137,quarter138,quarter139,quarter140,quarter141,quarter142,quarter143,quarter144,quarter145,quarter146,quarter147,quarter148,quarter149⟩

/-- Complete old-cell coverage and signed total one, with no block cancellation shortcut. -/
theorem quarter_ranges :
    allRange directTest 0 HeightFifteenJetCandidate.edges = true ∧
      sumRange directTerm 0 HeightFifteenJetCandidate.edges = 1 := by
  have h := (exists_pieces_iff directTest directTerm 0 quarterWidths 1).mp
    ⟨quarterExpected,quarter_obligations,quarterExpected_shape.2⟩
  simpa only [quarterWidths_shape.2] using h

/-- The unique positive 32-cell half is reconstructed at its exact shared cursor. -/
theorem positive_half :
    chunk directTest directTerm 256 32 = some 1 := by
  simpa using chunk_add quarter016 quarter017

/-- The original positive 64-cell block retains the same signed contribution. -/
theorem positive_block :
    chunk directTest directTerm 256 64 = some 1 := by
  have hright : chunk directTest directTerm 288 32 = some 0 := by
    simpa using chunk_add quarter018 quarter019
  simpa using chunk_add positive_half hright

/-- Exact original target proposition, reached without renaming an acceptance flag. -/
theorem original_success : HeightFifteenJetCandidate.Success :=
  HeightFifteenBlockDecomposition.success_iff_ranges.mpr quarter_ranges

theorem canonical_result :
    HeightFifteenCanonicalJets.result = some 1 :=
  HeightFifteenCanonicalJets.success_iff.mpr original_success

theorem regional_count_one :
    MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  HeightFifteenJetCandidate.count_one_of_success original_success

theorem complete_pair :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} :=
  HeightFifteenJetCandidate.complete_pair_of_success original_success

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectQuarterClosure
