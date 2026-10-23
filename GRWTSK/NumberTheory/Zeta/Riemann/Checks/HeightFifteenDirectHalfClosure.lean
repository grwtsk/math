/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfClaims
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalJets

set_option autoImplicit false

/-!
# Compose the 76 direct half-block scripts into the unchanged target

Every 64-cell block is recovered from two adjacent 32-cell decisions. The final
11-cell block is recovered from the explicit 8-cell and 3-cell suffix decisions.
No original predicate, claim, orientation, target, or consumer is changed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectHalfClosure

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Algebra.BigOperators.CheckedChunkComposition
open HeightFifteenBlockDecomposition HeightFifteenDirectHalfBlocks
open HeightFifteenDirectHalfClaims

def HalfScriptProofs : Prop :=
    chunk directTest directTerm 0 32 = some 0 ∧
    chunk directTest directTerm 32 32 = some 0 ∧
    chunk directTest directTerm 64 32 = some 0 ∧
    chunk directTest directTerm 96 32 = some 0 ∧
    chunk directTest directTerm 128 32 = some 0 ∧
    chunk directTest directTerm 160 32 = some 0 ∧
    chunk directTest directTerm 192 32 = some 0 ∧
    chunk directTest directTerm 224 32 = some 0 ∧
    chunk directTest directTerm 256 32 = some 1 ∧
    chunk directTest directTerm 288 32 = some 0 ∧
    chunk directTest directTerm 320 32 = some 0 ∧
    chunk directTest directTerm 352 32 = some 0 ∧
    chunk directTest directTerm 384 32 = some 0 ∧
    chunk directTest directTerm 416 32 = some 0 ∧
    chunk directTest directTerm 448 32 = some 0 ∧
    chunk directTest directTerm 480 32 = some 0 ∧
    chunk directTest directTerm 512 32 = some 0 ∧
    chunk directTest directTerm 544 32 = some 0 ∧
    chunk directTest directTerm 576 32 = some 0 ∧
    chunk directTest directTerm 608 32 = some 0 ∧
    chunk directTest directTerm 640 32 = some 0 ∧
    chunk directTest directTerm 672 32 = some 0 ∧
    chunk directTest directTerm 704 32 = some 0 ∧
    chunk directTest directTerm 736 32 = some 0 ∧
    chunk directTest directTerm 768 32 = some 0 ∧
    chunk directTest directTerm 800 32 = some 0 ∧
    chunk directTest directTerm 832 32 = some 0 ∧
    chunk directTest directTerm 864 32 = some 0 ∧
    chunk directTest directTerm 896 32 = some 0 ∧
    chunk directTest directTerm 928 32 = some 0 ∧
    chunk directTest directTerm 960 32 = some 0 ∧
    chunk directTest directTerm 992 32 = some 0 ∧
    chunk directTest directTerm 1024 32 = some 0 ∧
    chunk directTest directTerm 1056 32 = some 0 ∧
    chunk directTest directTerm 1088 32 = some 0 ∧
    chunk directTest directTerm 1120 32 = some 0 ∧
    chunk directTest directTerm 1152 32 = some 0 ∧
    chunk directTest directTerm 1184 32 = some 0 ∧
    chunk directTest directTerm 1216 32 = some 0 ∧
    chunk directTest directTerm 1248 32 = some 0 ∧
    chunk directTest directTerm 1280 32 = some 0 ∧
    chunk directTest directTerm 1312 32 = some 0 ∧
    chunk directTest directTerm 1344 32 = some 0 ∧
    chunk directTest directTerm 1376 32 = some 0 ∧
    chunk directTest directTerm 1408 32 = some 0 ∧
    chunk directTest directTerm 1440 32 = some 0 ∧
    chunk directTest directTerm 1472 32 = some 0 ∧
    chunk directTest directTerm 1504 32 = some 0 ∧
    chunk directTest directTerm 1536 32 = some 0 ∧
    chunk directTest directTerm 1568 32 = some 0 ∧
    chunk directTest directTerm 1600 32 = some 0 ∧
    chunk directTest directTerm 1632 32 = some 0 ∧
    chunk directTest directTerm 1664 32 = some 0 ∧
    chunk directTest directTerm 1696 32 = some 0 ∧
    chunk directTest directTerm 1728 32 = some 0 ∧
    chunk directTest directTerm 1760 32 = some 0 ∧
    chunk directTest directTerm 1792 32 = some 0 ∧
    chunk directTest directTerm 1824 32 = some 0 ∧
    chunk directTest directTerm 1856 32 = some 0 ∧
    chunk directTest directTerm 1888 32 = some 0 ∧
    chunk directTest directTerm 1920 32 = some 0 ∧
    chunk directTest directTerm 1952 32 = some 0 ∧
    chunk directTest directTerm 1984 32 = some 0 ∧
    chunk directTest directTerm 2016 32 = some 0 ∧
    chunk directTest directTerm 2048 32 = some 0 ∧
    chunk directTest directTerm 2080 32 = some 0 ∧
    chunk directTest directTerm 2112 32 = some 0 ∧
    chunk directTest directTerm 2144 32 = some 0 ∧
    chunk directTest directTerm 2176 32 = some 0 ∧
    chunk directTest directTerm 2208 32 = some 0 ∧
    chunk directTest directTerm 2240 32 = some 0 ∧
    chunk directTest directTerm 2272 32 = some 0 ∧
    chunk directTest directTerm 2304 32 = some 0 ∧
    chunk directTest directTerm 2336 32 = some 0 ∧
    chunk directTest directTerm 2368 8 = some 0 ∧
    chunk directTest directTerm 2376 3 = some 0

/-- A source tuple of all smaller local decisions; still entirely unexecuted. -/
theorem half_scripts : HalfScriptProofs := by
  exact ⟨half00,half01,half02,half03,half04,half05,half06,half07,half08,half09,half10,half11,half12,half13,half14,half15,half16,half17,half18,half19,half20,half21,half22,half23,half24,half25,half26,half27,half28,half29,half30,half31,half32,half33,half34,half35,half36,half37,half38,half39,half40,half41,half42,half43,half44,half45,half46,half47,half48,half49,half50,half51,half52,half53,half54,half55,half56,half57,half58,half59,half60,half61,half62,half63,half64,half65,half66,half67,half68,half69,half70,half71,half72,half73,half74,half75⟩

theorem half_obligations : HalfObligations := by
  unfold HalfObligations HalfScriptProofs
  simpa [halfWidths,halfExpected,Pieces] using half_scripts

theorem block00 :
    chunk directTest directTerm 0 64 = some 0 := by
  simpa using chunk_add half00 half01

theorem block01 :
    chunk directTest directTerm 64 64 = some 0 := by
  simpa using chunk_add half02 half03

theorem block02 :
    chunk directTest directTerm 128 64 = some 0 := by
  simpa using chunk_add half04 half05

theorem block03 :
    chunk directTest directTerm 192 64 = some 0 := by
  simpa using chunk_add half06 half07

theorem block04 :
    chunk directTest directTerm 256 64 = some 1 := by
  simpa using chunk_add half08 half09

theorem block05 :
    chunk directTest directTerm 320 64 = some 0 := by
  simpa using chunk_add half10 half11

theorem block06 :
    chunk directTest directTerm 384 64 = some 0 := by
  simpa using chunk_add half12 half13

theorem block07 :
    chunk directTest directTerm 448 64 = some 0 := by
  simpa using chunk_add half14 half15

theorem block08 :
    chunk directTest directTerm 512 64 = some 0 := by
  simpa using chunk_add half16 half17

theorem block09 :
    chunk directTest directTerm 576 64 = some 0 := by
  simpa using chunk_add half18 half19

theorem block10 :
    chunk directTest directTerm 640 64 = some 0 := by
  simpa using chunk_add half20 half21

theorem block11 :
    chunk directTest directTerm 704 64 = some 0 := by
  simpa using chunk_add half22 half23

theorem block12 :
    chunk directTest directTerm 768 64 = some 0 := by
  simpa using chunk_add half24 half25

theorem block13 :
    chunk directTest directTerm 832 64 = some 0 := by
  simpa using chunk_add half26 half27

theorem block14 :
    chunk directTest directTerm 896 64 = some 0 := by
  simpa using chunk_add half28 half29

theorem block15 :
    chunk directTest directTerm 960 64 = some 0 := by
  simpa using chunk_add half30 half31

theorem block16 :
    chunk directTest directTerm 1024 64 = some 0 := by
  simpa using chunk_add half32 half33

theorem block17 :
    chunk directTest directTerm 1088 64 = some 0 := by
  simpa using chunk_add half34 half35

theorem block18 :
    chunk directTest directTerm 1152 64 = some 0 := by
  simpa using chunk_add half36 half37

theorem block19 :
    chunk directTest directTerm 1216 64 = some 0 := by
  simpa using chunk_add half38 half39

theorem block20 :
    chunk directTest directTerm 1280 64 = some 0 := by
  simpa using chunk_add half40 half41

theorem block21 :
    chunk directTest directTerm 1344 64 = some 0 := by
  simpa using chunk_add half42 half43

theorem block22 :
    chunk directTest directTerm 1408 64 = some 0 := by
  simpa using chunk_add half44 half45

theorem block23 :
    chunk directTest directTerm 1472 64 = some 0 := by
  simpa using chunk_add half46 half47

theorem block24 :
    chunk directTest directTerm 1536 64 = some 0 := by
  simpa using chunk_add half48 half49

theorem block25 :
    chunk directTest directTerm 1600 64 = some 0 := by
  simpa using chunk_add half50 half51

theorem block26 :
    chunk directTest directTerm 1664 64 = some 0 := by
  simpa using chunk_add half52 half53

theorem block27 :
    chunk directTest directTerm 1728 64 = some 0 := by
  simpa using chunk_add half54 half55

theorem block28 :
    chunk directTest directTerm 1792 64 = some 0 := by
  simpa using chunk_add half56 half57

theorem block29 :
    chunk directTest directTerm 1856 64 = some 0 := by
  simpa using chunk_add half58 half59

theorem block30 :
    chunk directTest directTerm 1920 64 = some 0 := by
  simpa using chunk_add half60 half61

theorem block31 :
    chunk directTest directTerm 1984 64 = some 0 := by
  simpa using chunk_add half62 half63

theorem block32 :
    chunk directTest directTerm 2048 64 = some 0 := by
  simpa using chunk_add half64 half65

theorem block33 :
    chunk directTest directTerm 2112 64 = some 0 := by
  simpa using chunk_add half66 half67

theorem block34 :
    chunk directTest directTerm 2176 64 = some 0 := by
  simpa using chunk_add half68 half69

theorem block35 :
    chunk directTest directTerm 2240 64 = some 0 := by
  simpa using chunk_add half70 half71

theorem block36 :
    chunk directTest directTerm 2304 64 = some 0 := by
  simpa using chunk_add half72 half73

theorem block37 :
    chunk directTest directTerm 2368 11 = some 0 := by
  simpa using chunk_add half74 half75

def BlockScriptProofs : Prop :=
    chunk directTest directTerm 0 64 = some 0 ∧
    chunk directTest directTerm 64 64 = some 0 ∧
    chunk directTest directTerm 128 64 = some 0 ∧
    chunk directTest directTerm 192 64 = some 0 ∧
    chunk directTest directTerm 256 64 = some 1 ∧
    chunk directTest directTerm 320 64 = some 0 ∧
    chunk directTest directTerm 384 64 = some 0 ∧
    chunk directTest directTerm 448 64 = some 0 ∧
    chunk directTest directTerm 512 64 = some 0 ∧
    chunk directTest directTerm 576 64 = some 0 ∧
    chunk directTest directTerm 640 64 = some 0 ∧
    chunk directTest directTerm 704 64 = some 0 ∧
    chunk directTest directTerm 768 64 = some 0 ∧
    chunk directTest directTerm 832 64 = some 0 ∧
    chunk directTest directTerm 896 64 = some 0 ∧
    chunk directTest directTerm 960 64 = some 0 ∧
    chunk directTest directTerm 1024 64 = some 0 ∧
    chunk directTest directTerm 1088 64 = some 0 ∧
    chunk directTest directTerm 1152 64 = some 0 ∧
    chunk directTest directTerm 1216 64 = some 0 ∧
    chunk directTest directTerm 1280 64 = some 0 ∧
    chunk directTest directTerm 1344 64 = some 0 ∧
    chunk directTest directTerm 1408 64 = some 0 ∧
    chunk directTest directTerm 1472 64 = some 0 ∧
    chunk directTest directTerm 1536 64 = some 0 ∧
    chunk directTest directTerm 1600 64 = some 0 ∧
    chunk directTest directTerm 1664 64 = some 0 ∧
    chunk directTest directTerm 1728 64 = some 0 ∧
    chunk directTest directTerm 1792 64 = some 0 ∧
    chunk directTest directTerm 1856 64 = some 0 ∧
    chunk directTest directTerm 1920 64 = some 0 ∧
    chunk directTest directTerm 1984 64 = some 0 ∧
    chunk directTest directTerm 2048 64 = some 0 ∧
    chunk directTest directTerm 2112 64 = some 0 ∧
    chunk directTest directTerm 2176 64 = some 0 ∧
    chunk directTest directTerm 2240 64 = some 0 ∧
    chunk directTest directTerm 2304 64 = some 0 ∧
    chunk directTest directTerm 2368 11 = some 0

theorem block_scripts : BlockScriptProofs := by
  exact ⟨block00,block01,block02,block03,block04,block05,block06,block07,block08,block09,block10,block11,block12,block13,block14,block15,block16,block17,block18,block19,block20,block21,block22,block23,block24,block25,block26,block27,block28,block29,block30,block31,block32,block33,block34,block35,block36,block37⟩

/-- The exact original direct block obligations, without importing the 64-cell decisions. -/
theorem block_obligations : BlockObligations := by
  unfold BlockObligations BlockScriptProofs
  simpa [HeightFifteenBlockDecomposition.widths,
    HeightFifteenBlockDecomposition.expected,Pieces] using block_scripts

theorem canonical_result : HeightFifteenCanonicalJets.result = some 1 :=
  HeightFifteenCanonicalJets.result_one_of_blocks block_obligations

theorem original_success : HeightFifteenJetCandidate.Success :=
  HeightFifteenBlockDecomposition.success_of_blocks block_obligations

theorem regional_count_one : MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  HeightFifteenBlockDecomposition.count_one_of_blocks block_obligations

theorem complete_pair :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} :=
  HeightFifteenBlockDecomposition.complete_pair_of_blocks block_obligations

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectHalfClosure
