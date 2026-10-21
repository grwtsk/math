/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsA
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsB
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsC
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsD
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsE
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsF
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalJets

set_option autoImplicit false

/-!
# Compose 298 direct eighth scripts into the unchanged target

Every local decision uses the old direct cell predicate and signed term. Their
exact `Pieces` proof yields complete predicate coverage and signed total one,
which feeds the unchanged literal Success proposition. No contour, claim,
orientation, target, or consumer is replaced. All decisions remain unexecuted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthClosure

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Algebra.BigOperators.CheckedChunkComposition
open HeightFifteenBlockDecomposition HeightFifteenDirectEighthBlocks
open HeightFifteenDirectEighthClaims

/-- The exact 298-piece proof, assembled from separate local decisions. -/
theorem eighth_obligations : EighthObligations := by
  unfold EighthObligations eighthWidths eighthExpected
  simpa [Pieces] using ⟨eighth000,eighth001,eighth002,eighth003,eighth004,eighth005,eighth006,eighth007,eighth008,eighth009,eighth010,eighth011,eighth012,eighth013,eighth014,eighth015,eighth016,eighth017,eighth018,eighth019,eighth020,eighth021,eighth022,eighth023,eighth024,eighth025,eighth026,eighth027,eighth028,eighth029,eighth030,eighth031,eighth032,eighth033,eighth034,eighth035,eighth036,eighth037,eighth038,eighth039,eighth040,eighth041,eighth042,eighth043,eighth044,eighth045,eighth046,eighth047,eighth048,eighth049,eighth050,eighth051,eighth052,eighth053,eighth054,eighth055,eighth056,eighth057,eighth058,eighth059,eighth060,eighth061,eighth062,eighth063,eighth064,eighth065,eighth066,eighth067,eighth068,eighth069,eighth070,eighth071,eighth072,eighth073,eighth074,eighth075,eighth076,eighth077,eighth078,eighth079,eighth080,eighth081,eighth082,eighth083,eighth084,eighth085,eighth086,eighth087,eighth088,eighth089,eighth090,eighth091,eighth092,eighth093,eighth094,eighth095,eighth096,eighth097,eighth098,eighth099,eighth100,eighth101,eighth102,eighth103,eighth104,eighth105,eighth106,eighth107,eighth108,eighth109,eighth110,eighth111,eighth112,eighth113,eighth114,eighth115,eighth116,eighth117,eighth118,eighth119,eighth120,eighth121,eighth122,eighth123,eighth124,eighth125,eighth126,eighth127,eighth128,eighth129,eighth130,eighth131,eighth132,eighth133,eighth134,eighth135,eighth136,eighth137,eighth138,eighth139,eighth140,eighth141,eighth142,eighth143,eighth144,eighth145,eighth146,eighth147,eighth148,eighth149,eighth150,eighth151,eighth152,eighth153,eighth154,eighth155,eighth156,eighth157,eighth158,eighth159,eighth160,eighth161,eighth162,eighth163,eighth164,eighth165,eighth166,eighth167,eighth168,eighth169,eighth170,eighth171,eighth172,eighth173,eighth174,eighth175,eighth176,eighth177,eighth178,eighth179,eighth180,eighth181,eighth182,eighth183,eighth184,eighth185,eighth186,eighth187,eighth188,eighth189,eighth190,eighth191,eighth192,eighth193,eighth194,eighth195,eighth196,eighth197,eighth198,eighth199,eighth200,eighth201,eighth202,eighth203,eighth204,eighth205,eighth206,eighth207,eighth208,eighth209,eighth210,eighth211,eighth212,eighth213,eighth214,eighth215,eighth216,eighth217,eighth218,eighth219,eighth220,eighth221,eighth222,eighth223,eighth224,eighth225,eighth226,eighth227,eighth228,eighth229,eighth230,eighth231,eighth232,eighth233,eighth234,eighth235,eighth236,eighth237,eighth238,eighth239,eighth240,eighth241,eighth242,eighth243,eighth244,eighth245,eighth246,eighth247,eighth248,eighth249,eighth250,eighth251,eighth252,eighth253,eighth254,eighth255,eighth256,eighth257,eighth258,eighth259,eighth260,eighth261,eighth262,eighth263,eighth264,eighth265,eighth266,eighth267,eighth268,eighth269,eighth270,eighth271,eighth272,eighth273,eighth274,eighth275,eighth276,eighth277,eighth278,eighth279,eighth280,eighth281,eighth282,eighth283,eighth284,eighth285,eighth286,eighth287,eighth288,eighth289,eighth290,eighth291,eighth292,eighth293,eighth294,eighth295,eighth296,eighth297⟩

/-- Complete old-cell coverage and signed total one, with no cancellation shortcut. -/
theorem eighth_ranges :
    allRange directTest 0 HeightFifteenJetCandidate.edges = true ∧
      sumRange directTerm 0 HeightFifteenJetCandidate.edges = 1 := by
  have h := (exists_pieces_iff directTest directTerm 0 eighthWidths 1).mp
    ⟨eighthExpected,eighth_obligations,eighthExpected_shape.2⟩
  simpa only [eighthWidths_shape.2] using h

/-- The unique positive 16-cell quarter is reconstructed at its exact shared cursor. -/
theorem positive_quarter :
    chunk directTest directTerm 272 16 = some 1 := by
  simpa using chunk_add eighth034 eighth035

/-- The positive 32-cell half retains the same signed contribution. -/
theorem positive_half :
    chunk directTest directTerm 256 32 = some 1 := by
  have hleft : chunk directTest directTerm 256 16 = some 0 := by
    simpa using chunk_add eighth032 eighth033
  simpa using chunk_add hleft positive_quarter

/-- The original positive 64-cell block remains signed +1. -/
theorem positive_block :
    chunk directTest directTerm 256 64 = some 1 := by
  have hq0 : chunk directTest directTerm 288 16 = some 0 := by
    simpa using chunk_add eighth036 eighth037
  have hq1 : chunk directTest directTerm 304 16 = some 0 := by
    simpa using chunk_add eighth038 eighth039
  have hright : chunk directTest directTerm 288 32 = some 0 := by
    simpa using chunk_add hq0 hq1
  simpa using chunk_add positive_half hright

/-- Exact original target proposition, reached without renaming an acceptance flag. -/
theorem original_success : HeightFifteenJetCandidate.Success :=
  HeightFifteenBlockDecomposition.success_iff_ranges.mpr eighth_ranges

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

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthClosure
