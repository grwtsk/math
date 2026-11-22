/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSwappedDetectorReadout

/-!
# Symmetric detector acquisitions with affine time drift

The direct assignment is read at relative times minus and plus three.
The swapped assignment is read at minus and plus one. Midpoint calibration
suffices even with different affine gain and offset slopes on each channel.
-/

noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout

open FirstPrimeWindow

/-- Calibrated detector response at a time measured from the common midpoint. -/
def driftPair (g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ t : ℝ) (E : ℝ × ℝ) : ℝ × ℝ :=
  detectorPair (g₁ + a₁ * t) (g₂ + a₂ * t) (b₁ + c₁ * t) (b₂ + c₂ * t) E

def meanPair (u v : ℝ × ℝ) : ℝ × ℝ :=
  ((u.1 + v.1) / 2, (u.2 + v.2) / 2)

theorem meanPair_driftPair (g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ t : ℝ) (E : ℝ × ℝ) :
    meanPair (driftPair g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ (-t) E)
      (driftPair g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ t E) = detectorPair g₁ g₂ b₁ b₂ E := by
  apply Prod.ext <;> dsimp [meanPair, driftPair, detectorPair] <;> ring

/-- Alternate assignments in chronological order direct, swapped, swapped,
direct, with each pair symmetric about the same time. -/
def symmetricDriftDecode (g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ : ℝ) (E : ℝ × ℝ) : ℝ :=
  let sample := driftPair g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂
  swapDecode (g₁ + g₂) (meanPair (sample (-3) E) (sample 3 E))
    (meanPair (sample (-1) (E.2, E.1)) (sample 1 (E.2, E.1)))

theorem symmetricDriftDecode_eq (g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ : ℝ)
    (h : g₁ + g₂ ≠ 0) (E : ℝ × ℝ) :
    symmetricDriftDecode g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ E = decode E := by
  unfold symmetricDriftDecode
  -- Match the two opposite-time pairs separately.
  change swapDecode _ (meanPair (driftPair _ _ _ _ _ _ _ _ (-(3 : ℝ)) E)
    (driftPair _ _ _ _ _ _ _ _ 3 E))
    (meanPair (driftPair _ _ _ _ _ _ _ _ (-(1 : ℝ)) (E.2, E.1))
      (driftPair _ _ _ _ _ _ _ _ 1 (E.2, E.1))) = _
  rw [meanPair_driftPair, meanPair_driftPair, swapDecode_detectorPair _ _ _ _ h]

theorem physicalValue_symmetricDetectorDrift {q : ℕ} (χ : DirichletCharacter ℂ q)
    (A : ℝ) (test : WindowTest A) (g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ : ℝ)
    (h : g₁ + g₂ ≠ 0) :
    let E := probes A (supportedPowers A) (coefficient χ) test.1
    physicalValue χ A test.1 = reportedValue χ test.1
      (symmetricDriftDecode g₁ g₂ b₁ b₂ a₁ a₂ c₁ c₂ E) := by
  intro E
  rw [symmetricDriftDecode_eq _ _ _ _ _ _ _ _ h]
  exact physicalValue_coherent χ A test

/-- Equal energies acquire a false contrast if one detector's offset drifts
and the two assignments are sampled only once, at distinct times. -/
theorem affine_offset_drift_control :
    swapDecode 2 (driftPair 1 1 0 0 0 0 1 0 (-1) (4, 4))
      (driftPair 1 1 0 0 0 0 1 0 1 (4, 4)) = -(1 / 2) ∧
    symmetricDriftDecode 1 1 0 0 0 0 1 0 (4, 4) = 0 := by
  norm_num [symmetricDriftDecode, swapDecode, driftPair, detectorPair, meanPair, decode]

end GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout
