/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCoherentWindowReadout

/-!
# Swapped-channel recovery of the signed Weil prime term

The same two aperture energies are measured in both detector assignments.
Offsets and unequal fixed gains then cancel after normalization by total gain.
-/

noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout

open FirstPrimeWindow

/-- Measure two energies with fixed gain and offset on each detector. -/
def detectorPair (g₁ g₂ b₁ b₂ : ℝ) (E : ℝ × ℝ) : ℝ × ℝ :=
  (g₁ * E.1 + b₁, g₂ * E.2 + b₂)

/-- The second pair measures the same energies with the assignments reversed. -/
def swapDecode (gain : ℝ) (direct swapped : ℝ × ℝ) : ℝ :=
  (decode direct - decode swapped) / gain

theorem swapDecode_detectorPair (g₁ g₂ b₁ b₂ : ℝ) (h : g₁ + g₂ ≠ 0)
    (E : ℝ × ℝ) :
    swapDecode (g₁ + g₂) (detectorPair g₁ g₂ b₁ b₂ E)
      (detectorPair g₁ g₂ b₁ b₂ (E.2, E.1)) = decode E := by
  unfold swapDecode detectorPair decode
  dsimp only
  apply (div_eq_iff h).mpr
  ring

/-- Additive perturbations in either acquisition enter only through the
difference of the two detector contrasts. -/
theorem swapDecode_add_error (g₁ g₂ b₁ b₂ : ℝ) (h : g₁ + g₂ ≠ 0)
    (E directError swappedError : ℝ × ℝ) :
    swapDecode (g₁ + g₂) (detectorPair g₁ g₂ b₁ b₂ E + directError)
      (detectorPair g₁ g₂ b₁ b₂ (E.2, E.1) + swappedError) - decode E =
      (decode directError - decode swappedError) / (g₁ + g₂) := by
  apply (sub_eq_iff_eq_add).mpr
  rw [← swapDecode_detectorPair g₁ g₂ b₁ b₂ h E]
  unfold swapDecode detectorPair decode
  simp only [Prod.fst_add, Prod.snd_add]
  ring

theorem abs_swapDecode_error_le (g₁ g₂ b₁ b₂ : ℝ) (h : g₁ + g₂ ≠ 0)
    (E directError swappedError : ℝ × ℝ) :
    |swapDecode (g₁ + g₂) (detectorPair g₁ g₂ b₁ b₂ E + directError)
      (detectorPair g₁ g₂ b₁ b₂ (E.2, E.1) + swappedError) - decode E| ≤
      (|decode directError| + |decode swappedError|) / |g₁ + g₂| := by
  rw [swapDecode_add_error g₁ g₂ b₁ b₂ h E directError swappedError, abs_div]
  apply div_le_div_of_nonneg_right _ (abs_nonneg _)
  simpa only [sub_eq_add_neg, abs_neg] using
    (abs_add_le (decode directError) (-decode swappedError))

theorem physicalValue_swapped_detector {q : ℕ} (χ : DirichletCharacter ℂ q)
    (A : ℝ) (test : WindowTest A) (g₁ g₂ b₁ b₂ : ℝ) (h : g₁ + g₂ ≠ 0) :
    let E := probes A (supportedPowers A) (coefficient χ) test.1
    physicalValue χ A test.1 =
      reportedValue χ test.1 (swapDecode (g₁ + g₂) (detectorPair g₁ g₂ b₁ b₂ E)
        (detectorPair g₁ g₂ b₁ b₂ (E.2, E.1))) := by
  intro E
  rw [swapDecode_detectorPair g₁ g₂ b₁ b₂ h]
  exact physicalValue_coherent χ A test

/-- A single acquisition with unequal gains creates a false signed term
even when the true aperture energies are identical. -/
theorem unequal_detector_gain_control :
    decode (detectorPair 2 1 0 0 (4, 4)) = 2 ∧
      swapDecode 3 (detectorPair 2 1 0 0 (4, 4))
        (detectorPair 2 1 0 0 (4, 4)) = 0 := by
  norm_num [swapDecode, detectorPair, decode]

end GRWTSK.NumberTheory.WeilQuadraticForm.CoherentWindowReadout
