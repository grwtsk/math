import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

/-!
# Exact source bump overlap

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
This is the literal unit-bump overlap, not a signed arithmetic bound.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

/-- Exact positive coefficient polynomial in the half-support overlap. -/
def overlapP0 (u : ℝ) : ℝ :=
  7*u^8+126*u^7+988*u^6+4344*u^5+11376*u^4+
    17376*u^3+15808*u^2+8064*u+1792

/-- The unextended polynomial profile, used only on the actual half-support. -/
def overlapProfile (u : ℝ) : ℝ := (2-u)^9 * overlapP0 u / 1531530

/-- An oriented polynomial identity; the actual bump overlap uses `0 ≤ u ≤ 2`. -/
theorem unitBump_overlap_integral (u : ℝ) :
    (∫ x : ℝ in (u-1)..1, unitBump x * unitBump (x-u)) = overlapProfile u := by
  have he : (fun x : ℝ => unitBump x * unitBump (x-u)) =
      (fun x => (1 * u ^ 8 - 4 * u ^ 6 + 6 * u ^ 4 - 4 * u ^ 2 + 1) * x ^ 0 +
        (-8 * u ^ 7 + 24 * u ^ 5 - 24 * u ^ 3 + 8 * u) * x ^ 1 +
        (-4 * u ^ 8 + 44 * u ^ 6 - 84 * u ^ 4 + 52 * u ^ 2 - 8) * x ^ 2 +
        (32 * u ^ 7 - 152 * u ^ 5 + 176 * u ^ 3 - 56 * u) * x ^ 3 +
        (6 * u ^ 8 - 136 * u ^ 6 + 346 * u ^ 4 - 228 * u ^ 2 + 28) * x ^ 4 +
        (-48 * u ^ 7 + 368 * u ^ 5 - 520 * u ^ 3 + 168 * u) * x ^ 5 +
        (-4 * u ^ 8 + 184 * u ^ 6 - 664 * u ^ 4 + 500 * u ^ 2 - 56) * x ^ 6 +
        (32 * u ^ 7 - 432 * u ^ 5 + 800 * u ^ 3 - 280 * u) * x ^ 7 +
        (1 * u ^ 8 - 116 * u ^ 6 + 666 * u ^ 4 - 620 * u ^ 2 + 70) * x ^ 8 +
        (-8 * u ^ 7 + 248 * u ^ 5 - 680 * u ^ 3 + 280 * u) * x ^ 9 +
        (28 * u ^ 6 - 340 * u ^ 4 + 444 * u ^ 2 - 56) * x ^ 10 +
        (-56 * u ^ 5 + 304 * u ^ 3 - 168 * u) * x ^ 11 +
        (70 * u ^ 4 - 172 * u ^ 2 + 28) * x ^ 12 +
        (-56 * u ^ 3 + 56 * u) * x ^ 13 +
        (28 * u ^ 2 - 8) * x ^ 14 +
        (-8 * u) * x ^ 15 +
        (1) * x ^ 16) := by
    funext x
    dsimp [unitBump]
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul, integral_pow]
  norm_num
  dsimp [overlapProfile, overlapP0]
  ring

/-- Closed support is restricted exactly; no endpoint or negative shift is discarded. -/
theorem sourceBump_overlap_eq_indicator {u : ℝ} (hu0 : 0 ≤ u) :
    (fun x : ℝ => SourcePairing.sourceBump x * SourcePairing.sourceBump (x-u)) =
      (Icc (u-1) 1).indicator (fun x => unitBump x * unitBump (x-u)) := by
  funext x
  have hs : x ∈ Icc (-1 : ℝ) 1 ∧ x-u ∈ Icc (-1 : ℝ) 1 ↔
      x ∈ Icc (u-1) 1 := by
    simp only [mem_Icc]
    constructor
    · rintro ⟨⟨hx0, hx1⟩, ⟨hy0, hy1⟩⟩
      exact ⟨by linarith, hx1⟩
    · rintro ⟨hx0, hx1⟩
      exact ⟨⟨by linarith, hx1⟩, ⟨by linarith, by linarith⟩⟩
  by_cases hx : x ∈ Icc (-1 : ℝ) 1
  · by_cases hy : x-u ∈ Icc (-1 : ℝ) 1
    · have h := hs.mp ⟨hx, hy⟩
      simp [SourcePairing.sourceBump, hx, hy, h, unitBump]
    · have h : x ∉ Icc (u-1) 1 := fun h => hy (hs.mpr h).2
      simp [SourcePairing.sourceBump, hx, hy, h]
  · have h : x ∉ Icc (u-1) 1 := fun h => hx (hs.mpr h).1
    simp [SourcePairing.sourceBump, hx, h]

/-- The half-support formula is the actual bilateral source-bump autocorrelation. -/
theorem sourceBump_autocorrelation_eq_profile {u : ℝ} (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    (∫ x : ℝ, SourcePairing.sourceBump x * SourcePairing.sourceBump (x-u)) =
      overlapProfile u := by
  rw [sourceBump_overlap_eq_indicator hu0,
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.zeroExtension_integral
      _ (u-1) 1 (by linarith), unitBump_overlap_integral]

/-- The L² dilation cancels the Jacobian at every positive real scale. -/
theorem scaledBump_autocorrelation_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2*A) :
    (∫ x : ℝ, SourcePairing.scaledBump A x * SourcePairing.scaledBump A (x-t)) =
      overlapProfile (t/A) := by
  have hu0 : 0 ≤ t/A := div_nonneg ht0 hA.le
  have hu2 : t/A ≤ 2 := (div_le_iff₀ hA).mpr (by linarith)
  have he : (fun x : ℝ => SourcePairing.scaledBump A x * SourcePairing.scaledBump A (x-t)) =
      (fun x => (SourcePairing.sourceBump (x/A) *
        SourcePairing.sourceBump (x/A-t/A)) / A) := by
    funext x
    dsimp only [SourcePairing.scaledBump]
    rw [div_mul_div_comm, ← pow_two, Real.sq_sqrt hA.le]
    rw [show (x-t)/A = x/A-t/A by ring]
  rw [he, integral_div, Measure.integral_comp_div
    (fun x : ℝ => SourcePairing.sourceBump x * SourcePairing.sourceBump (x-t/A)) A,
    sourceBump_autocorrelation_eq_profile hu0 hu2]
  simp [abs_of_pos hA, smul_eq_mul, hA.ne']

end FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation
